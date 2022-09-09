import torch
import numpy as np
import random
from env.MA_DemandResponse import MADemandResponseEnv
from config import config_dict
from utils import (
    adjust_config_train,
)
from cli import cli_train
from agents.rainbow import DQNAgent
import wandb
seed = 777

def seed_torch(seed):
    torch.manual_seed(seed)
    if torch.backends.cudnn.enabled:
        torch.backends.cudnn.benchmark = False
        torch.backends.cudnn.deterministic = True

np.random.seed(seed)
random.seed(seed)
seed_torch(seed)



# parameters
num_frames = 1000_000
memory_size = 524288
batch_size = 64
target_update = 100

# train


if __name__ == "__main__":

    import os
    os.environ["WANDB_SILENT"] = "true"
    opt = cli_train()
    adjust_config_train(opt, config_dict)
    # config_dict["default_env_prop"]["state_properties"]["thermal"] = False
    # config_dict["default_env_prop"]["state_properties"]["solar_gain"] = False
    # config_dict["default_env_prop"]["state_properties"]["day"] = False
    # config_dict["default_env_prop"]["state_properties"]["hour"] = False
    # config_dict["default_env_prop"]["reward_prop"]["alpha_sig"] = 0
    # config_dict["default_hvac_prop"]["lockout_duration"] = 3
    import pickle as pkl
    with open("config_dict.pkl", "wb") as f:
        pkl.dump(config_dict, f)
    wandb.init(
        settings=wandb.Settings(start_method="fork"),
        project="ProofConcept",
        entity="marl-dr",
        config=config_dict,
        name="%s_TCLs-%d_envseed-%d_netseed-%d" % (
            opt.exp, opt.nb_agents, opt.env_seed, opt.net_seed),
    )
    env = MADemandResponseEnv(config_dict)
    agent = DQNAgent(env, memory_size, config_dict['DQN_prop']["batch_size"], target_update, config_dict)
    agent.train(num_frames)
    wandb.finish()