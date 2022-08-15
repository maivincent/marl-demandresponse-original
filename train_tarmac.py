from config import config_dict
from cli import cli_train
from agents.tarmac.model import MultiAgentPolicy
from agents.tarmac.storage import MultiAgentRolloutStorage
from env.MA_DemandResponse import MADemandResponseEnv
from agents.tarmac.a2c_acktr import A2C_ACKTR
from metrics import Metrics
from utils import (
    adjust_config_train,
    normStateDict,
    saveActorNetDict,
    render_and_wandb_init,
    test_ppo_agent
)

import os
import random
import numpy as np
from collections import namedtuple
import wandb
import torch



def train_tarmac(env: MADemandResponseEnv, agent: A2C_ACKTR, opt, config_dict: dict, render: bool, log_wandb: bool, wandb_run: wandb.run):
    id_rng = np.random.default_rng()
    unique_ID = str(int(id_rng.random() * 1000000))

    state_size = config_dict["TarMAC_prop"]["state_size"]
    communication_size = config_dict["TarMAC_prop"]["communication_size"]

    actor_critic = agent.actor_critic

    nb_agents = env.nb_agents

    # Initialize render, if applicable
    if render:
        from env.renderer import Renderer
        renderer = Renderer(nb_agents)

    #TODO: Add metrics for tarmac
    #TODO: implement obs_shape in env in gym format

    time_steps_per_epoch = int(opt.nb_time_steps/opt.nb_tr_epochs)   # epochs and episodes must be the same
    time_steps_train_log = int(opt.nb_time_steps/opt.nb_tr_logs)
    time_steps_test_log = int(opt.nb_time_steps/opt.nb_test_logs)

    # Initialize metrics
    metrics = Metrics()


    # Initialize environment
    obs_dict = env.reset()
    obs_shape = normStateDict(obs_dict[0], config_dict).shape       #(obs_size,)
    obs_torch = obs_dict2obs_torch(obs_shape, obs_dict, config_dict) # [1, nb agents, obs_size]
    rollouts = MultiAgentRolloutStorage(n_agents=nb_agents,obs_shape=obs_shape, num_steps=time_steps_per_epoch, num_processes=1, state_size=state_size, communication_size=communication_size)
    rollouts.observations[0].copy_(obs_torch)


    print("Training Tarmac")

    for t in range(opt.nb_time_steps):
        if render:
            renderer.render(obs_dict)

        step = t % time_steps_per_epoch
        # Sample actions
        with torch.no_grad():
            value, actions, actions_log_prob, states, communications, aux = actor_critic.act(               # Action is a tensor of shape [1, nb_agents, 1], value is a tensor of shape [1, 1], actions_log_prob is a tensor of shape [1, nb_agents, 1], 
                rollouts.observations[step], rollouts.states[step],                                         # communication is a tensor of shape [1, nb_agents, COMMUNICATION_SIZE], states is a tensor of shape [1, nb_agents, STATE_SIZE],
                rollouts.communications[step], rollouts.masks[step],
            )

        actions_dict = actionsAC2actions_dict(actions)  # [1, nb_agents, 1 (action_size)]
        obs_dict, reward_dict, done_dict, info_dict = env.step(actions_dict)
        obs = obs_dict2obs_torch(obs_shape, obs_dict, config_dict)            # [1, nb_agents, obs_size]
        reward = reward_dict2reward_torch(reward_dict) # [1, nb_agents, 1]
        masks = torch.FloatTensor([[0.0] if done_dict[i] else [1.0] for i in range(nb_agents)])  # [nb_agents, 1]
        masks = masks.unsqueeze(0)                      # [1, nb_agents, 1]

        for k in obs_dict.keys():
            metrics.update(k, obs_dict, reward_dict, env)
        
        rollouts.insert(obs, states, actions, actions_log_prob, value, reward, masks, communications)

        if t % time_steps_per_epoch == time_steps_per_epoch - 1: # End of epoch (and of episode)
            with torch.no_grad():
                next_value = actor_critic.get_value(
                    rollouts.observations[-1], rollouts.states[-1],
                    rollouts.communications[-1], rollouts.masks[-1]).detach()
            rollouts.compute_returns(next_value, use_gae=False, gamma=0.99, tau=0.95) #TODO: change default values with config_dict
            value_loss, action_loss, dist_entropy = agent.update_multi_agent(rollouts)
            obs_dict = env.reset()

            obs_torch = obs_dict2obs_torch(obs_shape, obs_dict, config_dict)
            rollouts.reset()
            rollouts.observations[0].copy_(obs_torch)


        # Log train statistics
        if t % time_steps_train_log == time_steps_train_log - 1:       # Log train statistics
            #print("Logging stats at time {}".format(t))
            logged_metrics = metrics.log(t, time_steps_train_log)
            if log_wandb:
                wandb_run.log(logged_metrics)
            metrics.reset()







def obs_dict2obs_torch(obs_shape, obs_dict: dict, config_dict: dict) -> np.ndarray:
    obs_np_array = np.empty(obs_shape, dtype=np.float32).reshape(1, -1)
    for key in obs_dict.keys():
        obs = normStateDict(obs_dict[key], config_dict).reshape(1, -1)
        obs_np_array = np.concatenate((obs_np_array, obs), axis=0)
    obs_np_array = obs_np_array[1:,:]
    obs_np_array = np.expand_dims(obs_np_array, axis = 0)
    return torch.from_numpy(obs_np_array)

def actionsAC2actions_dict(actions: torch.tensor) -> dict:
    cpu_actions = actions.view(-1,1).cpu().numpy()
    actions_dict = {}
    for i, action in enumerate(cpu_actions):
        actions_dict[i] = action[0]
    return actions_dict

def reward_dict2reward_torch(reward_dict: dict) -> torch.tensor:
    reward_np = np.array(list(reward_dict.values()))
    reward_np_expanded_1 = np.expand_dims(reward_np, axis=1)
    reward_np_expanded_2 = np.expand_dims(reward_np_expanded_1, axis=0) # (1, nb_agents, 1)
    reward = torch.from_numpy(reward_np_expanded_2)
    return reward

if __name__ == "__main__":
    import os
    os.environ["WANDB_SILENT"] = "true"
    opt = cli_train()
    opt.no_wandb = True
    opt.agents_comm_mode = "no_message"
    adjust_config_train(opt, config_dict)
    render, log_wandb, wandb_run = render_and_wandb_init(opt, config_dict)
    random.seed(opt.env_seed)
    env = MADemandResponseEnv(config_dict)
    actor_critic = MultiAgentPolicy(n_agents=opt.nb_agents, obs_size=22, num_actions=2, recurrent_policy=False,
     state_size=STATE_SIZE, comm_size=COMMUNICATION_SIZE, comm_mode="from_states_rec_att", comm_num_hops=1, use_cnn=False, env='MA_DemandResponse')
    agent = A2C_ACKTR(actor_critic, 0.5, 0.02, 2e-3, 1e-5, 0.99, 0.5, False)
    train_tarmac(env, agent, actor_critic, opt, config_dict, render, log_wandb, wandb_run)
