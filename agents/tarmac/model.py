import math

import torch
import torch.nn as nn
import torch.nn.functional as F
from agents.tarmac.distributions import Categorical, DiagGaussian
from agents.tarmac.utils_tarmac import init, init_normc_

import pdb


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
            nn.Linear(state_size + comm_size, state_size), nn.Tanh())

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

        # some env-specific model parameters
        # [TODO] too many if-else blocks; move this to separate classes
        if env == 'ShapesEnv-v0':
            self.goal_embed = nn.Embedding(3, 32)  # R, G, B
            obs_size = obs_size - 1 + 32
        elif env == 'TrafficEnv-v0':
            pass
        elif env == 'House3DEnv-v0':
            print('Inside models.py/MultiAgentBase/House3DEnv-v0')

            if self.use_cnn:
                cnn_kwargs = {'num_classes': 191, 'pretrained': True}
                self.cnn = nn.Sequential(
                    MultitaskCNN(**cnn_kwargs), nn.Linear(3200, 128),
                    nn.Tanh())
                self.cnn[0].eval()
                obs_size = 128
        elif env == 'MA_DemandResponse':
            pass
        else:
            print('Env not defined')
            import pdb
            pdb.set_trace()

        self.common = nn.Sequential(
            nn.Linear(obs_size + comm_size, state_size), nn.Tanh())

        if use_gru:
            self.gru = nn.GRUCell(state_size, state_size)

        self.critic = nn.Sequential(
            nn.Linear(state_size, state_size),
            MeanAll(dim=1, keepdim=False), nn.Tanh(), nn.Linear(state_size, 1))

        assert self.comm_mode in [
            'from_states', 'no_comm', 'from_states_rec_att'
        ]
        if self.comm_mode == 'from_states':
            self.comm = nn.Sequential(
                nn.Linear(state_size, comm_size), MeanOthers(), nn.Tanh())
        elif self.comm_mode == 'from_states_rec_att':
            self.comm = CommAttention(
                state_size=state_size,
                comm_size=comm_size,
                num_hops=comm_num_hops)
        elif self.comm_mode == 'from_obs':
            self.comm = nn.Sequential(
                nn.Linear(obs_size, state_size),
                nn.Tanh(),
                nn.Linear(state_size, comm_size), MeanOthers(), nn.Tanh())
        elif self.comm_mode == 'from_obs+states':
            self.process_obs = nn.Sequential(
                nn.Linear(obs_size, state_size), nn.Tanh())
            self.comm = nn.Sequential(
                nn.Linear(2 * state_size, comm_size), MeanOthers(), nn.Tanh())
        else:
            self.comm = None

    @property
    def state_size(self):
        return self._state_size

    @property
    def comm_size(self):
        return self._comm_size

    def communicate(self, obs, states):
        aux = {}

        if self.comm_mode == "from_states":
            communications = self.comm(states)
        elif self.comm_mode == 'from_states_rec_att':
            aux['p_attn'], communications = self.comm(states)
        elif self.comm_mode == "from_obs":
            communications = self.comm(obs)
        elif self.comm_mode == "from_obs+states":
            comm_input = torch.cat((self.process_obs(obs), states), dim=2)
            communications = self.comm(comm_input)
        else:
            communications = torch.zeros(*states.size()[:2], self.comm_size)
            if states.is_cuda:
                communications = communications.cuda()

        return communications, aux

    def forward(self, obs, states, communications, masks):
        if hasattr(self, 'use_cnn') and self.use_cnn:
            obs2 = self.cnn(
                obs.view(-1, obs.size(2), obs.size(3), obs.size(4)))
            obs2 = obs2.view(obs.size(0), obs.size(1), -1)
            obs = obs2

        obs_dim0, n_agents, obs_size = obs.size()
        num_processes = states.size(0)

        # forward() called through act()
        if obs_dim0 == num_processes:

            if hasattr(self, 'env') and self.env == 'ShapesEnv-v0':
                # embed goals
                goal_idx = obs[:, :, -1].view(-1, num_processes * n_agents)
                goal_states = self.goal_embed(goal_idx.long()).view(
                    num_processes, n_agents, 32)
                inputs = torch.cat(
                    (obs[:, :, :-1], goal_states, communications * masks),
                    dim=2)
            elif hasattr(self, 'env') and self.env == 'TrafficEnv-v0':
                inputs = torch.cat((obs, communications * masks), dim=2)
            elif hasattr(self, 'env') and self.env == 'House3DEnv-v0':
                inputs = torch.cat((obs, communications * masks), dim=2)
            else:
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

            if self.env == 'ShapesEnv-v0':
                # embed goals
                goal_idx = obs[:, :, :, -1].view(-1, obs_dim0 * n_agents)
                goal_states = self.goal_embed(goal_idx.long()).view(
                    -1, num_processes, n_agents, 32)

            outputs = []
            for i in range(obs.size(0)):

                if hasattr(self, 'env') and self.env == 'ShapesEnv-v0':
                    inputs = torch.cat(
                        (obs[i][:, :, :-1], goal_states[i],
                         communications * masks[i]),
                        dim=2)
                elif self.env == 'TrafficEnv-v0':
                    inputs = torch.cat(
                        (obs[i], communications * masks[i]), dim=2)
                elif self.env == 'House3DEnv-v0':
                    inputs = torch.cat(
                        (obs[i], communications * masks[i]), dim=2)
                else:
                    inputs = torch.cat(
                        (obs[i], communications * masks[i]), dim=2)

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


# probes to read off coordinates, colors, shapes


