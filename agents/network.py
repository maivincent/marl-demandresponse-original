#%% Imports
import torch
import torch.nn as nn
import torch.nn.functional as F
import json
import math
import numpy as np

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
    def __init__(self, num_states, num_key, num_value, num_hops, number_agents_comm, mask_mode, device):
        super(TarMAC_Comm, self).__init__()
        self.num_states = num_states
        self.num_hops = num_hops
        self.num_key = num_key
        self.number_agents_comm = number_agents_comm
        self.mask_mode = mask_mode
        self.device = device

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
            nn.Linear(num_states + num_value, num_states + num_value),
            nn.Tanh(),
            nn.Linear(num_states + num_value, num_states)
        )

    def make_masks(self, number_agents):
        number_agents_comm = self.number_agents_comm
        if number_agents_comm >= number_agents:
            number_agents_comm = number_agents - 1
        if self.mask_mode == 'all':
            mask = torch.ones(number_agents, number_agents)
        elif self.mask_mode == 'none':
            mask = torch.zeros(number_agents, number_agents)
        elif self.mask_mode == 'neighbours':
            mask_np = np.zeros((number_agents, number_agents))
            for i in range(number_agents_comm+1):
                if i == 0:
                    mask_np += np.eye(number_agents, k=0)
                elif i%2 == 1:
                    k_value = int((i+1)/2)
                    mask_np += np.eye(number_agents, k=k_value)
                    mask_np += np.eye(number_agents, k=-number_agents+k_value)
                else:
                    k_value = -int(i/2)
                    mask_np += np.eye(number_agents, k=k_value)
                    mask_np += np.eye(number_agents, k=number_agents+k_value)
            mask = torch.from_numpy(mask_np).long()   
        elif self.mask_mode == 'random_sample':
            mask = torch.zeros(number_agents, number_agents)
            for i in range(number_agents):
                possible_choices = np.arange(i)
                possible_choices = np.append(possible_choices, np.arange(i+1, number_agents))
                random_list = np.random.choice(possible_choices, number_agents_comm, replace=False)
                mask[i, random_list] = 1   
                mask[i, i] = 1 
        else:
            raise ValueError('Unknown TarMAC communication mode')
        return mask


    def forward(self, hidden_states):
        # hidden_states: (batch_size, num_agents, num_states)
        

        for i in range(self.num_hops):
            if i>0:
                hidden_states = self.msg_state2state(torch.cat([comm, hidden_states], dim=2)) # (batch_size, num_agents, num_states + num_value) -> (batch_size, num_agents, num_states)
            
            # compute key, value and query
            key = self.hidden2key(hidden_states)        # (batch_size, num_agents, num_key)
            value = self.hidden2value(hidden_states)    # (batch_size, num_agents, num_value)
            query = self.hidden2query(hidden_states)    # (batch_size, num_agents, num_key)

            mask = self.make_masks(hidden_states.shape[1]).to(self.device) # (num_agents, num_agents)
            # scores
            scores = torch.matmul(query, key.transpose(-2, -1)) / math.sqrt(self.num_key) # (batch_size, num_agents, num_key) x (batch_size, num_key, num_agents) -> (batch_size, num_agents, num_agents)
            scores = torch.mul(scores, mask) # (batch_size, num_agents, num_agents) * (num_agents, num_agents) -> (batch_size, num_agents, num_agents)
            # softmax + weighted sum

            attn = F.softmax(scores, dim=-1)    # (batch_size, num_agents, num_agents)
            comm = torch.matmul(attn, value)   # (batch_size, num_agents, num_agents) x (batch_size, num_agents, num_value) -> (batch_size, num_agents, num_value)

        return comm

class GRUNet(nn.Module):
    def __init__(self, input_dim, hidden_dim, output_dim, n_layers, device):
        super(GRUNet, self).__init__()
        self.n_layers = n_layers
        self.hidden_dim = hidden_dim
        self.gru = nn.GRU(input_dim, hidden_dim, n_layers, batch_first=True)
        self.fc = nn.Linear(hidden_dim, output_dim)
        self.relu = nn.ReLU()
        self.device = device

    def forward(self, x, hidden):
        out, h = self.gru(x, hidden)
        out = self.fc(self.relu(out[:, -1]))
        return out

    def init_hidden(self, batch_size):
        weight = next(self.parameters()).data # This is useful to keep the right type of data + device for the hidden state.
        hidden = weight.new(self.n_layers, batch_size, self.hidden_dim).zero_() # Makes a tensor of zeros *does it need to be passed to the device?*
        return hidden

