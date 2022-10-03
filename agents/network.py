#%% Imports

import torch
import torch.nn as nn
import torch.nn.functional as F
import json
import math

#%% Classes


class Actor(nn.Module):
    def __init__(self, num_state, num_action, layers):
        super(Actor, self).__init__()
        if isinstance(layers, str):
            layers = json.loads(layers)
            layers = [int(x) for x in layers]
        self.layers = layers

        self.fc = nn.ModuleList([nn.Linear(num_state, layers[0])])
        self.fc.extend(
            [nn.Linear(layers[i], layers[i + 1]) for i in range(0, len(layers) - 1)]
        )
        self.fc.append(nn.Linear(layers[-1], num_action))
        print(self)

    def forward(self, x):
        for i in range(0, len(self.layers)):
            x = F.relu(self.fc[i](x))
        action_prob = F.softmax(self.fc[len(self.layers)](x), dim=1)
        return action_prob


class Critic(nn.Module):
    def __init__(self, num_state, layers):
        super(Critic, self).__init__()
        if isinstance(layers, str):
            layers = json.loads(layers)
            layers = [int(x) for x in layers]
        self.layers = layers

        self.fc = nn.ModuleList([nn.Linear(num_state, layers[0])])
        self.fc.extend(
            [nn.Linear(layers[i], layers[i + 1]) for i in range(0, len(layers) - 1)]
        )
        self.fc.append(nn.Linear(layers[-1], 1))
        print(self)

    def forward(self, x):
        for i in range(0, len(self.layers)):
            x = F.relu(self.fc[i](x))
        value = self.fc[len(self.layers)](x)
        return value


class DQN_network(nn.Module):
    def __init__(self, num_state, num_action, layers):
        super(DQN_network, self).__init__()
        if isinstance(layers, str):
            layers = json.loads(layers)
            layers = [int(x) for x in layers]
        self.layers = layers

        self.fc = nn.ModuleList([nn.Linear(num_state, layers[0])])
        self.fc.extend(
            [nn.Linear(layers[i], layers[i + 1]) for i in range(0, len(layers) - 1)]
        )
        self.fc.append(nn.Linear(layers[-1], num_action))
        print(self)

    def forward(self, x):
        for i in range(0, len(self.layers)):
            x = F.relu(self.fc[i](x))
        value = self.fc[len(self.layers)](x)
        return value


class DDPG_Network(nn.Module):
    def __init__(self, in_dim, out_dim, hidden_dim=64, non_linear=nn.ReLU()):
        super(DDPG_Network, self).__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden_dim),
            non_linear,
            nn.Linear(hidden_dim, hidden_dim),
            non_linear,
            nn.Linear(hidden_dim, out_dim),
        ).apply(self.init)

    @staticmethod
    def init(m):
        """init parameter of the module"""
        gain = nn.init.calculate_gain("relu")
        if isinstance(m, nn.Linear):
            torch.nn.init.xavier_uniform_(m.weight, gain=gain)
            m.bias.data.fill_(0.01)

    def forward(self, x):
        return self.net(x)


