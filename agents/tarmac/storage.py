import torch
from torch.utils.data.sampler import BatchSampler, SubsetRandomSampler


class MultiAgentRolloutStorage(object):
    def __init__(self, n_agents, obs_shape, num_steps, num_processes,
                 state_size, communication_size):

        self.n_agents = n_agents
        self.obs_shape = obs_shape
        self.num_steps = num_steps
        self.num_processes = num_processes
        self.state_size = state_size
        self.communication_size = communication_size

        self.observations = torch.zeros(num_steps + 1, num_processes, n_agents,
                                        *obs_shape)
        self.states = torch.zeros(num_steps + 1, num_processes, n_agents,
                                  state_size)
        self.communications = torch.zeros(num_steps + 1, num_processes,
                                          n_agents, communication_size)
        self.action_log_probs = torch.zeros(num_steps, num_processes, n_agents,
                                            1)
        self.actions = torch.zeros(num_steps, num_processes, n_agents,
                                   1).long()
        self.rewards = torch.zeros(num_steps, num_processes, n_agents, 1)
        self.value_preds = torch.zeros(num_steps + 1, num_processes, 1)
        self.returns = torch.zeros(num_steps + 1, num_processes, n_agents, 1)
        self.masks = torch.ones(num_steps + 1, num_processes, n_agents, 1)

        self.step = 0

    def cuda(self):
        self.observations = self.observations.cuda()
        self.states = self.states.cuda()
        self.communications = self.communications.cuda()
        self.rewards = self.rewards.cuda()
        self.value_preds = self.value_preds.cuda()
        self.returns = self.returns.cuda()
        self.action_log_probs = self.action_log_probs.cuda()
        self.actions = self.actions.cuda()
        self.masks = self.masks.cuda()

    def insert(self, obs, state, action, action_log_prob, value_pred, reward,
               mask, communication):
        self.observations[self.step + 1].copy_(obs)
        self.states[self.step + 1].copy_(state)
        self.communications[self.step + 1].copy_(communication)
        self.actions[self.step].copy_(action)
        self.action_log_probs[self.step].copy_(action_log_prob)
        self.value_preds[self.step].copy_(value_pred)
        self.rewards[self.step].copy_(reward)
        self.masks[self.step + 1].copy_(mask)

        self.step = (self.step + 1) % self.num_steps

    def after_update(self):
        self.observations[0].copy_(self.observations[-1])
        self.states[0].copy_(self.states[-1])
        self.communications[0].copy_(self.communications[-1])
        self.masks[0].copy_(self.masks[-1])

    def reset(self):
        self.observations = torch.zeros(self.num_steps + 1, self.num_processes, self.n_agents,
                                        *self.obs_shape)
        self.states = torch.zeros(self.num_steps + 1, self.num_processes, self.n_agents,
                                  self.state_size)
        self.communications = torch.zeros(self.num_steps + 1, self.num_processes,
                                          self.n_agents, self.communication_size)
        self.action_log_probs = torch.zeros(self.num_steps, self.num_processes, self.n_agents,
                                            1)
        self.actions = torch.zeros(self.num_steps, self.num_processes, self.n_agents,
                                   1).long()
        self.rewards = torch.zeros(self.num_steps, self.num_processes, self.n_agents, 1)
        self.value_preds = torch.zeros(self.num_steps + 1, self.num_processes, 1)
        self.returns = torch.zeros(self.num_steps + 1, self.num_processes, self.n_agents, 1)
        self.masks = torch.ones(self.num_steps + 1, self.num_processes, self.n_agents, 1)

        self.step = 0

    def compute_returns(self, next_value, use_gae, gamma, tau):     # use_gae=True is broken for some reason. May want to investigate later.
        if use_gae:
            next_value_agents = next_value.unsqueeze(1).expand(
                self.returns.size(1), self.returns.size(2), 1)
            self.value_preds[-1] = next_value_agents
            gae = 0
            for step in reversed(range(self.rewards.size(0))):
                delta = self.rewards[step] + gamma * self.value_preds[step +
                                                                      1] * self.masks[step
                                                                                      +
                                                                                      1] - self.value_preds[step]
                gae = delta + gamma * tau * self.masks[step + 1] * gae
                self.returns[step] = gae + self.value_preds[step]
        else:
            next_value_agents = next_value.unsqueeze(1).expand(
                self.returns.size(1), self.returns.size(2), 1)
            self.returns[-1] = next_value_agents
            for step in reversed(range(self.rewards.size(0))):
                self.returns[step] = self.returns[step + 1] * \
                    gamma * self.masks[step + 1] + self.rewards[step]
