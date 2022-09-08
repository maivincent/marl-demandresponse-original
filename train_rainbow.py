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
num_frames = 20000
memory_size = 524288
batch_size = 64
target_update = 100

# train


if __name__ == "__main__":
    import os
    os.environ["WANDB_SILENT"] = "true"
    opt = cli_train()
    adjust_config_train(opt, config_dict)
    config_dict["default_env_prop"]["state_properties"]["thermal"] = False
    config_dict["default_env_prop"]["state_properties"]["solar_gain"] = False
    config_dict["default_env_prop"]["state_properties"]["day"] = False
    config_dict["default_env_prop"]["state_properties"]["hour"] = False
    config_dict["default_env_prop"]["reward_prop"]["alpha_sig"] = 0
    # config_dict["default_hvac_prop"]["lockout_duration"] = 3
    env = MADemandResponseEnv(config_dict)
    agent = DQNAgent(env, memory_size, batch_size, target_update, config_dict)
    agent.train(num_frames)