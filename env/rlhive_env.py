from importlib import import_module

import numpy as np

from hive.envs import BaseEnv
from hive.envs.env_spec import EnvSpec
from sympy import octave_code
import gym
import ray
import numpy as np
import warnings
import random
from copy import deepcopy
import json
import csv

from datetime import datetime, timedelta, time
from ray.rllib.env.multi_agent_env import MultiAgentEnv
from ray.rllib.utils.annotations import override, PublicAPI
from ray.rllib.utils.typing import MultiAgentDict, AgentID
from typing import Tuple, Dict, List, Any
import sys
from utils import applyPropertyNoise, Perlin, deadbandL2
import time
from datetime import datetime
from MA_DemandResponse import HVAC, ClusterHouses, SingleHouse, PowerGrid

class MADemandResponseEnv(BaseEnv):
    """
    PettingZoo environment from https://github.com/PettingZoo-Team/PettingZoo
    For now, we only support environments from PettingZoo with discrete actions.
    """

    def __init__(
        self,
        config, 
        test=False,
        **kwargs,
    ):
        """
        Args:
            env_name (str): Name of the environment
            env_family (str): Family of the environment such as "Atari",
            "Classic", "SISL", "Butterfly", "MAgent", and "MPE".
            num_players (int): Number of learning agents
        """
        """
        Initialize the environment

        Parameters:
        config: dictionary, containing the default configuration properties of the environment, house, hvac, and noise
        test: boolean, true it is a testing environment, false if it is for training

        """
        super(MADemandResponseEnv, self).__init__()

        self.test = test

        self.default_env_prop = config["default_env_prop"]
        self.default_house_prop = config["default_house_prop"]
        self.default_hvac_prop = config["default_hvac_prop"]
        if test:
            self.noise_house_prop = config["noise_house_prop_test"]
            self.noise_hvac_prop = config["noise_hvac_prop_test"]
        else:
            self.noise_house_prop = config["noise_house_prop"]
            self.noise_hvac_prop = config["noise_hvac_prop"]

        self.create_env()

    def create_env(self):
        self.env_properties = applyPropertyNoise(
            self.default_env_prop,
            self.default_house_prop,
            self.noise_house_prop,
            self.default_hvac_prop,
            self.noise_hvac_prop,
        )

        self.start_datetime = self.env_properties[
            "start_datetime"
        ]  # Start date and time
        self.datetime = self.start_datetime  # Current time

        self.time_step = timedelta(seconds=self.env_properties["time_step"])

        self.agent_ids = self.env_properties["agent_ids"]
        self.nb_agents = len(self.agent_ids)

        self.cluster = ClusterHouses(
            self.env_properties["cluster_prop"],
            self.agent_ids,
            self.datetime,
            self.time_step,
        )

        self.env_properties["power_grid_prop"]["max_power"] = self.cluster.max_power

        self.power_grid = PowerGrid(
            self.env_properties["power_grid_prop"],
            self.default_house_prop,
            self.env_properties["nb_hvac"],
            self.cluster,
        )
        self.power_grid.step(self.start_datetime, self.time_step)

    def reset(self):
        """
        Reset the environment.

        Returns:
        obs_dict: a dictionary, contaning the observations for each TCL agent.

        Parameters:
        self
        """

        self.build_environment()

        cluster_obs_dict = self.cluster.make_cluster_obs_dict(self.datetime)
        power_grid_reg_signal = self.power_grid.current_signal
        cluster_hvac_power = self.cluster.cluster_hvac_power

        obs_dict = self.merge_cluster_powergrid_obs(
            cluster_obs_dict, power_grid_reg_signal, cluster_hvac_power
        )

        return obs_dict

    def step(self, action_dict):
        """
        Take a step in time for each TCL, given actions of TCL agents

        Returns:
        obs_dict: a dictionary, containing the observations for each TCL agent.
        rewards_dict: a dictionary, containing the rewards of each TCL agent.
        dones_dict: a dictionary, containing the "done" signal for each TCL agent.
        info_dict: a dictonary, containing additional information for each TCL agent.

        Parameters:
        self
        action_dict: a dictionary, containing the actions taken per each agent.
        """

        self.datetime += self.time_step
        # Cluster step
        cluster_obs_dict, cluster_hvac_power, _ = self.cluster.step(
            self.datetime, action_dict, self.time_step
        )

        # Compute reward with the old grid signal
        rewards_dict = self.compute_rewards(cluster_hvac_power)

        # Power grid step
        power_grid_reg_signal = self.power_grid.step(self.datetime, self.time_step)

        # Merge observations
        obs_dict = self.merge_cluster_powergrid_obs(
            cluster_obs_dict, power_grid_reg_signal, cluster_hvac_power
        )

        dones_dict = self.make_dones_dict()
        info_dict = {"cluster_hvac_power": cluster_hvac_power}
        # print("cluster_hvac_power: {}, power_grid_reg_signal: {}".format(cluster_hvac_power, power_grid_reg_signal))

        return obs_dict, rewards_dict, dones_dict, info_dict

    def merge_cluster_powergrid_obs(
        self, cluster_obs_dict, power_grid_reg_signal, cluster_hvac_power
    ) -> None:
        """
        Merge the cluster and powergrid observations for the TCL agents

        Returns:
        obs_dict: a dictionary, containing the observations for each TCL agent.

        Parameters:
        cluster_obs_dict: a dictionary, containing the cluster observations for each TCL agent.
        power_grid_reg_signal: a float. Regulation signal, or target total power, in Watts.
        cluster_hvac_power: a float. Total power used by the TCLs, in Watts.
        """

        obs_dict = cluster_obs_dict
        for agent_id in self.agent_ids:
            obs_dict[agent_id]["reg_signal"] = power_grid_reg_signal
            obs_dict[agent_id]["cluster_hvac_power"] = cluster_hvac_power

        return obs_dict

    def reg_signal_penalty(self, cluster_hvac_power):
        """
        Returns: a float, representing the positive penalty due to the distance between the regulation signal and the total power used by the TCLs.

        Parameters:
        cluster_hvac_power: a float. Total power used by the TCLs, in Watts.
        power_grid_reg_signal: a float. Regulation signal, or target total power, in Watts.
        """
        sig_penalty_mode = self.default_env_prop["reward_prop"]["sig_penalty_mode"]

        if sig_penalty_mode == "common_L2":
            penalty = (
                (cluster_hvac_power - self.power_grid.current_signal) / self.nb_agents
            ) ** 2
        else:
            raise ValueError("Unknown signal penalty mode: {}".format(sig_penalty_mode))

        return penalty

    def compute_temp_penalty(self, one_house_id):
        """
        Returns: a float, representing the positive penalty due to distance between the target (indoors) temperature and the indoors temperature in a house.

        Parameters:
        target_temp: a float. Target indoors air temperature, in Celsius.
        deadband: a float. Margin of tolerance for indoors air temperature difference, in Celsius.
        house_temp: a float. Current indoors air temperature, in Celsius
        """
        temp_penalty_mode = self.default_env_prop["reward_prop"]["temp_penalty_mode"]

        if temp_penalty_mode == "individual_L2":

            house = self.cluster.houses[one_house_id]
            temperature_penalty = deadbandL2(
                house.target_temp, house.deadband, house.current_temp
            )

            # temperature_penalty = np.clip(temperature_penalty, 0, 20)

        elif temp_penalty_mode == "common_L2":
            ## Mean of all houses L2
            temperature_penalty = 0
            for house_id in self.agent_ids:
                house = self.cluster.houses[house_id]
                house_temperature_penalty = deadbandL2(
                    house.target_temp, house.deadband, house.current_temp
                )
                temperature_penalty += house_temperature_penalty / self.nb_agents

        elif temp_penalty_mode == "common_max":
            temperature_penalty = 0
            for house_id in self.agent_ids:
                house = self.cluster.houses[house_id]
                house_temperature_penalty = deadbandL2(
                    house.target_temp, house.deadband, house.current_temp
                )
                if house_temperature_penalty > temperature_penalty:
                    temperature_penalty = house_temperature_penalty

        elif temp_penalty_mode == "mixture":
            temp_penalty_params = self.default_env_prop["reward_prop"][
                "temp_penalty_parameters"
            ][temp_penalty_mode]

            ## Common and max penalties
            common_L2 = 0
            common_max = 0
            for house_id in self.agent_ids:
                house = self.cluster.houses[house_id]
                house_temperature_penalty = deadbandL2(
                    house.target_temp, house.deadband, house.current_temp
                )
                if house_id == one_house_id:
                    ind_L2 = house_temperature_penalty
                common_L2 += house_temperature_penalty / self.nb_agents
                if house_temperature_penalty > common_max:
                    common_max = house_temperature_penalty

            ## Putting together
            alpha_ind_L2 = temp_penalty_params["alpha_ind_L2"]
            alpha_common_L2 = temp_penalty_params["alpha_common_L2"]
            alpha_common_max = temp_penalty_params["alpha_common_max"]
            temperature_penalty = (
                alpha_ind_L2 * ind_L2
                + alpha_common_L2 * common_L2
                + alpha_common_max * common_max
            ) / (alpha_ind_L2 + alpha_common_L2 + alpha_common_max)

        else:
            raise ValueError(
                "Unknown temperature penalty mode: {}".format(temp_penalty_mode)
            )

        return temperature_penalty

    def compute_rewards(self, cluster_hvac_power):
        """
        Compute the reward of each TCL agent

        Returns:
        rewards_dict: a dictionary, containing the rewards of each TCL agent.

        Parameters:
        temp_penalty_dict: a dictionary, containing the temperature penalty for each TCL agent
        cluster_hvac_power: a float. Total power used by the TCLs, in Watts.
        power_grid_reg_signal: a float. Regulation signal, or target total power, in Watts.
        """

        rewards_dict: dict[str, float] = {}
        signal_penalty = self.reg_signal_penalty(cluster_hvac_power)

        norm_temp_penalty = deadbandL2(
            self.default_house_prop["target_temp"],
            0,
            self.default_house_prop["target_temp"] + 1,
        )

        norm_sig_penalty = deadbandL2(
            self.default_env_prop["reward_prop"]["norm_reg_sig"],
            0,
            0.75 * self.default_env_prop["reward_prop"]["norm_reg_sig"],
        )

        temp_penalty_dict = {}
        # Temperature penalties
        for house_id in self.agent_ids:
            house = self.cluster.houses[house_id]
            temp_penalty_dict[house_id] = self.compute_temp_penalty(house_id)

        for agent_id in self.agent_ids:
            rewards_dict[agent_id] = -1 * (
                self.env_properties["reward_prop"]["alpha_temp"]
                * temp_penalty_dict[agent_id]
                / norm_temp_penalty
                + self.env_properties["reward_prop"]["alpha_sig"]
                * signal_penalty
                / norm_sig_penalty
            )
        return rewards_dict

    def make_dones_dict(self):
        """
        Create the "done" signal for each TCL agent

        Returns:
        done_dict: a dictionary, containing the done signal of each TCL agent.

        Parameters:
        self
        """
        dones_dict: dict[str, bool] = {}
        for agent_id in self.agent_ids:
            dones_dict[
                agent_id
            ] = False  # There is no state which terminates the environment.
        return dones_dict

    def render(self, mode="rgb_array"):
        return self._env.render(mode=mode)

    def seed(self, seed=None):
        self._env.seed(seed=seed)

    def close(self):
        self._env.close()
