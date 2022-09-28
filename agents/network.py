#%% Imports

import torch
import torch.nn as nn
import torch.nn.functional as F
import json

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




class TarMAC_Actor(nn.Module):
    def __init__(self, num_obs, num_comm, hidden_state_size, hidden_layer_size, num_action, with_gru=False):
        super(TarMAC_Actor, self).__init__()
        self.with_gru = with_gru
        print(self.with_gru)
        self.fc1 = nn.Linear(num_obs + num_comm, hidden_layer_size)
        self.fc2 = nn.Linear(hidden_layer_size, hidden_layer_size)
        if self.with_gru:
            self.gru = nn.GRUCell(hidden_layer_size, hidden_state_size)
            self.fc3 = nn.Linear(hidden_state_size, num_action)
        else:
            self.fc3 = nn.Linear(hidden_layer_size, num_action)

    def forward(self, obs, comm, hidden_state = None):
        x = torch.cat([obs, comm], dim=1)
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        if self.with_gru:
            hidden_state = self.gru(x, hidden_state)
            x = hidden_state
        x = self.fc3(x)
        action_prob = F.softmax(x, dim=1)
        return action_prob, hidden_state

class TarMAC_Critic(nn.Module):
    def __init__(self, num_obs, num_comm, num_actor_hidden, hidden_layer_size):
        super(TarMAC_Critic, self).__init__()
        self.fc1 = nn.Linear(num_obs + num_comm + num_actor_hidden, hidden_layer_size)
        self.fc2 = nn.Linear(hidden_layer_size, hidden_layer_size)
        self.fc3 = nn.Linear(hidden_layer_size, 1)


    def forward(self, obs, comm, actor_hidden_state):
        x = torch.cat([obs, comm, actor_hidden_state], dim=1)
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        value = self.fc3(x)
        return value