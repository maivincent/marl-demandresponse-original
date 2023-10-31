# 粘贴自v0,复制到终端或者命令行:bash cli_command.sh,记得先删掉没用的
# --agent_type=dqn, ppo
python main.py --agent_type=dqn \
               --agents_comm_mode=neighbours \
               --alpha_sig=1 \
               --alpha_temp=1 \
               --batch_size=256 \
               --env_seed=1 \
               --exp=DQN \
               --gamma=0.99 \
               --lr_both=0.01 \
               --max_grad_norm=1 \
               --nb_agents=50 \
               --nb_agents_comm=0 \
               --nb_inter_saving_actor=24 \
               --net_seed=2 \
               --save_actor_name=DQN \
               --temp_penalty_mode=individual_L2 \
               --time_step=4 \
               --no_wandb


训练
--nb_agents=20
测试
--nb_agents=50

# 测试 DQN-20231020-22:48:29-959267 DQN64250.pth
Time step: 999
Elapsed time for 100% of steps: 4 seconds.
RMSE Signal per agent: 761 W
RMSE Temperature: 1.5420889899810035 C
RMS Max Error Temperature: 6.153100537176195 C

# 测试 DQN-20231020-22:48:29-959267 DQN642500
Time step: 999
Elapsed time for 100% of steps: 4 seconds.
RMSE Signal per agent: 1967 W
RMSE Temperature: 2.532450542888086 C
RMS Max Error Temperature: 6.80762359211853 C

# 测试 DQN-20231020-22:48:29-959267 DQN1285000.pth
Time step: 999
Elapsed time for 100% of steps: 4 seconds.
RMSE Signal per agent: 776 W
RMSE Temperature: 1.4729856552053175 C
RMS Max Error Temperature: 5.96578516457718 C

# 测试 DQN-20231020-22:48:29-959267 DQN1734750
Time step: 999
Elapsed time for 100% of steps: 4 seconds.
RMSE Signal per agent: 734 W
RMSE Temperature: 1.4662421574149604 C
RMS Max Error Temperature: 5.96578516457718 C