class TarMAC_Comm(nn.Module):
    def __init__(self, num_states, num_key, num_value, num_hops):
        super(TarMAC_Comm, self).__init__()
        self.num_states = num_states
        self.num_hops = num_hops
        self.num_key = num_key

        self.hidden2key = nn.Sequential(
            nn.Linear(num_states, num_states),
            nn.Tanh(),
            nn.Linear(num_states, num_key)
        )

        self.hidden2value = nn.Sequential(
            nn.Linear(num_states, num_states),
            nn.Tanh(),
            nn.Linear(num_states, num_value)
        )

        self.hidden2query = nn.Sequential(
            nn.Linear(num_states, num_states),
            nn.Tanh(),
            nn.Linear(num_states, num_key)
        )

        self.msg_state2state = nn.Sequential(
            nn.Linear(num_key + num_value, num_key + num_value),
            nn.Tanh(),
            nn.Linear(num_key + num_value, num_states)
        )

    def forward(self, hidden_states):
        # hidden_states: (batch_size, num_agents, num_states)
        for i in range(self.num_hops):
            if i>0:
                hidden_states = self.msg_state2state(torch.cat([comm, hidden_states], dim=1)) # (batch_size, num_agents, num_states + num_value) -> (batch_size, num_agents, num_states)
            
            # compute key, value and query
            key = self.hidden2key(hidden_states)        # (batch_size, num_agents, num_key)
            value = self.hidden2value(hidden_states)    # (batch_size, num_agents, num_value)
            query = self.hidden2query(hidden_states)    # (batch_size, num_agents, num_key)

            # scores
            scores = torch.matmul(query, key.transpose(-2, -1)) / math.sqrt(self.num_key) # (batch_size, num_agents, num_key) x (batch_size, num_key, num_agents) -> (batch_size, num_agents, num_agents)

            # softmax + weighted sum
            attn = F.softmax(scores, dim=-1)    # (batch_size, num_agents, num_agents)
            comm = torch.matmul(attn, value)   # (batch_size, num_agents, num_agents) x (batch_size, num_agents, num_value) -> (batch_size, num_agents, num_value)

        return comm


class TarMAC_Actor(nn.Module):
    def __init__(self, num_obs, num_key, num_value, hidden_state_size, num_action, num_hops=1, with_gru=False, with_comm=True):
        super(TarMAC_Actor, self).__init__()
        self.with_gru = with_gru        # Not implemented yet
        if self.with_gru:
            raise NotImplementedError("GRU is not implemented yet")
        self.with_comm = with_comm

        self.obs2hidden = nn.Sequential(
            nn.Linear(num_obs, hidden_state_size),
            nn.ReLU(),
            nn.Linear(hidden_state_size, hidden_state_size),
        )

        if self.with_comm:
            self.comm_hidden2action = nn.Sequential(
                nn.Linear(num_value+hidden_state_size, hidden_state_size),
                nn.ReLU(),
                nn.Linear(hidden_state_size, num_action)
            )
            self.comm = TarMAC_Comm(hidden_state_size, num_key, num_value, num_hops)
        else:
            self.hidden2action = nn.Sequential(
                nn.Linear(hidden_state_size, hidden_state_size),
                nn.ReLU(),
                nn.Linear(hidden_state_size, num_action)
            )


    def forward(self, obs, hidden_state = None):
        x = self.obs2hidden(obs)                    # (nb_batch x nb_agents x num_obs) -> (nb_batch x nb_agents x hidden_state_size)
        if self.with_comm:
            communications = self.comm(x)      # (nb_batch x nb_agents x hidden_state_size) -> (nb_batch x nb_agents x num_value)
            x = self.comm_hidden2action(torch.cat([x, communications], dim=2)) # (nb_batch x nb_agents x (num_value+num_obs)) -> (nb_batch x nb_agents x num_action)
        else:
            x = self.hidden2action(x)               # (nb_batch x nb_agents x hidden_state_size) -> (nb_batch x nb_agents x num_action)
        action_prob = F.softmax(x, dim=-1)        # (nb_batch x nb_agents x num_action)
        return action_prob
        
                
class TarMAC_Critic(nn.Module):
    def __init__(self, num_agents, num_obs, hidden_layer_size):
        super(TarMAC_Critic, self).__init__()

        self.critic = nn.Sequential(
            nn.Linear(num_obs*num_agents, hidden_layer_size),
            nn.ReLU(),
            nn.Linear(hidden_layer_size, hidden_layer_size),
            nn.ReLU(),
            nn.Linear(hidden_layer_size, num_agents)
        )


    def forward(self, obs):
        # obs: (nb_batch x num_agents x num_obs)
        x = obs.reshape(obs.shape[0], -1) # (nb_batch x num_agents x num_obs) -> (nb_batch x (num_agents x num_obs))
        value = self.critic(x) # (nb_batch x (num_agents x num_obs)) -> (nb_batch x num_agents)

        return value