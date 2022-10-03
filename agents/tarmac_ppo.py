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
        self.nb_agents = config_dict["default_env_prop"]["cluster_prop"]["nb_agents"]
        self.with_comm = config_dict["TarMAC_PPO_prop"]['with_comm']

        # if True: 
        #    self.actor_net = OldActor(num_state=num_state, num_action=num_action) 
        #    self.critic_net = OldCritic(num_state=num_state) 
        self.actor_net = TarMAC_Actor(num_obs=num_state, num_comm=self.communication_size, hidden_state_size=self.actor_hidden_state_size, hidden_layer_size = self.hidden_layer_size, num_action=num_action, with_gru=self.with_gru).to(self.device) 
        self.critic_net = TarMAC_Critic(num_obs=num_state, num_comm=self.communication_size, num_actor_hidden=self.actor_hidden_state_size,  hidden_layer_size = self.hidden_layer_size).to(self.device)
        
        self.nb_agents = config_dict["default_env_prop"]["cluster_prop"]["nb_agents"]
        self.batch_size = config_dict["TarMAC_PPO_prop"]["batch_size"] 
        self.ppo_update_time = config_dict["TarMAC_PPO_prop"]["ppo_update_time"] 
        self.max_grad_norm = config_dict["TarMAC_PPO_prop"]["max_grad_norm"] 
        self.clip_param = config_dict["TarMAC_PPO_prop"]["clip_param"] 
        self.gamma = config_dict["TarMAC_PPO_prop"]["gamma"] 
        self.lr_actor = config_dict["TarMAC_PPO_prop"]["lr_actor"] 
        self.lr_critic = config_dict["TarMAC_PPO_prop"]["lr_critic"] 
        self.wandb_run = wandb_run 
        self.log_wandb = not opt.no_wandb 
        self.zero_eoepisode_return = config_dict["TarMAC_PPO_prop"]["zero_eoepisode_return"]

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
 
    def select_action(self, obs, actor_hidden_state): 
        " Select action for one agent given its obs"
        obs = torch.from_numpy(obs).float().unsqueeze(0).to(self.device) 

        comm = torch.zeros(1, 0).to(self.device)         # Deal with communications later

        with torch.no_grad(): 
            action_prob, actor_hidden_state = self.actor_net(obs, comm, actor_hidden_state) 
        c = Categorical(action_prob.cpu()) 
        action = c.sample() 
        return action.item(), action_prob[:, action.item()].item(), actor_hidden_state

   # def select_actions(self, all_state_obs):
   #     " Select actions for all agents at once"
   #     all_state_obs = torch.from_numpy(all_state_obs).float().to(self.device) 
#
 #       comm = torch.zeros(all_state_obs.shape[0], 0).to(self.device)         # Deal with communications later

