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
        

        self.optimizer = self.optimizer = optim.Adam(self.actor_critic.parameters(), lr=self.lr)
        #optim.RMSprop(filter(lambda p: p.requires_grad, actor_critic.parameters()), lr=self.lr, eps=self.eps, alpha=self.alpha)

 #   def __init__(self,
 #                actor_critic,
 #                value_loss_coef,
 #                entropy_coef,
 #                lr=None,
 #                eps=None,
 #                alpha=None,
 #                max_grad_norm=None,
 #                distributed=False):
 #       #

 #       self.actor_critic = actor_critic

 #       self.value_loss_coef = value_loss_coef
 #       self.entropy_coef = entropy_coef

#        self.max_grad_norm = max_grad_norm

 #       self.optimizer = optim.Adam(actor_critic.parameters(), lr=lr)#, eps=eps)
        #optim.RMSprop(
            #filter(lambda p: p.requires_grad, actor_critic.parameters()), lr, eps=eps, alpha=alpha)

  #      self.distributed = distributed

    def update(self, rollouts):
        obs_shape = rollouts.observations.size()[2:]
        action_shape = rollouts.actions.size()[-1]
        num_steps, num_processes, _ = rollouts.rewards.size()

        values, action_log_probs, dist_entropy, states = self.actor_critic.evaluate_actions(
            rollouts.observations[:-1].view(-1, *obs_shape),
            rollouts.states[0].view(-1, self.actor_critic.state_size),
            rollouts.masks[:-1].view(-1, 1),
            rollouts.actions.view(-1, action_shape))

        values = values.view(num_steps, num_processes, 1)
        action_log_probs = action_log_probs.view(num_steps, num_processes, 1)

        advantages = rollouts.returns[:-1] - values
        value_loss = advantages.pow(2).mean()

        action_loss = -(advantages.detach() * action_log_probs).mean()

        if self.acktr and self.optimizer.steps % self.optimizer.Ts == 0:
            # Sampled fisher, see Martens 2014
            self.actor_critic.zero_grad()
            pg_fisher_loss = -action_log_probs.mean()

            value_noise = torch.randn(values.size())
            if values.is_cuda:
                value_noise = value_noise.cuda()

            sample_values = values + value_noise
            vf_fisher_loss = -(values - sample_values.detach()).pow(2).mean()

            fisher_loss = pg_fisher_loss + vf_fisher_loss
            self.optimizer.acc_stats = True
            fisher_loss.backward(retain_graph=True)
            self.optimizer.acc_stats = False

        self.optimizer.zero_grad()
        (value_loss * self.value_loss_coef + action_loss -
         dist_entropy * self.entropy_coef).backward()

        if self.acktr == False:
            nn.utils.clip_grad_norm_(self.actor_critic.parameters(),
                                     self.max_grad_norm)

        self.optimizer.step()

        return value_loss.item(), action_loss.item(), dist_entropy.item()

    def update_multi_agent(self, rollouts, t):
        n_agents, obs_shape = rollouts.observations.size(
            2), rollouts.observations.size()[3:]
        action_shape = rollouts.actions.size()[-1]
        num_steps, num_processes, _, _ = rollouts.rewards.size()

        grad_norms = []
        value_losses = []
        action_losses = []
        dist_entropies = []


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


                if self.distributed == True:
                    self.average_gradients()

                self.optimizer.step()

        return np.mean(value_losses), np.mean(action_losses), np.mean(grad_norms), np.mean(dist_entropies)

    def average_gradients(self):
        world_size = torch.distributed.get_world_size()

        for p in self.actor_critic.parameters():
            group = torch.distributed.new_group(ranks=list(range(world_size)))

            tensor = p.grad.data.cpu()

            torch.distributed.all_reduce(
                tensor, op=torch.distributed.reduce_op.SUM, group=group)

            tensor /= float(world_size)
            p.grad.data = tensor.cuda()