class RegressorProbe(nn.Module):
    def __init__(self):
        super(RegressorProbe, self).__init__()
        pass

    def forward(self, x):
        pass


class ClassifierProbe(nn.Module):
    def __init__(self):
        super(ClassifierProbe, self).__init__()
        pass

    def forward(self, x):
        pass


# pretrained CNN for House3D from EmbodiedQA
class MultitaskCNN(nn.Module):
    def __init__(self,
                 num_classes=191,
                 pretrained=True,
                 checkpoint_path='models/03_13_h3d_hybrid_cnn.pt'):
        super(MultitaskCNN, self).__init__()

        self.num_classes = num_classes
        self.conv_block1 = nn.Sequential(
            nn.Conv2d(3, 8, 5),
            nn.BatchNorm2d(8),
            nn.ReLU(inplace=True),
            nn.MaxPool2d(2, 2))
        self.conv_block2 = nn.Sequential(
            nn.Conv2d(8, 16, 5),
            nn.BatchNorm2d(16),
            nn.ReLU(inplace=True),
            nn.MaxPool2d(2, 2))
        self.conv_block3 = nn.Sequential(
            nn.Conv2d(16, 32, 5),
            nn.BatchNorm2d(32),
            nn.ReLU(inplace=True),
            nn.MaxPool2d(2, 2))
        self.conv_block4 = nn.Sequential(
            nn.Conv2d(32, 32, 5),
            nn.BatchNorm2d(32),
            nn.ReLU(inplace=True),
            nn.MaxPool2d(2, 2))
        self.classifier = nn.Sequential(
            nn.Conv2d(32, 512, 5),
            nn.BatchNorm2d(512),
            nn.ReLU(inplace=True),
            nn.Dropout2d(),
            nn.Conv2d(512, 512, 1),
            nn.BatchNorm2d(512),
            nn.ReLU(inplace=True),
            nn.Dropout2d())

        self.encoder_seg = nn.Conv2d(512, self.num_classes, 1)
        self.encoder_depth = nn.Conv2d(512, 1, 1)
        self.encoder_ae = nn.Conv2d(512, 3, 1)

        self.score_pool2_seg = nn.Conv2d(16, self.num_classes, 1)
        self.score_pool3_seg = nn.Conv2d(32, self.num_classes, 1)

        self.score_pool2_depth = nn.Conv2d(16, 1, 1)
        self.score_pool3_depth = nn.Conv2d(32, 1, 1)

        self.score_pool2_ae = nn.Conv2d(16, 3, 1)
        self.score_pool3_ae = nn.Conv2d(32, 3, 1)

        self.pretrained = pretrained
        if self.pretrained == True:
            print('Loading CNN weights from %s' % checkpoint_path)
            checkpoint = torch.load(
                checkpoint_path, map_location={'cuda:0': 'cpu'})
            self.load_state_dict(checkpoint['model_state'])
            for param in self.parameters():
                param.requires_grad = False
        else:
            for m in self.modules():
                if isinstance(m, nn.Conv2d):
                    n = m.kernel_size[0] * m.kernel_size[1] * (
                        m.out_channels + m.in_channels)
                    m.weight.data.normal_(0, math.sqrt(2. / n))
                elif isinstance(m, nn.BatchNorm2d):
                    m.weight.data.fill_(1)
                    m.bias.data.zero_()

    def forward(self, x):

        conv1 = self.conv_block1(x)
        conv2 = self.conv_block2(conv1)
        conv3 = self.conv_block3(conv2)
        conv4 = self.conv_block4(conv3)

        return conv4.view(-1, 32 * 10 * 10)

        # encoder_output = self.classifier(conv4)

        # encoder_output_seg = self.encoder_seg(encoder_output)
        # encoder_output_depth = self.encoder_depth(encoder_output)
        # encoder_output_ae = self.encoder_ae(encoder_output)

        # score_pool2_seg = self.score_pool2_seg(conv2)
        # score_pool3_seg = self.score_pool3_seg(conv3)

        # score_pool2_depth = self.score_pool2_depth(conv2)
        # score_pool3_depth = self.score_pool3_depth(conv3)

        # score_pool2_ae = self.score_pool2_ae(conv2)
        # score_pool3_ae = self.score_pool3_ae(conv3)

        # score_seg = F.upsample(encoder_output_seg, score_pool3_seg.size()[2:], mode='bilinear')
        # score_seg += score_pool3_seg
        # score_seg = F.upsample(score_seg, score_pool2_seg.size()[2:], mode='bilinear')
        # score_seg += score_pool2_seg
        # out_seg = F.upsample(score_seg, x.size()[2:], mode='bilinear')

        # score_depth = F.upsample(encoder_output_depth, score_pool3_depth.size()[2:], mode='bilinear')
        # score_depth += score_pool3_depth
        # score_depth = F.upsample(score_depth, score_pool2_depth.size()[2:], mode='bilinear')
        # score_depth += score_pool2_depth
        # out_depth = F.sigmoid(F.upsample(score_depth, x.size()[2:], mode='bilinear'))

        # score_ae = F.upsample(encoder_output_ae, score_pool3_ae.size()[2:], mode='bilinear')
        # score_ae += score_pool3_ae
        # score_ae = F.upsample(score_ae, score_pool2_ae.size()[2:], mode='bilinear')
        # score_ae += score_pool2_ae
        # out_ae = F.sigmoid(F.upsample(score_ae, x.size()[2:], mode='bilinear'))

        # return out_seg, out_depth, out_ae
