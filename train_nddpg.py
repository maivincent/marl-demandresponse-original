import os

import time
import torch
import pickle
import argparse
import numpy as np
import torch.nn as nn
import torch.optim as optim
from torch.distributions import Categorical 
from nDDPG_arg import parse_args
from agents.DDPG_buffer import ReplayBuffer
# import multiagent.scenarios as scenarios
from agents.DDPG_network import openai_actor, openai_critic
# from multiagent.environment import MultiAgentEnv
from env.MA_DemandResponse import MADemandResponseEnv
from config import config_dict
from utils import (
    adjust_config_train,
    normStateDict,
    saveActorNetDict,
    render_and_wandb_init,
    test_ppo_agent,
)
from cli import cli_train


# def make_env(scenario_name, arglist, benchmark=False):
#     """
#     create the environment from script
#     """
#     scenario = scenarios.load(scenario_name + ".py").Scenario()
#     world = scenario.make_world()
#     if benchmark:
#         env = MultiAgentEnv(
#             world,
#             scenario.reset_world,
#             scenario.reward,
#             scenario.observation,
#             scenario.benchmark_data,
#         )
#     else:
#         env = MultiAgentEnv(
#             world, scenario.reset_world, scenario.reward, scenario.observation
#         )
#     return env

def sample_actions(prob):
    c = Categorical(torch.tensor(prob).cpu()) 
    action = c.sample() 
    return action

def make_env(config_dict):
    env = MADemandResponseEnv(config_dict)
    return env

# def get_trainers(env, num_adversaries, obs_shape_n, action_shape_n, arglist):
def get_trainers(env, obs_shape_n, action_shape_n, arglist):
    """
    init the trainers or load the old model
    """
    actors_cur = [None for _ in range(env.nb_agents)]
    critics_cur = [None for _ in range(env.nb_agents)]
    actors_tar = [None for _ in range(env.nb_agents)]
    critics_tar = [None for _ in range(env.nb_agents)]
    optimizers_c = [None for _ in range(env.nb_agents)]
    optimizers_a = [None for _ in range(env.nb_agents)]
    input_size_global = sum(obs_shape_n) + sum(action_shape_n)

    if arglist.restore == True:  # restore the model
        for idx in arglist.restore_idxs:
            trainers_cur[idx] = torch.load(
                arglist.old_model_name + "c_{}".format(agent_idx)
            )
            trainers_tar[idx] = torch.load(
                arglist.old_model_name + "t_{}".format(agent_idx)
            )

    # Note: if you need load old model, there should be a procedure for juding if the trainers[idx] is None
    for i in range(env.nb_agents):
        actors_cur[i] = openai_actor(obs_shape_n[i], action_shape_n[i], arglist).to(
            arglist.device
        )
        critics_cur[i] = openai_critic(
            sum(obs_shape_n), sum(action_shape_n), arglist
        ).to(arglist.device)
        actors_tar[i] = openai_actor(obs_shape_n[i], action_shape_n[i], arglist).to(
            arglist.device
        )
        critics_tar[i] = openai_critic(
            sum(obs_shape_n), sum(action_shape_n), arglist
        ).to(arglist.device)
        optimizers_a[i] = optim.Adam(actors_cur[i].parameters(), arglist.lr_a)
        optimizers_c[i] = optim.Adam(critics_cur[i].parameters(), arglist.lr_c)
    actors_tar = update_trainers(
        actors_cur, actors_tar, 1.0
    )  # update the target par using the cur
    critics_tar = update_trainers(
        critics_cur, critics_tar, 1.0
    )  # update the target par using the cur
    return actors_cur, critics_cur, actors_tar, critics_tar, optimizers_a, optimizers_c


def update_trainers(agents_cur, agents_tar, tao):
    """
    update the trainers_tar par using the trainers_cur
    This way is not the same as copy_, but the result is the same
    out:
    |agents_tar: the agents with new par updated towards agents_current
    """
    for agent_c, agent_t in zip(agents_cur, agents_tar):
        key_list = list(agent_c.state_dict().keys())
        state_dict_t = agent_t.state_dict()
        state_dict_c = agent_c.state_dict()
        for key in key_list:
            state_dict_t[key] = state_dict_c[key] * tao + (1 - tao) * state_dict_t[key]
        agent_t.load_state_dict(state_dict_t)
    return agents_tar


