import math

import torch
import torch.nn as nn
import torch.nn.functional as F
from agents.tarmac.distributions import Categorical, DiagGaussian
from agents.tarmac.utils_tarmac import init, init_normc_

class Flatten(nn.Module):
    def forward(self, x):
        return x.view(x.size(0), -1)


class MeanAll(nn.Module):
    def __init__(self, dim, keepdim=False):
        super(MeanAll, self).__init__()
        self.dim = dim
        self.keepdim = keepdim

    def forward(self, x):
        return x.mean(dim=self.dim, keepdim=self.keepdim)


class MeanOthers(nn.Module):
    def forward(self, x):
        # Works only with a 3-dimensional array and mean taken over dimension 2
        out = torch.zeros(*x.size())
        if x.is_cuda:
            out = out.cuda()

        for i in range(out.size(1)):
            if i == 0:
                others = x[:, 1:]
            elif i == x.size(1) - 1:
                others = x[:, :-1]
            else:
                others = torch.cat((x[:, :i], x[:, i + 1:]), dim=1)
            out[:, i] = others.mean(dim=1)

        return out


"""
- query, communication key, communication value vectors from agent states
- compute dot product between query from agent i and keys of other agents j != i
- softmax over dot product values + weighted sum of value vectors
"""


class CommAttention(nn.Module):
    def __init__(self, state_size=128, comm_size=32, key_size=16, num_hops=3):
        super(CommAttention, self).__init__()

        self.state_size = state_size
        self.comm_size = comm_size
        self.num_hops = num_hops

        self.msg2nextstate = nn.Sequential(
            nn.Linear(state_size + comm_size, state_size), nn.ReLU())

        self.state2query = nn.Linear(state_size, key_size)
        self.state2key = nn.Linear(state_size, key_size)
        self.state2value = nn.Linear(state_size, comm_size)

        self.mask = None

        print('Setting up %d-hop attentional communication' % self.num_hops)

    # returns a single ByteTensor of size (num_processes * num_agents)^2
    # appropriately masked so that attention is computed over intra-proc agents
    def get_mask(self, num_processes, num_agents):

        if (isinstance(self.mask, torch.cuda.ByteTensor)
                or isinstance(self.mask, torch.ByteTensor)
            ) and self.mask.size(0) == num_processes * num_agents:
            return self.mask

        self.mask = torch.ByteTensor(num_processes * num_agents,
                                     num_processes * num_agents).fill_(0)

        for i in range(num_processes * num_agents):
            for j in range((i // num_agents) * num_agents,
                           (i // num_agents + 1) * num_agents):
                self.mask[i][j].fill_(1)

        return self.mask

    def forward(self, states):

        # [for debugging]
        # print('param mean', list(self.parameters())[0].clone().mean())

        num_processes, num_agents = states.size(0), states.size(1)

        mask = self.get_mask(num_processes, num_agents)
        if states.is_cuda == True and mask.is_cuda == False:
            mask = self.mask = self.mask.cuda()

        # flatten
        states = states.view(-1, self.state_size)

        p_attn = []

        for i in range(self.num_hops):

            if i > 0:
                states = self.msg2nextstate(states)

            # compute q, k, c
            query = self.state2query(states)
            key = self.state2key(states)
            value = self.state2value(states)

            # scores
            scores = torch.matmul(query, key.transpose(
                -2, -1)) / math.sqrt(self.comm_size)
            scores = scores.masked_fill(mask == 0, -1e9)

            # softmax + weighted sum
            attn = F.softmax(scores, dim=-1)
            comm = torch.matmul(attn, value)

            # append comm to state; save attention
            states = torch.cat([comm, states], dim=1)
            p_attn.append(attn)

        comm = comm.view(num_processes, num_agents, -1)

        return p_attn, comm


class MultiAgentPolicy(nn.Module):
    def __init__(self,
                 n_agents,
                 obs_size,
                 num_actions,
                 recurrent_policy,
                 state_size,
                 comm_size,
                 comm_mode,
                 comm_num_hops,
                 use_cnn=False,
                 env='ShapesEnv-v0'):
        super(MultiAgentPolicy, self).__init__()

        self.n_agents = n_agents
        self.base = MultiAgentBase(
            obs_size,
            recurrent_policy,
            state_size,
            comm_size,
            comm_mode,
            comm_num_hops,
            use_cnn=use_cnn,
            env=env)
        self.dist = Categorical(state_size, num_actions)

    @property
    def state_size(self):
        return self.base.state_size

    @property
    def comm_size(self):
        return self.base.comm_size

    def forward(self, obs, states, masks):
        raise NotImplementedError

    def act(self, obs, states, communications, masks):
        value, actor_features, states, communications, aux = self.base(
            obs, states, communications, masks)

        dist = self.dist(actor_features)
        actions = dist.sample()

        actions_log_probs = dist.log_probs(actions)

        return value, actions, actions_log_probs, states, communications, aux

    def get_value(self, obs, states, communications, masks):
        value, _, _, _, _ = self.base(obs, states, communications, masks)

        return value

    def evaluate_actions(self, obs, states, communications, masks, actions):
        value, actor_features, states, communications, aux = self.base(
            obs, states, communications, masks)
        dist = self.dist(actor_features)

        action_log_probs = dist.log_probs(actions)
        dist_entropy = dist.entropy().mean()

        return value, action_log_probs, dist_entropy, states


class MultiAgentBase(nn.Module):
    def __init__(self,
                 obs_size,
                 use_gru,
                 state_size,
                 comm_size,
                 comm_mode,
                 comm_num_hops,
                 use_cnn=False,
                 env='ShapesEnv-v0'):
        super(MultiAgentBase, self).__init__()
        self._state_size = state_size
        self._comm_size = comm_size
        self.comm_mode = comm_mode
        self.comm_num_hops = comm_num_hops
        self.use_cnn = use_cnn
        self.env = env

        self.common = nn.Sequential(
            nn.Linear(obs_size + comm_size, state_size), nn.ReLU(), nn.Linear(state_size, state_size))

        if use_gru:
            self.gru = nn.GRUCell(state_size, state_size)

        self.critic = nn.Sequential(
            nn.Linear(state_size, state_size),
            MeanAll(dim=1, keepdim=False), nn.ReLU(), nn.Linear(state_size, 1))

        self.comm = CommAttention(
            state_size=state_size,
            comm_size=comm_size,
            num_hops=comm_num_hops)


    @property
    def state_size(self):
        return self._state_size

    @property
    def comm_size(self):
        return self._comm_size

    def communicate(self, obs, states):
        aux = {}

        aux['p_attn'], communications = self.comm(states)
        return communications, aux

    def forward(self, obs, states, communications, masks):

        obs_dim0, n_agents, obs_size = obs.size()
        num_processes = states.size(0)

        # forward() called through act()
        if obs_dim0 == num_processes:

            inputs = torch.cat((obs, communications * masks), dim=2)

            x = self.common(inputs)

            if hasattr(self, 'gru'):
                x = x.view(-1, self.state_size)
                states = states.view(-1, self.state_size)
                x = states = self.gru(x, states * masks.view(-1, 1)).view(
                    num_processes, n_agents, self.state_size)

            communications, aux = self.communicate(obs, x)

        # forward() called through evaluate_actions()
        else:
            obs = obs.view(-1, num_processes, n_agents, obs_size)
            masks = masks.view(-1, num_processes, n_agents, 1)

            outputs = []
            for i in range(obs.size(0)):

                inputs = torch.cat((obs[i], communications * masks[i]), dim=2)
                x = self.common(inputs)
                if hasattr(self, 'gru'):
                    x = x.view(-1, self.state_size)
                    states = states.view(-1, self.state_size)
                    x = states = self.gru(
                        x, states * masks[i].view(-1, 1)).view(
                            num_processes, n_agents, self.state_size)
                outputs.append(x)
                communications, aux = self.communicate(obs[i], x)

            x = torch.cat(outputs, 0)

        value = self.critic(x)

        return value, x, states, communications, aux