#        with torch.no_grad(): 
 #           action_prob, self.actor_hidden_state = self.actor_net(all_state_obs, comm, self.actor_hidden_state) 
  #      c = Categorical(action_prob.cpu()) 
   #     actions = c.sample() 
    #    return actions, action_prob, self.actor_hidden_state
 
    def get_value(self, state, actor_hidden_state): 
        state = state.view(1, -1)
        state = state.to(self.device) 
        comm = torch.zeros(1, 0).to(self.device)         # Deal with communications later
        actor_hidden_state = actor_hidden_state.view(1, -1).to(self.device)
        with torch.no_grad(): 
            value = self.critic_net(state, comm, actor_hidden_state) 
        return value.cpu().item() 

    def reset_buffer(self):
        self.buffer = {}
        for agent in range(self.nb_agents):
            self.buffer[agent] = []
 
    def store_transition(self, transition, agent): 
        self.buffer[agent].append(transition) 
 
    def update(self, time_step): 
        sequential_buffer =  []
        for agent in range(self.nb_agents):
            sequential_buffer += self.buffer[agent]

        state_np = np.array([t.state for t in sequential_buffer])
        next_state_np = np.array([t.next_state for t in sequential_buffer])
        action_np = np.array([t.action for t in sequential_buffer])
        old_action_log_prob_np = np.array([t.a_log_prob for t in sequential_buffer])
        #comm = np.array([t.comm for t in sequential_buffer])
        #actor_hidden = np.array([t.actor_hidden for t in sequential_buffer])
        
        state = torch.tensor(state_np, dtype=torch.float).to(self.device) 
        next_state = torch.tensor(next_state_np, dtype=torch.float).to(self.device) 
        action = torch.tensor(action_np, dtype=torch.long).view(-1, 1).to(self.device) 
        reward = [t.reward for t in sequential_buffer] 
        old_action_log_prob = torch.tensor(old_action_log_prob_np, dtype=torch.float).view(-1, 1).to(self.device) 

        actor_hidden = torch.zeros(self.actor_hidden_state_size).view(1,-1).to(self.device)
        next_actor_hidden = torch.zeros(self.actor_hidden_state_size).view(1,-1).to(self.device)
        comm = torch.zeros(1, 0).to(self.device)         # Deal with communications later
        for t in sequential_buffer:
            actor_hidden = torch.cat((actor_hidden, t.actor_hidden), dim=0)
            next_actor_hidden = torch.cat((next_actor_hidden, t.next_hidden), dim=0)
            comm = torch.cat((comm, t.comm), dim=0)
        actor_hidden = actor_hidden[1:]
        next_actor_hidden = next_actor_hidden[1:]
        comm = comm[1:]

        #actor_hidden = torch.tensor(actor_hidden).to(self.device)
        done = [t.done for t in sequential_buffer] 

        """
        # Changed to accelerate process. UserWarning: Creating a tensor from a list of numpy.ndarrays is extremely slow. Please consider converting the list to a single numpy.ndarray $

        state = torch.tensor([t.state for t in sequential_buffer], dtype=torch.float) 
        next_state = torch.tensor([t.next_state for t in sequential_buffer], dtype=torch.float)
        action = torch.tensor([t.action for t in sequential_buffer], dtype=torch.long).view(-1, 1) 
        reward = [t.reward for t in sequential_buffer] 

        old_action_log_prob = torch.tensor( 
            [t.a_log_prob for t in sequential_buffer], dtype=torch.float 
        ).view(-1, 1) 
        done = [t.done for t in sequential_buffer] 
        
        """


        Gt = [] 
        for i in reversed(range(len(reward))): 
            if done[i]: 
                if self.zero_eoepisode_return: 
                    R = 0
                else:
                    R = self.get_value(next_state[i], next_actor_hidden[i])   # When last state of episode, start from estimated value of next state
            R = reward[i] + self.gamma * R 
            Gt.insert(0, R) 
        Gt = torch.tensor(Gt, dtype=torch.float).to(self.device) 
        ratios = np.array([]) 
        clipped_ratios = np.array([]) 
        gradient_norms = np.array([]) 
        print("The agent is updating....") 
        for i in range(self.ppo_update_time): 
            for index in BatchSampler( 
                SubsetRandomSampler(range(len(sequential_buffer))), self.batch_size, False 
            ): 
                if self.training_step % 1000 == 0: 
                    print("Time step: {}，train {} times".format(time_step, self.training_step)) 
                # with torch.no_grad(): 
                Gt_index = Gt[index].view(-1, 1) 
 
                V = self.critic_net(state[index], comm[index], actor_hidden[index])
                delta = Gt_index - V 
                advantage = delta.detach() 
 
                # epoch iteration, PPO core 
                action_prob = self.actor_net(state[index], comm[index], actor_hidden[index])[0].gather( 
                    1, action[index] 
                )  # new policy 
                ratio = action_prob / old_action_log_prob[index] 
                clipped_ratio = torch.clamp( 
                    ratio, 1 - self.clip_param, 1 + self.clip_param 
                ) 
                ratios = np.append(ratios, ratio.cpu().detach().numpy()) 
                clipped_ratios = np.append( 
                    clipped_ratios, clipped_ratio.cpu().detach().numpy() 
                ) 
 
                surr1 = ratio * advantage 
                surr2 = clipped_ratio * advantage 
 
                # update actor network 
                action_loss = -torch.min(surr1, surr2).mean()  # MAX->MIN desent 
                # self.writer.add_scalar('loss/action_loss', action_loss, global_step=self.training_step) 
                self.actor_optimizer.zero_grad() 
                action_loss.backward() 
                gradient_norm = nn.utils.clip_grad_norm_( 
                    self.actor_net.parameters(), self.max_grad_norm 
                ) 
                gradient_norms = np.append(gradient_norms, gradient_norm.cpu().detach()) 
                self.actor_optimizer.step() 
 
                # update critic network 
                value_loss = F.mse_loss(Gt_index, V) 
                # self.writer.add_scalar('loss/value_loss', value_loss, global_step=self.training_step) 
                self.critic_net_optimizer.zero_grad() 
                value_loss.backward() 
                nn.utils.clip_grad_norm_( 
                    self.critic_net.parameters(), self.max_grad_norm 
                ) 
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
            max_cl_ratio = np.max(clipped_ratios) 
            mean_cl_ratio = np.mean(clipped_ratios) 
            median_cl_ratio = np.median(clipped_ratios) 
            min_cl_ratio = np.min(clipped_ratios) 
            per95_cl_ratio = np.percentile(clipped_ratios, 95) 
            per75_cl_ratio = np.percentile(clipped_ratios, 75) 
            per25_cl_ratio = np.percentile(clipped_ratios, 25) 
            per5_cl_ratio = np.percentile(clipped_ratios, 5) 
            max_gradient_norm = np.max(gradient_norms) 
            mean_gradient_norm = np.mean(gradient_norms) 
            median_gradient_norm = np.median(gradient_norms) 
            min_gradient_norm = np.min(gradient_norms) 
            per95_gradient_norm = np.percentile(gradient_norms, 95) 
            per75_gradient_norm = np.percentile(gradient_norms, 75) 
            per25_gradient_norm = np.percentile(gradient_norms, 25) 
            per5_gradient_norm = np.percentile(gradient_norms, 5) 
 
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
                    "PPO max clipped ratio": max_cl_ratio, 
                    "PPO mean clipped ratio": mean_cl_ratio, 
                    "PPO median clipped ratio": median_cl_ratio, 
                    "PPO min clipped ratio": min_cl_ratio, 
                    "PPO clipped ratio 95 percentile": per95_cl_ratio, 
                    "PPO clipped ratio 5 percentile": per5_cl_ratio, 
                    "PPO clipped ratio 75 percentile": per75_cl_ratio, 
                    "PPO clipped ratio 25 percentile": per25_cl_ratio, 
                    "PPO max gradient norm": max_gradient_norm, 
                    "PPO mean gradient norm": mean_gradient_norm, 
                    "PPO median gradient norm": median_gradient_norm, 
                    "PPO min gradient norm": min_gradient_norm, 
                    "PPO gradient norm 95 percentile": per95_gradient_norm, 
                    "PPO gradient norm 5 percentile": per5_gradient_norm, 
                    "PPO gradient norm 75 percentile": per75_gradient_norm, 
                    "PPO gradient norm 25 percentile": per25_gradient_norm, 
                    "Training steps": t, 
                } 
            ) 
 
        self.reset_buffer()  # clear experience 
 