def agents_train(
    arglist,
    game_step,
    update_cnt,
    memory,
    obs_size,
    action_size,
    actors_cur,
    actors_tar,
    critics_cur,
    critics_tar,
    optimizers_a,
    optimizers_c,
):
    """
    use this func to make the "main" func clean
    par:
    |input: the data for training
    |output: the data for next update
    """
    # update all trainers, if not in display or benchmark mode
    if (
        game_step > arglist.learning_start_step
        and (game_step - arglist.learning_start_step) % arglist.learning_fre == 0
    ):
        if update_cnt == 0:
            print("\r=start training ..." + " " * 100)
        # update the target par using the cur
        update_cnt += 1

        # update every agent in different memory batch
        for agent_idx, (
            actor_c,
            actor_t,
            critic_c,
            critic_t,
            opt_a,
            opt_c,
        ) in enumerate(
            zip(
                actors_cur,
                actors_tar,
                critics_cur,
                critics_tar,
                optimizers_a,
                optimizers_c,
            )
        ):
            if opt_c == None:
                continue  # jump to the next model update

            # sample the experience
            _obs_n_o, _action_n, _rew_n, _obs_n_n, _done_n = memory.sample(
                arglist.batch_size, agent_idx
            )  # Note_The func is not the same as others

            # --use the date to update the CRITIC
            rew = torch.tensor(
                _rew_n, device=arglist.device, dtype=torch.float
            )  # set the rew to gpu
            done_n = torch.tensor(
                ~_done_n, dtype=torch.float, device=arglist.device
            )  # set the rew to gpu
            action_cur_o = torch.from_numpy(_action_n).to(arglist.device, torch.float)
            obs_n_o = torch.from_numpy(_obs_n_o).to(arglist.device, torch.float)
            obs_n_n = torch.from_numpy(_obs_n_n).to(arglist.device, torch.float)
            action_tar = torch.cat(
                [
                    a_t(obs_n_n[:, obs_size[idx][0] : obs_size[idx][1]]).detach()
                    for idx, a_t in enumerate(actors_tar)
                ],
                dim=1,
            )
            q = critic_c(obs_n_o, action_cur_o).reshape(-1)  # q
            q_ = critic_t(obs_n_n, action_tar).reshape(-1)  # q_
            tar_value = q_ * arglist.gamma * done_n + rew  # q_*gamma*done + reward
            loss_c = torch.nn.MSELoss()(q, tar_value)  # bellman equation
            opt_c.zero_grad()
            loss_c.backward()
            nn.utils.clip_grad_norm_(critic_c.parameters(), arglist.max_grad_norm)
            opt_c.step()

            # --use the data to update the ACTOR
            # There is no need to cal other agent's action
            model_out, policy_c_new = actor_c(
                obs_n_o[:, obs_size[agent_idx][0] : obs_size[agent_idx][1]],
                model_original_out=True,
            )
            # update the aciton of this agent
            action_cur_o[
                :, action_size[agent_idx][0] : action_size[agent_idx][1]
            ] = policy_c_new
            loss_pse = torch.mean(torch.pow(model_out, 2))
            loss_a = torch.mul(-1, torch.mean(critic_c(obs_n_o, action_cur_o)))

            opt_a.zero_grad()
            (1e-3 * loss_pse + loss_a).backward()
            nn.utils.clip_grad_norm_(actor_c.parameters(), arglist.max_grad_norm)
            opt_a.step()

        # save the model to the path_dir ---cnt by update number
        if (
            update_cnt > arglist.start_save_model
            and update_cnt % arglist.fre4save_model == 0
        ):
            time_now = time.strftime("%y%m_%d%H%M")
            print("=time:{} step:{}        save".format(time_now, game_step))
            model_file_dir = os.path.join(
                os.getcwd(),
                "save_ckpt",
                "{}_{}_{}".format(arglist.scenario_name, time_now, game_step),
            )
            if not os.path.exists(model_file_dir):  # make the path
                os.makedirs(model_file_dir)
            for agent_idx, (a_c, a_t, c_c, c_t) in enumerate(
                zip(actors_cur, actors_tar, critics_cur, critics_tar)
            ):
                torch.save(
                    a_c, os.path.join(model_file_dir, "a_c_{}.pt".format(agent_idx))
                )
                torch.save(
                    a_t, os.path.join(model_file_dir, "a_t_{}.pt".format(agent_idx))
                )
                torch.save(
                    c_c, os.path.join(model_file_dir, "c_c_{}.pt".format(agent_idx))
                )
                torch.save(
                    c_t, os.path.join(model_file_dir, "c_t_{}.pt".format(agent_idx))
                )

        # update the tar par
        actors_tar = update_trainers(actors_cur, actors_tar, arglist.tao)
        critics_tar = update_trainers(critics_cur, critics_tar, arglist.tao)

    return update_cnt, actors_cur, actors_tar, critics_cur, critics_tar


