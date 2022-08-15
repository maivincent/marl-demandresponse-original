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

STATE_SIZE = 8
COMMUNICATION_SIZE = 2

def train_tarmac(env: MADemandResponseEnv, agent: A2C_ACKTR, actor_critic: MultiAgentPolicy, opt, config_dict: dict, render: bool, log_wandb: bool, wandb_run: wandb.run):
    id_rng = np.random.default_rng()
    unique_ID = str(int(id_rng.random() * 1000000))

    # Initialize render, if applicable
    if render:
        from env.renderer import Renderer
        renderer = Renderer(env.nb_agents)

    #TODO: Add metrics for tarmac
    #TODO: implement obs_shape in env in gym format

    # Fake variables
    opt.nb_updates = 5
    opt.time_steps_per_episode = 1000

    obs_dict = env.reset()

    obs_shape = normStateDict(obs_dict[0], config_dict).shape       #(obs_size,)

    obs_nparray = obs_dict2obs_nparray(obs_shape, obs_dict, config_dict) # [1, nb agents, obs_size]
    print("obs_nparray.shape", obs_nparray.shape)
    #action_shape = torch.tensor([0]).shape      # torch.Size([1])

    rollouts = MultiAgentRolloutStorage(n_agents=opt.nb_agents,obs_shape=obs_shape, num_steps=opt.time_steps_per_episode, num_processes=1, state_size=STATE_SIZE, communication_size=COMMUNICATION_SIZE)

    # Get first observation
    rollouts.observations[0].copy_(torch.from_numpy(obs_nparray))


    print("Training Tarmac")


    for j in range(opt.nb_updates):
        episode_return = torch.zeros([1, opt.nb_agents, 1])
        final_rewards = torch.zeros([1, opt.nb_agents, 1])
        print("Update {}".format(j))
        action_mean = 0
        actions_log_prob = 0
        for step in range(opt.time_steps_per_episode):
            if step % 1000 == 0:
                action_mean = 0
            # Sample actions
            with torch.no_grad():
                value, actions, actions_log_prob, states, communications, aux = actor_critic.act(               # Action is a tensor of shape [1, nb_agents, 1], value is a tensor of shape [1, 1], actions_log_prob is a tensor of shape [1, nb_agents, 1], 
                    rollouts.observations[step], rollouts.states[step],                                         # communication is a tensor of shape [1, nb_agents, COMMUNICATION_SIZE], states is a tensor of shape [1, nb_agents, STATE_SIZE],
                    rollouts.communications[step], rollouts.masks[step],
                )

            action_mean += actions/1000
            actions_dict = actionsAC2actions_dict(actions)  # [1, nb_agents, 1 (action_size)]
            # Observe reward and next obs
            obs_dict, reward_dict, done_dict, info_dict = env.step(actions_dict)
            obs = obs_dict2obs_nparray(obs_shape, obs_dict, config_dict)            # [1, nb_agents, obs_size]
            # TODO: - continue with rewards (reshape)

            reward_list = list(reward_dict.values())
            reward_np = np.array(reward_list)
            reward_np_expanded_1 = np.expand_dims(reward_np, axis=1)
            reward_np_expanded_2 = np.expand_dims(reward_np_expanded_1, axis=0) # (1, nb_agents, 1)
            reward = torch.from_numpy(reward_np_expanded_2)

            episode_return += reward           # (1, nb_agents, 1)
            print(episode_return)

            masks = torch.FloatTensor([[0.0] if done_dict[i] else [1.0] for i in range(opt.nb_agents)])  # [nb_agents, 1]
            masks = masks.unsqueeze(0)                      # [1, nb_agents, 1]

            final_rewards *= masks
            final_rewards += (1 - masks) * episode_return              #[1, nb_agents, 1]
            print(final_rewards)
            episode_return *= masks                                    #[1, nb_agents, 1]

            obs = torch.tensor(obs)

            rollouts.insert(obs, states, actions, actions_log_prob, value, reward, masks, communications)
        
        with torch.no_grad():
            next_value = actor_critic.get_value(
                rollouts.observations[-1], rollouts.states[-1],
                rollouts.communications[-1], rollouts.masks[-1]).detach()

        rollouts.compute_returns(next_value, use_gae=False, gamma=0.99, tau=0.95) #TODO: change default values with config_dict

        value_loss, action_loss, dist_entropy = agent.update_multi_agent(rollouts)


        #print("Episode_rewards: {}".format(episode_rewards))

        obs_dict = env.reset()
        obs_nparray = obs_dict2obs_nparray(obs_shape, obs_dict, config_dict)
        #print("Returns: {}", rollouts.returns)

        total_num_steps = (j + 1) * opt.time_steps_per_episode + j
        print("[t:%010d][rwd:%.02f/%.02f][entropy:%.05f][value_loss:%.05f][policy_loss:%.05f]"
                % (total_num_steps,
                   final_rewards.mean(), final_rewards.median(), dist_entropy,
                   value_loss, action_loss))

        rollouts.reset()
        rollouts.observations[0].copy_(torch.from_numpy(obs_nparray))

        #rollouts.after_update()



def obs_dict2obs_tensor(obs_shape, obs_dict: dict, config_dict: dict) -> torch.Tensor:
    obs_tensor = torch.empty(obs_shape, dtype=torch.float32).unsqueeze(dim=1)
    for key in obs_dict.keys():
        obs = torch.from_numpy(normStateDict(obs_dict[key], config_dict)).unsqueeze(dim=1)
        obs_tensor = torch.cat((obs_tensor, obs), dim=1)
    obs_tensor = obs_tensor[:, 1:]
    return obs_tensor

def obs_dict2obs_nparray(obs_shape, obs_dict: dict, config_dict: dict) -> np.ndarray:
    obs_np_array = np.empty(obs_shape, dtype=np.float32).reshape(1, -1)
    for key in obs_dict.keys():
        obs = normStateDict(obs_dict[key], config_dict).reshape(1, -1)
        obs_np_array = np.concatenate((obs_np_array, obs), axis=0)
    obs_np_array = obs_np_array[1:,:]
    obs_np_array = np.expand_dims(obs_np_array, axis = 0)
    return obs_np_array

def actionsAC2actions_dict(actions: torch.tensor) -> dict:
    cpu_actions = actions.view(-1,1).cpu().numpy()
    actions_dict = {}
    for i, action in enumerate(cpu_actions):
        actions_dict[i] = action[0]
    return actions_dict

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