class TarMAC_Actor(nn.Module):
    def __init__(self, num_obs, num_key, num_value, hidden_state_size, num_action, number_agents_comm, comm_mode, device, num_hops=1, with_gru=False, hidden_state_gru_size = 8, with_comm=True):
        super(TarMAC_Actor, self).__init__()
        self.with_gru = with_gru
        self.with_comm = with_comm
        self.num_value = num_value

        if self.with_gru:
            self.obs2hidden = GRUNet(num_obs + num_value, hidden_state_gru_size, hidden_state_size, 1, device)

        else:
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
            self.comm = TarMAC_Comm(hidden_state_size, num_key, num_value, num_hops, number_agents_comm, comm_mode, device)
        else:
            self.hidden2action = nn.Sequential(
                nn.Linear(hidden_state_size, hidden_state_size),
                nn.ReLU(),
                nn.Linear(hidden_state_size, num_action)
            )
        

    def forward(self, obs):
        if self.with_gru:
            # obs is memory : (nb_batch x num_lookback x nb_agents x (num_obs + num_comm)) with obs_t and comm_{t-1}
            nb_batch = obs.shape[0]
            num_lookback = obs.shape[1]
            nb_agents = obs.shape[2]
            init_hidden_gru = self.obs2hidden.init_hidden(nb_batch*nb_agents) # (nb_layers, nb_batch x nb_agents, hidden_state_gru_size)
            obs = obs.reshape(nb_batch*nb_agents, num_lookback, obs.shape[3]) # (nb_batch x nb_agents, num_lookback, (num_obs + num_comm))
            x = self.obs2hidden(obs, init_hidden_gru) # (nb_batch x nb_agents x hidden_state_size)
            x = x.reshape(nb_batch, nb_agents, x.shape[1]) # (nb_batch, nb_agents, hidden_state_size)
        else:
            x = self.obs2hidden(obs)                    # (nb_batch x nb_agents x num_obs) -> (nb_batch x nb_agents x hidden_state_size)
        if self.with_comm:
            communications = self.comm(x)      # (nb_batch x nb_agents x hidden_state_size) -> (nb_batch x nb_agents x num_value)
            x = self.comm_hidden2action(torch.cat([x, communications], dim=2)) # (nb_batch x nb_agents x (num_value+num_obs)) -> (nb_batch x nb_agents x num_action)
        else:
            communications = torch.zeros(x.shape[0], x.shape[1], self.num_value)
            x = self.hidden2action(x)               # (nb_batch x nb_agents x hidden_state_size) -> (nb_batch x nb_agents x num_action)
        action_prob = F.softmax(x, dim=-1)        # (nb_batch x nb_agents x num_action)
        return action_prob, communications
        
                
class TarMAC_Critic(nn.Module):
    def __init__(self, num_agents, num_obs, hidden_layer_size, num_value, device, with_gru = False, gru_hidden_state_size=8):
        super(TarMAC_Critic, self).__init__()

        self.with_gru = with_gru
        self.num_agents = num_agents

        if self.with_gru:
            self.gru = GRUNet(num_obs + num_value, gru_hidden_state_size, hidden_layer_size, 1, device)
            self.mlp = nn.Sequential(
                nn.Linear(hidden_layer_size*num_agents, hidden_layer_size),
                nn.ReLU(),
                nn.Linear(hidden_layer_size, num_agents)
            )
        else:
            self.critic = nn.Sequential(
                nn.Linear(num_obs*num_agents, hidden_layer_size),
                nn.ReLU(),
                nn.Linear(hidden_layer_size, hidden_layer_size),
                nn.ReLU(),
                nn.Linear(hidden_layer_size, num_agents)
            )


    def forward(self, obs):
        if self.with_gru:
            # obs: (nb_batch x num_lookback x nb_agents x (num_obs + num_comm))
            print(obs.shape)
            nb_batch = obs.shape[0]
            num_lookback = obs.shape[1]
            nb_agents = obs.shape[2]
            init_hidden_gru = self.gru.init_hidden(nb_batch*nb_agents) # (nb_layers, nb_batch x nb_agents, hidden_state_gru_size)
            obs = obs.reshape(nb_batch*nb_agents, num_lookback, obs.shape[3]) # (nb_batch x nb_agents, num_lookback, (num_obs + num_comm))
            x = self.gru(obs, init_hidden_gru) # (nb_batch x nb_agents, hidden_state_size)
            x = x.reshape(nb_batch, nb_agents, x.shape[1]) # (nb_batch, nb_agents, hidden_state_size)
            x = x.reshape(nb_batch, -1) # (nb_batch, nb_agents x hidden_state_size)
            value = self.mlp(x) # (nb_batch, nb_agents)
        else:
            # obs: (nb_batch x num_agents x num_obs)
            x = obs.reshape(obs.shape[0], -1) # (nb_batch x num_agents x num_obs) -> (nb_batch x (num_agents x num_obs))
            value = self.critic(x) # (nb_batch x (num_agents x num_obs)) -> (nb_batch x num_agents)

        return value