def train(arglist, config_dict):
    """
    init the env, agent and train the agents
    """
    """step1: create the environment """
    # env = make_env(arglist.scenario_name, arglist, arglist.benchmark)
    env = make_env(config_dict)
    render = False
    if render: # render the env
        from env.renderer import Renderer
        renderer = Renderer(env.nb_agents)
    print("=============================")
    print("=1 Env {} is right ...".format(arglist.scenario_name))
    print("=============================")

    """step2: create agents"""
    obs_dict = env.reset()
    norm_obs_dict = {k:normStateDict(obs_dict[k], config_dict) for k in obs_dict.keys()}
    obs_shape_n = [len(list(norm_obs_dict.values())[0]) for i in range(env.nb_agents)] # [8,10,10]
    norm_obs_list = list(norm_obs_dict.values())
    action_shape_n = [
        2 for i in range(env.nb_agents)
    ]  # no need for stop bit # [5,5,5]
    # num_adversaries = min(env.nb_agents, arglist.num_adversaries)
    (
        actors_cur,
        critics_cur,
        actors_tar,
        critics_tar,
        optimizers_a,
        optimizers_c,
    ) = get_trainers(env, obs_shape_n, action_shape_n, arglist)
    # ) = get_trainers(env, num_adversaries, obs_shape_n, action_shape_n, arglist)
    # memory = Memory(num_adversaries, arglist)
    memory = ReplayBuffer(arglist.memory_size)

    print("=2 The {} agents are inited ...".format(env.nb_agents))
    print("=============================")

    """step3: init the pars """
    obs_size = []
    action_size = []
    game_step = 0
    episode_cnt = 0
    update_cnt = 0
    t_start = time.time()
    rew_n_old = [0.0 for _ in range(env.nb_agents)]  # set the init reward [0,0, 0.0, 0.0]
    agent_info = [[[]]]  # placeholder for benchmarking info
    episode_rewards = [0.0]  # sum of rewards for all agents
    agent_rewards = [[0.0] for _ in range(env.nb_agents)]  # individual agent reward

    head_o, head_a, end_o, end_a = 0, 0, 0, 0
    for obs_shape, action_shape in zip(obs_shape_n, action_shape_n):
        end_o = end_o + obs_shape
        end_a = end_a + action_shape
        range_o = (head_o, end_o) # (0,8), (8,18), (18,28)
        range_a = (head_a, end_a) # (0,5), (5,10), (10,15)
        obs_size.append(range_o)
        action_size.append(range_a)
        head_o = end_o
        head_a = end_a

    print("=3 starting iterations ...")
    print("=============================")
    # obs_n = env.reset()
    for episode_gone in range(arglist.max_episode):
        # cal the reward print the debug data
        if game_step > 1 and game_step % 100 == 0:
            mean_agents_r = [
                round(np.mean(agent_rewards[idx][-200:-1]), 2) for idx in range(env.nb_agents)
            ]
            mean_ep_r = round(np.mean(episode_rewards[-200:-1]), 3)
            print(
                " " * 43
                + "episode reward:{} agents mean reward:{}".format(
                    mean_ep_r, mean_agents_r
                ),
                end="\r",
            )
        print(
            "=Training: steps:{} episode:{}".format(game_step, episode_gone), end="\r"
        )

        for episode_cnt in range(arglist.per_episode_max_len):
            # get action
            action_prob_list = [
                agent(torch.from_numpy(obs).to(arglist.device, torch.float))
                .detach()
                .cpu()
                .numpy()
                for agent, obs in zip(actors_cur, norm_obs_list)
            ]
            action_dict = {j: sample_actions(action_prob_list[j]) for j in range(len(action_prob_list))}
            # interact with env
            next_obs_dict, rewards_dict, dones_dict, info_dict = env.step(action_dict)
            next_norm_obs_dict = {k:normStateDict(next_obs_dict[k], config_dict) for k in next_obs_dict.keys()}
            next_norm_obs_list = list(next_norm_obs_dict.values())
            reward_list = list(rewards_dict.values())
            dones_list = list(dones_dict.values())
            #new_obs_n, rew_n, done_n, info_n = env.step(action_dict)
            done = episode_cnt % 1000 == 999
            dones_list = [done for i in range(len(dones_list))]
            
            # save the experience
            memory.add(norm_obs_list, np.concatenate(action_prob_list), reward_list, next_norm_obs_list, dones_list)
            # obs_n.shape (3,5) float32
            # action_n.shape (3,5) float32
            # rew_n.shape (3,) float32
            # new_obs_n.shape (3,5) float32
            # done_n.shape (3,) Bool
            episode_rewards[-1] += np.sum(reward_list)
            for i, rew in enumerate(reward_list):
                agent_rewards[i][-1] += rew

            # train our agents
            update_cnt, actors_cur, actors_tar, critics_cur, critics_tar = agents_train(
                arglist,
                game_step,
                update_cnt,
                memory,
                obs_size,
                action_size,
                actors_cur,
                actors_tar,
                critics_cur,
                critics_tar,
                optimizers_a,
                optimizers_c,
            )

            # update the obs_n
            game_step += 1
            norm_obs_list = next_norm_obs_list



            terminal = episode_cnt >= arglist.per_episode_max_len - 1
            if done or terminal:
                episode_step = 0
                obs_n = env.reset()
                agent_info.append([[]])
                episode_rewards.append(0)
                for a_r in agent_rewards:
                    a_r.append(0)
                continue


if __name__ == "__main__":
    import os

    os.environ["WANDB_SILENT"] = "true"
    opt = cli_train()
    adjust_config_train(opt, config_dict)
    arglist = parse_args()
    train(arglist, config_dict)
