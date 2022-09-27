import torch
import torch.nn as nn
import torch.optim as optim
import numpy as np
from agents.tarmac.model import MultiAgentPolicy
from torch.utils.data.sampler import BatchSampler, SubsetRandomSampler


class A2C_ACKTR(object):

    def __init__(self, config_dict, opt, num_state, wandb_run):
        self.config_dict = config_dict
        self.opt = opt
        self.num_state = num_state
        self.wandb_run = wandb_run

        self.parameters = self.config_dict['TarMAC_prop']
        self.recurrent_policy = self.parameters['recurrent_policy']
        self.state_size = self.parameters['state_size']
        self.communication_size = self.parameters['communication_size']
        self.communication_mode = self.parameters['tarmac_communication_mode']
        self.comm_num_hops = self.parameters['comm_num_hops']
        self.value_loss_coef = self.parameters['value_loss_coef']
        self.entropy_coef = self.parameters['entropy_coef']
        self.lr = self.parameters['tarmac_lr']
        self.eps = self.parameters['tarmac_eps']
        self.gamma = self.parameters['tarmac_gamma']
        self.alpha = self.parameters['tarmac_alpha']
        self.distributed = self.parameters['distributed']
        self.max_grad_norm = self.parameters['tarmac_max_grad_norm']
        self.nb_tarmac_updates = self.parameters['nb_tarmac_updates']
        self.batch_size = self.parameters['tarmac_batch_size']


        self.actor_critic = MultiAgentPolicy(n_agents=opt.nb_agents, obs_size=self.num_state, num_actions=2, recurrent_policy=False,
            state_size=self.state_size, comm_size=self.communication_size, comm_mode=self.communication_mode, comm_num_hops=1, use_cnn=False, env='MA_DemandResponse')
        

        self.optimizer = optim.Adam(self.actor_critic.parameters(), lr=self.lr)
        #self.optimizer = optim.RMSprop(filter(lambda p: p.requires_grad, self.actor_critic.parameters()), lr=self.lr, eps=self.eps, alpha=self.alpha)


    def update_multi_agent(self, rollouts, t):
        n_agents, obs_shape = rollouts.observations.size(
            2), rollouts.observations.size()[3:]
        action_shape = rollouts.actions.size()[-1]
        num_steps, num_processes, _, _ = rollouts.rewards.size()

        grad_norms = []
        value_losses = []
        action_losses = []
        dist_entropies = []

        values_list = []
        returns_list = []
        advantages_list = []


        for i in range(self.nb_tarmac_updates):
            for index in BatchSampler(SubsetRandomSampler(range(num_steps)), self.batch_size, False):
                values, action_log_probs, dist_entropy, states = self.actor_critic.evaluate_actions(
                    rollouts.observations[index].view(-1, n_agents, *obs_shape), 
                    rollouts.states[0].view(-1, n_agents, self.actor_critic.state_size),
                    rollouts.communications[0].view(-1, n_agents, self.actor_critic.comm_size),
                    rollouts.masks[index].view(-1, 1),
                    rollouts.actions[index].view(-1, n_agents, action_shape))

                values = values.view(self.batch_size, num_processes, 1)# from (num_steps, 1) (?) to (num_steps, num_processes, 1)
                values = values.unsqueeze(2).expand(self.batch_size, num_processes, n_agents, 1)   # from (num_steps, num_processes, 1) to (num_steps, num_processes, n_agents, 1) (same value for all agents as critic is computed knowing all observations (CTDE))

                action_log_probs = action_log_probs.view(self.batch_size, num_processes, n_agents, 1)  # from (num_steps, n_agents, 1) to (num_steps, num_processes, n_agents, 1)
                advantages = rollouts.returns[index] - values   
                count = 0
                #for i in index:
                #    print("Returns at index {}: {}".format(i, rollouts.returns[i]))
                #    print("Values at index {}: {}".format(i, values[count]))
                #    print("Advantages at index {}: {}".format(i, advantages[count]))
                #    print("Action log probs at index {}: {}".format(i, action_log_probs[count]))
                #    count += 1

                value_loss = advantages.pow(2).mean()

                mean_returns = rollouts.returns[index].mean()
                mean_advantages = advantages.mean()
                mean_value = values.mean()

                # copy over advantage for all actions
                # for the case where there's single
                # team reward instead of individual rewards
                # advantages = advantages.unsqueeze(2).expand(num_steps, num_processes,
                #                                             n_agents, 1)
                action_loss = -(advantages.detach() * action_log_probs).mean()

                self.optimizer.zero_grad()
                (value_loss * self.value_loss_coef + action_loss -
                dist_entropy * self.entropy_coef).backward()
                grad_norm = nn.utils.clip_grad_norm_(self.actor_critic.parameters(), self.max_grad_norm)

                grad_norms.append(grad_norm)
                value_losses.append(value_loss.item())
                action_losses.append(action_loss.item())
                dist_entropies.append(dist_entropy.item())
                returns_list.append(mean_returns.item())
                advantages_list.append(mean_advantages.item())
                values_list.append(mean_value.item())

                self.optimizer.step()

        return np.mean(value_losses), np.mean(action_losses), np.mean(grad_norms), np.mean(dist_entropies), np.mean(returns_list), np.mean(advantages_list), np.mean(values_list)