House ID: 7 -- OD_temp : 31.242941, ID_temp: 20.082946, target_temp: 20.000000, diff: 0.082946, HVAC on: False, HVAC lockdown: 36, date: 2021-03-29 18:05:22
House ID: 8 -- OD_temp : 31.242941, ID_temp: 20.062491, target_temp: 20.000000, diff: 0.062491, HVAC on: 0, HVAC lockdown: 40, date: 2021-03-29 18:05:22
House ID: 9 -- OD_temp : 31.242941, ID_temp: 19.981756, target_temp: 20.000000, diff: -0.018244, HVAC on: False, HVAC lockdown: 8, date: 2021-03-29 18:05:22
House ID: 10 -- OD_temp : 31.242941, ID_temp: 19.966738, target_temp: 20.000000, diff: -0.033262, HVAC on: False, HVAC lockdown: 4, date: 2021-03-29 18:05:22
House ID: 11 -- OD_temp : 31.242941, ID_temp: 19.965519, target_temp: 20.000000, diff: -0.034481, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-29 18:05:22
House ID: 12 -- OD_temp : 31.242941, ID_temp: 19.975571, target_temp: 20.000000, diff: -0.024429, HVAC on: False, HVAC lockdown: 12, date: 2021-03-29 18:05:22
House ID: 13 -- OD_temp : 31.242941, ID_temp: 20.038686, target_temp: 20.000000, diff: 0.038686, HVAC on: False, HVAC lockdown: 20, date: 2021-03-29 18:05:22
House ID: 14 -- OD_temp : 31.242941, ID_temp: 20.010162, target_temp: 20.000000, diff: 0.010162, HVAC on: False, HVAC lockdown: 20, date: 2021-03-29 18:05:22
House ID: 15 -- OD_temp : 31.242941, ID_temp: 20.064219, target_temp: 20.000000, diff: 0.064219, HVAC on: False, HVAC lockdown: 36, date: 2021-03-29 18:05:22
House ID: 16 -- OD_temp : 31.242941, ID_temp: 20.019600, target_temp: 20.000000, diff: 0.019600, HVAC on: False, HVAC lockdown: 28, date: 2021-03-29 18:05:22
House ID: 17 -- OD_temp : 31.242941, ID_temp: 19.960887, target_temp: 20.000000, diff: -0.039113, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-29 18:05:22
House ID: 18 -- OD_temp : 31.242941, ID_temp: 20.046366, target_temp: 20.000000, diff: 0.046366, HVAC on: False, HVAC lockdown: 36, date: 2021-03-29 18:05:22
House ID: 19 -- OD_temp : 31.242941, ID_temp: 19.976537, target_temp: 20.000000, diff: -0.023463, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-29 18:05:22
New episode at time 1622015
Logging stats at time 1622015
Testing at time 1622015
House ID: 0 -- OD_temp : 34.161134, ID_temp: 20.059287, target_temp: 20.000000, diff: 0.059287, HVAC on: False, HVAC lockdown: 12, date: 2021-12-09 11:08:11
House ID: 1 -- OD_temp : 34.161134, ID_temp: 20.071967, target_temp: 20.000000, diff: 0.071967, HVAC on: False, HVAC lockdown: 20, date: 2021-12-09 11:08:11
House ID: 2 -- OD_temp : 34.161134, ID_temp: 19.897780, target_temp: 20.000000, diff: -0.102220, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 11:08:11
House ID: 3 -- OD_temp : 34.161134, ID_temp: 20.094168, target_temp: 20.000000, diff: 0.094168, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 11:08:11
House ID: 4 -- OD_temp : 34.161134, ID_temp: 20.048051, target_temp: 20.000000, diff: 0.048051, HVAC on: False, HVAC lockdown: 32, date: 2021-12-09 11:08:11
House ID: 5 -- OD_temp : 34.161134, ID_temp: 20.158574, target_temp: 20.000000, diff: 0.158574, HVAC on: False, HVAC lockdown: 32, date: 2021-12-09 11:08:11
House ID: 6 -- OD_temp : 34.161134, ID_temp: 19.758613, target_temp: 20.000000, diff: -0.241387, HVAC on: False, HVAC lockdown: 16, date: 2021-12-09 11:08:11
House ID: 7 -- OD_temp : 34.161134, ID_temp: 31.177504, target_temp: 20.000000, diff: 11.177504, HVAC on: 0, HVAC lockdown: 60, date: 2021-12-09 11:08:11
House ID: 8 -- OD_temp : 34.161134, ID_temp: 20.291434, target_temp: 20.000000, diff: 0.291434, HVAC on: False, HVAC lockdown: 36, date: 2021-12-09 11:08:11
House ID: 9 -- OD_temp : 34.161134, ID_temp: 19.820490, target_temp: 20.000000, diff: -0.179510, HVAC on: False, HVAC lockdown: 8, date: 2021-12-09 11:08:11
House ID: 10 -- OD_temp : 34.161134, ID_temp: 19.960432, target_temp: 20.000000, diff: -0.039568, HVAC on: False, HVAC lockdown: 12, date: 2021-12-09 11:08:11
House ID: 11 -- OD_temp : 34.161134, ID_temp: 20.309634, target_temp: 20.000000, diff: 0.309634, HVAC on: False, HVAC lockdown: 32, date: 2021-12-09 11:08:11
House ID: 12 -- OD_temp : 34.161134, ID_temp: 19.921275, target_temp: 20.000000, diff: -0.078725, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 11:08:11
House ID: 13 -- OD_temp : 34.161134, ID_temp: 20.018749, target_temp: 20.000000, diff: 0.018749, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-09 11:08:11
House ID: 14 -- OD_temp : 34.161134, ID_temp: 20.052235, target_temp: 20.000000, diff: 0.052235, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 11:08:11
House ID: 15 -- OD_temp : 34.161134, ID_temp: 20.022024, target_temp: 20.000000, diff: 0.022024, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-09 11:08:11
House ID: 16 -- OD_temp : 34.161134, ID_temp: 20.009830, target_temp: 20.000000, diff: 0.009830, HVAC on: False, HVAC lockdown: 8, date: 2021-12-09 11:08:11
House ID: 17 -- OD_temp : 34.161134, ID_temp: 20.042514, target_temp: 20.000000, diff: 0.042514, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 11:08:11
House ID: 18 -- OD_temp : 34.161134, ID_temp: 20.089820, target_temp: 20.000000, diff: 0.089820, HVAC on: False, HVAC lockdown: 28, date: 2021-12-09 11:08:11
House ID: 19 -- OD_temp : 34.161134, ID_temp: 20.066199, target_temp: 20.000000, diff: 0.066199, HVAC on: False, HVAC lockdown: 20, date: 2021-12-09 11:08:11
House ID: 0 -- OD_temp : 28.121640, ID_temp: 19.973298, target_temp: 20.000000, diff: -0.026702, HVAC on: False, HVAC lockdown: 8, date: 2021-12-09 22:14:51
House ID: 1 -- OD_temp : 28.121640, ID_temp: 20.071967, target_temp: 20.000000, diff: 0.071967, HVAC on: False, HVAC lockdown: 28, date: 2021-12-09 22:14:51
House ID: 2 -- OD_temp : 28.121640, ID_temp: 20.041696, target_temp: 20.000000, diff: 0.041696, HVAC on: False, HVAC lockdown: 20, date: 2021-12-09 22:14:51
House ID: 3 -- OD_temp : 28.121640, ID_temp: 20.142582, target_temp: 20.000000, diff: 0.142582, HVAC on: False, HVAC lockdown: 24, date: 2021-12-09 22:14:51
House ID: 4 -- OD_temp : 28.121640, ID_temp: 19.820803, target_temp: 20.000000, diff: -0.179197, HVAC on: False, HVAC lockdown: 4, date: 2021-12-09 22:14:51
House ID: 5 -- OD_temp : 28.121640, ID_temp: 20.179355, target_temp: 20.000000, diff: 0.179355, HVAC on: False, HVAC lockdown: 20, date: 2021-12-09 22:14:51
House ID: 6 -- OD_temp : 28.121640, ID_temp: 19.853611, target_temp: 20.000000, diff: -0.146389, HVAC on: False, HVAC lockdown: 24, date: 2021-12-09 22:14:51
House ID: 7 -- OD_temp : 28.121640, ID_temp: 30.131032, target_temp: 20.000000, diff: 10.131032, HVAC on: 0, HVAC lockdown: 364, date: 2021-12-09 22:14:51
House ID: 8 -- OD_temp : 28.121640, ID_temp: 20.126347, target_temp: 20.000000, diff: 0.126347, HVAC on: False, HVAC lockdown: 24, date: 2021-12-09 22:14:51
House ID: 9 -- OD_temp : 28.121640, ID_temp: 19.666633, target_temp: 20.000000, diff: -0.333367, HVAC on: False, HVAC lockdown: 16, date: 2021-12-09 22:14:51
House ID: 10 -- OD_temp : 28.121640, ID_temp: 19.941606, target_temp: 20.000000, diff: -0.058394, HVAC on: False, HVAC lockdown: 20, date: 2021-12-09 22:14:51
House ID: 11 -- OD_temp : 28.121640, ID_temp: 20.191611, target_temp: 20.000000, diff: 0.191611, HVAC on: False, HVAC lockdown: 28, date: 2021-12-09 22:14:51
House ID: 12 -- OD_temp : 28.121640, ID_temp: 19.946492, target_temp: 20.000000, diff: -0.053508, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-09 22:14:51
House ID: 13 -- OD_temp : 28.121640, ID_temp: 20.029683, target_temp: 20.000000, diff: 0.029683, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 22:14:51
House ID: 14 -- OD_temp : 28.121640, ID_temp: 20.043425, target_temp: 20.000000, diff: 0.043425, HVAC on: False, HVAC lockdown: 36, date: 2021-12-09 22:14:51
House ID: 15 -- OD_temp : 28.121640, ID_temp: 19.995007, target_temp: 20.000000, diff: -0.004993, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 22:14:51
House ID: 16 -- OD_temp : 28.121640, ID_temp: 19.949845, target_temp: 20.000000, diff: -0.050155, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 22:14:51
House ID: 17 -- OD_temp : 28.121640, ID_temp: 19.959633, target_temp: 20.000000, diff: -0.040367, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-09 22:14:51
House ID: 18 -- OD_temp : 28.121640, ID_temp: 20.077660, target_temp: 20.000000, diff: 0.077660, HVAC on: False, HVAC lockdown: 32, date: 2021-12-09 22:14:51
House ID: 19 -- OD_temp : 28.121640, ID_temp: 19.992314, target_temp: 20.000000, diff: -0.007686, HVAC on: False, HVAC lockdown: 4, date: 2021-12-09 22:14:51
Training step - 1622015 - Mean test return: -5.903588683166743
House ID: 0 -- OD_temp : 32.650694, ID_temp: 20.000157, target_temp: 20.000000, diff: 0.000157, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-22 17:14:05
House ID: 1 -- OD_temp : 32.650694, ID_temp: 20.009695, target_temp: 20.000000, diff: 0.009695, HVAC on: False, HVAC lockdown: 16, date: 2021-09-22 17:14:05
House ID: 2 -- OD_temp : 32.650694, ID_temp: 20.076664, target_temp: 20.000000, diff: 0.076664, HVAC on: False, HVAC lockdown: 24, date: 2021-09-22 17:14:05
House ID: 3 -- OD_temp : 32.650694, ID_temp: 20.058934, target_temp: 20.000000, diff: 0.058934, HVAC on: False, HVAC lockdown: 32, date: 2021-09-22 17:14:05
House ID: 4 -- OD_temp : 32.650694, ID_temp: 20.036113, target_temp: 20.000000, diff: 0.036113, HVAC on: False, HVAC lockdown: 24, date: 2021-09-22 17:14:05
House ID: 5 -- OD_temp : 32.650694, ID_temp: 19.969660, target_temp: 20.000000, diff: -0.030340, HVAC on: False, HVAC lockdown: 4, date: 2021-09-22 17:14:05
House ID: 6 -- OD_temp : 32.650694, ID_temp: 20.054586, target_temp: 20.000000, diff: 0.054586, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-22 17:14:05
House ID: 7 -- OD_temp : 32.650694, ID_temp: 20.038541, target_temp: 20.000000, diff: 0.038541, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-22 17:14:05
House ID: 8 -- OD_temp : 32.650694, ID_temp: 19.994849, target_temp: 20.000000, diff: -0.005151, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-22 17:14:05
House ID: 9 -- OD_temp : 32.650694, ID_temp: 19.980855, target_temp: 20.000000, diff: -0.019145, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-22 17:14:05
House ID: 10 -- OD_temp : 32.650694, ID_temp: 20.028692, target_temp: 20.000000, diff: 0.028692, HVAC on: False, HVAC lockdown: 16, date: 2021-09-22 17:14:05
House ID: 11 -- OD_temp : 32.650694, ID_temp: 19.988648, target_temp: 20.000000, diff: -0.011352, HVAC on: False, HVAC lockdown: 8, date: 2021-09-22 17:14:05
House ID: 12 -- OD_temp : 32.650694, ID_temp: 20.025495, target_temp: 20.000000, diff: 0.025495, HVAC on: False, HVAC lockdown: 16, date: 2021-09-22 17:14:05
House ID: 13 -- OD_temp : 32.650694, ID_temp: 20.046596, target_temp: 20.000000, diff: 0.046596, HVAC on: False, HVAC lockdown: 24, date: 2021-09-22 17:14:05
House ID: 14 -- OD_temp : 32.650694, ID_temp: 20.068407, target_temp: 20.000000, diff: 0.068407, HVAC on: False, HVAC lockdown: 24, date: 2021-09-22 17:14:05
House ID: 15 -- OD_temp : 32.650694, ID_temp: 20.050527, target_temp: 20.000000, diff: 0.050527, HVAC on: False, HVAC lockdown: 32, date: 2021-09-22 17:14:05
House ID: 16 -- OD_temp : 32.650694, ID_temp: 20.084494, target_temp: 20.000000, diff: 0.084494, HVAC on: False, HVAC lockdown: 36, date: 2021-09-22 17:14:05
House ID: 17 -- OD_temp : 32.650694, ID_temp: 20.024791, target_temp: 20.000000, diff: 0.024791, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-22 17:14:05
House ID: 18 -- OD_temp : 32.650694, ID_temp: 20.012937, target_temp: 20.000000, diff: 0.012937, HVAC on: False, HVAC lockdown: 4, date: 2021-09-22 17:14:05
House ID: 19 -- OD_temp : 32.650694, ID_temp: 19.989336, target_temp: 20.000000, diff: -0.010664, HVAC on: False, HVAC lockdown: 8, date: 2021-09-22 17:14:05
New episode at time 1638399
Logging stats at time 1638399
Testing at time 1638399
House ID: 0 -- OD_temp : 27.649303, ID_temp: 19.860291, target_temp: 20.000000, diff: -0.139709, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-31 23:58:20
House ID: 1 -- OD_temp : 27.649303, ID_temp: 19.954939, target_temp: 20.000000, diff: -0.045061, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-31 23:58:20
House ID: 2 -- OD_temp : 27.649303, ID_temp: 20.108486, target_temp: 20.000000, diff: 0.108486, HVAC on: False, HVAC lockdown: 8, date: 2021-01-31 23:58:20
House ID: 3 -- OD_temp : 27.649303, ID_temp: 19.974930, target_temp: 20.000000, diff: -0.025070, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-31 23:58:20
House ID: 4 -- OD_temp : 27.649303, ID_temp: 19.987279, target_temp: 20.000000, diff: -0.012721, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-31 23:58:20
House ID: 5 -- OD_temp : 27.649303, ID_temp: 20.037323, target_temp: 20.000000, diff: 0.037323, HVAC on: False, HVAC lockdown: 20, date: 2021-01-31 23:58:20
House ID: 6 -- OD_temp : 27.649303, ID_temp: 19.997722, target_temp: 20.000000, diff: -0.002278, HVAC on: False, HVAC lockdown: 16, date: 2021-01-31 23:58:20
House ID: 7 -- OD_temp : 27.649303, ID_temp: 20.006852, target_temp: 20.000000, diff: 0.006852, HVAC on: False, HVAC lockdown: 24, date: 2021-01-31 23:58:20
House ID: 8 -- OD_temp : 27.649303, ID_temp: 20.021204, target_temp: 20.000000, diff: 0.021204, HVAC on: False, HVAC lockdown: 28, date: 2021-01-31 23:58:20
House ID: 9 -- OD_temp : 27.649303, ID_temp: 20.024926, target_temp: 20.000000, diff: 0.024926, HVAC on: False, HVAC lockdown: 16, date: 2021-01-31 23:58:20
House ID: 10 -- OD_temp : 27.649303, ID_temp: 19.998059, target_temp: 20.000000, diff: -0.001941, HVAC on: False, HVAC lockdown: 4, date: 2021-01-31 23:58:20
House ID: 11 -- OD_temp : 27.649303, ID_temp: 20.006824, target_temp: 20.000000, diff: 0.006824, HVAC on: False, HVAC lockdown: 32, date: 2021-01-31 23:58:20
House ID: 12 -- OD_temp : 27.649303, ID_temp: 20.039608, target_temp: 20.000000, diff: 0.039608, HVAC on: False, HVAC lockdown: 16, date: 2021-01-31 23:58:20
House ID: 13 -- OD_temp : 27.649303, ID_temp: 19.989073, target_temp: 20.000000, diff: -0.010927, HVAC on: False, HVAC lockdown: 8, date: 2021-01-31 23:58:20
House ID: 14 -- OD_temp : 27.649303, ID_temp: 20.233061, target_temp: 20.000000, diff: 0.233061, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-31 23:58:20
House ID: 15 -- OD_temp : 27.649303, ID_temp: 20.013704, target_temp: 20.000000, diff: 0.013704, HVAC on: False, HVAC lockdown: 4, date: 2021-01-31 23:58:20
House ID: 16 -- OD_temp : 27.649303, ID_temp: 20.279721, target_temp: 20.000000, diff: 0.279721, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-31 23:58:20
House ID: 17 -- OD_temp : 27.649303, ID_temp: 19.783513, target_temp: 20.000000, diff: -0.216487, HVAC on: False, HVAC lockdown: 8, date: 2021-01-31 23:58:20
House ID: 18 -- OD_temp : 27.649303, ID_temp: 29.980852, target_temp: 20.000000, diff: 9.980852, HVAC on: 0, HVAC lockdown: 304, date: 2021-01-31 23:58:20
House ID: 19 -- OD_temp : 27.649303, ID_temp: 20.120603, target_temp: 20.000000, diff: 0.120603, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-31 23:58:20
House ID: 0 -- OD_temp : 33.229954, ID_temp: 19.470715, target_temp: 20.000000, diff: -0.529285, HVAC on: False, HVAC lockdown: 4, date: 2021-02-01 11:05:00
House ID: 1 -- OD_temp : 33.229954, ID_temp: 19.943444, target_temp: 20.000000, diff: -0.056556, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-01 11:05:00
House ID: 2 -- OD_temp : 33.229954, ID_temp: 20.210514, target_temp: 20.000000, diff: 0.210514, HVAC on: False, HVAC lockdown: 12, date: 2021-02-01 11:05:00
House ID: 3 -- OD_temp : 33.229954, ID_temp: 20.183174, target_temp: 20.000000, diff: 0.183174, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-01 11:05:00
House ID: 4 -- OD_temp : 33.229954, ID_temp: 20.074582, target_temp: 20.000000, diff: 0.074582, HVAC on: False, HVAC lockdown: 16, date: 2021-02-01 11:05:00
House ID: 5 -- OD_temp : 33.229954, ID_temp: 20.094387, target_temp: 20.000000, diff: 0.094387, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-01 11:05:00
House ID: 6 -- OD_temp : 33.229954, ID_temp: 20.135618, target_temp: 20.000000, diff: 0.135618, HVAC on: False, HVAC lockdown: 36, date: 2021-02-01 11:05:00
House ID: 7 -- OD_temp : 33.229954, ID_temp: 20.033501, target_temp: 20.000000, diff: 0.033501, HVAC on: False, HVAC lockdown: 4, date: 2021-02-01 11:05:00
House ID: 8 -- OD_temp : 33.229954, ID_temp: 19.993308, target_temp: 20.000000, diff: -0.006692, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-01 11:05:00
House ID: 9 -- OD_temp : 33.229954, ID_temp: 20.053071, target_temp: 20.000000, diff: 0.053071, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-01 11:05:00
House ID: 10 -- OD_temp : 33.229954, ID_temp: 20.127300, target_temp: 20.000000, diff: 0.127300, HVAC on: False, HVAC lockdown: 24, date: 2021-02-01 11:05:00
House ID: 11 -- OD_temp : 33.229954, ID_temp: 20.055946, target_temp: 20.000000, diff: 0.055946, HVAC on: False, HVAC lockdown: 8, date: 2021-02-01 11:05:00
House ID: 12 -- OD_temp : 33.229954, ID_temp: 20.080956, target_temp: 20.000000, diff: 0.080956, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-01 11:05:00
House ID: 13 -- OD_temp : 33.229954, ID_temp: 20.394811, target_temp: 20.000000, diff: 0.394811, HVAC on: False, HVAC lockdown: 24, date: 2021-02-01 11:05:00
House ID: 14 -- OD_temp : 33.229954, ID_temp: 20.414351, target_temp: 20.000000, diff: 0.414351, HVAC on: False, HVAC lockdown: 20, date: 2021-02-01 11:05:00
House ID: 15 -- OD_temp : 33.229954, ID_temp: 19.830163, target_temp: 20.000000, diff: -0.169837, HVAC on: False, HVAC lockdown: 12, date: 2021-02-01 11:05:00
House ID: 16 -- OD_temp : 33.229954, ID_temp: 20.643580, target_temp: 20.000000, diff: 0.643580, HVAC on: False, HVAC lockdown: 36, date: 2021-02-01 11:05:00
House ID: 17 -- OD_temp : 33.229954, ID_temp: 19.993113, target_temp: 20.000000, diff: -0.006887, HVAC on: False, HVAC lockdown: 24, date: 2021-02-01 11:05:00
House ID: 18 -- OD_temp : 33.229954, ID_temp: 31.466754, target_temp: 20.000000, diff: 11.466754, HVAC on: 0, HVAC lockdown: 1028, date: 2021-02-01 11:05:00
House ID: 19 -- OD_temp : 33.229954, ID_temp: 19.862938, target_temp: 20.000000, diff: -0.137062, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-01 11:05:00
Training step - 1638399 - Mean test return: -6.4649772049650895
House ID: 0 -- OD_temp : 29.357954, ID_temp: 20.042624, target_temp: 20.000000, diff: 0.042624, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-08 19:45:11
House ID: 1 -- OD_temp : 29.357954, ID_temp: 20.079991, target_temp: 20.000000, diff: 0.079991, HVAC on: False, HVAC lockdown: 36, date: 2021-12-08 19:45:11
House ID: 2 -- OD_temp : 29.357954, ID_temp: 20.002856, target_temp: 20.000000, diff: 0.002856, HVAC on: False, HVAC lockdown: 4, date: 2021-12-08 19:45:11
House ID: 3 -- OD_temp : 29.357954, ID_temp: 20.006637, target_temp: 20.000000, diff: 0.006637, HVAC on: False, HVAC lockdown: 4, date: 2021-12-08 19:45:11
House ID: 4 -- OD_temp : 29.357954, ID_temp: 20.001684, target_temp: 20.000000, diff: 0.001684, HVAC on: False, HVAC lockdown: 12, date: 2021-12-08 19:45:11
House ID: 5 -- OD_temp : 29.357954, ID_temp: 20.039104, target_temp: 20.000000, diff: 0.039104, HVAC on: False, HVAC lockdown: 8, date: 2021-12-08 19:45:11
House ID: 6 -- OD_temp : 29.357954, ID_temp: 20.052722, target_temp: 20.000000, diff: 0.052722, HVAC on: False, HVAC lockdown: 28, date: 2021-12-08 19:45:11
House ID: 7 -- OD_temp : 29.357954, ID_temp: 19.998814, target_temp: 20.000000, diff: -0.001186, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-08 19:45:11
House ID: 8 -- OD_temp : 29.357954, ID_temp: 19.994386, target_temp: 20.000000, diff: -0.005614, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-08 19:45:11
House ID: 9 -- OD_temp : 29.357954, ID_temp: 20.022370, target_temp: 20.000000, diff: 0.022370, HVAC on: False, HVAC lockdown: 12, date: 2021-12-08 19:45:11
House ID: 10 -- OD_temp : 29.357954, ID_temp: 19.996486, target_temp: 20.000000, diff: -0.003514, HVAC on: False, HVAC lockdown: 8, date: 2021-12-08 19:45:11
House ID: 11 -- OD_temp : 29.357954, ID_temp: 20.043961, target_temp: 20.000000, diff: 0.043961, HVAC on: False, HVAC lockdown: 20, date: 2021-12-08 19:45:11
House ID: 12 -- OD_temp : 29.357954, ID_temp: 20.020483, target_temp: 20.000000, diff: 0.020483, HVAC on: False, HVAC lockdown: 20, date: 2021-12-08 19:45:11
House ID: 13 -- OD_temp : 29.357954, ID_temp: 19.999716, target_temp: 20.000000, diff: -0.000284, HVAC on: False, HVAC lockdown: 4, date: 2021-12-08 19:45:11
House ID: 14 -- OD_temp : 29.357954, ID_temp: 20.048166, target_temp: 20.000000, diff: 0.048166, HVAC on: False, HVAC lockdown: 28, date: 2021-12-08 19:45:11
House ID: 15 -- OD_temp : 29.357954, ID_temp: 20.040292, target_temp: 20.000000, diff: 0.040292, HVAC on: False, HVAC lockdown: 28, date: 2021-12-08 19:45:11
House ID: 16 -- OD_temp : 29.357954, ID_temp: 19.997779, target_temp: 20.000000, diff: -0.002221, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-08 19:45:11
House ID: 17 -- OD_temp : 29.357954, ID_temp: 20.063634, target_temp: 20.000000, diff: 0.063634, HVAC on: False, HVAC lockdown: 36, date: 2021-12-08 19:45:11
House ID: 18 -- OD_temp : 29.357954, ID_temp: 20.026079, target_temp: 20.000000, diff: 0.026079, HVAC on: False, HVAC lockdown: 4, date: 2021-12-08 19:45:11
House ID: 19 -- OD_temp : 29.357954, ID_temp: 20.017603, target_temp: 20.000000, diff: 0.017603, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-08 19:45:11
New episode at time 1654783
Logging stats at time 1654783
Testing at time 1654783
House ID: 0 -- OD_temp : 28.107872, ID_temp: 19.993273, target_temp: 20.000000, diff: -0.006727, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 00:13:02
House ID: 1 -- OD_temp : 28.107872, ID_temp: 20.047766, target_temp: 20.000000, diff: 0.047766, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 00:13:02
House ID: 2 -- OD_temp : 28.107872, ID_temp: 20.065850, target_temp: 20.000000, diff: 0.065850, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 00:13:02
House ID: 3 -- OD_temp : 28.107872, ID_temp: 20.053056, target_temp: 20.000000, diff: 0.053056, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 00:13:02
House ID: 4 -- OD_temp : 28.107872, ID_temp: 20.059075, target_temp: 20.000000, diff: 0.059075, HVAC on: False, HVAC lockdown: 20, date: 2021-09-05 00:13:02
House ID: 5 -- OD_temp : 28.107872, ID_temp: 20.029877, target_temp: 20.000000, diff: 0.029877, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 00:13:02
House ID: 6 -- OD_temp : 28.107872, ID_temp: 20.011230, target_temp: 20.000000, diff: 0.011230, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 00:13:02
House ID: 7 -- OD_temp : 28.107872, ID_temp: 20.056722, target_temp: 20.000000, diff: 0.056722, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 00:13:02
House ID: 8 -- OD_temp : 28.107872, ID_temp: 20.045812, target_temp: 20.000000, diff: 0.045812, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 00:13:02
House ID: 9 -- OD_temp : 28.107872, ID_temp: 20.055276, target_temp: 20.000000, diff: 0.055276, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 00:13:02
House ID: 10 -- OD_temp : 28.107872, ID_temp: 20.075163, target_temp: 20.000000, diff: 0.075163, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 00:13:02
House ID: 11 -- OD_temp : 28.107872, ID_temp: 20.070851, target_temp: 20.000000, diff: 0.070851, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 00:13:02
House ID: 12 -- OD_temp : 28.107872, ID_temp: 20.000819, target_temp: 20.000000, diff: 0.000819, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 00:13:02
House ID: 13 -- OD_temp : 28.107872, ID_temp: 20.033934, target_temp: 20.000000, diff: 0.033934, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 00:13:02
House ID: 14 -- OD_temp : 28.107872, ID_temp: 20.021535, target_temp: 20.000000, diff: 0.021535, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 00:13:02
House ID: 15 -- OD_temp : 28.107872, ID_temp: 20.028891, target_temp: 20.000000, diff: 0.028891, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 00:13:02
House ID: 16 -- OD_temp : 28.107872, ID_temp: 19.986059, target_temp: 20.000000, diff: -0.013941, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 00:13:02
House ID: 17 -- OD_temp : 28.107872, ID_temp: 20.039735, target_temp: 20.000000, diff: 0.039735, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 00:13:02
House ID: 18 -- OD_temp : 28.107872, ID_temp: 20.028033, target_temp: 20.000000, diff: 0.028033, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 00:13:02
House ID: 19 -- OD_temp : 28.107872, ID_temp: 20.004598, target_temp: 20.000000, diff: 0.004598, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 00:13:02
House ID: 0 -- OD_temp : 34.008764, ID_temp: 20.095320, target_temp: 20.000000, diff: 0.095320, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 11:19:42
House ID: 1 -- OD_temp : 34.008764, ID_temp: 20.040466, target_temp: 20.000000, diff: 0.040466, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 11:19:42
House ID: 2 -- OD_temp : 34.008764, ID_temp: 20.003166, target_temp: 20.000000, diff: 0.003166, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 11:19:42
House ID: 3 -- OD_temp : 34.008764, ID_temp: 20.079478, target_temp: 20.000000, diff: 0.079478, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 11:19:42
House ID: 4 -- OD_temp : 34.008764, ID_temp: 20.151117, target_temp: 20.000000, diff: 0.151117, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 11:19:42
House ID: 5 -- OD_temp : 34.008764, ID_temp: 20.135893, target_temp: 20.000000, diff: 0.135893, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 11:19:42
House ID: 6 -- OD_temp : 34.008764, ID_temp: 20.188895, target_temp: 20.000000, diff: 0.188895, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 11:19:42
House ID: 7 -- OD_temp : 34.008764, ID_temp: 20.138788, target_temp: 20.000000, diff: 0.138788, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 11:19:42
House ID: 8 -- OD_temp : 34.008764, ID_temp: 20.053621, target_temp: 20.000000, diff: 0.053621, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 11:19:42
House ID: 9 -- OD_temp : 34.008764, ID_temp: 20.001597, target_temp: 20.000000, diff: 0.001597, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 11:19:42
House ID: 10 -- OD_temp : 34.008764, ID_temp: 20.133531, target_temp: 20.000000, diff: 0.133531, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 11:19:42
House ID: 11 -- OD_temp : 34.008764, ID_temp: 20.090501, target_temp: 20.000000, diff: 0.090501, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 11:19:42
House ID: 12 -- OD_temp : 34.008764, ID_temp: 20.050885, target_temp: 20.000000, diff: 0.050885, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 11:19:42
House ID: 13 -- OD_temp : 34.008764, ID_temp: 20.046899, target_temp: 20.000000, diff: 0.046899, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 11:19:42
House ID: 14 -- OD_temp : 34.008764, ID_temp: 20.143703, target_temp: 20.000000, diff: 0.143703, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 11:19:42
House ID: 15 -- OD_temp : 34.008764, ID_temp: 20.070919, target_temp: 20.000000, diff: 0.070919, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 11:19:42
House ID: 16 -- OD_temp : 34.008764, ID_temp: 20.039318, target_temp: 20.000000, diff: 0.039318, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 11:19:42
House ID: 17 -- OD_temp : 34.008764, ID_temp: 20.126371, target_temp: 20.000000, diff: 0.126371, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 11:19:42
House ID: 18 -- OD_temp : 34.008764, ID_temp: 20.077534, target_temp: 20.000000, diff: 0.077534, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 11:19:42
House ID: 19 -- OD_temp : 34.008764, ID_temp: 20.035030, target_temp: 20.000000, diff: 0.035030, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 11:19:42
Training step - 1654783 - Mean test return: -0.25765947103739634
House ID: 0 -- OD_temp : 32.295315, ID_temp: 20.078049, target_temp: 20.000000, diff: 0.078049, HVAC on: False, HVAC lockdown: 24, date: 2021-07-23 07:37:01
House ID: 1 -- OD_temp : 32.295315, ID_temp: 20.013443, target_temp: 20.000000, diff: 0.013443, HVAC on: False, HVAC lockdown: 4, date: 2021-07-23 07:37:01
House ID: 2 -- OD_temp : 32.295315, ID_temp: 20.108313, target_temp: 20.000000, diff: 0.108313, HVAC on: False, HVAC lockdown: 32, date: 2021-07-23 07:37:01
House ID: 3 -- OD_temp : 32.295315, ID_temp: 20.086521, target_temp: 20.000000, diff: 0.086521, HVAC on: False, HVAC lockdown: 32, date: 2021-07-23 07:37:01
House ID: 4 -- OD_temp : 32.295315, ID_temp: 20.031526, target_temp: 20.000000, diff: 0.031526, HVAC on: False, HVAC lockdown: 12, date: 2021-07-23 07:37:01
House ID: 5 -- OD_temp : 32.295315, ID_temp: 20.040219, target_temp: 20.000000, diff: 0.040219, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-23 07:37:01
House ID: 6 -- OD_temp : 32.295315, ID_temp: 20.066465, target_temp: 20.000000, diff: 0.066465, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-23 07:37:01
House ID: 7 -- OD_temp : 32.295315, ID_temp: 20.058856, target_temp: 20.000000, diff: 0.058856, HVAC on: False, HVAC lockdown: 20, date: 2021-07-23 07:37:01
House ID: 8 -- OD_temp : 32.295315, ID_temp: 19.978750, target_temp: 20.000000, diff: -0.021250, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-23 07:37:01
House ID: 9 -- OD_temp : 32.295315, ID_temp: 19.991931, target_temp: 20.000000, diff: -0.008069, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-23 07:37:01
House ID: 10 -- OD_temp : 32.295315, ID_temp: 20.015460, target_temp: 20.000000, diff: 0.015460, HVAC on: False, HVAC lockdown: 4, date: 2021-07-23 07:37:01
House ID: 11 -- OD_temp : 32.295315, ID_temp: 20.106268, target_temp: 20.000000, diff: 0.106268, HVAC on: False, HVAC lockdown: 32, date: 2021-07-23 07:37:01
House ID: 12 -- OD_temp : 32.295315, ID_temp: 20.084883, target_temp: 20.000000, diff: 0.084883, HVAC on: False, HVAC lockdown: 24, date: 2021-07-23 07:37:01
House ID: 13 -- OD_temp : 32.295315, ID_temp: 20.082819, target_temp: 20.000000, diff: 0.082819, HVAC on: False, HVAC lockdown: 16, date: 2021-07-23 07:37:01
House ID: 14 -- OD_temp : 32.295315, ID_temp: 20.006235, target_temp: 20.000000, diff: 0.006235, HVAC on: False, HVAC lockdown: 4, date: 2021-07-23 07:37:01
House ID: 15 -- OD_temp : 32.295315, ID_temp: 20.061434, target_temp: 20.000000, diff: 0.061434, HVAC on: False, HVAC lockdown: 4, date: 2021-07-23 07:37:01
House ID: 16 -- OD_temp : 32.295315, ID_temp: 20.044782, target_temp: 20.000000, diff: 0.044782, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-23 07:37:01
House ID: 17 -- OD_temp : 32.295315, ID_temp: 20.107221, target_temp: 20.000000, diff: 0.107221, HVAC on: False, HVAC lockdown: 32, date: 2021-07-23 07:37:01
House ID: 18 -- OD_temp : 32.295315, ID_temp: 20.056224, target_temp: 20.000000, diff: 0.056224, HVAC on: False, HVAC lockdown: 16, date: 2021-07-23 07:37:01
House ID: 19 -- OD_temp : 32.295315, ID_temp: 19.995342, target_temp: 20.000000, diff: -0.004658, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-23 07:37:01
New episode at time 1671167
Logging stats at time 1671167
Testing at time 1671167
House ID: 0 -- OD_temp : 33.191654, ID_temp: 20.140099, target_temp: 20.000000, diff: 0.140099, HVAC on: False, HVAC lockdown: 36, date: 2021-08-24 15:21:29
House ID: 1 -- OD_temp : 33.191654, ID_temp: 20.098350, target_temp: 20.000000, diff: 0.098350, HVAC on: False, HVAC lockdown: 32, date: 2021-08-24 15:21:29
House ID: 2 -- OD_temp : 33.191654, ID_temp: 20.130008, target_temp: 20.000000, diff: 0.130008, HVAC on: False, HVAC lockdown: 28, date: 2021-08-24 15:21:29
House ID: 3 -- OD_temp : 33.191654, ID_temp: 20.064893, target_temp: 20.000000, diff: 0.064893, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 15:21:29
House ID: 4 -- OD_temp : 33.191654, ID_temp: 20.033611, target_temp: 20.000000, diff: 0.033611, HVAC on: False, HVAC lockdown: 8, date: 2021-08-24 15:21:29
House ID: 5 -- OD_temp : 33.191654, ID_temp: 20.021164, target_temp: 20.000000, diff: 0.021164, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-24 15:21:29
House ID: 6 -- OD_temp : 33.191654, ID_temp: 20.025449, target_temp: 20.000000, diff: 0.025449, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-24 15:21:29
House ID: 7 -- OD_temp : 33.191654, ID_temp: 20.055640, target_temp: 20.000000, diff: 0.055640, HVAC on: False, HVAC lockdown: 8, date: 2021-08-24 15:21:29
House ID: 8 -- OD_temp : 33.191654, ID_temp: 20.104270, target_temp: 20.000000, diff: 0.104270, HVAC on: False, HVAC lockdown: 32, date: 2021-08-24 15:21:29
House ID: 9 -- OD_temp : 33.191654, ID_temp: 20.101641, target_temp: 20.000000, diff: 0.101641, HVAC on: False, HVAC lockdown: 24, date: 2021-08-24 15:21:29
House ID: 10 -- OD_temp : 33.191654, ID_temp: 20.060512, target_temp: 20.000000, diff: 0.060512, HVAC on: False, HVAC lockdown: 16, date: 2021-08-24 15:21:29
House ID: 11 -- OD_temp : 33.191654, ID_temp: 20.060194, target_temp: 20.000000, diff: 0.060194, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 15:21:29
House ID: 12 -- OD_temp : 33.191654, ID_temp: 20.101749, target_temp: 20.000000, diff: 0.101749, HVAC on: False, HVAC lockdown: 32, date: 2021-08-24 15:21:29
House ID: 13 -- OD_temp : 33.191654, ID_temp: 20.077797, target_temp: 20.000000, diff: 0.077797, HVAC on: False, HVAC lockdown: 12, date: 2021-08-24 15:21:29
House ID: 14 -- OD_temp : 33.191654, ID_temp: 20.020969, target_temp: 20.000000, diff: 0.020969, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-24 15:21:29
House ID: 15 -- OD_temp : 33.191654, ID_temp: 20.042040, target_temp: 20.000000, diff: 0.042040, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 15:21:29
House ID: 16 -- OD_temp : 33.191654, ID_temp: 20.089275, target_temp: 20.000000, diff: 0.089275, HVAC on: False, HVAC lockdown: 20, date: 2021-08-24 15:21:29
House ID: 17 -- OD_temp : 33.191654, ID_temp: 20.030192, target_temp: 20.000000, diff: 0.030192, HVAC on: False, HVAC lockdown: 8, date: 2021-08-24 15:21:29
House ID: 18 -- OD_temp : 33.191654, ID_temp: 20.009940, target_temp: 20.000000, diff: 0.009940, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-24 15:21:29
House ID: 19 -- OD_temp : 33.191654, ID_temp: 20.093009, target_temp: 20.000000, diff: 0.093009, HVAC on: False, HVAC lockdown: 24, date: 2021-08-24 15:21:29
House ID: 0 -- OD_temp : 28.305003, ID_temp: 19.998087, target_temp: 20.000000, diff: -0.001913, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-25 02:28:09
House ID: 1 -- OD_temp : 28.305003, ID_temp: 20.021735, target_temp: 20.000000, diff: 0.021735, HVAC on: False, HVAC lockdown: 24, date: 2021-08-25 02:28:09
House ID: 2 -- OD_temp : 28.305003, ID_temp: 20.026800, target_temp: 20.000000, diff: 0.026800, HVAC on: False, HVAC lockdown: 16, date: 2021-08-25 02:28:09
House ID: 3 -- OD_temp : 28.305003, ID_temp: 20.066010, target_temp: 20.000000, diff: 0.066010, HVAC on: False, HVAC lockdown: 32, date: 2021-08-25 02:28:09
House ID: 4 -- OD_temp : 28.305003, ID_temp: 20.049218, target_temp: 20.000000, diff: 0.049218, HVAC on: False, HVAC lockdown: 20, date: 2021-08-25 02:28:09
House ID: 5 -- OD_temp : 28.305003, ID_temp: 20.010912, target_temp: 20.000000, diff: 0.010912, HVAC on: False, HVAC lockdown: 4, date: 2021-08-25 02:28:09
House ID: 6 -- OD_temp : 28.305003, ID_temp: 20.073140, target_temp: 20.000000, diff: 0.073140, HVAC on: False, HVAC lockdown: 36, date: 2021-08-25 02:28:09
House ID: 7 -- OD_temp : 28.305003, ID_temp: 20.012548, target_temp: 20.000000, diff: 0.012548, HVAC on: False, HVAC lockdown: 4, date: 2021-08-25 02:28:09
House ID: 8 -- OD_temp : 28.305003, ID_temp: 19.991564, target_temp: 20.000000, diff: -0.008436, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-25 02:28:09
House ID: 9 -- OD_temp : 28.305003, ID_temp: 20.086073, target_temp: 20.000000, diff: 0.086073, HVAC on: False, HVAC lockdown: 36, date: 2021-08-25 02:28:09
House ID: 10 -- OD_temp : 28.305003, ID_temp: 20.032075, target_temp: 20.000000, diff: 0.032075, HVAC on: False, HVAC lockdown: 16, date: 2021-08-25 02:28:09
House ID: 11 -- OD_temp : 28.305003, ID_temp: 20.002759, target_temp: 20.000000, diff: 0.002759, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-25 02:28:09
House ID: 12 -- OD_temp : 28.305003, ID_temp: 20.075093, target_temp: 20.000000, diff: 0.075093, HVAC on: False, HVAC lockdown: 36, date: 2021-08-25 02:28:09
House ID: 13 -- OD_temp : 28.305003, ID_temp: 20.044915, target_temp: 20.000000, diff: 0.044915, HVAC on: False, HVAC lockdown: 20, date: 2021-08-25 02:28:09
House ID: 14 -- OD_temp : 28.305003, ID_temp: 20.009123, target_temp: 20.000000, diff: 0.009123, HVAC on: False, HVAC lockdown: 4, date: 2021-08-25 02:28:09
House ID: 15 -- OD_temp : 28.305003, ID_temp: 20.036771, target_temp: 20.000000, diff: 0.036771, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-25 02:28:09
House ID: 16 -- OD_temp : 28.305003, ID_temp: 20.050083, target_temp: 20.000000, diff: 0.050083, HVAC on: False, HVAC lockdown: 24, date: 2021-08-25 02:28:09
House ID: 17 -- OD_temp : 28.305003, ID_temp: 20.018124, target_temp: 20.000000, diff: 0.018124, HVAC on: False, HVAC lockdown: 8, date: 2021-08-25 02:28:09
House ID: 18 -- OD_temp : 28.305003, ID_temp: 19.989812, target_temp: 20.000000, diff: -0.010188, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-25 02:28:09
House ID: 19 -- OD_temp : 28.305003, ID_temp: 20.029195, target_temp: 20.000000, diff: 0.029195, HVAC on: False, HVAC lockdown: 12, date: 2021-08-25 02:28:09
Training step - 1671167 - Mean test return: -0.1743430192279078
House ID: 0 -- OD_temp : 29.431267, ID_temp: 20.023723, target_temp: 20.000000, diff: 0.023723, HVAC on: False, HVAC lockdown: 24, date: 2021-02-23 03:19:41
House ID: 1 -- OD_temp : 29.431267, ID_temp: 20.026763, target_temp: 20.000000, diff: 0.026763, HVAC on: False, HVAC lockdown: 4, date: 2021-02-23 03:19:41
House ID: 2 -- OD_temp : 29.431267, ID_temp: 20.059016, target_temp: 20.000000, diff: 0.059016, HVAC on: False, HVAC lockdown: 32, date: 2021-02-23 03:19:41
House ID: 3 -- OD_temp : 29.431267, ID_temp: 20.030883, target_temp: 20.000000, diff: 0.030883, HVAC on: False, HVAC lockdown: 36, date: 2021-02-23 03:19:41
House ID: 4 -- OD_temp : 29.431267, ID_temp: 19.991142, target_temp: 20.000000, diff: -0.008858, HVAC on: False, HVAC lockdown: 12, date: 2021-02-23 03:19:41
House ID: 5 -- OD_temp : 29.431267, ID_temp: 20.020055, target_temp: 20.000000, diff: 0.020055, HVAC on: False, HVAC lockdown: 36, date: 2021-02-23 03:19:41
House ID: 6 -- OD_temp : 29.431267, ID_temp: 20.002528, target_temp: 20.000000, diff: 0.002528, HVAC on: False, HVAC lockdown: 12, date: 2021-02-23 03:19:41
House ID: 7 -- OD_temp : 29.431267, ID_temp: 19.984381, target_temp: 20.000000, diff: -0.015619, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-23 03:19:41
House ID: 8 -- OD_temp : 29.431267, ID_temp: 19.994166, target_temp: 20.000000, diff: -0.005834, HVAC on: False, HVAC lockdown: 16, date: 2021-02-23 03:19:41
House ID: 9 -- OD_temp : 29.431267, ID_temp: 19.938137, target_temp: 20.000000, diff: -0.061863, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-23 03:19:41
House ID: 10 -- OD_temp : 29.431267, ID_temp: 20.008198, target_temp: 20.000000, diff: 0.008198, HVAC on: False, HVAC lockdown: 24, date: 2021-02-23 03:19:41
House ID: 11 -- OD_temp : 29.431267, ID_temp: 20.025267, target_temp: 20.000000, diff: 0.025267, HVAC on: False, HVAC lockdown: 4, date: 2021-02-23 03:19:41
House ID: 12 -- OD_temp : 29.431267, ID_temp: 20.028155, target_temp: 20.000000, diff: 0.028155, HVAC on: False, HVAC lockdown: 28, date: 2021-02-23 03:19:41
House ID: 13 -- OD_temp : 29.431267, ID_temp: 20.006512, target_temp: 20.000000, diff: 0.006512, HVAC on: False, HVAC lockdown: 4, date: 2021-02-23 03:19:41
House ID: 14 -- OD_temp : 29.431267, ID_temp: 20.046013, target_temp: 20.000000, diff: 0.046013, HVAC on: False, HVAC lockdown: 32, date: 2021-02-23 03:19:41
House ID: 15 -- OD_temp : 29.431267, ID_temp: 20.026797, target_temp: 20.000000, diff: 0.026797, HVAC on: False, HVAC lockdown: 4, date: 2021-02-23 03:19:41
House ID: 16 -- OD_temp : 29.431267, ID_temp: 19.979039, target_temp: 20.000000, diff: -0.020961, HVAC on: False, HVAC lockdown: 16, date: 2021-02-23 03:19:41
House ID: 17 -- OD_temp : 29.431267, ID_temp: 20.012948, target_temp: 20.000000, diff: 0.012948, HVAC on: False, HVAC lockdown: 4, date: 2021-02-23 03:19:41
House ID: 18 -- OD_temp : 29.431267, ID_temp: 19.986900, target_temp: 20.000000, diff: -0.013100, HVAC on: False, HVAC lockdown: 16, date: 2021-02-23 03:19:41
House ID: 19 -- OD_temp : 29.431267, ID_temp: 19.979365, target_temp: 20.000000, diff: -0.020635, HVAC on: False, HVAC lockdown: 4, date: 2021-02-23 03:19:41
New episode at time 1687551
Logging stats at time 1687551
Testing at time 1687551
House ID: 0 -- OD_temp : 33.407027, ID_temp: 20.090066, target_temp: 20.000000, diff: 0.090066, HVAC on: False, HVAC lockdown: 28, date: 2021-02-06 14:08:16
House ID: 1 -- OD_temp : 33.407027, ID_temp: 19.996170, target_temp: 20.000000, diff: -0.003830, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-06 14:08:16
House ID: 2 -- OD_temp : 33.407027, ID_temp: 20.094900, target_temp: 20.000000, diff: 0.094900, HVAC on: False, HVAC lockdown: 32, date: 2021-02-06 14:08:16
House ID: 3 -- OD_temp : 33.407027, ID_temp: 20.030202, target_temp: 20.000000, diff: 0.030202, HVAC on: False, HVAC lockdown: 8, date: 2021-02-06 14:08:16
House ID: 4 -- OD_temp : 33.407027, ID_temp: 20.124355, target_temp: 20.000000, diff: 0.124355, HVAC on: 0, HVAC lockdown: 40, date: 2021-02-06 14:08:16
House ID: 5 -- OD_temp : 33.407027, ID_temp: 20.056597, target_temp: 20.000000, diff: 0.056597, HVAC on: False, HVAC lockdown: 16, date: 2021-02-06 14:08:16
House ID: 6 -- OD_temp : 33.407027, ID_temp: 20.085061, target_temp: 20.000000, diff: 0.085061, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-06 14:08:16
House ID: 7 -- OD_temp : 33.407027, ID_temp: 20.069074, target_temp: 20.000000, diff: 0.069074, HVAC on: False, HVAC lockdown: 20, date: 2021-02-06 14:08:16
House ID: 8 -- OD_temp : 33.407027, ID_temp: 19.978301, target_temp: 20.000000, diff: -0.021699, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-06 14:08:16
House ID: 9 -- OD_temp : 33.407027, ID_temp: 20.058414, target_temp: 20.000000, diff: 0.058414, HVAC on: False, HVAC lockdown: 20, date: 2021-02-06 14:08:16
House ID: 10 -- OD_temp : 33.407027, ID_temp: 20.013822, target_temp: 20.000000, diff: 0.013822, HVAC on: False, HVAC lockdown: 4, date: 2021-02-06 14:08:16
House ID: 11 -- OD_temp : 33.407027, ID_temp: 20.084447, target_temp: 20.000000, diff: 0.084447, HVAC on: False, HVAC lockdown: 28, date: 2021-02-06 14:08:16
House ID: 12 -- OD_temp : 33.407027, ID_temp: 20.011153, target_temp: 20.000000, diff: 0.011153, HVAC on: False, HVAC lockdown: 4, date: 2021-02-06 14:08:16
House ID: 13 -- OD_temp : 33.407027, ID_temp: 20.105985, target_temp: 20.000000, diff: 0.105985, HVAC on: False, HVAC lockdown: 36, date: 2021-02-06 14:08:16
House ID: 14 -- OD_temp : 33.407027, ID_temp: 20.028481, target_temp: 20.000000, diff: 0.028481, HVAC on: False, HVAC lockdown: 8, date: 2021-02-06 14:08:16
House ID: 15 -- OD_temp : 33.407027, ID_temp: 20.084132, target_temp: 20.000000, diff: 0.084132, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-06 14:08:16
House ID: 16 -- OD_temp : 33.407027, ID_temp: 20.048289, target_temp: 20.000000, diff: 0.048289, HVAC on: False, HVAC lockdown: 16, date: 2021-02-06 14:08:16
House ID: 17 -- OD_temp : 33.407027, ID_temp: 20.092106, target_temp: 20.000000, diff: 0.092106, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-06 14:08:16
House ID: 18 -- OD_temp : 33.407027, ID_temp: 20.073163, target_temp: 20.000000, diff: 0.073163, HVAC on: False, HVAC lockdown: 24, date: 2021-02-06 14:08:16
House ID: 19 -- OD_temp : 33.407027, ID_temp: 19.981005, target_temp: 20.000000, diff: -0.018995, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-06 14:08:16
House ID: 0 -- OD_temp : 28.526733, ID_temp: 20.030651, target_temp: 20.000000, diff: 0.030651, HVAC on: False, HVAC lockdown: 8, date: 2021-02-07 01:14:56
House ID: 1 -- OD_temp : 28.526733, ID_temp: 20.063938, target_temp: 20.000000, diff: 0.063938, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-07 01:14:56
House ID: 2 -- OD_temp : 28.526733, ID_temp: 20.002861, target_temp: 20.000000, diff: 0.002861, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-07 01:14:56
House ID: 3 -- OD_temp : 28.526733, ID_temp: 20.015441, target_temp: 20.000000, diff: 0.015441, HVAC on: False, HVAC lockdown: 16, date: 2021-02-07 01:14:56
House ID: 4 -- OD_temp : 28.526733, ID_temp: 20.040879, target_temp: 20.000000, diff: 0.040879, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-07 01:14:56
House ID: 5 -- OD_temp : 28.526733, ID_temp: 20.012245, target_temp: 20.000000, diff: 0.012245, HVAC on: False, HVAC lockdown: 16, date: 2021-02-07 01:14:56
House ID: 6 -- OD_temp : 28.526733, ID_temp: 20.019015, target_temp: 20.000000, diff: 0.019015, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-07 01:14:56
House ID: 7 -- OD_temp : 28.526733, ID_temp: 20.013854, target_temp: 20.000000, diff: 0.013854, HVAC on: False, HVAC lockdown: 12, date: 2021-02-07 01:14:56
House ID: 8 -- OD_temp : 28.526733, ID_temp: 20.030368, target_temp: 20.000000, diff: 0.030368, HVAC on: False, HVAC lockdown: 28, date: 2021-02-07 01:14:56
House ID: 9 -- OD_temp : 28.526733, ID_temp: 19.982988, target_temp: 20.000000, diff: -0.017012, HVAC on: False, HVAC lockdown: 4, date: 2021-02-07 01:14:56
House ID: 10 -- OD_temp : 28.526733, ID_temp: 20.024443, target_temp: 20.000000, diff: 0.024443, HVAC on: False, HVAC lockdown: 28, date: 2021-02-07 01:14:56
House ID: 11 -- OD_temp : 28.526733, ID_temp: 19.999601, target_temp: 20.000000, diff: -0.000399, HVAC on: False, HVAC lockdown: 12, date: 2021-02-07 01:14:56
House ID: 12 -- OD_temp : 28.526733, ID_temp: 20.037744, target_temp: 20.000000, diff: 0.037744, HVAC on: False, HVAC lockdown: 24, date: 2021-02-07 01:14:56
House ID: 13 -- OD_temp : 28.526733, ID_temp: 20.034185, target_temp: 20.000000, diff: 0.034185, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-07 01:14:56
House ID: 14 -- OD_temp : 28.526733, ID_temp: 19.993561, target_temp: 20.000000, diff: -0.006439, HVAC on: False, HVAC lockdown: 16, date: 2021-02-07 01:14:56
House ID: 15 -- OD_temp : 28.526733, ID_temp: 20.019585, target_temp: 20.000000, diff: 0.019585, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-07 01:14:56
House ID: 16 -- OD_temp : 28.526733, ID_temp: 20.025851, target_temp: 20.000000, diff: 0.025851, HVAC on: False, HVAC lockdown: 24, date: 2021-02-07 01:14:56
House ID: 17 -- OD_temp : 28.526733, ID_temp: 20.040836, target_temp: 20.000000, diff: 0.040836, HVAC on: False, HVAC lockdown: 36, date: 2021-02-07 01:14:56
House ID: 18 -- OD_temp : 28.526733, ID_temp: 19.978106, target_temp: 20.000000, diff: -0.021894, HVAC on: False, HVAC lockdown: 4, date: 2021-02-07 01:14:56
House ID: 19 -- OD_temp : 28.526733, ID_temp: 20.017668, target_temp: 20.000000, diff: 0.017668, HVAC on: False, HVAC lockdown: 32, date: 2021-02-07 01:14:56
Training step - 1687551 - Mean test return: -0.2724044262938364
House ID: 0 -- OD_temp : 28.791159, ID_temp: 19.960528, target_temp: 20.000000, diff: -0.039472, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-25 00:51:51
House ID: 1 -- OD_temp : 28.791159, ID_temp: 20.052265, target_temp: 20.000000, diff: 0.052265, HVAC on: False, HVAC lockdown: 32, date: 2021-12-25 00:51:51
House ID: 2 -- OD_temp : 28.791159, ID_temp: 19.985936, target_temp: 20.000000, diff: -0.014064, HVAC on: False, HVAC lockdown: 8, date: 2021-12-25 00:51:51
House ID: 3 -- OD_temp : 28.791159, ID_temp: 20.057120, target_temp: 20.000000, diff: 0.057120, HVAC on: 0, HVAC lockdown: 40, date: 2021-12-25 00:51:51
House ID: 4 -- OD_temp : 28.791159, ID_temp: 19.981471, target_temp: 20.000000, diff: -0.018529, HVAC on: False, HVAC lockdown: 16, date: 2021-12-25 00:51:51
House ID: 5 -- OD_temp : 28.791159, ID_temp: 19.980281, target_temp: 20.000000, diff: -0.019719, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-25 00:51:51
House ID: 6 -- OD_temp : 28.791159, ID_temp: 19.983897, target_temp: 20.000000, diff: -0.016103, HVAC on: False, HVAC lockdown: 20, date: 2021-12-25 00:51:51
House ID: 7 -- OD_temp : 28.791159, ID_temp: 19.969973, target_temp: 20.000000, diff: -0.030027, HVAC on: False, HVAC lockdown: 4, date: 2021-12-25 00:51:51
House ID: 8 -- OD_temp : 28.791159, ID_temp: 19.999139, target_temp: 20.000000, diff: -0.000861, HVAC on: False, HVAC lockdown: 32, date: 2021-12-25 00:51:51
House ID: 9 -- OD_temp : 28.791159, ID_temp: 20.005904, target_temp: 20.000000, diff: 0.005904, HVAC on: False, HVAC lockdown: 28, date: 2021-12-25 00:51:51
House ID: 10 -- OD_temp : 28.791159, ID_temp: 19.987217, target_temp: 20.000000, diff: -0.012783, HVAC on: False, HVAC lockdown: 8, date: 2021-12-25 00:51:51
House ID: 11 -- OD_temp : 28.791159, ID_temp: 20.027770, target_temp: 20.000000, diff: 0.027770, HVAC on: 0, HVAC lockdown: 40, date: 2021-12-25 00:51:51
House ID: 12 -- OD_temp : 28.791159, ID_temp: 20.011800, target_temp: 20.000000, diff: 0.011800, HVAC on: False, HVAC lockdown: 16, date: 2021-12-25 00:51:51
House ID: 13 -- OD_temp : 28.791159, ID_temp: 19.966701, target_temp: 20.000000, diff: -0.033299, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-25 00:51:51
House ID: 14 -- OD_temp : 28.791159, ID_temp: 19.982007, target_temp: 20.000000, diff: -0.017993, HVAC on: False, HVAC lockdown: 16, date: 2021-12-25 00:51:51
House ID: 15 -- OD_temp : 28.791159, ID_temp: 20.000813, target_temp: 20.000000, diff: 0.000813, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-25 00:51:51
House ID: 16 -- OD_temp : 28.791159, ID_temp: 20.014702, target_temp: 20.000000, diff: 0.014702, HVAC on: False, HVAC lockdown: 32, date: 2021-12-25 00:51:51
House ID: 17 -- OD_temp : 28.791159, ID_temp: 20.011398, target_temp: 20.000000, diff: 0.011398, HVAC on: False, HVAC lockdown: 8, date: 2021-12-25 00:51:51
House ID: 18 -- OD_temp : 28.791159, ID_temp: 20.021190, target_temp: 20.000000, diff: 0.021190, HVAC on: False, HVAC lockdown: 32, date: 2021-12-25 00:51:51
House ID: 19 -- OD_temp : 28.791159, ID_temp: 20.035627, target_temp: 20.000000, diff: 0.035627, HVAC on: False, HVAC lockdown: 24, date: 2021-12-25 00:51:51
New episode at time 1703935
Logging stats at time 1703935
Testing at time 1703935
House ID: 0 -- OD_temp : 30.580578, ID_temp: 20.026128, target_temp: 20.000000, diff: 0.026128, HVAC on: False, HVAC lockdown: 24, date: 2021-08-21 05:54:20
House ID: 1 -- OD_temp : 30.580578, ID_temp: 20.003541, target_temp: 20.000000, diff: 0.003541, HVAC on: False, HVAC lockdown: 16, date: 2021-08-21 05:54:20
House ID: 2 -- OD_temp : 30.580578, ID_temp: 20.052975, target_temp: 20.000000, diff: 0.052975, HVAC on: False, HVAC lockdown: 32, date: 2021-08-21 05:54:20
House ID: 3 -- OD_temp : 30.580578, ID_temp: 20.050906, target_temp: 20.000000, diff: 0.050906, HVAC on: False, HVAC lockdown: 28, date: 2021-08-21 05:54:20
House ID: 4 -- OD_temp : 30.580578, ID_temp: 20.007659, target_temp: 20.000000, diff: 0.007659, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 05:54:20
House ID: 5 -- OD_temp : 30.580578, ID_temp: 20.052221, target_temp: 20.000000, diff: 0.052221, HVAC on: False, HVAC lockdown: 36, date: 2021-08-21 05:54:20
House ID: 6 -- OD_temp : 30.580578, ID_temp: 19.961831, target_temp: 20.000000, diff: -0.038169, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-21 05:54:20
House ID: 7 -- OD_temp : 30.580578, ID_temp: 19.946810, target_temp: 20.000000, diff: -0.053190, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 05:54:20
House ID: 8 -- OD_temp : 30.580578, ID_temp: 19.997623, target_temp: 20.000000, diff: -0.002377, HVAC on: False, HVAC lockdown: 12, date: 2021-08-21 05:54:20
House ID: 9 -- OD_temp : 30.580578, ID_temp: 19.979823, target_temp: 20.000000, diff: -0.020177, HVAC on: False, HVAC lockdown: 8, date: 2021-08-21 05:54:20
House ID: 10 -- OD_temp : 30.580578, ID_temp: 20.021967, target_temp: 20.000000, diff: 0.021967, HVAC on: False, HVAC lockdown: 24, date: 2021-08-21 05:54:20
House ID: 11 -- OD_temp : 30.580578, ID_temp: 20.016046, target_temp: 20.000000, diff: 0.016046, HVAC on: False, HVAC lockdown: 16, date: 2021-08-21 05:54:20
House ID: 12 -- OD_temp : 30.580578, ID_temp: 20.018422, target_temp: 20.000000, diff: 0.018422, HVAC on: False, HVAC lockdown: 28, date: 2021-08-21 05:54:20
House ID: 13 -- OD_temp : 30.580578, ID_temp: 20.026153, target_temp: 20.000000, diff: 0.026153, HVAC on: False, HVAC lockdown: 28, date: 2021-08-21 05:54:20
House ID: 14 -- OD_temp : 30.580578, ID_temp: 20.001991, target_temp: 20.000000, diff: 0.001991, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 05:54:20
House ID: 15 -- OD_temp : 30.580578, ID_temp: 20.046381, target_temp: 20.000000, diff: 0.046381, HVAC on: False, HVAC lockdown: 36, date: 2021-08-21 05:54:20
House ID: 16 -- OD_temp : 30.580578, ID_temp: 19.944768, target_temp: 20.000000, diff: -0.055232, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-21 05:54:20
House ID: 17 -- OD_temp : 30.580578, ID_temp: 19.960719, target_temp: 20.000000, diff: -0.039281, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 05:54:20
House ID: 18 -- OD_temp : 30.580578, ID_temp: 20.014691, target_temp: 20.000000, diff: 0.014691, HVAC on: False, HVAC lockdown: 16, date: 2021-08-21 05:54:20
House ID: 19 -- OD_temp : 30.580578, ID_temp: 19.987547, target_temp: 20.000000, diff: -0.012453, HVAC on: False, HVAC lockdown: 8, date: 2021-08-21 05:54:20
House ID: 0 -- OD_temp : 32.933404, ID_temp: 19.950339, target_temp: 20.000000, diff: -0.049661, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 1 -- OD_temp : 32.933404, ID_temp: 20.041882, target_temp: 20.000000, diff: 0.041882, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 2 -- OD_temp : 32.933404, ID_temp: 19.932490, target_temp: 20.000000, diff: -0.067510, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 3 -- OD_temp : 32.933404, ID_temp: 19.938046, target_temp: 20.000000, diff: -0.061954, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 4 -- OD_temp : 32.933404, ID_temp: 19.962765, target_temp: 20.000000, diff: -0.037235, HVAC on: False, HVAC lockdown: 12, date: 2021-08-21 17:01:00
House ID: 5 -- OD_temp : 32.933404, ID_temp: 20.012718, target_temp: 20.000000, diff: 0.012718, HVAC on: False, HVAC lockdown: 12, date: 2021-08-21 17:01:00
House ID: 6 -- OD_temp : 32.933404, ID_temp: 20.029337, target_temp: 20.000000, diff: 0.029337, HVAC on: False, HVAC lockdown: 24, date: 2021-08-21 17:01:00
House ID: 7 -- OD_temp : 32.933404, ID_temp: 20.038689, target_temp: 20.000000, diff: 0.038689, HVAC on: False, HVAC lockdown: 24, date: 2021-08-21 17:01:00
House ID: 8 -- OD_temp : 32.933404, ID_temp: 20.067553, target_temp: 20.000000, diff: 0.067553, HVAC on: False, HVAC lockdown: 36, date: 2021-08-21 17:01:00
House ID: 9 -- OD_temp : 32.933404, ID_temp: 20.059890, target_temp: 20.000000, diff: 0.059890, HVAC on: False, HVAC lockdown: 32, date: 2021-08-21 17:01:00
House ID: 10 -- OD_temp : 32.933404, ID_temp: 19.989803, target_temp: 20.000000, diff: -0.010197, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 11 -- OD_temp : 32.933404, ID_temp: 20.036718, target_temp: 20.000000, diff: 0.036718, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 12 -- OD_temp : 32.933404, ID_temp: 19.952669, target_temp: 20.000000, diff: -0.047331, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 13 -- OD_temp : 32.933404, ID_temp: 19.968683, target_temp: 20.000000, diff: -0.031317, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 14 -- OD_temp : 32.933404, ID_temp: 19.971740, target_temp: 20.000000, diff: -0.028260, HVAC on: False, HVAC lockdown: 12, date: 2021-08-21 17:01:00
House ID: 15 -- OD_temp : 32.933404, ID_temp: 20.003283, target_temp: 20.000000, diff: 0.003283, HVAC on: False, HVAC lockdown: 8, date: 2021-08-21 17:01:00
House ID: 16 -- OD_temp : 32.933404, ID_temp: 20.041611, target_temp: 20.000000, diff: 0.041611, HVAC on: False, HVAC lockdown: 24, date: 2021-08-21 17:01:00
House ID: 17 -- OD_temp : 32.933404, ID_temp: 20.023402, target_temp: 20.000000, diff: 0.023402, HVAC on: False, HVAC lockdown: 20, date: 2021-08-21 17:01:00
House ID: 18 -- OD_temp : 32.933404, ID_temp: 20.033673, target_temp: 20.000000, diff: 0.033673, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-21 17:01:00
House ID: 19 -- OD_temp : 32.933404, ID_temp: 20.059906, target_temp: 20.000000, diff: 0.059906, HVAC on: False, HVAC lockdown: 32, date: 2021-08-21 17:01:00
Training step - 1703935 - Mean test return: -0.15698247933983617
House ID: 0 -- OD_temp : 27.646868, ID_temp: 19.976673, target_temp: 20.000000, diff: -0.023327, HVAC on: False, HVAC lockdown: 20, date: 2021-10-28 01:10:42
House ID: 1 -- OD_temp : 27.646868, ID_temp: 20.009146, target_temp: 20.000000, diff: 0.009146, HVAC on: False, HVAC lockdown: 16, date: 2021-10-28 01:10:42
House ID: 2 -- OD_temp : 27.646868, ID_temp: 20.028067, target_temp: 20.000000, diff: 0.028067, HVAC on: False, HVAC lockdown: 32, date: 2021-10-28 01:10:42
House ID: 3 -- OD_temp : 27.646868, ID_temp: 19.993390, target_temp: 20.000000, diff: -0.006610, HVAC on: False, HVAC lockdown: 24, date: 2021-10-28 01:10:42
House ID: 4 -- OD_temp : 27.646868, ID_temp: 19.971358, target_temp: 20.000000, diff: -0.028642, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-28 01:10:42
House ID: 5 -- OD_temp : 27.646868, ID_temp: 20.005669, target_temp: 20.000000, diff: 0.005669, HVAC on: False, HVAC lockdown: 32, date: 2021-10-28 01:10:42
House ID: 6 -- OD_temp : 27.646868, ID_temp: 19.976306, target_temp: 20.000000, diff: -0.023694, HVAC on: False, HVAC lockdown: 4, date: 2021-10-28 01:10:42
House ID: 7 -- OD_temp : 27.646868, ID_temp: 19.973120, target_temp: 20.000000, diff: -0.026880, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-28 01:10:42
House ID: 8 -- OD_temp : 27.646868, ID_temp: 19.958885, target_temp: 20.000000, diff: -0.041115, HVAC on: False, HVAC lockdown: 8, date: 2021-10-28 01:10:42
House ID: 9 -- OD_temp : 27.646868, ID_temp: 19.966674, target_temp: 20.000000, diff: -0.033326, HVAC on: False, HVAC lockdown: 4, date: 2021-10-28 01:10:42
House ID: 10 -- OD_temp : 27.646868, ID_temp: 20.004854, target_temp: 20.000000, diff: 0.004854, HVAC on: False, HVAC lockdown: 20, date: 2021-10-28 01:10:42
House ID: 11 -- OD_temp : 27.646868, ID_temp: 19.989496, target_temp: 20.000000, diff: -0.010504, HVAC on: False, HVAC lockdown: 12, date: 2021-10-28 01:10:42
House ID: 12 -- OD_temp : 27.646868, ID_temp: 19.997375, target_temp: 20.000000, diff: -0.002625, HVAC on: False, HVAC lockdown: 24, date: 2021-10-28 01:10:42
House ID: 13 -- OD_temp : 27.646868, ID_temp: 20.024164, target_temp: 20.000000, diff: 0.024164, HVAC on: False, HVAC lockdown: 16, date: 2021-10-28 01:10:42
House ID: 14 -- OD_temp : 27.646868, ID_temp: 19.964839, target_temp: 20.000000, diff: -0.035161, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-28 01:10:42
House ID: 15 -- OD_temp : 27.646868, ID_temp: 20.010959, target_temp: 20.000000, diff: 0.010959, HVAC on: False, HVAC lockdown: 28, date: 2021-10-28 01:10:42
House ID: 16 -- OD_temp : 27.646868, ID_temp: 19.980192, target_temp: 20.000000, diff: -0.019808, HVAC on: False, HVAC lockdown: 4, date: 2021-10-28 01:10:42
House ID: 17 -- OD_temp : 27.646868, ID_temp: 20.063251, target_temp: 20.000000, diff: 0.063251, HVAC on: False, HVAC lockdown: 36, date: 2021-10-28 01:10:42
House ID: 18 -- OD_temp : 27.646868, ID_temp: 20.014688, target_temp: 20.000000, diff: 0.014688, HVAC on: False, HVAC lockdown: 16, date: 2021-10-28 01:10:42
House ID: 19 -- OD_temp : 27.646868, ID_temp: 19.952184, target_temp: 20.000000, diff: -0.047816, HVAC on: False, HVAC lockdown: 4, date: 2021-10-28 01:10:42
New episode at time 1720319
Logging stats at time 1720319
Testing at time 1720319
House ID: 0 -- OD_temp : 28.900089, ID_temp: 19.954828, target_temp: 20.000000, diff: -0.045172, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-15 21:12:22
House ID: 1 -- OD_temp : 28.900089, ID_temp: 19.993066, target_temp: 20.000000, diff: -0.006934, HVAC on: False, HVAC lockdown: 8, date: 2021-04-15 21:12:22
House ID: 2 -- OD_temp : 28.900089, ID_temp: 20.000113, target_temp: 20.000000, diff: 0.000113, HVAC on: False, HVAC lockdown: 8, date: 2021-04-15 21:12:22
House ID: 3 -- OD_temp : 28.900089, ID_temp: 19.987512, target_temp: 20.000000, diff: -0.012488, HVAC on: False, HVAC lockdown: 16, date: 2021-04-15 21:12:22
House ID: 4 -- OD_temp : 28.900089, ID_temp: 19.996676, target_temp: 20.000000, diff: -0.003324, HVAC on: False, HVAC lockdown: 16, date: 2021-04-15 21:12:22
House ID: 5 -- OD_temp : 28.900089, ID_temp: 20.018256, target_temp: 20.000000, diff: 0.018256, HVAC on: False, HVAC lockdown: 28, date: 2021-04-15 21:12:22
House ID: 6 -- OD_temp : 28.900089, ID_temp: 19.979812, target_temp: 20.000000, diff: -0.020188, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-15 21:12:22
House ID: 7 -- OD_temp : 28.900089, ID_temp: 20.035706, target_temp: 20.000000, diff: 0.035706, HVAC on: False, HVAC lockdown: 32, date: 2021-04-15 21:12:22
House ID: 8 -- OD_temp : 28.900089, ID_temp: 19.951332, target_temp: 20.000000, diff: -0.048668, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-15 21:12:22
House ID: 9 -- OD_temp : 28.900089, ID_temp: 19.962222, target_temp: 20.000000, diff: -0.037778, HVAC on: False, HVAC lockdown: 8, date: 2021-04-15 21:12:22
House ID: 10 -- OD_temp : 28.900089, ID_temp: 19.942595, target_temp: 20.000000, diff: -0.057405, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-15 21:12:22
House ID: 11 -- OD_temp : 28.900089, ID_temp: 19.997442, target_temp: 20.000000, diff: -0.002558, HVAC on: False, HVAC lockdown: 20, date: 2021-04-15 21:12:22
House ID: 12 -- OD_temp : 28.900089, ID_temp: 19.984467, target_temp: 20.000000, diff: -0.015533, HVAC on: False, HVAC lockdown: 8, date: 2021-04-15 21:12:22
House ID: 13 -- OD_temp : 28.900089, ID_temp: 20.012663, target_temp: 20.000000, diff: 0.012663, HVAC on: False, HVAC lockdown: 20, date: 2021-04-15 21:12:22
House ID: 14 -- OD_temp : 28.900089, ID_temp: 20.021955, target_temp: 20.000000, diff: 0.021955, HVAC on: False, HVAC lockdown: 32, date: 2021-04-15 21:12:22
House ID: 15 -- OD_temp : 28.900089, ID_temp: 19.999647, target_temp: 20.000000, diff: -0.000353, HVAC on: False, HVAC lockdown: 20, date: 2021-04-15 21:12:22
House ID: 16 -- OD_temp : 28.900089, ID_temp: 20.022469, target_temp: 20.000000, diff: 0.022469, HVAC on: False, HVAC lockdown: 36, date: 2021-04-15 21:12:22
House ID: 17 -- OD_temp : 28.900089, ID_temp: 20.048342, target_temp: 20.000000, diff: 0.048342, HVAC on: False, HVAC lockdown: 36, date: 2021-04-15 21:12:22
House ID: 18 -- OD_temp : 28.900089, ID_temp: 19.982250, target_temp: 20.000000, diff: -0.017750, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-15 21:12:22
House ID: 19 -- OD_temp : 28.900089, ID_temp: 19.972674, target_temp: 20.000000, diff: -0.027326, HVAC on: False, HVAC lockdown: 4, date: 2021-04-15 21:12:22
House ID: 0 -- OD_temp : 32.708630, ID_temp: 20.099838, target_temp: 20.000000, diff: 0.099838, HVAC on: False, HVAC lockdown: 32, date: 2021-04-16 08:19:02
House ID: 1 -- OD_temp : 32.708630, ID_temp: 20.049602, target_temp: 20.000000, diff: 0.049602, HVAC on: False, HVAC lockdown: 24, date: 2021-04-16 08:19:02
House ID: 2 -- OD_temp : 32.708630, ID_temp: 19.993926, target_temp: 20.000000, diff: -0.006074, HVAC on: False, HVAC lockdown: 4, date: 2021-04-16 08:19:02
House ID: 3 -- OD_temp : 32.708630, ID_temp: 20.099550, target_temp: 20.000000, diff: 0.099550, HVAC on: False, HVAC lockdown: 36, date: 2021-04-16 08:19:02
House ID: 4 -- OD_temp : 32.708630, ID_temp: 19.997261, target_temp: 20.000000, diff: -0.002739, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-16 08:19:02
House ID: 5 -- OD_temp : 32.708630, ID_temp: 20.016189, target_temp: 20.000000, diff: 0.016189, HVAC on: False, HVAC lockdown: 16, date: 2021-04-16 08:19:02
House ID: 6 -- OD_temp : 32.708630, ID_temp: 20.015747, target_temp: 20.000000, diff: 0.015747, HVAC on: False, HVAC lockdown: 16, date: 2021-04-16 08:19:02
House ID: 7 -- OD_temp : 32.708630, ID_temp: 19.997429, target_temp: 20.000000, diff: -0.002571, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-16 08:19:02
House ID: 8 -- OD_temp : 32.708630, ID_temp: 20.068927, target_temp: 20.000000, diff: 0.068927, HVAC on: False, HVAC lockdown: 28, date: 2021-04-16 08:19:02
House ID: 9 -- OD_temp : 32.708630, ID_temp: 19.997486, target_temp: 20.000000, diff: -0.002514, HVAC on: False, HVAC lockdown: 8, date: 2021-04-16 08:19:02
House ID: 10 -- OD_temp : 32.708630, ID_temp: 20.025363, target_temp: 20.000000, diff: 0.025363, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-16 08:19:02
House ID: 11 -- OD_temp : 32.708630, ID_temp: 20.095935, target_temp: 20.000000, diff: 0.095935, HVAC on: False, HVAC lockdown: 36, date: 2021-04-16 08:19:02
House ID: 12 -- OD_temp : 32.708630, ID_temp: 20.017703, target_temp: 20.000000, diff: 0.017703, HVAC on: False, HVAC lockdown: 12, date: 2021-04-16 08:19:02
House ID: 13 -- OD_temp : 32.708630, ID_temp: 19.970800, target_temp: 20.000000, diff: -0.029200, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-16 08:19:02
House ID: 14 -- OD_temp : 32.708630, ID_temp: 20.105521, target_temp: 20.000000, diff: 0.105521, HVAC on: False, HVAC lockdown: 28, date: 2021-04-16 08:19:02
House ID: 15 -- OD_temp : 32.708630, ID_temp: 20.022320, target_temp: 20.000000, diff: 0.022320, HVAC on: False, HVAC lockdown: 16, date: 2021-04-16 08:19:02
House ID: 16 -- OD_temp : 32.708630, ID_temp: 19.963331, target_temp: 20.000000, diff: -0.036669, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-16 08:19:02
House ID: 17 -- OD_temp : 32.708630, ID_temp: 20.078071, target_temp: 20.000000, diff: 0.078071, HVAC on: False, HVAC lockdown: 32, date: 2021-04-16 08:19:02
House ID: 18 -- OD_temp : 32.708630, ID_temp: 20.027189, target_temp: 20.000000, diff: 0.027189, HVAC on: False, HVAC lockdown: 16, date: 2021-04-16 08:19:02
House ID: 19 -- OD_temp : 32.708630, ID_temp: 19.975282, target_temp: 20.000000, diff: -0.024718, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-16 08:19:02
Training step - 1720319 - Mean test return: -0.30048871205510824
House ID: 0 -- OD_temp : 33.578198, ID_temp: 20.063100, target_temp: 20.000000, diff: 0.063100, HVAC on: False, HVAC lockdown: 20, date: 2021-01-24 10:57:06
House ID: 1 -- OD_temp : 33.578198, ID_temp: 20.014629, target_temp: 20.000000, diff: 0.014629, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-24 10:57:06
House ID: 2 -- OD_temp : 33.578198, ID_temp: 19.960802, target_temp: 20.000000, diff: -0.039198, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-24 10:57:06
House ID: 3 -- OD_temp : 33.578198, ID_temp: 20.094272, target_temp: 20.000000, diff: 0.094272, HVAC on: False, HVAC lockdown: 24, date: 2021-01-24 10:57:06
House ID: 4 -- OD_temp : 33.578198, ID_temp: 20.041108, target_temp: 20.000000, diff: 0.041108, HVAC on: False, HVAC lockdown: 8, date: 2021-01-24 10:57:06
House ID: 5 -- OD_temp : 33.578198, ID_temp: 20.112210, target_temp: 20.000000, diff: 0.112210, HVAC on: False, HVAC lockdown: 32, date: 2021-01-24 10:57:06
House ID: 6 -- OD_temp : 33.578198, ID_temp: 20.101776, target_temp: 20.000000, diff: 0.101776, HVAC on: False, HVAC lockdown: 28, date: 2021-01-24 10:57:06
House ID: 7 -- OD_temp : 33.578198, ID_temp: 20.062379, target_temp: 20.000000, diff: 0.062379, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-24 10:57:06
House ID: 8 -- OD_temp : 33.578198, ID_temp: 20.074970, target_temp: 20.000000, diff: 0.074970, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-24 10:57:06
House ID: 9 -- OD_temp : 33.578198, ID_temp: 19.970187, target_temp: 20.000000, diff: -0.029813, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-24 10:57:06
House ID: 10 -- OD_temp : 33.578198, ID_temp: 20.074221, target_temp: 20.000000, diff: 0.074221, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-24 10:57:06
House ID: 11 -- OD_temp : 33.578198, ID_temp: 20.075681, target_temp: 20.000000, diff: 0.075681, HVAC on: False, HVAC lockdown: 16, date: 2021-01-24 10:57:06
House ID: 12 -- OD_temp : 33.578198, ID_temp: 20.005055, target_temp: 20.000000, diff: 0.005055, HVAC on: False, HVAC lockdown: 8, date: 2021-01-24 10:57:06
House ID: 13 -- OD_temp : 33.578198, ID_temp: 20.072539, target_temp: 20.000000, diff: 0.072539, HVAC on: False, HVAC lockdown: 12, date: 2021-01-24 10:57:06
House ID: 14 -- OD_temp : 33.578198, ID_temp: 20.073063, target_temp: 20.000000, diff: 0.073063, HVAC on: False, HVAC lockdown: 24, date: 2021-01-24 10:57:06
House ID: 15 -- OD_temp : 33.578198, ID_temp: 20.051888, target_temp: 20.000000, diff: 0.051888, HVAC on: False, HVAC lockdown: 8, date: 2021-01-24 10:57:06
House ID: 16 -- OD_temp : 33.578198, ID_temp: 20.055394, target_temp: 20.000000, diff: 0.055394, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-24 10:57:06
House ID: 17 -- OD_temp : 33.578198, ID_temp: 20.071932, target_temp: 20.000000, diff: 0.071932, HVAC on: False, HVAC lockdown: 24, date: 2021-01-24 10:57:06
House ID: 18 -- OD_temp : 33.578198, ID_temp: 20.013342, target_temp: 20.000000, diff: 0.013342, HVAC on: False, HVAC lockdown: 4, date: 2021-01-24 10:57:06
House ID: 19 -- OD_temp : 33.578198, ID_temp: 20.078733, target_temp: 20.000000, diff: 0.078733, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-24 10:57:06
New episode at time 1736703
Logging stats at time 1736703
Testing at time 1736703
House ID: 0 -- OD_temp : 28.049226, ID_temp: 20.009309, target_temp: 20.000000, diff: 0.009309, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-21 21:32:02
House ID: 1 -- OD_temp : 28.049226, ID_temp: 20.025397, target_temp: 20.000000, diff: 0.025397, HVAC on: False, HVAC lockdown: 20, date: 2021-02-21 21:32:02
House ID: 2 -- OD_temp : 28.049226, ID_temp: 19.983546, target_temp: 20.000000, diff: -0.016454, HVAC on: False, HVAC lockdown: 8, date: 2021-02-21 21:32:02
House ID: 3 -- OD_temp : 28.049226, ID_temp: 20.033089, target_temp: 20.000000, diff: 0.033089, HVAC on: False, HVAC lockdown: 24, date: 2021-02-21 21:32:02
House ID: 4 -- OD_temp : 28.049226, ID_temp: 20.049997, target_temp: 20.000000, diff: 0.049997, HVAC on: False, HVAC lockdown: 32, date: 2021-02-21 21:32:02
House ID: 5 -- OD_temp : 28.049226, ID_temp: 20.028910, target_temp: 20.000000, diff: 0.028910, HVAC on: False, HVAC lockdown: 12, date: 2021-02-21 21:32:02
House ID: 6 -- OD_temp : 28.049226, ID_temp: 20.059363, target_temp: 20.000000, diff: 0.059363, HVAC on: False, HVAC lockdown: 36, date: 2021-02-21 21:32:02
House ID: 7 -- OD_temp : 28.049226, ID_temp: 20.025407, target_temp: 20.000000, diff: 0.025407, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-21 21:32:02
House ID: 8 -- OD_temp : 28.049226, ID_temp: 20.034490, target_temp: 20.000000, diff: 0.034490, HVAC on: False, HVAC lockdown: 16, date: 2021-02-21 21:32:02
House ID: 9 -- OD_temp : 28.049226, ID_temp: 20.032359, target_temp: 20.000000, diff: 0.032359, HVAC on: False, HVAC lockdown: 20, date: 2021-02-21 21:32:02
House ID: 10 -- OD_temp : 28.049226, ID_temp: 19.986115, target_temp: 20.000000, diff: -0.013885, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-21 21:32:02
House ID: 11 -- OD_temp : 28.049226, ID_temp: 20.003237, target_temp: 20.000000, diff: 0.003237, HVAC on: False, HVAC lockdown: 16, date: 2021-02-21 21:32:02
House ID: 12 -- OD_temp : 28.049226, ID_temp: 20.052837, target_temp: 20.000000, diff: 0.052837, HVAC on: False, HVAC lockdown: 32, date: 2021-02-21 21:32:02
House ID: 13 -- OD_temp : 28.049226, ID_temp: 20.000553, target_temp: 20.000000, diff: 0.000553, HVAC on: False, HVAC lockdown: 8, date: 2021-02-21 21:32:02
House ID: 14 -- OD_temp : 28.049226, ID_temp: 20.012930, target_temp: 20.000000, diff: 0.012930, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-21 21:32:02
House ID: 15 -- OD_temp : 28.049226, ID_temp: 20.040183, target_temp: 20.000000, diff: 0.040183, HVAC on: False, HVAC lockdown: 24, date: 2021-02-21 21:32:02
House ID: 16 -- OD_temp : 28.049226, ID_temp: 19.991931, target_temp: 20.000000, diff: -0.008069, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-21 21:32:02
House ID: 17 -- OD_temp : 28.049226, ID_temp: 20.058967, target_temp: 20.000000, diff: 0.058967, HVAC on: False, HVAC lockdown: 32, date: 2021-02-21 21:32:02
House ID: 18 -- OD_temp : 28.049226, ID_temp: 20.050851, target_temp: 20.000000, diff: 0.050851, HVAC on: False, HVAC lockdown: 32, date: 2021-02-21 21:32:02
House ID: 19 -- OD_temp : 28.049226, ID_temp: 19.995715, target_temp: 20.000000, diff: -0.004285, HVAC on: False, HVAC lockdown: 8, date: 2021-02-21 21:32:02
House ID: 0 -- OD_temp : 33.574198, ID_temp: 20.065337, target_temp: 20.000000, diff: 0.065337, HVAC on: False, HVAC lockdown: 24, date: 2021-02-22 08:38:42
House ID: 1 -- OD_temp : 33.574198, ID_temp: 19.984815, target_temp: 20.000000, diff: -0.015185, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-22 08:38:42
House ID: 2 -- OD_temp : 33.574198, ID_temp: 20.061359, target_temp: 20.000000, diff: 0.061359, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-22 08:38:42
House ID: 3 -- OD_temp : 33.574198, ID_temp: 19.998604, target_temp: 20.000000, diff: -0.001396, HVAC on: False, HVAC lockdown: 4, date: 2021-02-22 08:38:42
House ID: 4 -- OD_temp : 33.574198, ID_temp: 20.055121, target_temp: 20.000000, diff: 0.055121, HVAC on: False, HVAC lockdown: 16, date: 2021-02-22 08:38:42
House ID: 5 -- OD_temp : 33.574198, ID_temp: 19.997716, target_temp: 20.000000, diff: -0.002284, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-22 08:38:42
House ID: 6 -- OD_temp : 33.574198, ID_temp: 20.034722, target_temp: 20.000000, diff: 0.034722, HVAC on: False, HVAC lockdown: 16, date: 2021-02-22 08:38:42
House ID: 7 -- OD_temp : 33.574198, ID_temp: 20.099704, target_temp: 20.000000, diff: 0.099704, HVAC on: False, HVAC lockdown: 28, date: 2021-02-22 08:38:42
House ID: 8 -- OD_temp : 33.574198, ID_temp: 19.992976, target_temp: 20.000000, diff: -0.007024, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-22 08:38:42
House ID: 9 -- OD_temp : 33.574198, ID_temp: 20.005569, target_temp: 20.000000, diff: 0.005569, HVAC on: False, HVAC lockdown: 4, date: 2021-02-22 08:38:42
House ID: 10 -- OD_temp : 33.574198, ID_temp: 20.118362, target_temp: 20.000000, diff: 0.118362, HVAC on: False, HVAC lockdown: 36, date: 2021-02-22 08:38:42
House ID: 11 -- OD_temp : 33.574198, ID_temp: 20.013375, target_temp: 20.000000, diff: 0.013375, HVAC on: False, HVAC lockdown: 4, date: 2021-02-22 08:38:42
House ID: 12 -- OD_temp : 33.574198, ID_temp: 20.048172, target_temp: 20.000000, diff: 0.048172, HVAC on: False, HVAC lockdown: 16, date: 2021-02-22 08:38:42
House ID: 13 -- OD_temp : 33.574198, ID_temp: 20.091486, target_temp: 20.000000, diff: 0.091486, HVAC on: False, HVAC lockdown: 36, date: 2021-02-22 08:38:42
House ID: 14 -- OD_temp : 33.574198, ID_temp: 20.074520, target_temp: 20.000000, diff: 0.074520, HVAC on: False, HVAC lockdown: 24, date: 2021-02-22 08:38:42
House ID: 15 -- OD_temp : 33.574198, ID_temp: 20.012527, target_temp: 20.000000, diff: 0.012527, HVAC on: False, HVAC lockdown: 4, date: 2021-02-22 08:38:42
House ID: 16 -- OD_temp : 33.574198, ID_temp: 20.085642, target_temp: 20.000000, diff: 0.085642, HVAC on: False, HVAC lockdown: 32, date: 2021-02-22 08:38:42
House ID: 17 -- OD_temp : 33.574198, ID_temp: 20.036026, target_temp: 20.000000, diff: 0.036026, HVAC on: False, HVAC lockdown: 12, date: 2021-02-22 08:38:42
House ID: 18 -- OD_temp : 33.574198, ID_temp: 20.044034, target_temp: 20.000000, diff: 0.044034, HVAC on: False, HVAC lockdown: 16, date: 2021-02-22 08:38:42
House ID: 19 -- OD_temp : 33.574198, ID_temp: 20.080067, target_temp: 20.000000, diff: 0.080067, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-22 08:38:42
Training step - 1736703 - Mean test return: -0.1781743216161444
House ID: 0 -- OD_temp : 28.344182, ID_temp: 20.005295, target_temp: 20.000000, diff: 0.005295, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-12 00:43:25
House ID: 1 -- OD_temp : 28.344182, ID_temp: 20.064459, target_temp: 20.000000, diff: 0.064459, HVAC on: False, HVAC lockdown: 32, date: 2021-12-12 00:43:25
House ID: 2 -- OD_temp : 28.344182, ID_temp: 19.968479, target_temp: 20.000000, diff: -0.031521, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-12 00:43:25
House ID: 3 -- OD_temp : 28.344182, ID_temp: 20.030712, target_temp: 20.000000, diff: 0.030712, HVAC on: False, HVAC lockdown: 12, date: 2021-12-12 00:43:25
House ID: 4 -- OD_temp : 28.344182, ID_temp: 20.024272, target_temp: 20.000000, diff: 0.024272, HVAC on: False, HVAC lockdown: 20, date: 2021-12-12 00:43:25
House ID: 5 -- OD_temp : 28.344182, ID_temp: 20.030891, target_temp: 20.000000, diff: 0.030891, HVAC on: False, HVAC lockdown: 24, date: 2021-12-12 00:43:25
House ID: 6 -- OD_temp : 28.344182, ID_temp: 20.052243, target_temp: 20.000000, diff: 0.052243, HVAC on: False, HVAC lockdown: 20, date: 2021-12-12 00:43:25
House ID: 7 -- OD_temp : 28.344182, ID_temp: 20.035329, target_temp: 20.000000, diff: 0.035329, HVAC on: False, HVAC lockdown: 28, date: 2021-12-12 00:43:25
House ID: 8 -- OD_temp : 28.344182, ID_temp: 19.964235, target_temp: 20.000000, diff: -0.035765, HVAC on: False, HVAC lockdown: 4, date: 2021-12-12 00:43:25
House ID: 9 -- OD_temp : 28.344182, ID_temp: 20.063694, target_temp: 20.000000, diff: 0.063694, HVAC on: False, HVAC lockdown: 36, date: 2021-12-12 00:43:25
House ID: 10 -- OD_temp : 28.344182, ID_temp: 20.052689, target_temp: 20.000000, diff: 0.052689, HVAC on: False, HVAC lockdown: 20, date: 2021-12-12 00:43:25
House ID: 11 -- OD_temp : 28.344182, ID_temp: 20.008392, target_temp: 20.000000, diff: 0.008392, HVAC on: False, HVAC lockdown: 12, date: 2021-12-12 00:43:25
House ID: 12 -- OD_temp : 28.344182, ID_temp: 19.972501, target_temp: 20.000000, diff: -0.027499, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-12 00:43:25
House ID: 13 -- OD_temp : 28.344182, ID_temp: 20.033676, target_temp: 20.000000, diff: 0.033676, HVAC on: False, HVAC lockdown: 28, date: 2021-12-12 00:43:25
House ID: 14 -- OD_temp : 28.344182, ID_temp: 20.009473, target_temp: 20.000000, diff: 0.009473, HVAC on: False, HVAC lockdown: 16, date: 2021-12-12 00:43:25
House ID: 15 -- OD_temp : 28.344182, ID_temp: 20.001534, target_temp: 20.000000, diff: 0.001534, HVAC on: False, HVAC lockdown: 8, date: 2021-12-12 00:43:25
House ID: 16 -- OD_temp : 28.344182, ID_temp: 20.093960, target_temp: 20.000000, diff: 0.093960, HVAC on: False, HVAC lockdown: 36, date: 2021-12-12 00:43:25
House ID: 17 -- OD_temp : 28.344182, ID_temp: 20.046603, target_temp: 20.000000, diff: 0.046603, HVAC on: False, HVAC lockdown: 32, date: 2021-12-12 00:43:25
House ID: 18 -- OD_temp : 28.344182, ID_temp: 20.019169, target_temp: 20.000000, diff: 0.019169, HVAC on: False, HVAC lockdown: 24, date: 2021-12-12 00:43:25
House ID: 19 -- OD_temp : 28.344182, ID_temp: 20.013924, target_temp: 20.000000, diff: 0.013924, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-12 00:43:25
New episode at time 1753087
Logging stats at time 1753087
Testing at time 1753087
House ID: 0 -- OD_temp : 29.832761, ID_temp: 20.047188, target_temp: 20.000000, diff: 0.047188, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 04:08:04
House ID: 1 -- OD_temp : 29.832761, ID_temp: 19.979083, target_temp: 20.000000, diff: -0.020917, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 04:08:04
House ID: 2 -- OD_temp : 29.832761, ID_temp: 19.982710, target_temp: 20.000000, diff: -0.017290, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-06 04:08:04
House ID: 3 -- OD_temp : 29.832761, ID_temp: 20.049437, target_temp: 20.000000, diff: 0.049437, HVAC on: False, HVAC lockdown: 20, date: 2021-11-06 04:08:04
House ID: 4 -- OD_temp : 29.832761, ID_temp: 20.006722, target_temp: 20.000000, diff: 0.006722, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 04:08:04
House ID: 5 -- OD_temp : 29.832761, ID_temp: 20.045872, target_temp: 20.000000, diff: 0.045872, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-06 04:08:04
House ID: 6 -- OD_temp : 29.832761, ID_temp: 20.053788, target_temp: 20.000000, diff: 0.053788, HVAC on: False, HVAC lockdown: 28, date: 2021-11-06 04:08:04
House ID: 7 -- OD_temp : 29.832761, ID_temp: 19.989404, target_temp: 20.000000, diff: -0.010596, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 04:08:04
House ID: 8 -- OD_temp : 29.832761, ID_temp: 20.067215, target_temp: 20.000000, diff: 0.067215, HVAC on: False, HVAC lockdown: 36, date: 2021-11-06 04:08:04
House ID: 9 -- OD_temp : 29.832761, ID_temp: 20.060131, target_temp: 20.000000, diff: 0.060131, HVAC on: False, HVAC lockdown: 28, date: 2021-11-06 04:08:04
House ID: 10 -- OD_temp : 29.832761, ID_temp: 20.002893, target_temp: 20.000000, diff: 0.002893, HVAC on: False, HVAC lockdown: 4, date: 2021-11-06 04:08:04
House ID: 11 -- OD_temp : 29.832761, ID_temp: 20.011254, target_temp: 20.000000, diff: 0.011254, HVAC on: False, HVAC lockdown: 16, date: 2021-11-06 04:08:04
House ID: 12 -- OD_temp : 29.832761, ID_temp: 20.042831, target_temp: 20.000000, diff: 0.042831, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 04:08:04
House ID: 13 -- OD_temp : 29.832761, ID_temp: 19.987145, target_temp: 20.000000, diff: -0.012855, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 04:08:04
House ID: 14 -- OD_temp : 29.832761, ID_temp: 20.034855, target_temp: 20.000000, diff: 0.034855, HVAC on: False, HVAC lockdown: 20, date: 2021-11-06 04:08:04
House ID: 15 -- OD_temp : 29.832761, ID_temp: 20.043846, target_temp: 20.000000, diff: 0.043846, HVAC on: False, HVAC lockdown: 28, date: 2021-11-06 04:08:04
House ID: 16 -- OD_temp : 29.832761, ID_temp: 20.028591, target_temp: 20.000000, diff: 0.028591, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-06 04:08:04
House ID: 17 -- OD_temp : 29.832761, ID_temp: 20.051995, target_temp: 20.000000, diff: 0.051995, HVAC on: False, HVAC lockdown: 28, date: 2021-11-06 04:08:04
House ID: 18 -- OD_temp : 29.832761, ID_temp: 19.976476, target_temp: 20.000000, diff: -0.023524, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-06 04:08:04
House ID: 19 -- OD_temp : 29.832761, ID_temp: 20.032066, target_temp: 20.000000, diff: 0.032066, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-06 04:08:04
House ID: 0 -- OD_temp : 32.591267, ID_temp: 20.076923, target_temp: 20.000000, diff: 0.076923, HVAC on: False, HVAC lockdown: 20, date: 2021-11-06 15:14:44
House ID: 1 -- OD_temp : 32.591267, ID_temp: 20.102041, target_temp: 20.000000, diff: 0.102041, HVAC on: False, HVAC lockdown: 32, date: 2021-11-06 15:14:44
House ID: 2 -- OD_temp : 32.591267, ID_temp: 20.053192, target_temp: 20.000000, diff: 0.053192, HVAC on: False, HVAC lockdown: 20, date: 2021-11-06 15:14:44
House ID: 3 -- OD_temp : 32.591267, ID_temp: 20.039845, target_temp: 20.000000, diff: 0.039845, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-06 15:14:44
House ID: 4 -- OD_temp : 32.591267, ID_temp: 20.090820, target_temp: 20.000000, diff: 0.090820, HVAC on: False, HVAC lockdown: 32, date: 2021-11-06 15:14:44
House ID: 5 -- OD_temp : 32.591267, ID_temp: 20.009278, target_temp: 20.000000, diff: 0.009278, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 15:14:44
House ID: 6 -- OD_temp : 32.591267, ID_temp: 20.002567, target_temp: 20.000000, diff: 0.002567, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-06 15:14:44
House ID: 7 -- OD_temp : 32.591267, ID_temp: 20.081030, target_temp: 20.000000, diff: 0.081030, HVAC on: False, HVAC lockdown: 32, date: 2021-11-06 15:14:44
House ID: 8 -- OD_temp : 32.591267, ID_temp: 20.007349, target_temp: 20.000000, diff: 0.007349, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 15:14:44
House ID: 9 -- OD_temp : 32.591267, ID_temp: 20.018806, target_temp: 20.000000, diff: 0.018806, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 15:14:44
House ID: 10 -- OD_temp : 32.591267, ID_temp: 20.056858, target_temp: 20.000000, diff: 0.056858, HVAC on: False, HVAC lockdown: 24, date: 2021-11-06 15:14:44
House ID: 11 -- OD_temp : 32.591267, ID_temp: 20.056572, target_temp: 20.000000, diff: 0.056572, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-06 15:14:44
House ID: 12 -- OD_temp : 32.591267, ID_temp: 20.039758, target_temp: 20.000000, diff: 0.039758, HVAC on: False, HVAC lockdown: 20, date: 2021-11-06 15:14:44
House ID: 13 -- OD_temp : 32.591267, ID_temp: 20.113480, target_temp: 20.000000, diff: 0.113480, HVAC on: False, HVAC lockdown: 36, date: 2021-11-06 15:14:44
House ID: 14 -- OD_temp : 32.591267, ID_temp: 20.041532, target_temp: 20.000000, diff: 0.041532, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-06 15:14:44
House ID: 15 -- OD_temp : 32.591267, ID_temp: 20.005927, target_temp: 20.000000, diff: 0.005927, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-06 15:14:44
House ID: 16 -- OD_temp : 32.591267, ID_temp: 20.013778, target_temp: 20.000000, diff: 0.013778, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 15:14:44
House ID: 17 -- OD_temp : 32.591267, ID_temp: 20.006451, target_temp: 20.000000, diff: 0.006451, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-06 15:14:44
House ID: 18 -- OD_temp : 32.591267, ID_temp: 20.046850, target_temp: 20.000000, diff: 0.046850, HVAC on: False, HVAC lockdown: 20, date: 2021-11-06 15:14:44
House ID: 19 -- OD_temp : 32.591267, ID_temp: 20.007000, target_temp: 20.000000, diff: 0.007000, HVAC on: False, HVAC lockdown: 8, date: 2021-11-06 15:14:44
Training step - 1753087 - Mean test return: -0.15374622551615127
House ID: 0 -- OD_temp : 33.597208, ID_temp: 20.001546, target_temp: 20.000000, diff: 0.001546, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-22 08:28:41
House ID: 1 -- OD_temp : 33.597208, ID_temp: 20.044140, target_temp: 20.000000, diff: 0.044140, HVAC on: False, HVAC lockdown: 12, date: 2021-11-22 08:28:41
House ID: 2 -- OD_temp : 33.597208, ID_temp: 20.015970, target_temp: 20.000000, diff: 0.015970, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-22 08:28:41
House ID: 3 -- OD_temp : 33.597208, ID_temp: 20.051308, target_temp: 20.000000, diff: 0.051308, HVAC on: False, HVAC lockdown: 20, date: 2021-11-22 08:28:41
House ID: 4 -- OD_temp : 33.597208, ID_temp: 20.051303, target_temp: 20.000000, diff: 0.051303, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-22 08:28:41
House ID: 5 -- OD_temp : 33.597208, ID_temp: 20.069144, target_temp: 20.000000, diff: 0.069144, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-22 08:28:41
House ID: 6 -- OD_temp : 33.597208, ID_temp: 20.022438, target_temp: 20.000000, diff: 0.022438, HVAC on: False, HVAC lockdown: 4, date: 2021-11-22 08:28:41
House ID: 7 -- OD_temp : 33.597208, ID_temp: 20.089047, target_temp: 20.000000, diff: 0.089047, HVAC on: False, HVAC lockdown: 24, date: 2021-11-22 08:28:41
House ID: 8 -- OD_temp : 33.597208, ID_temp: 19.984593, target_temp: 20.000000, diff: -0.015407, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-22 08:28:41
House ID: 9 -- OD_temp : 33.597208, ID_temp: 20.072826, target_temp: 20.000000, diff: 0.072826, HVAC on: False, HVAC lockdown: 20, date: 2021-11-22 08:28:41
House ID: 10 -- OD_temp : 33.597208, ID_temp: 20.107942, target_temp: 20.000000, diff: 0.107942, HVAC on: False, HVAC lockdown: 32, date: 2021-11-22 08:28:41
House ID: 11 -- OD_temp : 33.597208, ID_temp: 20.104956, target_temp: 20.000000, diff: 0.104956, HVAC on: False, HVAC lockdown: 36, date: 2021-11-22 08:28:41
House ID: 12 -- OD_temp : 33.597208, ID_temp: 20.016640, target_temp: 20.000000, diff: 0.016640, HVAC on: False, HVAC lockdown: 4, date: 2021-11-22 08:28:41
House ID: 13 -- OD_temp : 33.597208, ID_temp: 20.087353, target_temp: 20.000000, diff: 0.087353, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-22 08:28:41
House ID: 14 -- OD_temp : 33.597208, ID_temp: 20.019237, target_temp: 20.000000, diff: 0.019237, HVAC on: False, HVAC lockdown: 4, date: 2021-11-22 08:28:41
House ID: 15 -- OD_temp : 33.597208, ID_temp: 20.030061, target_temp: 20.000000, diff: 0.030061, HVAC on: False, HVAC lockdown: 16, date: 2021-11-22 08:28:41
House ID: 16 -- OD_temp : 33.597208, ID_temp: 20.076611, target_temp: 20.000000, diff: 0.076611, HVAC on: False, HVAC lockdown: 28, date: 2021-11-22 08:28:41
House ID: 17 -- OD_temp : 33.597208, ID_temp: 20.056158, target_temp: 20.000000, diff: 0.056158, HVAC on: False, HVAC lockdown: 16, date: 2021-11-22 08:28:41
House ID: 18 -- OD_temp : 33.597208, ID_temp: 20.086250, target_temp: 20.000000, diff: 0.086250, HVAC on: False, HVAC lockdown: 36, date: 2021-11-22 08:28:41
House ID: 19 -- OD_temp : 33.597208, ID_temp: 19.991291, target_temp: 20.000000, diff: -0.008709, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-22 08:28:41
New episode at time 1769471
Logging stats at time 1769471
Testing at time 1769471
House ID: 0 -- OD_temp : 29.621225, ID_temp: 20.033999, target_temp: 20.000000, diff: 0.033999, HVAC on: False, HVAC lockdown: 20, date: 2021-01-14 19:21:37
House ID: 1 -- OD_temp : 29.621225, ID_temp: 19.994586, target_temp: 20.000000, diff: -0.005414, HVAC on: False, HVAC lockdown: 4, date: 2021-01-14 19:21:37
House ID: 2 -- OD_temp : 29.621225, ID_temp: 20.018002, target_temp: 20.000000, diff: 0.018002, HVAC on: False, HVAC lockdown: 12, date: 2021-01-14 19:21:37
House ID: 3 -- OD_temp : 29.621225, ID_temp: 20.072803, target_temp: 20.000000, diff: 0.072803, HVAC on: False, HVAC lockdown: 36, date: 2021-01-14 19:21:37
House ID: 4 -- OD_temp : 29.621225, ID_temp: 19.999247, target_temp: 20.000000, diff: -0.000753, HVAC on: False, HVAC lockdown: 12, date: 2021-01-14 19:21:37
House ID: 5 -- OD_temp : 29.621225, ID_temp: 20.083235, target_temp: 20.000000, diff: 0.083235, HVAC on: False, HVAC lockdown: 36, date: 2021-01-14 19:21:37
House ID: 6 -- OD_temp : 29.621225, ID_temp: 20.002305, target_temp: 20.000000, diff: 0.002305, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-14 19:21:37
House ID: 7 -- OD_temp : 29.621225, ID_temp: 19.998210, target_temp: 20.000000, diff: -0.001790, HVAC on: False, HVAC lockdown: 4, date: 2021-01-14 19:21:37
House ID: 8 -- OD_temp : 29.621225, ID_temp: 20.067946, target_temp: 20.000000, diff: 0.067946, HVAC on: False, HVAC lockdown: 28, date: 2021-01-14 19:21:37
House ID: 9 -- OD_temp : 29.621225, ID_temp: 19.992090, target_temp: 20.000000, diff: -0.007910, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-14 19:21:37
House ID: 10 -- OD_temp : 29.621225, ID_temp: 20.029584, target_temp: 20.000000, diff: 0.029584, HVAC on: False, HVAC lockdown: 12, date: 2021-01-14 19:21:37
House ID: 11 -- OD_temp : 29.621225, ID_temp: 20.035025, target_temp: 20.000000, diff: 0.035025, HVAC on: False, HVAC lockdown: 20, date: 2021-01-14 19:21:37
House ID: 12 -- OD_temp : 29.621225, ID_temp: 19.998165, target_temp: 20.000000, diff: -0.001835, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-14 19:21:37
House ID: 13 -- OD_temp : 29.621225, ID_temp: 20.015739, target_temp: 20.000000, diff: 0.015739, HVAC on: False, HVAC lockdown: 20, date: 2021-01-14 19:21:37
House ID: 14 -- OD_temp : 29.621225, ID_temp: 20.031796, target_temp: 20.000000, diff: 0.031796, HVAC on: False, HVAC lockdown: 12, date: 2021-01-14 19:21:37
House ID: 15 -- OD_temp : 29.621225, ID_temp: 20.011836, target_temp: 20.000000, diff: 0.011836, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-14 19:21:37
House ID: 16 -- OD_temp : 29.621225, ID_temp: 20.061504, target_temp: 20.000000, diff: 0.061504, HVAC on: False, HVAC lockdown: 32, date: 2021-01-14 19:21:37
House ID: 17 -- OD_temp : 29.621225, ID_temp: 20.075939, target_temp: 20.000000, diff: 0.075939, HVAC on: False, HVAC lockdown: 32, date: 2021-01-14 19:21:37
House ID: 18 -- OD_temp : 29.621225, ID_temp: 19.981653, target_temp: 20.000000, diff: -0.018347, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-14 19:21:37
House ID: 19 -- OD_temp : 29.621225, ID_temp: 20.051918, target_temp: 20.000000, diff: 0.051918, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-14 19:21:37