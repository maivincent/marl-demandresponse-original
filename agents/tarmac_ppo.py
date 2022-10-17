import torch 
import torch.nn as nn 
import torch.nn.functional as F 
import torch.optim as optim 
from torch.distributions import Categorical 
from torch.utils.data.sampler import BatchSampler, SubsetRandomSampler 
import os 
from time import perf_counter
import wandb 
import numpy as np 
from agents.network import TarMAC_Actor, TarMAC_Critic
import pprint
 
class TarMAC_PPO: 
    def __init__(self, config_dict, opt, num_state=22, num_action=2, wandb_run=None): 
        super(TarMAC_PPO, self).__init__() 
        self.seed = opt.net_seed 
        torch.manual_seed(self.seed) 
        self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

        self.actor_hidden_state_size = config_dict["TarMAC_PPO_prop"]['actor_hidden_state_size']
        self.communication_size = config_dict["TarMAC_PPO_prop"]['communication_size']
        self.key_size = config_dict["TarMAC_PPO_prop"]['key_size']
        self.comm_num_hops = config_dict["TarMAC_PPO_prop"]['comm_num_hops']
        self.critic_hidden_layer_size = config_dict["TarMAC_PPO_prop"]['critic_hidden_layer_size']
        self.with_gru = config_dict["TarMAC_PPO_prop"]['with_gru']
        self.nb_lookback = config_dict["TarMAC_PPO_prop"]['nb_lookback']
        self.nb_agents = config_dict["default_env_prop"]["cluster_prop"]["nb_agents"]
        self.with_comm = config_dict["TarMAC_PPO_prop"]['with_comm']
        self.number_agents_comm = config_dict["TarMAC_PPO_prop"]['number_agents_comm_tarmac']
        self.comm_mode = config_dict["TarMAC_PPO_prop"]['tarmac_comm_mode']

        # if True: 
        #    self.actor_net = OldActor(num_state=num_state, num_action=num_action) 
        #    self.critic_net = OldCritic(num_state=num_state) 
        self.actor_net = TarMAC_Actor(num_obs=num_state, num_key=self.key_size, num_value=self.communication_size, hidden_state_size = self.actor_hidden_state_size, num_action=num_action, number_agents_comm=self.number_agents_comm, comm_mode=self.comm_mode, device=self.device, num_hops=self.comm_num_hops, with_gru=self.with_gru, with_comm=self.with_comm).to(self.device) 
        self.critic_net = TarMAC_Critic(num_agents = self.nb_agents, num_obs=num_state, hidden_layer_size=self.critic_hidden_layer_size, num_value=self.communication_size, device = self.device, with_gru = self.with_gru).to(self.device)
        
        self.batch_size = config_dict["TarMAC_PPO_prop"]["batch_size"] 
        self.ppo_update_time = config_dict["TarMAC_PPO_prop"]["ppo_update_time"] 
        self.max_grad_norm = config_dict["TarMAC_PPO_prop"]["max_grad_norm"] 
        self.clip_param = config_dict["TarMAC_PPO_prop"]["clip_param"] 
        self.gamma = config_dict["TarMAC_PPO_prop"]["gamma"] 
        self.lr_actor = config_dict["TarMAC_PPO_prop"]["lr_actor"] 
        self.lr_critic = config_dict["TarMAC_PPO_prop"]["lr_critic"] 
        self.wandb_run = wandb_run 
        self.log_wandb = not opt.no_wandb 

        if self.with_gru:
            self.memory = torch.zeros(self.nb_lookback, self.nb_agents, self.communication_size + num_state).to(self.device)


        # Initialize buffer
        self.buffer = {}
        for agent in range(self.nb_agents):
            self.buffer[agent] = []

        print( 
            "ppo_update_time: {}, max_grad_norm: {}, clip_param: {}, gamma: {}, batch_size: {}, lr_actor: {}, lr_critic: {}".format( 
                self.ppo_update_time, 
                self.max_grad_norm, 
                self.clip_param, 
                self.gamma, 
                self.batch_size, 
                self.lr_actor, 
                self.lr_critic, 
            ) 
        ) 
        self.training_step = 0 
 
        self.actor_optimizer = optim.Adam(self.actor_net.parameters(), self.lr_actor) 
        self.critic_net_optimizer = optim.Adam( 
            self.critic_net.parameters(), self.lr_critic 
        ) 
 
    def select_actions_gru(self):
        " Select actions for all agents at once"

        with torch.no_grad(): 
            action_prob, communications = self.actor_net(self.memory.unsqueeze(0)) # (1, num_agents, num_actions) and (1, num_agents, num_communications)
            action_prob = action_prob.squeeze(0) # (Agents, action dims)
            communications = communications.squeeze(0) # (Agents, communications dims)
        c = Categorical(action_prob.cpu()) 
        actions = c.sample()        #(Agents, 1)

        action_prob = action_prob.cpu().gather(1, actions) # (Agents, 1)
        actions_np = actions.numpy()
        action_probs_np = action_prob.numpy()
        communications_np = communications.cpu().numpy()
        return actions_np, action_probs_np, communications_np  

    def get_memory(self, agent):
        return self.memory[:, agent, :].to('cpu').numpy()     # nb_lookback, num_state + num_communications


    def select_actions(self, all_state_obs):
        " Select actions for all agents at once"
        all_state_obs = torch.from_numpy(all_state_obs).float().unsqueeze(0).to(self.device) # (1, Agents, State dims)

        with torch.no_grad(): 
            action_prob, _ = self.actor_net(all_state_obs)
            action_prob = action_prob.squeeze(0)  # (Agents, action dims)
        c = Categorical(action_prob.cpu()) 
        actions = c.sample()        #(Agents, 1)

        action_prob = action_prob.cpu().gather(1, actions) # (Agents, 1)
        actions_np = actions.numpy()
        action_probs_np = action_prob.numpy()
        return actions_np, action_probs_np

    def record(self, obs_all, prev_comm_all):
        to_save_np = np.concatenate((obs_all, prev_comm_all), axis=1)
        to_save = torch.from_numpy(to_save_np).float().unsqueeze(0).to(self.device)          # obs_all: (Agents, State dims),  prev_comm_all: (Agents, Comm dims), to_save: (1, Agents, State dims + Comm dims)
        self.memory = torch.cat((self.memory, to_save), dim=0)      # append to memory
        self.memory = self.memory[-self.nb_lookback:]              # keep only last nb_lookback observations
 
    def get_value(self, state): 

        state = state.to(self.device) 
        state = state.unsqueeze(0) # one-sized "batch" --> (1, num_agents, num_obs)

        with torch.no_grad(): 
            value = self.critic_net(state) 
        return value

    def reset_buffer(self):
        self.buffer = {}
        for agent in range(self.nb_agents):
            self.buffer[agent] = []
 
    def store_transition(self, transition, agent): 
        self.buffer[agent].append(transition) 
 
    def update(self, time_step): 
        # Organizing elements from buffer
        state_np = np.array([[self.buffer[agent][time_step].state for agent in range(self.nb_agents)] for time_step in range(len(self.buffer[0]))])
        next_state_np = np.array([[self.buffer[agent][time_step].next_state for agent in range(self.nb_agents)] for time_step in range(len(self.buffer[0]))])
        action_np = np.array([[self.buffer[agent][time_step].action for agent in range(self.nb_agents)] for time_step in range(len(self.buffer[0]))])
        old_action_log_prob_np = np.array([[self.buffer[agent][time_step].a_log_prob for agent in range(self.nb_agents)] for time_step in range(len(self.buffer[0]))])
        reward_np = np.array([[self.buffer[agent][time_step].reward for agent in range(self.nb_agents)] for time_step in range(len(self.buffer[0]))])
        done_np = np.array([[self.buffer[agent][time_step].done for agent in range(self.nb_agents)] for time_step in range(len(self.buffer[0]))])
        
        state = torch.tensor(state_np, dtype=torch.float).to(self.device)                                   # (Time steps, Agents, State dim) (if gru, Time steps, agents, nb_lookback, state + comm)   
        next_state = torch.tensor(next_state_np, dtype=torch.float).to(self.device)                         # (Time steps, Agents, State dim) (if gru, Time steps, agents, nb_lookback, state + comm)
        if self.with_gru:
            state = state.transpose(1,2)                                                                        # (Time steps, nb_lookback, Agents, state + com)
            next_state = next_state.transpose(1,2)                                                              # (Time steps, nb_lookback, Agents, state + com)
        action = torch.tensor(action_np, dtype=torch.long).to(self.device)                                  # (Time steps, Agents, Action dim)
        old_action_log_prob = torch.tensor(old_action_log_prob_np, dtype=torch.float).to(self.device)       # (Time steps, Agents, Action dim)
        reward = torch.tensor(reward_np, dtype=torch.float).unsqueeze(2).to(self.device)                     # (Time steps, Agents, 1)
        done = torch.tensor(done_np, dtype=torch.long).unsqueeze(2).to(self.device)                        # (Time steps, Agents, 1)


        num_time_steps, num_agents, _ = action.shape

        # Compute the returns
        Gt = torch.zeros(1, num_agents, 1).to(self.device)     # Artificially initialize the return tensor
        for i in reversed(range(num_time_steps)): 
            if done[i][0]:     # All agents are done at the same time as done is only when environment is reset
                R = self.get_value(next_state[i]).unsqueeze(2)   # When last state of episode, start from estimated value of next state (1, num_agents, 1)
            R = reward[i].unsqueeze(0) + self.gamma * R    #(i, num_agents, 1)
            Gt = torch.cat([R, Gt], dim=0)          # Concatenate the returns for each time step (new return is in front of old returns)
        Gt = Gt[:-1,:,:]  # Remove last element as it was artificially added # (Time steps, Agents, 1)

        # Update actor and critic
        ratios = np.array([]) 
        actor_gradient_norms = np.array([]) 
        critic_gradient_norms = np.array([]) 
        action_losses = np.array([])
        value_losses = np.array([])
        print("The agent is updating....") 


        for i in range(self.ppo_update_time): 
            for index in BatchSampler( 
                SubsetRandomSampler(range(num_time_steps)), self.batch_size, False 
            ): 
                if self.training_step % 1000 == 0: 
                    print("Time step: {}，train {} times".format(time_step, self.training_step)) 

                Gt_index = Gt[index]        # (Batch size, num_agents, 1)
                V = self.critic_net(state[index]).unsqueeze(2)   # (Batch size, num_agents) --> (Batch size, num_agents, 1)

                delta = Gt_index - V                    #(Batch size, num_agents, 1)

                advantage = delta.detach()              # Detach from the graph to avoid backpropagating

                # epoch iteration, PPO core 

                action_prob, communication = self.actor_net(state[index])  # (Batch size, num_agents, state dim) --> (Batch size, num_agents, action_choices * action dim)
                action_prob = action_prob.gather(2, action[index])          # New policy's action probability --> (Batch size, num_agents, action dim)

                ratio = action_prob / old_action_log_prob[index] 
                clipped_ratio = torch.clamp( 
                    ratio, 1 - self.clip_param, 1 + self.clip_param 
                ) 
                ratios = np.append(ratios, ratio.cpu().detach().numpy()) 
                surr1 = ratio * advantage               # (Batch size, num_agents, 1)
                surr2 = clipped_ratio * advantage       # (Batch size, num_agents, 1)


                # update actor network 
                action_loss = -torch.min(surr1, surr2).mean()  # (Batch size, num_agents, 1) --> (Batch size, num_agents, 1) -->  1 (average over all batch and all agents).   MAX->MIN desent 
                self.actor_optimizer.zero_grad() 
                action_losses = np.append(action_losses, action_loss.cpu().detach())

                action_loss.backward() 
                actor_gradient_norm = nn.utils.clip_grad_norm_( 
                    self.actor_net.parameters(), self.max_grad_norm 
                ) 
                actor_gradient_norms = np.append(actor_gradient_norms, actor_gradient_norm.cpu().detach()) 
                self.actor_optimizer.step() 
 
                # update critic network 
                value_loss = torch.pow(delta, 2).mean(0).mean(0)
                #print(value_loss.shape)
                #a = b #.mean(0) #F.mse_loss(Gt_index, V) 
                self.critic_net_optimizer.zero_grad() 
                value_losses = np.append(value_losses, value_loss.cpu().detach())
                
                value_loss.backward() 
                critic_gradient_norm = nn.utils.clip_grad_norm_( 
                    self.critic_net.parameters(), self.max_grad_norm 
                ) 
                critic_gradient_norms = np.append(critic_gradient_norms, critic_gradient_norm.cpu().detach()) 

                self.critic_net_optimizer.step() 
                self.training_step += 1 
 
        if self.log_wandb: 
 
            max_ratio = np.max(ratios) 
            mean_ratio = np.mean(ratios) 
            median_ratio = np.median(ratios) 
            min_ratio = np.min(ratios) 
            per95_ratio = np.percentile(ratios, 95) 
            per75_ratio = np.percentile(ratios, 75) 
            per25_ratio = np.percentile(ratios, 25) 
            per5_ratio = np.percentile(ratios, 5) 
            max_agradient_norm = np.max(actor_gradient_norms) 
            mean_agradient_norm = np.mean(actor_gradient_norms) 
            median_agradient_norm = np.median(actor_gradient_norms) 
            min_agradient_norm = np.min(actor_gradient_norms) 
            per95_agradient_norm = np.percentile(actor_gradient_norms, 95) 
            per75_agradient_norm = np.percentile(actor_gradient_norms, 75) 
            per25_agradient_norm = np.percentile(actor_gradient_norms, 25) 
            per5_agradient_norm = np.percentile(actor_gradient_norms, 5) 
            max_cgradient_norm = np.max(critic_gradient_norms) 
            mean_cgradient_norm = np.mean(critic_gradient_norms) 
            median_cgradient_norm = np.median(critic_gradient_norms) 
            min_cgradient_norm = np.min(critic_gradient_norms) 
            per95_cgradient_norm = np.percentile(critic_gradient_norms, 95) 
            per75_cgradient_norm = np.percentile(critic_gradient_norms, 75) 
            per25_cgradient_norm = np.percentile(critic_gradient_norms, 25) 
            per5_cgradient_norm = np.percentile(critic_gradient_norms, 5) 

            mean_action_loss = np.mean(action_losses)
            mean_value_loss = np.mean(value_losses)
            median_action_loss = np.median(action_losses)
            median_value_loss = np.median(value_losses)

 
            self.wandb_run.log( 
                { 
                    "PPO max ratio": max_ratio, 
                    "PPO mean ratio": mean_ratio, 
                    "PPO median ratio": median_ratio, 
                    "PPO min ratio": min_ratio, 
                    "PPO ratio 95 percentile": per95_ratio, 
                    "PPO ratio 5 percentile": per5_ratio, 
                    "PPO ratio 75 percentile": per75_ratio, 
                    "PPO ratio 25 percentile": per25_ratio, 
                    "Actor PPO max gradient norm": max_agradient_norm, 
                    "Actor PPO mean gradient norm": mean_agradient_norm, 
                    "Actor PPO median gradient norm": median_agradient_norm, 
                    "Actor PPO min gradient norm": min_agradient_norm, 
                    "Actor PPO gradient norm 95 percentile": per95_agradient_norm, 
                    "Actor PPO gradient norm 5 percentile": per5_agradient_norm, 
                    "Actor PPO gradient norm 75 percentile": per75_agradient_norm, 
                    "Actor PPO gradient norm 25 percentile": per25_agradient_norm, 
                    "Critic PPO max gradient norm": max_cgradient_norm, 
                    "Critic PPO mean gradient norm": mean_cgradient_norm, 
                    "Critic PPO median gradient norm": median_cgradient_norm, 
                    "Critic PPO min gradient norm": min_cgradient_norm, 
                    "Critic PPO gradient norm 95 percentile": per95_cgradient_norm, 
                    "Critic PPO gradient norm 5 percentile": per5_cgradient_norm, 
                    "Critic PPO gradient norm 75 percentile": per75_cgradient_norm, 
                    "Critic PPO gradient norm 25 percentile": per25_cgradient_norm, 
                    "PPO mean action loss": mean_action_loss,
                    "PPO mean value loss": mean_value_loss,
                    "PPO median action loss": median_action_loss,
                    "PPO median value loss": median_value_loss,
                    "Training steps": time_step, 
                } 
            ) 
 
        self.reset_buffer()  # clear experience 
 