# 粘贴自v0,复制到终端或者命令行:bash cli_command.sh,记得先删掉没用的
# --agent_type=dqn, ppo  # Type of agent (dqn, ppo)
# --exp=PPO表示实验命名为PPO
python main.py --no_solar_gain \
            --agent_type=ppo \
            --agents_comm_mode=neighbours \
            --alpha_sig=1 \
            --alpha_temp=1 \
            --batch_size=256 \
            --env_seed=1 \
            --exp=PPO \
            --gamma=0.99 \
            --lr_both=0.01 \
            --max_grad_norm=1 \
            --nb_agents=50 \
            --nb_agents_comm=0 \
            --nb_inter_saving_actor=24 \
            --net_seed=2 \
            --save_actor_name=PPO \
            --temp_penalty_mode=individual_L2 \
            --time_step=4 \
            --no_wandb
"""
训练结果:
House ID: 45 -- OD_temp : 34.354268, ID_temp: 19.974089, target_temp: 20.000000, diff: -0.025911, HVAC on: False, HVAC lockdown: 8, date: 2021-01-15 11:17:49
House ID: 46 -- OD_temp : 34.354268, ID_temp: 20.064487, target_temp: 20.000000, diff: 0.064487, HVAC on: 1, HVAC lockdown: 0, date: 2021-01-15 11:17:49
House ID: 47 -- OD_temp : 34.354268, ID_temp: 19.994299, target_temp: 20.000000, diff: -0.005701, HVAC on: False, HVAC lockdown: 28, date: 2021-01-15 11:17:49
House ID: 48 -- OD_temp : 34.354268, ID_temp: 19.935730, target_temp: 20.000000, diff: -0.064270, HVAC on: 0, HVAC lockdown: 0, date: 2021-01-15 11:17:49
House ID: 49 -- OD_temp : 34.354268, ID_temp: 19.968006, target_temp: 20.000000, diff: -0.031994, HVAC on: False, HVAC lockdown: 24, date: 2021-01-15 11:17:49
New episode at time 540671
Updating agent at time 540671
The agent is updating....
Time step: 540671 ，train 1024000 times
Time step: 540671 ，train 1025000 times
Time step: 540671 ，train 1026000 times
Time step: 540671 ，train 1027000 times
Time step: 540671 ，train 1028000 times
Time step: 540671 ，train 1029000 times
Time step: 540671 ，train 1030000 times
Time step: 540671 ，train 1031000 times
Time step: 540671 ，train 1032000 times
Time step: 540671 ，train 1033000 times
Time step: 540671 ，train 1034000 times
Time step: 540671 ，train 1035000 times
Time step: 540671 ，train 1036000 times
Time step: 540671 ，train 1037000 times
Time step: 540671 ，train 1038000 times
Time step: 540671 ，train 1039000 times
Time step: 540671 ，train 1040000 times
Time step: 540671 ，train 1041000 times
Time step: 540671 ，train 1042000 times
Time step: 540671 ，train 1043000 times
Time step: 540671 ，train 1044000 times
Time step: 540671 ，train 1045000 times
Time step: 540671 ，train 1046000 times
Time step: 540671 ，train 1047000 times
Time step: 540671 ，train 1048000 times
Time step: 540671 ，train 1049000 times
Time step: 540671 ，train 1050000 times
Time step: 540671 ，train 1051000 times
Time step: 540671 ，train 1052000 times
Time step: 540671 ，train 1053000 times
Time step: 540671 ，train 1054000 times
Time step: 540671 ，train 1055000 times
Testing at time 540671
House ID: 0 -- OD_temp : 34.715642, ID_temp: 19.962492, target_temp: 20.000000, diff: -0.037508, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 12:45:14
House ID: 1 -- OD_temp : 34.715642, ID_temp: 20.003227, target_temp: 20.000000, diff: 0.003227, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 12:45:14
House ID: 2 -- OD_temp : 34.715642, ID_temp: 20.072170, target_temp: 20.000000, diff: 0.072170, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 12:45:14
House ID: 3 -- OD_temp : 34.715642, ID_temp: 20.001298, target_temp: 20.000000, diff: 0.001298, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 12:45:14
House ID: 4 -- OD_temp : 34.715642, ID_temp: 20.057004, target_temp: 20.000000, diff: 0.057004, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 12:45:14
House ID: 5 -- OD_temp : 34.715642, ID_temp: 20.062946, target_temp: 20.000000, diff: 0.062946, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 12:45:14
House ID: 6 -- OD_temp : 34.715642, ID_temp: 20.010850, target_temp: 20.000000, diff: 0.010850, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 12:45:14
House ID: 7 -- OD_temp : 34.715642, ID_temp: 20.019878, target_temp: 20.000000, diff: 0.019878, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 8 -- OD_temp : 34.715642, ID_temp: 20.058238, target_temp: 20.000000, diff: 0.058238, HVAC on: False, HVAC lockdown: 36, date: 2021-05-14 12:45:14
House ID: 9 -- OD_temp : 34.715642, ID_temp: 20.060333, target_temp: 20.000000, diff: 0.060333, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 12:45:14
House ID: 10 -- OD_temp : 34.715642, ID_temp: 20.068141, target_temp: 20.000000, diff: 0.068141, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 12:45:14
House ID: 11 -- OD_temp : 34.715642, ID_temp: 19.967505, target_temp: 20.000000, diff: -0.032495, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 12:45:14
House ID: 12 -- OD_temp : 34.715642, ID_temp: 19.970630, target_temp: 20.000000, diff: -0.029370, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 13 -- OD_temp : 34.715642, ID_temp: 20.092744, target_temp: 20.000000, diff: 0.092744, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-14 12:45:14
House ID: 14 -- OD_temp : 34.715642, ID_temp: 20.043418, target_temp: 20.000000, diff: 0.043418, HVAC on: False, HVAC lockdown: 28, date: 2021-05-14 12:45:14
House ID: 15 -- OD_temp : 34.715642, ID_temp: 20.023522, target_temp: 20.000000, diff: 0.023522, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 16 -- OD_temp : 34.715642, ID_temp: 20.027862, target_temp: 20.000000, diff: 0.027862, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 12:45:14
House ID: 17 -- OD_temp : 34.715642, ID_temp: 19.979499, target_temp: 20.000000, diff: -0.020501, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 12:45:14
House ID: 18 -- OD_temp : 34.715642, ID_temp: 19.986943, target_temp: 20.000000, diff: -0.013057, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 12:45:14
House ID: 19 -- OD_temp : 34.715642, ID_temp: 19.992369, target_temp: 20.000000, diff: -0.007631, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 20 -- OD_temp : 34.715642, ID_temp: 19.954305, target_temp: 20.000000, diff: -0.045695, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 21 -- OD_temp : 34.715642, ID_temp: 20.154109, target_temp: 20.000000, diff: 0.154109, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 12:45:14
House ID: 22 -- OD_temp : 34.715642, ID_temp: 19.965845, target_temp: 20.000000, diff: -0.034155, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 12:45:14
House ID: 23 -- OD_temp : 34.715642, ID_temp: 19.982943, target_temp: 20.000000, diff: -0.017057, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 24 -- OD_temp : 34.715642, ID_temp: 19.967855, target_temp: 20.000000, diff: -0.032145, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 25 -- OD_temp : 34.715642, ID_temp: 19.991468, target_temp: 20.000000, diff: -0.008532, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 26 -- OD_temp : 34.715642, ID_temp: 20.083350, target_temp: 20.000000, diff: 0.083350, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 12:45:14
House ID: 27 -- OD_temp : 34.715642, ID_temp: 20.081411, target_temp: 20.000000, diff: 0.081411, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 28 -- OD_temp : 34.715642, ID_temp: 20.021938, target_temp: 20.000000, diff: 0.021938, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 12:45:14
House ID: 29 -- OD_temp : 34.715642, ID_temp: 19.991581, target_temp: 20.000000, diff: -0.008419, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 12:45:14
House ID: 30 -- OD_temp : 34.715642, ID_temp: 19.992381, target_temp: 20.000000, diff: -0.007619, HVAC on: False, HVAC lockdown: 4, date: 2021-05-14 12:45:14
House ID: 31 -- OD_temp : 34.715642, ID_temp: 19.964159, target_temp: 20.000000, diff: -0.035841, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 32 -- OD_temp : 34.715642, ID_temp: 19.961769, target_temp: 20.000000, diff: -0.038231, HVAC on: False, HVAC lockdown: 4, date: 2021-05-14 12:45:14
House ID: 33 -- OD_temp : 34.715642, ID_temp: 19.966535, target_temp: 20.000000, diff: -0.033465, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 34 -- OD_temp : 34.715642, ID_temp: 20.086795, target_temp: 20.000000, diff: 0.086795, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 35 -- OD_temp : 34.715642, ID_temp: 20.051953, target_temp: 20.000000, diff: 0.051953, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-14 12:45:14
House ID: 36 -- OD_temp : 34.715642, ID_temp: 19.914875, target_temp: 20.000000, diff: -0.085125, HVAC on: False, HVAC lockdown: 4, date: 2021-05-14 12:45:14
House ID: 37 -- OD_temp : 34.715642, ID_temp: 19.969375, target_temp: 20.000000, diff: -0.030625, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 38 -- OD_temp : 34.715642, ID_temp: 19.933241, target_temp: 20.000000, diff: -0.066759, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 39 -- OD_temp : 34.715642, ID_temp: 20.107602, target_temp: 20.000000, diff: 0.107602, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 40 -- OD_temp : 34.715642, ID_temp: 20.008793, target_temp: 20.000000, diff: 0.008793, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 41 -- OD_temp : 34.715642, ID_temp: 19.990885, target_temp: 20.000000, diff: -0.009115, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 12:45:14
House ID: 42 -- OD_temp : 34.715642, ID_temp: 19.978865, target_temp: 20.000000, diff: -0.021135, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 43 -- OD_temp : 34.715642, ID_temp: 19.988888, target_temp: 20.000000, diff: -0.011112, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 12:45:14
House ID: 44 -- OD_temp : 34.715642, ID_temp: 20.083191, target_temp: 20.000000, diff: 0.083191, HVAC on: False, HVAC lockdown: 36, date: 2021-05-14 12:45:14
House ID: 45 -- OD_temp : 34.715642, ID_temp: 19.948310, target_temp: 20.000000, diff: -0.051690, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 46 -- OD_temp : 34.715642, ID_temp: 19.966294, target_temp: 20.000000, diff: -0.033706, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 47 -- OD_temp : 34.715642, ID_temp: 20.159677, target_temp: 20.000000, diff: 0.159677, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 12:45:14
House ID: 48 -- OD_temp : 34.715642, ID_temp: 20.063434, target_temp: 20.000000, diff: 0.063434, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 12:45:14
House ID: 49 -- OD_temp : 34.715642, ID_temp: 20.038241, target_temp: 20.000000, diff: 0.038241, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 12:45:14
House ID: 0 -- OD_temp : 28.612181, ID_temp: 20.019597, target_temp: 20.000000, diff: 0.019597, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 1 -- OD_temp : 28.612181, ID_temp: 19.963449, target_temp: 20.000000, diff: -0.036551, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-14 23:51:54
House ID: 2 -- OD_temp : 28.612181, ID_temp: 20.016661, target_temp: 20.000000, diff: 0.016661, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 23:51:54
House ID: 3 -- OD_temp : 28.612181, ID_temp: 20.035649, target_temp: 20.000000, diff: 0.035649, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 23:51:54
House ID: 4 -- OD_temp : 28.612181, ID_temp: 20.060107, target_temp: 20.000000, diff: 0.060107, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 5 -- OD_temp : 28.612181, ID_temp: 20.087890, target_temp: 20.000000, diff: 0.087890, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 6 -- OD_temp : 28.612181, ID_temp: 20.017408, target_temp: 20.000000, diff: 0.017408, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 7 -- OD_temp : 28.612181, ID_temp: 20.034170, target_temp: 20.000000, diff: 0.034170, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 8 -- OD_temp : 28.612181, ID_temp: 19.982749, target_temp: 20.000000, diff: -0.017251, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 23:51:54
House ID: 9 -- OD_temp : 28.612181, ID_temp: 20.098157, target_temp: 20.000000, diff: 0.098157, HVAC on: False, HVAC lockdown: 36, date: 2021-05-14 23:51:54
House ID: 10 -- OD_temp : 28.612181, ID_temp: 19.992216, target_temp: 20.000000, diff: -0.007784, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 11 -- OD_temp : 28.612181, ID_temp: 20.066534, target_temp: 20.000000, diff: 0.066534, HVAC on: False, HVAC lockdown: 28, date: 2021-05-14 23:51:54
House ID: 12 -- OD_temp : 28.612181, ID_temp: 20.025654, target_temp: 20.000000, diff: 0.025654, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 23:51:54
House ID: 13 -- OD_temp : 28.612181, ID_temp: 20.003479, target_temp: 20.000000, diff: 0.003479, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 23:51:54
House ID: 14 -- OD_temp : 28.612181, ID_temp: 19.950294, target_temp: 20.000000, diff: -0.049706, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 23:51:54
House ID: 15 -- OD_temp : 28.612181, ID_temp: 20.033581, target_temp: 20.000000, diff: 0.033581, HVAC on: False, HVAC lockdown: 36, date: 2021-05-14 23:51:54
House ID: 16 -- OD_temp : 28.612181, ID_temp: 20.056337, target_temp: 20.000000, diff: 0.056337, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 17 -- OD_temp : 28.612181, ID_temp: 20.052236, target_temp: 20.000000, diff: 0.052236, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 23:51:54
House ID: 18 -- OD_temp : 28.612181, ID_temp: 19.996408, target_temp: 20.000000, diff: -0.003592, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 19 -- OD_temp : 28.612181, ID_temp: 19.998643, target_temp: 20.000000, diff: -0.001357, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 20 -- OD_temp : 28.612181, ID_temp: 19.984856, target_temp: 20.000000, diff: -0.015144, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 21 -- OD_temp : 28.612181, ID_temp: 19.990286, target_temp: 20.000000, diff: -0.009714, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 22 -- OD_temp : 28.612181, ID_temp: 20.038183, target_temp: 20.000000, diff: 0.038183, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 23 -- OD_temp : 28.612181, ID_temp: 20.043756, target_temp: 20.000000, diff: 0.043756, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 24 -- OD_temp : 28.612181, ID_temp: 20.013891, target_temp: 20.000000, diff: 0.013891, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 23:51:54
House ID: 25 -- OD_temp : 28.612181, ID_temp: 20.013007, target_temp: 20.000000, diff: 0.013007, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 26 -- OD_temp : 28.612181, ID_temp: 20.077239, target_temp: 20.000000, diff: 0.077239, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 23:51:54
House ID: 27 -- OD_temp : 28.612181, ID_temp: 20.081524, target_temp: 20.000000, diff: 0.081524, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 28 -- OD_temp : 28.612181, ID_temp: 19.980894, target_temp: 20.000000, diff: -0.019106, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 23:51:54
House ID: 29 -- OD_temp : 28.612181, ID_temp: 20.056116, target_temp: 20.000000, diff: 0.056116, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 23:51:54
House ID: 30 -- OD_temp : 28.612181, ID_temp: 20.049266, target_temp: 20.000000, diff: 0.049266, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 23:51:54
House ID: 31 -- OD_temp : 28.612181, ID_temp: 20.006767, target_temp: 20.000000, diff: 0.006767, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 23:51:54
House ID: 32 -- OD_temp : 28.612181, ID_temp: 20.010478, target_temp: 20.000000, diff: 0.010478, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 23:51:54
House ID: 33 -- OD_temp : 28.612181, ID_temp: 20.046521, target_temp: 20.000000, diff: 0.046521, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 23:51:54
House ID: 34 -- OD_temp : 28.612181, ID_temp: 20.016900, target_temp: 20.000000, diff: 0.016900, HVAC on: False, HVAC lockdown: 28, date: 2021-05-14 23:51:54
House ID: 35 -- OD_temp : 28.612181, ID_temp: 20.062511, target_temp: 20.000000, diff: 0.062511, HVAC on: False, HVAC lockdown: 12, date: 2021-05-14 23:51:54
House ID: 36 -- OD_temp : 28.612181, ID_temp: 20.008619, target_temp: 20.000000, diff: 0.008619, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 23:51:54
House ID: 37 -- OD_temp : 28.612181, ID_temp: 20.065320, target_temp: 20.000000, diff: 0.065320, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 23:51:54
House ID: 38 -- OD_temp : 28.612181, ID_temp: 20.027600, target_temp: 20.000000, diff: 0.027600, HVAC on: False, HVAC lockdown: 24, date: 2021-05-14 23:51:54
House ID: 39 -- OD_temp : 28.612181, ID_temp: 20.018153, target_temp: 20.000000, diff: 0.018153, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 23:51:54
House ID: 40 -- OD_temp : 28.612181, ID_temp: 20.075778, target_temp: 20.000000, diff: 0.075778, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 41 -- OD_temp : 28.612181, ID_temp: 20.064436, target_temp: 20.000000, diff: 0.064436, HVAC on: False, HVAC lockdown: 28, date: 2021-05-14 23:51:54
House ID: 42 -- OD_temp : 28.612181, ID_temp: 19.976876, target_temp: 20.000000, diff: -0.023124, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 23:51:54
House ID: 43 -- OD_temp : 28.612181, ID_temp: 20.053959, target_temp: 20.000000, diff: 0.053959, HVAC on: False, HVAC lockdown: 32, date: 2021-05-14 23:51:54
House ID: 44 -- OD_temp : 28.612181, ID_temp: 20.018893, target_temp: 20.000000, diff: 0.018893, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 23:51:54
House ID: 45 -- OD_temp : 28.612181, ID_temp: 20.003076, target_temp: 20.000000, diff: 0.003076, HVAC on: False, HVAC lockdown: 20, date: 2021-05-14 23:51:54
House ID: 46 -- OD_temp : 28.612181, ID_temp: 20.043498, target_temp: 20.000000, diff: 0.043498, HVAC on: False, HVAC lockdown: 8, date: 2021-05-14 23:51:54
House ID: 47 -- OD_temp : 28.612181, ID_temp: 20.031251, target_temp: 20.000000, diff: 0.031251, HVAC on: False, HVAC lockdown: 4, date: 2021-05-14 23:51:54
House ID: 48 -- OD_temp : 28.612181, ID_temp: 19.918180, target_temp: 20.000000, diff: -0.081820, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-14 23:51:54
House ID: 49 -- OD_temp : 28.612181, ID_temp: 20.015283, target_temp: 20.000000, diff: 0.015283, HVAC on: False, HVAC lockdown: 16, date: 2021-05-14 23:51:54
Training step - 540671
House ID: 0 -- OD_temp : 28.351779, ID_temp: 20.102198, target_temp: 20.000000, diff: 0.102198, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-20 22:33:17
House ID: 1 -- OD_temp : 28.351779, ID_temp: 20.042248, target_temp: 20.000000, diff: 0.042248, HVAC on: False, HVAC lockdown: 20, date: 2021-05-20 22:33:17
House ID: 2 -- OD_temp : 28.351779, ID_temp: 20.012082, target_temp: 20.000000, diff: 0.012082, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 3 -- OD_temp : 28.351779, ID_temp: 20.050909, target_temp: 20.000000, diff: 0.050909, HVAC on: False, HVAC lockdown: 16, date: 2021-05-20 22:33:17
House ID: 4 -- OD_temp : 28.351779, ID_temp: 20.014597, target_temp: 20.000000, diff: 0.014597, HVAC on: False, HVAC lockdown: 8, date: 2021-05-20 22:33:17
House ID: 5 -- OD_temp : 28.351779, ID_temp: 20.017132, target_temp: 20.000000, diff: 0.017132, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 6 -- OD_temp : 28.351779, ID_temp: 20.038436, target_temp: 20.000000, diff: 0.038436, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 7 -- OD_temp : 28.351779, ID_temp: 19.990817, target_temp: 20.000000, diff: -0.009183, HVAC on: False, HVAC lockdown: 36, date: 2021-05-20 22:33:17
House ID: 8 -- OD_temp : 28.351779, ID_temp: 20.055858, target_temp: 20.000000, diff: 0.055858, HVAC on: False, HVAC lockdown: 28, date: 2021-05-20 22:33:17
House ID: 9 -- OD_temp : 28.351779, ID_temp: 20.049067, target_temp: 20.000000, diff: 0.049067, HVAC on: False, HVAC lockdown: 28, date: 2021-05-20 22:33:17
House ID: 10 -- OD_temp : 28.351779, ID_temp: 20.076484, target_temp: 20.000000, diff: 0.076484, HVAC on: False, HVAC lockdown: 36, date: 2021-05-20 22:33:17
House ID: 11 -- OD_temp : 28.351779, ID_temp: 20.055809, target_temp: 20.000000, diff: 0.055809, HVAC on: False, HVAC lockdown: 36, date: 2021-05-20 22:33:17
House ID: 12 -- OD_temp : 28.351779, ID_temp: 20.032399, target_temp: 20.000000, diff: 0.032399, HVAC on: False, HVAC lockdown: 32, date: 2021-05-20 22:33:17
House ID: 13 -- OD_temp : 28.351779, ID_temp: 20.003615, target_temp: 20.000000, diff: 0.003615, HVAC on: False, HVAC lockdown: 16, date: 2021-05-20 22:33:17
House ID: 14 -- OD_temp : 28.351779, ID_temp: 20.049076, target_temp: 20.000000, diff: 0.049076, HVAC on: False, HVAC lockdown: 36, date: 2021-05-20 22:33:17
House ID: 15 -- OD_temp : 28.351779, ID_temp: 19.995382, target_temp: 20.000000, diff: -0.004618, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 16 -- OD_temp : 28.351779, ID_temp: 19.973620, target_temp: 20.000000, diff: -0.026380, HVAC on: False, HVAC lockdown: 16, date: 2021-05-20 22:33:17
House ID: 17 -- OD_temp : 28.351779, ID_temp: 19.974502, target_temp: 20.000000, diff: -0.025498, HVAC on: False, HVAC lockdown: 16, date: 2021-05-20 22:33:17
House ID: 18 -- OD_temp : 28.351779, ID_temp: 20.025890, target_temp: 20.000000, diff: 0.025890, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 19 -- OD_temp : 28.351779, ID_temp: 20.027889, target_temp: 20.000000, diff: 0.027889, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-20 22:33:17
House ID: 20 -- OD_temp : 28.351779, ID_temp: 19.999896, target_temp: 20.000000, diff: -0.000104, HVAC on: False, HVAC lockdown: 20, date: 2021-05-20 22:33:17
House ID: 21 -- OD_temp : 28.351779, ID_temp: 19.911854, target_temp: 20.000000, diff: -0.088146, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 22 -- OD_temp : 28.351779, ID_temp: 19.984830, target_temp: 20.000000, diff: -0.015170, HVAC on: False, HVAC lockdown: 16, date: 2021-05-20 22:33:17
House ID: 23 -- OD_temp : 28.351779, ID_temp: 20.003570, target_temp: 20.000000, diff: 0.003570, HVAC on: False, HVAC lockdown: 36, date: 2021-05-20 22:33:17
House ID: 24 -- OD_temp : 28.351779, ID_temp: 20.026637, target_temp: 20.000000, diff: 0.026637, HVAC on: False, HVAC lockdown: 28, date: 2021-05-20 22:33:17
House ID: 25 -- OD_temp : 28.351779, ID_temp: 19.978534, target_temp: 20.000000, diff: -0.021466, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 26 -- OD_temp : 28.351779, ID_temp: 19.958838, target_temp: 20.000000, diff: -0.041162, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 27 -- OD_temp : 28.351779, ID_temp: 19.988665, target_temp: 20.000000, diff: -0.011335, HVAC on: False, HVAC lockdown: 8, date: 2021-05-20 22:33:17
House ID: 28 -- OD_temp : 28.351779, ID_temp: 20.063090, target_temp: 20.000000, diff: 0.063090, HVAC on: False, HVAC lockdown: 32, date: 2021-05-20 22:33:17
House ID: 29 -- OD_temp : 28.351779, ID_temp: 19.966379, target_temp: 20.000000, diff: -0.033621, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 30 -- OD_temp : 28.351779, ID_temp: 20.044644, target_temp: 20.000000, diff: 0.044644, HVAC on: False, HVAC lockdown: 36, date: 2021-05-20 22:33:17
House ID: 31 -- OD_temp : 28.351779, ID_temp: 20.051209, target_temp: 20.000000, diff: 0.051209, HVAC on: False, HVAC lockdown: 36, date: 2021-05-20 22:33:17
House ID: 32 -- OD_temp : 28.351779, ID_temp: 20.025349, target_temp: 20.000000, diff: 0.025349, HVAC on: False, HVAC lockdown: 32, date: 2021-05-20 22:33:17
House ID: 33 -- OD_temp : 28.351779, ID_temp: 20.031944, target_temp: 20.000000, diff: 0.031944, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 34 -- OD_temp : 28.351779, ID_temp: 20.063288, target_temp: 20.000000, diff: 0.063288, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 35 -- OD_temp : 28.351779, ID_temp: 20.032125, target_temp: 20.000000, diff: 0.032125, HVAC on: False, HVAC lockdown: 16, date: 2021-05-20 22:33:17
House ID: 36 -- OD_temp : 28.351779, ID_temp: 20.027755, target_temp: 20.000000, diff: 0.027755, HVAC on: False, HVAC lockdown: 28, date: 2021-05-20 22:33:17
House ID: 37 -- OD_temp : 28.351779, ID_temp: 20.041609, target_temp: 20.000000, diff: 0.041609, HVAC on: False, HVAC lockdown: 28, date: 2021-05-20 22:33:17
House ID: 38 -- OD_temp : 28.351779, ID_temp: 19.912880, target_temp: 20.000000, diff: -0.087120, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 39 -- OD_temp : 28.351779, ID_temp: 19.990257, target_temp: 20.000000, diff: -0.009743, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 40 -- OD_temp : 28.351779, ID_temp: 19.993543, target_temp: 20.000000, diff: -0.006457, HVAC on: False, HVAC lockdown: 8, date: 2021-05-20 22:33:17
House ID: 41 -- OD_temp : 28.351779, ID_temp: 19.992945, target_temp: 20.000000, diff: -0.007055, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 42 -- OD_temp : 28.351779, ID_temp: 20.065675, target_temp: 20.000000, diff: 0.065675, HVAC on: False, HVAC lockdown: 28, date: 2021-05-20 22:33:17
House ID: 43 -- OD_temp : 28.351779, ID_temp: 19.967778, target_temp: 20.000000, diff: -0.032222, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 44 -- OD_temp : 28.351779, ID_temp: 20.016992, target_temp: 20.000000, diff: 0.016992, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 45 -- OD_temp : 28.351779, ID_temp: 19.993324, target_temp: 20.000000, diff: -0.006676, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 46 -- OD_temp : 28.351779, ID_temp: 20.030576, target_temp: 20.000000, diff: 0.030576, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 47 -- OD_temp : 28.351779, ID_temp: 19.989100, target_temp: 20.000000, diff: -0.010900, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-20 22:33:17
House ID: 48 -- OD_temp : 28.351779, ID_temp: 20.065048, target_temp: 20.000000, diff: 0.065048, HVAC on: False, HVAC lockdown: 24, date: 2021-05-20 22:33:17
House ID: 49 -- OD_temp : 28.351779, ID_temp: 20.049444, target_temp: 20.000000, diff: 0.049444, HVAC on: False, HVAC lockdown: 32, date: 2021-05-20 22:33:17
New episode at time 557055
Updating agent at time 557055
The agent is updating....
Time step: 557055 ，train 1056000 times
Time step: 557055 ，train 1057000 times
Time step: 557055 ，train 1058000 times
Time step: 557055 ，train 1059000 times
Time step: 557055 ，train 1060000 times
Time step: 557055 ，train 1061000 times
Time step: 557055 ，train 1062000 times
Time step: 557055 ，train 1063000 times
Time step: 557055 ，train 1064000 times
Time step: 557055 ，train 1065000 times
Time step: 557055 ，train 1066000 times
Time step: 557055 ，train 1067000 times
Time step: 557055 ，train 1068000 times
Time step: 557055 ，train 1069000 times
Time step: 557055 ，train 1070000 times
Time step: 557055 ，train 1071000 times
Time step: 557055 ，train 1072000 times
Time step: 557055 ，train 1073000 times
Time step: 557055 ，train 1074000 times
Time step: 557055 ，train 1075000 times
Time step: 557055 ，train 1076000 times
Time step: 557055 ，train 1077000 times
Time step: 557055 ，train 1078000 times
Time step: 557055 ，train 1079000 times
Time step: 557055 ，train 1080000 times
Time step: 557055 ，train 1081000 times
Time step: 557055 ，train 1082000 times
Time step: 557055 ，train 1083000 times
Time step: 557055 ，train 1084000 times
Time step: 557055 ，train 1085000 times
Time step: 557055 ，train 1086000 times
Time step: 557055 ，train 1087000 times
Testing at time 557055
House ID: 0 -- OD_temp : 28.623489, ID_temp: 20.014133, target_temp: 20.000000, diff: 0.014133, HVAC on: False, HVAC lockdown: 24, date: 2021-06-07 01:55:56
House ID: 1 -- OD_temp : 28.623489, ID_temp: 19.988819, target_temp: 20.000000, diff: -0.011181, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 01:55:56
House ID: 2 -- OD_temp : 28.623489, ID_temp: 19.969312, target_temp: 20.000000, diff: -0.030688, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 3 -- OD_temp : 28.623489, ID_temp: 19.984426, target_temp: 20.000000, diff: -0.015574, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 4 -- OD_temp : 28.623489, ID_temp: 19.976500, target_temp: 20.000000, diff: -0.023500, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 01:55:56
House ID: 5 -- OD_temp : 28.623489, ID_temp: 20.099888, target_temp: 20.000000, diff: 0.099888, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 01:55:56
House ID: 6 -- OD_temp : 28.623489, ID_temp: 20.017024, target_temp: 20.000000, diff: 0.017024, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 01:55:56
House ID: 7 -- OD_temp : 28.623489, ID_temp: 19.993155, target_temp: 20.000000, diff: -0.006845, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 8 -- OD_temp : 28.623489, ID_temp: 20.029358, target_temp: 20.000000, diff: 0.029358, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 9 -- OD_temp : 28.623489, ID_temp: 20.013445, target_temp: 20.000000, diff: 0.013445, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 01:55:56
House ID: 10 -- OD_temp : 28.623489, ID_temp: 20.057749, target_temp: 20.000000, diff: 0.057749, HVAC on: False, HVAC lockdown: 32, date: 2021-06-07 01:55:56
House ID: 11 -- OD_temp : 28.623489, ID_temp: 19.996391, target_temp: 20.000000, diff: -0.003609, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 01:55:56
House ID: 12 -- OD_temp : 28.623489, ID_temp: 20.010481, target_temp: 20.000000, diff: 0.010481, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 13 -- OD_temp : 28.623489, ID_temp: 20.015164, target_temp: 20.000000, diff: 0.015164, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 14 -- OD_temp : 28.623489, ID_temp: 19.977928, target_temp: 20.000000, diff: -0.022072, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 15 -- OD_temp : 28.623489, ID_temp: 19.930431, target_temp: 20.000000, diff: -0.069569, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 01:55:56
House ID: 16 -- OD_temp : 28.623489, ID_temp: 20.035800, target_temp: 20.000000, diff: 0.035800, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 01:55:56
House ID: 17 -- OD_temp : 28.623489, ID_temp: 19.988043, target_temp: 20.000000, diff: -0.011957, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 01:55:56
House ID: 18 -- OD_temp : 28.623489, ID_temp: 20.008014, target_temp: 20.000000, diff: 0.008014, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 01:55:56
House ID: 19 -- OD_temp : 28.623489, ID_temp: 20.021142, target_temp: 20.000000, diff: 0.021142, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 20 -- OD_temp : 28.623489, ID_temp: 20.023887, target_temp: 20.000000, diff: 0.023887, HVAC on: False, HVAC lockdown: 24, date: 2021-06-07 01:55:56
House ID: 21 -- OD_temp : 28.623489, ID_temp: 20.051287, target_temp: 20.000000, diff: 0.051287, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 01:55:56
House ID: 22 -- OD_temp : 28.623489, ID_temp: 20.009177, target_temp: 20.000000, diff: 0.009177, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 01:55:56
House ID: 23 -- OD_temp : 28.623489, ID_temp: 19.968827, target_temp: 20.000000, diff: -0.031173, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 01:55:56
House ID: 24 -- OD_temp : 28.623489, ID_temp: 19.975613, target_temp: 20.000000, diff: -0.024387, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 25 -- OD_temp : 28.623489, ID_temp: 19.967903, target_temp: 20.000000, diff: -0.032097, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 01:55:56
House ID: 26 -- OD_temp : 28.623489, ID_temp: 19.989092, target_temp: 20.000000, diff: -0.010908, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 01:55:56
House ID: 27 -- OD_temp : 28.623489, ID_temp: 19.974067, target_temp: 20.000000, diff: -0.025933, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 28 -- OD_temp : 28.623489, ID_temp: 19.950357, target_temp: 20.000000, diff: -0.049643, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 29 -- OD_temp : 28.623489, ID_temp: 19.996179, target_temp: 20.000000, diff: -0.003821, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 01:55:56
House ID: 30 -- OD_temp : 28.623489, ID_temp: 20.034811, target_temp: 20.000000, diff: 0.034811, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 31 -- OD_temp : 28.623489, ID_temp: 19.986529, target_temp: 20.000000, diff: -0.013471, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 01:55:56
House ID: 32 -- OD_temp : 28.623489, ID_temp: 20.030826, target_temp: 20.000000, diff: 0.030826, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 33 -- OD_temp : 28.623489, ID_temp: 19.964504, target_temp: 20.000000, diff: -0.035496, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 01:55:56
House ID: 34 -- OD_temp : 28.623489, ID_temp: 19.982589, target_temp: 20.000000, diff: -0.017411, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 35 -- OD_temp : 28.623489, ID_temp: 20.020179, target_temp: 20.000000, diff: 0.020179, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 36 -- OD_temp : 28.623489, ID_temp: 19.995568, target_temp: 20.000000, diff: -0.004432, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 37 -- OD_temp : 28.623489, ID_temp: 20.030175, target_temp: 20.000000, diff: 0.030175, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 38 -- OD_temp : 28.623489, ID_temp: 19.966399, target_temp: 20.000000, diff: -0.033601, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 39 -- OD_temp : 28.623489, ID_temp: 20.012274, target_temp: 20.000000, diff: 0.012274, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 40 -- OD_temp : 28.623489, ID_temp: 20.003709, target_temp: 20.000000, diff: 0.003709, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 41 -- OD_temp : 28.623489, ID_temp: 19.985401, target_temp: 20.000000, diff: -0.014599, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 01:55:56
House ID: 42 -- OD_temp : 28.623489, ID_temp: 19.983694, target_temp: 20.000000, diff: -0.016306, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 43 -- OD_temp : 28.623489, ID_temp: 19.983316, target_temp: 20.000000, diff: -0.016684, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 01:55:56
House ID: 44 -- OD_temp : 28.623489, ID_temp: 19.978462, target_temp: 20.000000, diff: -0.021538, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 45 -- OD_temp : 28.623489, ID_temp: 19.984504, target_temp: 20.000000, diff: -0.015496, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 46 -- OD_temp : 28.623489, ID_temp: 19.929861, target_temp: 20.000000, diff: -0.070139, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 47 -- OD_temp : 28.623489, ID_temp: 19.999882, target_temp: 20.000000, diff: -0.000118, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 01:55:56
House ID: 48 -- OD_temp : 28.623489, ID_temp: 19.976014, target_temp: 20.000000, diff: -0.023986, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 01:55:56
House ID: 49 -- OD_temp : 28.623489, ID_temp: 19.998495, target_temp: 20.000000, diff: -0.001505, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 01:55:56
House ID: 0 -- OD_temp : 33.682775, ID_temp: 19.976648, target_temp: 20.000000, diff: -0.023352, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 13:02:36
House ID: 1 -- OD_temp : 33.682775, ID_temp: 19.970687, target_temp: 20.000000, diff: -0.029313, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 13:02:36
House ID: 2 -- OD_temp : 33.682775, ID_temp: 20.072705, target_temp: 20.000000, diff: 0.072705, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 13:02:36
House ID: 3 -- OD_temp : 33.682775, ID_temp: 20.038287, target_temp: 20.000000, diff: 0.038287, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 13:02:36
House ID: 4 -- OD_temp : 33.682775, ID_temp: 20.009266, target_temp: 20.000000, diff: 0.009266, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 5 -- OD_temp : 33.682775, ID_temp: 20.087868, target_temp: 20.000000, diff: 0.087868, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 6 -- OD_temp : 33.682775, ID_temp: 20.074984, target_temp: 20.000000, diff: 0.074984, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 13:02:36
House ID: 7 -- OD_temp : 33.682775, ID_temp: 19.993548, target_temp: 20.000000, diff: -0.006452, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 13:02:36
House ID: 8 -- OD_temp : 33.682775, ID_temp: 20.052405, target_temp: 20.000000, diff: 0.052405, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 13:02:36
House ID: 9 -- OD_temp : 33.682775, ID_temp: 20.015207, target_temp: 20.000000, diff: 0.015207, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 13:02:36
House ID: 10 -- OD_temp : 33.682775, ID_temp: 19.910081, target_temp: 20.000000, diff: -0.089919, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 11 -- OD_temp : 33.682775, ID_temp: 19.988411, target_temp: 20.000000, diff: -0.011589, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 12 -- OD_temp : 33.682775, ID_temp: 20.030615, target_temp: 20.000000, diff: 0.030615, HVAC on: False, HVAC lockdown: 32, date: 2021-06-07 13:02:36
House ID: 13 -- OD_temp : 33.682775, ID_temp: 19.925466, target_temp: 20.000000, diff: -0.074534, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 14 -- OD_temp : 33.682775, ID_temp: 19.960394, target_temp: 20.000000, diff: -0.039606, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 15 -- OD_temp : 33.682775, ID_temp: 19.974429, target_temp: 20.000000, diff: -0.025571, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 13:02:36
House ID: 16 -- OD_temp : 33.682775, ID_temp: 20.009255, target_temp: 20.000000, diff: 0.009255, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 13:02:36
House ID: 17 -- OD_temp : 33.682775, ID_temp: 19.970209, target_temp: 20.000000, diff: -0.029791, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 13:02:36
House ID: 18 -- OD_temp : 33.682775, ID_temp: 20.064925, target_temp: 20.000000, diff: 0.064925, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 13:02:36
House ID: 19 -- OD_temp : 33.682775, ID_temp: 19.948418, target_temp: 20.000000, diff: -0.051582, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 20 -- OD_temp : 33.682775, ID_temp: 19.920425, target_temp: 20.000000, diff: -0.079575, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 13:02:36
House ID: 21 -- OD_temp : 33.682775, ID_temp: 19.999256, target_temp: 20.000000, diff: -0.000744, HVAC on: False, HVAC lockdown: 8, date: 2021-06-07 13:02:36
House ID: 22 -- OD_temp : 33.682775, ID_temp: 20.032779, target_temp: 20.000000, diff: 0.032779, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 23 -- OD_temp : 33.682775, ID_temp: 20.012318, target_temp: 20.000000, diff: 0.012318, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 24 -- OD_temp : 33.682775, ID_temp: 20.023086, target_temp: 20.000000, diff: 0.023086, HVAC on: False, HVAC lockdown: 28, date: 2021-06-07 13:02:36
House ID: 25 -- OD_temp : 33.682775, ID_temp: 19.962715, target_temp: 20.000000, diff: -0.037285, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 26 -- OD_temp : 33.682775, ID_temp: 20.068938, target_temp: 20.000000, diff: 0.068938, HVAC on: False, HVAC lockdown: 36, date: 2021-06-07 13:02:36
House ID: 27 -- OD_temp : 33.682775, ID_temp: 19.960305, target_temp: 20.000000, diff: -0.039695, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 13:02:36
House ID: 28 -- OD_temp : 33.682775, ID_temp: 19.943292, target_temp: 20.000000, diff: -0.056708, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 13:02:36
House ID: 29 -- OD_temp : 33.682775, ID_temp: 19.968181, target_temp: 20.000000, diff: -0.031819, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 30 -- OD_temp : 33.682775, ID_temp: 20.015104, target_temp: 20.000000, diff: 0.015104, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 13:02:36
House ID: 31 -- OD_temp : 33.682775, ID_temp: 20.008969, target_temp: 20.000000, diff: 0.008969, HVAC on: False, HVAC lockdown: 12, date: 2021-06-07 13:02:36
House ID: 32 -- OD_temp : 33.682775, ID_temp: 19.953273, target_temp: 20.000000, diff: -0.046727, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 33 -- OD_temp : 33.682775, ID_temp: 19.998685, target_temp: 20.000000, diff: -0.001315, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 34 -- OD_temp : 33.682775, ID_temp: 20.032622, target_temp: 20.000000, diff: 0.032622, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 13:02:36
House ID: 35 -- OD_temp : 33.682775, ID_temp: 19.975943, target_temp: 20.000000, diff: -0.024057, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 36 -- OD_temp : 33.682775, ID_temp: 19.917929, target_temp: 20.000000, diff: -0.082071, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 37 -- OD_temp : 33.682775, ID_temp: 19.952380, target_temp: 20.000000, diff: -0.047620, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 38 -- OD_temp : 33.682775, ID_temp: 19.930019, target_temp: 20.000000, diff: -0.069981, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 39 -- OD_temp : 33.682775, ID_temp: 20.062959, target_temp: 20.000000, diff: 0.062959, HVAC on: False, HVAC lockdown: 32, date: 2021-06-07 13:02:36
House ID: 40 -- OD_temp : 33.682775, ID_temp: 20.054614, target_temp: 20.000000, diff: 0.054614, HVAC on: 0, HVAC lockdown: 40, date: 2021-06-07 13:02:36
House ID: 41 -- OD_temp : 33.682775, ID_temp: 20.162502, target_temp: 20.000000, diff: 0.162502, HVAC on: 0, HVAC lockdown: 40, date: 2021-06-07 13:02:36
House ID: 42 -- OD_temp : 33.682775, ID_temp: 20.026354, target_temp: 20.000000, diff: 0.026354, HVAC on: False, HVAC lockdown: 24, date: 2021-06-07 13:02:36
House ID: 43 -- OD_temp : 33.682775, ID_temp: 19.980143, target_temp: 20.000000, diff: -0.019857, HVAC on: False, HVAC lockdown: 24, date: 2021-06-07 13:02:36
House ID: 44 -- OD_temp : 33.682775, ID_temp: 20.081859, target_temp: 20.000000, diff: 0.081859, HVAC on: False, HVAC lockdown: 24, date: 2021-06-07 13:02:36
House ID: 45 -- OD_temp : 33.682775, ID_temp: 19.996911, target_temp: 20.000000, diff: -0.003089, HVAC on: False, HVAC lockdown: 20, date: 2021-06-07 13:02:36
House ID: 46 -- OD_temp : 33.682775, ID_temp: 19.964850, target_temp: 20.000000, diff: -0.035150, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-07 13:02:36
House ID: 47 -- OD_temp : 33.682775, ID_temp: 20.019034, target_temp: 20.000000, diff: 0.019034, HVAC on: False, HVAC lockdown: 16, date: 2021-06-07 13:02:36
House ID: 48 -- OD_temp : 33.682775, ID_temp: 19.953544, target_temp: 20.000000, diff: -0.046456, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 13:02:36
House ID: 49 -- OD_temp : 33.682775, ID_temp: 19.932143, target_temp: 20.000000, diff: -0.067857, HVAC on: False, HVAC lockdown: 4, date: 2021-06-07 13:02:36
Training step - 557055
House ID: 0 -- OD_temp : 34.288933, ID_temp: 20.030913, target_temp: 20.000000, diff: 0.030913, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 12:04:35
House ID: 1 -- OD_temp : 34.288933, ID_temp: 19.959980, target_temp: 20.000000, diff: -0.040020, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 12:04:35
House ID: 2 -- OD_temp : 34.288933, ID_temp: 20.066250, target_temp: 20.000000, diff: 0.066250, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 3 -- OD_temp : 34.288933, ID_temp: 20.027069, target_temp: 20.000000, diff: 0.027069, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 4 -- OD_temp : 34.288933, ID_temp: 20.042872, target_temp: 20.000000, diff: 0.042872, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 12:04:35
House ID: 5 -- OD_temp : 34.288933, ID_temp: 20.096303, target_temp: 20.000000, diff: 0.096303, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 12:04:35
House ID: 6 -- OD_temp : 34.288933, ID_temp: 20.092409, target_temp: 20.000000, diff: 0.092409, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 12:04:35
House ID: 7 -- OD_temp : 34.288933, ID_temp: 19.992698, target_temp: 20.000000, diff: -0.007302, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 12:04:35
House ID: 8 -- OD_temp : 34.288933, ID_temp: 19.951268, target_temp: 20.000000, diff: -0.048732, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 9 -- OD_temp : 34.288933, ID_temp: 20.036608, target_temp: 20.000000, diff: 0.036608, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 12:04:35
House ID: 10 -- OD_temp : 34.288933, ID_temp: 19.998572, target_temp: 20.000000, diff: -0.001428, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 12:04:35
House ID: 11 -- OD_temp : 34.288933, ID_temp: 19.979781, target_temp: 20.000000, diff: -0.020219, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 12:04:35
House ID: 12 -- OD_temp : 34.288933, ID_temp: 19.993467, target_temp: 20.000000, diff: -0.006533, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 12:04:35
House ID: 13 -- OD_temp : 34.288933, ID_temp: 20.077993, target_temp: 20.000000, diff: 0.077993, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 12:04:35
House ID: 14 -- OD_temp : 34.288933, ID_temp: 20.027086, target_temp: 20.000000, diff: 0.027086, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 15 -- OD_temp : 34.288933, ID_temp: 20.089578, target_temp: 20.000000, diff: 0.089578, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 12:04:35
House ID: 16 -- OD_temp : 34.288933, ID_temp: 19.977116, target_temp: 20.000000, diff: -0.022884, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 12:04:35
House ID: 17 -- OD_temp : 34.288933, ID_temp: 20.030643, target_temp: 20.000000, diff: 0.030643, HVAC on: False, HVAC lockdown: 20, date: 2021-09-05 12:04:35
House ID: 18 -- OD_temp : 34.288933, ID_temp: 20.068239, target_temp: 20.000000, diff: 0.068239, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 12:04:35
House ID: 19 -- OD_temp : 34.288933, ID_temp: 20.007314, target_temp: 20.000000, diff: 0.007314, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 12:04:35
House ID: 20 -- OD_temp : 34.288933, ID_temp: 20.026819, target_temp: 20.000000, diff: 0.026819, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 12:04:35
House ID: 21 -- OD_temp : 34.288933, ID_temp: 20.006075, target_temp: 20.000000, diff: 0.006075, HVAC on: False, HVAC lockdown: 20, date: 2021-09-05 12:04:35
House ID: 22 -- OD_temp : 34.288933, ID_temp: 20.097027, target_temp: 20.000000, diff: 0.097027, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 12:04:35
House ID: 23 -- OD_temp : 34.288933, ID_temp: 20.021609, target_temp: 20.000000, diff: 0.021609, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 24 -- OD_temp : 34.288933, ID_temp: 20.043392, target_temp: 20.000000, diff: 0.043392, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 25 -- OD_temp : 34.288933, ID_temp: 19.977246, target_temp: 20.000000, diff: -0.022754, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 26 -- OD_temp : 34.288933, ID_temp: 20.153593, target_temp: 20.000000, diff: 0.153593, HVAC on: 0, HVAC lockdown: 44, date: 2021-09-05 12:04:35
House ID: 27 -- OD_temp : 34.288933, ID_temp: 19.951680, target_temp: 20.000000, diff: -0.048320, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 28 -- OD_temp : 34.288933, ID_temp: 20.043049, target_temp: 20.000000, diff: 0.043049, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 12:04:35
House ID: 29 -- OD_temp : 34.288933, ID_temp: 20.000067, target_temp: 20.000000, diff: 0.000067, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 12:04:35
House ID: 30 -- OD_temp : 34.288933, ID_temp: 19.972395, target_temp: 20.000000, diff: -0.027605, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 31 -- OD_temp : 34.288933, ID_temp: 20.178410, target_temp: 20.000000, diff: 0.178410, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 12:04:35
House ID: 32 -- OD_temp : 34.288933, ID_temp: 20.034670, target_temp: 20.000000, diff: 0.034670, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 33 -- OD_temp : 34.288933, ID_temp: 20.053093, target_temp: 20.000000, diff: 0.053093, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 12:04:35
House ID: 34 -- OD_temp : 34.288933, ID_temp: 19.969181, target_temp: 20.000000, diff: -0.030819, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 35 -- OD_temp : 34.288933, ID_temp: 20.005981, target_temp: 20.000000, diff: 0.005981, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 12:04:35
House ID: 36 -- OD_temp : 34.288933, ID_temp: 19.970035, target_temp: 20.000000, diff: -0.029965, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 12:04:35
House ID: 37 -- OD_temp : 34.288933, ID_temp: 20.067790, target_temp: 20.000000, diff: 0.067790, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 12:04:35
House ID: 38 -- OD_temp : 34.288933, ID_temp: 20.084582, target_temp: 20.000000, diff: 0.084582, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 12:04:35
House ID: 39 -- OD_temp : 34.288933, ID_temp: 20.008787, target_temp: 20.000000, diff: 0.008787, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 40 -- OD_temp : 34.288933, ID_temp: 19.982050, target_temp: 20.000000, diff: -0.017950, HVAC on: False, HVAC lockdown: 20, date: 2021-09-05 12:04:35
House ID: 41 -- OD_temp : 34.288933, ID_temp: 19.942754, target_temp: 20.000000, diff: -0.057246, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 12:04:35
House ID: 42 -- OD_temp : 34.288933, ID_temp: 20.065161, target_temp: 20.000000, diff: 0.065161, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 43 -- OD_temp : 34.288933, ID_temp: 20.027785, target_temp: 20.000000, diff: 0.027785, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 12:04:35
House ID: 44 -- OD_temp : 34.288933, ID_temp: 19.916834, target_temp: 20.000000, diff: -0.083166, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 45 -- OD_temp : 34.288933, ID_temp: 19.964733, target_temp: 20.000000, diff: -0.035267, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 12:04:35
House ID: 46 -- OD_temp : 34.288933, ID_temp: 19.953486, target_temp: 20.000000, diff: -0.046514, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 12:04:35
House ID: 47 -- OD_temp : 34.288933, ID_temp: 19.982898, target_temp: 20.000000, diff: -0.017102, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 12:04:35
House ID: 48 -- OD_temp : 34.288933, ID_temp: 20.061238, target_temp: 20.000000, diff: 0.061238, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 12:04:35
House ID: 49 -- OD_temp : 34.288933, ID_temp: 20.074134, target_temp: 20.000000, diff: 0.074134, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 12:04:35
New episode at time 573439
Updating agent at time 573439
The agent is updating....
Time step: 573439 ，train 1088000 times
Time step: 573439 ，train 1089000 times
Time step: 573439 ，train 1090000 times
Time step: 573439 ，train 1091000 times
Time step: 573439 ，train 1092000 times
Time step: 573439 ，train 1093000 times
Time step: 573439 ，train 1094000 times
Time step: 573439 ，train 1095000 times
Time step: 573439 ，train 1096000 times
Time step: 573439 ，train 1097000 times
Time step: 573439 ，train 1098000 times
Time step: 573439 ，train 1099000 times
Time step: 573439 ，train 1100000 times
Time step: 573439 ，train 1101000 times
Time step: 573439 ，train 1102000 times
Time step: 573439 ，train 1103000 times
Time step: 573439 ，train 1104000 times
Time step: 573439 ，train 1105000 times
Time step: 573439 ，train 1106000 times
Time step: 573439 ，train 1107000 times
Time step: 573439 ，train 1108000 times
Time step: 573439 ，train 1109000 times
Time step: 573439 ，train 1110000 times
Time step: 573439 ，train 1111000 times
Time step: 573439 ，train 1112000 times
Time step: 573439 ，train 1113000 times
Time step: 573439 ，train 1114000 times
Time step: 573439 ，train 1115000 times
Time step: 573439 ，train 1116000 times
Time step: 573439 ，train 1117000 times
Time step: 573439 ，train 1118000 times
Time step: 573439 ，train 1119000 times
Testing at time 573439
House ID: 0 -- OD_temp : 28.038826, ID_temp: 20.048112, target_temp: 20.000000, diff: 0.048112, HVAC on: False, HVAC lockdown: 36, date: 2021-06-24 21:06:20
House ID: 1 -- OD_temp : 28.038826, ID_temp: 20.034577, target_temp: 20.000000, diff: 0.034577, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 2 -- OD_temp : 28.038826, ID_temp: 20.034872, target_temp: 20.000000, diff: 0.034872, HVAC on: False, HVAC lockdown: 36, date: 2021-06-24 21:06:20
House ID: 3 -- OD_temp : 28.038826, ID_temp: 20.050585, target_temp: 20.000000, diff: 0.050585, HVAC on: False, HVAC lockdown: 36, date: 2021-06-24 21:06:20
House ID: 4 -- OD_temp : 28.038826, ID_temp: 20.000228, target_temp: 20.000000, diff: 0.000228, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 5 -- OD_temp : 28.038826, ID_temp: 20.001899, target_temp: 20.000000, diff: 0.001899, HVAC on: False, HVAC lockdown: 12, date: 2021-06-24 21:06:20
House ID: 6 -- OD_temp : 28.038826, ID_temp: 20.017297, target_temp: 20.000000, diff: 0.017297, HVAC on: False, HVAC lockdown: 28, date: 2021-06-24 21:06:20
House ID: 7 -- OD_temp : 28.038826, ID_temp: 20.005191, target_temp: 20.000000, diff: 0.005191, HVAC on: False, HVAC lockdown: 8, date: 2021-06-24 21:06:20
House ID: 8 -- OD_temp : 28.038826, ID_temp: 19.996875, target_temp: 20.000000, diff: -0.003125, HVAC on: False, HVAC lockdown: 4, date: 2021-06-24 21:06:20
House ID: 9 -- OD_temp : 28.038826, ID_temp: 20.053513, target_temp: 20.000000, diff: 0.053513, HVAC on: False, HVAC lockdown: 28, date: 2021-06-24 21:06:20
House ID: 10 -- OD_temp : 28.038826, ID_temp: 20.025740, target_temp: 20.000000, diff: 0.025740, HVAC on: False, HVAC lockdown: 16, date: 2021-06-24 21:06:20
House ID: 11 -- OD_temp : 28.038826, ID_temp: 20.002291, target_temp: 20.000000, diff: 0.002291, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 12 -- OD_temp : 28.038826, ID_temp: 20.066269, target_temp: 20.000000, diff: 0.066269, HVAC on: False, HVAC lockdown: 32, date: 2021-06-24 21:06:20
House ID: 13 -- OD_temp : 28.038826, ID_temp: 20.018003, target_temp: 20.000000, diff: 0.018003, HVAC on: False, HVAC lockdown: 20, date: 2021-06-24 21:06:20
House ID: 14 -- OD_temp : 28.038826, ID_temp: 19.986745, target_temp: 20.000000, diff: -0.013255, HVAC on: False, HVAC lockdown: 16, date: 2021-06-24 21:06:20
House ID: 15 -- OD_temp : 28.038826, ID_temp: 20.004526, target_temp: 20.000000, diff: 0.004526, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 16 -- OD_temp : 28.038826, ID_temp: 19.987053, target_temp: 20.000000, diff: -0.012947, HVAC on: False, HVAC lockdown: 4, date: 2021-06-24 21:06:20
House ID: 17 -- OD_temp : 28.038826, ID_temp: 20.020792, target_temp: 20.000000, diff: 0.020792, HVAC on: False, HVAC lockdown: 16, date: 2021-06-24 21:06:20
House ID: 18 -- OD_temp : 28.038826, ID_temp: 19.990862, target_temp: 20.000000, diff: -0.009138, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 19 -- OD_temp : 28.038826, ID_temp: 20.026625, target_temp: 20.000000, diff: 0.026625, HVAC on: False, HVAC lockdown: 24, date: 2021-06-24 21:06:20
House ID: 20 -- OD_temp : 28.038826, ID_temp: 19.983889, target_temp: 20.000000, diff: -0.016111, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 21 -- OD_temp : 28.038826, ID_temp: 20.069412, target_temp: 20.000000, diff: 0.069412, HVAC on: False, HVAC lockdown: 32, date: 2021-06-24 21:06:20
House ID: 22 -- OD_temp : 28.038826, ID_temp: 19.961587, target_temp: 20.000000, diff: -0.038413, HVAC on: False, HVAC lockdown: 12, date: 2021-06-24 21:06:20
House ID: 23 -- OD_temp : 28.038826, ID_temp: 20.034382, target_temp: 20.000000, diff: 0.034382, HVAC on: False, HVAC lockdown: 28, date: 2021-06-24 21:06:20
House ID: 24 -- OD_temp : 28.038826, ID_temp: 20.069667, target_temp: 20.000000, diff: 0.069667, HVAC on: 0, HVAC lockdown: 40, date: 2021-06-24 21:06:20
House ID: 25 -- OD_temp : 28.038826, ID_temp: 20.027982, target_temp: 20.000000, diff: 0.027982, HVAC on: False, HVAC lockdown: 16, date: 2021-06-24 21:06:20
House ID: 26 -- OD_temp : 28.038826, ID_temp: 20.031313, target_temp: 20.000000, diff: 0.031313, HVAC on: False, HVAC lockdown: 12, date: 2021-06-24 21:06:20
House ID: 27 -- OD_temp : 28.038826, ID_temp: 20.070615, target_temp: 20.000000, diff: 0.070615, HVAC on: False, HVAC lockdown: 36, date: 2021-06-24 21:06:20
House ID: 28 -- OD_temp : 28.038826, ID_temp: 20.049135, target_temp: 20.000000, diff: 0.049135, HVAC on: False, HVAC lockdown: 32, date: 2021-06-24 21:06:20
House ID: 29 -- OD_temp : 28.038826, ID_temp: 19.968435, target_temp: 20.000000, diff: -0.031565, HVAC on: False, HVAC lockdown: 8, date: 2021-06-24 21:06:20
House ID: 30 -- OD_temp : 28.038826, ID_temp: 19.974478, target_temp: 20.000000, diff: -0.025522, HVAC on: False, HVAC lockdown: 4, date: 2021-06-24 21:06:20
House ID: 31 -- OD_temp : 28.038826, ID_temp: 20.014301, target_temp: 20.000000, diff: 0.014301, HVAC on: False, HVAC lockdown: 24, date: 2021-06-24 21:06:20
House ID: 32 -- OD_temp : 28.038826, ID_temp: 19.984990, target_temp: 20.000000, diff: -0.015010, HVAC on: False, HVAC lockdown: 16, date: 2021-06-24 21:06:20
House ID: 33 -- OD_temp : 28.038826, ID_temp: 20.019256, target_temp: 20.000000, diff: 0.019256, HVAC on: False, HVAC lockdown: 36, date: 2021-06-24 21:06:20
House ID: 34 -- OD_temp : 28.038826, ID_temp: 19.959920, target_temp: 20.000000, diff: -0.040080, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 35 -- OD_temp : 28.038826, ID_temp: 20.008596, target_temp: 20.000000, diff: 0.008596, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 36 -- OD_temp : 28.038826, ID_temp: 20.066498, target_temp: 20.000000, diff: 0.066498, HVAC on: False, HVAC lockdown: 28, date: 2021-06-24 21:06:20
House ID: 37 -- OD_temp : 28.038826, ID_temp: 20.033637, target_temp: 20.000000, diff: 0.033637, HVAC on: False, HVAC lockdown: 12, date: 2021-06-24 21:06:20
House ID: 38 -- OD_temp : 28.038826, ID_temp: 19.999080, target_temp: 20.000000, diff: -0.000920, HVAC on: False, HVAC lockdown: 4, date: 2021-06-24 21:06:20
House ID: 39 -- OD_temp : 28.038826, ID_temp: 20.028248, target_temp: 20.000000, diff: 0.028248, HVAC on: False, HVAC lockdown: 12, date: 2021-06-24 21:06:20
House ID: 40 -- OD_temp : 28.038826, ID_temp: 20.001911, target_temp: 20.000000, diff: 0.001911, HVAC on: False, HVAC lockdown: 36, date: 2021-06-24 21:06:20
House ID: 41 -- OD_temp : 28.038826, ID_temp: 19.995203, target_temp: 20.000000, diff: -0.004797, HVAC on: False, HVAC lockdown: 24, date: 2021-06-24 21:06:20
House ID: 42 -- OD_temp : 28.038826, ID_temp: 20.030992, target_temp: 20.000000, diff: 0.030992, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 43 -- OD_temp : 28.038826, ID_temp: 19.982688, target_temp: 20.000000, diff: -0.017312, HVAC on: False, HVAC lockdown: 20, date: 2021-06-24 21:06:20
House ID: 44 -- OD_temp : 28.038826, ID_temp: 20.013080, target_temp: 20.000000, diff: 0.013080, HVAC on: False, HVAC lockdown: 4, date: 2021-06-24 21:06:20
House ID: 45 -- OD_temp : 28.038826, ID_temp: 20.027769, target_temp: 20.000000, diff: 0.027769, HVAC on: False, HVAC lockdown: 24, date: 2021-06-24 21:06:20
House ID: 46 -- OD_temp : 28.038826, ID_temp: 20.030595, target_temp: 20.000000, diff: 0.030595, HVAC on: False, HVAC lockdown: 16, date: 2021-06-24 21:06:20
House ID: 47 -- OD_temp : 28.038826, ID_temp: 19.961863, target_temp: 20.000000, diff: -0.038137, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-24 21:06:20
House ID: 48 -- OD_temp : 28.038826, ID_temp: 20.039651, target_temp: 20.000000, diff: 0.039651, HVAC on: False, HVAC lockdown: 4, date: 2021-06-24 21:06:20
House ID: 49 -- OD_temp : 28.038826, ID_temp: 20.059398, target_temp: 20.000000, diff: 0.059398, HVAC on: False, HVAC lockdown: 36, date: 2021-06-24 21:06:20
House ID: 0 -- OD_temp : 32.269584, ID_temp: 19.952360, target_temp: 20.000000, diff: -0.047640, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 1 -- OD_temp : 32.269584, ID_temp: 20.034787, target_temp: 20.000000, diff: 0.034787, HVAC on: False, HVAC lockdown: 28, date: 2021-06-25 08:13:00
House ID: 2 -- OD_temp : 32.269584, ID_temp: 20.016737, target_temp: 20.000000, diff: 0.016737, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 3 -- OD_temp : 32.269584, ID_temp: 20.061734, target_temp: 20.000000, diff: 0.061734, HVAC on: False, HVAC lockdown: 36, date: 2021-06-25 08:13:00
House ID: 4 -- OD_temp : 32.269584, ID_temp: 19.984685, target_temp: 20.000000, diff: -0.015315, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 5 -- OD_temp : 32.269584, ID_temp: 19.991315, target_temp: 20.000000, diff: -0.008685, HVAC on: False, HVAC lockdown: 28, date: 2021-06-25 08:13:00
House ID: 6 -- OD_temp : 32.269584, ID_temp: 19.994918, target_temp: 20.000000, diff: -0.005082, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 7 -- OD_temp : 32.269584, ID_temp: 20.076417, target_temp: 20.000000, diff: 0.076417, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 8 -- OD_temp : 32.269584, ID_temp: 19.936808, target_temp: 20.000000, diff: -0.063192, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 9 -- OD_temp : 32.269584, ID_temp: 19.972546, target_temp: 20.000000, diff: -0.027454, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 10 -- OD_temp : 32.269584, ID_temp: 19.902102, target_temp: 20.000000, diff: -0.097898, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 11 -- OD_temp : 32.269584, ID_temp: 19.956232, target_temp: 20.000000, diff: -0.043768, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 12 -- OD_temp : 32.269584, ID_temp: 20.008614, target_temp: 20.000000, diff: 0.008614, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 13 -- OD_temp : 32.269584, ID_temp: 20.012987, target_temp: 20.000000, diff: 0.012987, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
House ID: 14 -- OD_temp : 32.269584, ID_temp: 19.974636, target_temp: 20.000000, diff: -0.025364, HVAC on: False, HVAC lockdown: 8, date: 2021-06-25 08:13:00
House ID: 15 -- OD_temp : 32.269584, ID_temp: 19.993796, target_temp: 20.000000, diff: -0.006204, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
House ID: 16 -- OD_temp : 32.269584, ID_temp: 19.975600, target_temp: 20.000000, diff: -0.024400, HVAC on: False, HVAC lockdown: 8, date: 2021-06-25 08:13:00
House ID: 17 -- OD_temp : 32.269584, ID_temp: 19.984757, target_temp: 20.000000, diff: -0.015243, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
House ID: 18 -- OD_temp : 32.269584, ID_temp: 20.014454, target_temp: 20.000000, diff: 0.014454, HVAC on: False, HVAC lockdown: 28, date: 2021-06-25 08:13:00
House ID: 19 -- OD_temp : 32.269584, ID_temp: 19.945150, target_temp: 20.000000, diff: -0.054850, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 20 -- OD_temp : 32.269584, ID_temp: 19.972328, target_temp: 20.000000, diff: -0.027672, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 21 -- OD_temp : 32.269584, ID_temp: 20.053266, target_temp: 20.000000, diff: 0.053266, HVAC on: False, HVAC lockdown: 32, date: 2021-06-25 08:13:00
House ID: 22 -- OD_temp : 32.269584, ID_temp: 19.986635, target_temp: 20.000000, diff: -0.013365, HVAC on: False, HVAC lockdown: 8, date: 2021-06-25 08:13:00
House ID: 23 -- OD_temp : 32.269584, ID_temp: 19.988325, target_temp: 20.000000, diff: -0.011675, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 24 -- OD_temp : 32.269584, ID_temp: 20.088962, target_temp: 20.000000, diff: 0.088962, HVAC on: False, HVAC lockdown: 20, date: 2021-06-25 08:13:00
House ID: 25 -- OD_temp : 32.269584, ID_temp: 19.991653, target_temp: 20.000000, diff: -0.008347, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
House ID: 26 -- OD_temp : 32.269584, ID_temp: 19.975423, target_temp: 20.000000, diff: -0.024577, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 27 -- OD_temp : 32.269584, ID_temp: 20.019739, target_temp: 20.000000, diff: 0.019739, HVAC on: False, HVAC lockdown: 32, date: 2021-06-25 08:13:00
House ID: 28 -- OD_temp : 32.269584, ID_temp: 19.983267, target_temp: 20.000000, diff: -0.016733, HVAC on: False, HVAC lockdown: 12, date: 2021-06-25 08:13:00
House ID: 29 -- OD_temp : 32.269584, ID_temp: 20.040644, target_temp: 20.000000, diff: 0.040644, HVAC on: False, HVAC lockdown: 36, date: 2021-06-25 08:13:00
House ID: 30 -- OD_temp : 32.269584, ID_temp: 19.986565, target_temp: 20.000000, diff: -0.013435, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 31 -- OD_temp : 32.269584, ID_temp: 19.957310, target_temp: 20.000000, diff: -0.042690, HVAC on: False, HVAC lockdown: 8, date: 2021-06-25 08:13:00
House ID: 32 -- OD_temp : 32.269584, ID_temp: 19.957061, target_temp: 20.000000, diff: -0.042939, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 33 -- OD_temp : 32.269584, ID_temp: 19.955605, target_temp: 20.000000, diff: -0.044395, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 34 -- OD_temp : 32.269584, ID_temp: 19.983689, target_temp: 20.000000, diff: -0.016311, HVAC on: False, HVAC lockdown: 8, date: 2021-06-25 08:13:00
House ID: 35 -- OD_temp : 32.269584, ID_temp: 19.922711, target_temp: 20.000000, diff: -0.077289, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 36 -- OD_temp : 32.269584, ID_temp: 19.953624, target_temp: 20.000000, diff: -0.046376, HVAC on: False, HVAC lockdown: 16, date: 2021-06-25 08:13:00
House ID: 37 -- OD_temp : 32.269584, ID_temp: 20.077023, target_temp: 20.000000, diff: 0.077023, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
House ID: 38 -- OD_temp : 32.269584, ID_temp: 19.958215, target_temp: 20.000000, diff: -0.041785, HVAC on: False, HVAC lockdown: 4, date: 2021-06-25 08:13:00
House ID: 39 -- OD_temp : 32.269584, ID_temp: 20.021389, target_temp: 20.000000, diff: 0.021389, HVAC on: False, HVAC lockdown: 8, date: 2021-06-25 08:13:00
House ID: 40 -- OD_temp : 32.269584, ID_temp: 19.930245, target_temp: 20.000000, diff: -0.069755, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 41 -- OD_temp : 32.269584, ID_temp: 20.034397, target_temp: 20.000000, diff: 0.034397, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-25 08:13:00
House ID: 42 -- OD_temp : 32.269584, ID_temp: 19.993787, target_temp: 20.000000, diff: -0.006213, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
House ID: 43 -- OD_temp : 32.269584, ID_temp: 19.966623, target_temp: 20.000000, diff: -0.033377, HVAC on: False, HVAC lockdown: 4, date: 2021-06-25 08:13:00
House ID: 44 -- OD_temp : 32.269584, ID_temp: 19.996527, target_temp: 20.000000, diff: -0.003473, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
House ID: 45 -- OD_temp : 32.269584, ID_temp: 20.008916, target_temp: 20.000000, diff: 0.008916, HVAC on: False, HVAC lockdown: 32, date: 2021-06-25 08:13:00
House ID: 46 -- OD_temp : 32.269584, ID_temp: 20.010093, target_temp: 20.000000, diff: 0.010093, HVAC on: False, HVAC lockdown: 20, date: 2021-06-25 08:13:00
House ID: 47 -- OD_temp : 32.269584, ID_temp: 20.066928, target_temp: 20.000000, diff: 0.066928, HVAC on: False, HVAC lockdown: 12, date: 2021-06-25 08:13:00
House ID: 48 -- OD_temp : 32.269584, ID_temp: 20.041833, target_temp: 20.000000, diff: 0.041833, HVAC on: False, HVAC lockdown: 32, date: 2021-06-25 08:13:00
House ID: 49 -- OD_temp : 32.269584, ID_temp: 19.984908, target_temp: 20.000000, diff: -0.015092, HVAC on: False, HVAC lockdown: 24, date: 2021-06-25 08:13:00
Training step - 573439
House ID: 0 -- OD_temp : 29.580777, ID_temp: 19.998277, target_temp: 20.000000, diff: -0.001723, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 1 -- OD_temp : 29.580777, ID_temp: 19.990340, target_temp: 20.000000, diff: -0.009660, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
House ID: 2 -- OD_temp : 29.580777, ID_temp: 19.987314, target_temp: 20.000000, diff: -0.012686, HVAC on: False, HVAC lockdown: 8, date: 2021-09-26 20:03:32
House ID: 3 -- OD_temp : 29.580777, ID_temp: 19.953802, target_temp: 20.000000, diff: -0.046198, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 4 -- OD_temp : 29.580777, ID_temp: 19.963192, target_temp: 20.000000, diff: -0.036808, HVAC on: False, HVAC lockdown: 8, date: 2021-09-26 20:03:32
House ID: 5 -- OD_temp : 29.580777, ID_temp: 19.975458, target_temp: 20.000000, diff: -0.024542, HVAC on: False, HVAC lockdown: 12, date: 2021-09-26 20:03:32
House ID: 6 -- OD_temp : 29.580777, ID_temp: 19.974867, target_temp: 20.000000, diff: -0.025133, HVAC on: False, HVAC lockdown: 24, date: 2021-09-26 20:03:32
House ID: 7 -- OD_temp : 29.580777, ID_temp: 20.014104, target_temp: 20.000000, diff: 0.014104, HVAC on: False, HVAC lockdown: 24, date: 2021-09-26 20:03:32
House ID: 8 -- OD_temp : 29.580777, ID_temp: 20.011753, target_temp: 20.000000, diff: 0.011753, HVAC on: False, HVAC lockdown: 32, date: 2021-09-26 20:03:32
House ID: 9 -- OD_temp : 29.580777, ID_temp: 20.053092, target_temp: 20.000000, diff: 0.053092, HVAC on: False, HVAC lockdown: 36, date: 2021-09-26 20:03:32
House ID: 10 -- OD_temp : 29.580777, ID_temp: 20.032506, target_temp: 20.000000, diff: 0.032506, HVAC on: False, HVAC lockdown: 12, date: 2021-09-26 20:03:32
House ID: 11 -- OD_temp : 29.580777, ID_temp: 20.076379, target_temp: 20.000000, diff: 0.076379, HVAC on: False, HVAC lockdown: 36, date: 2021-09-26 20:03:32
House ID: 12 -- OD_temp : 29.580777, ID_temp: 19.940060, target_temp: 20.000000, diff: -0.059940, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 13 -- OD_temp : 29.580777, ID_temp: 19.971761, target_temp: 20.000000, diff: -0.028239, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 14 -- OD_temp : 29.580777, ID_temp: 20.007112, target_temp: 20.000000, diff: 0.007112, HVAC on: False, HVAC lockdown: 24, date: 2021-09-26 20:03:32
House ID: 15 -- OD_temp : 29.580777, ID_temp: 20.033433, target_temp: 20.000000, diff: 0.033433, HVAC on: False, HVAC lockdown: 20, date: 2021-09-26 20:03:32
House ID: 16 -- OD_temp : 29.580777, ID_temp: 19.988107, target_temp: 20.000000, diff: -0.011893, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 17 -- OD_temp : 29.580777, ID_temp: 20.039963, target_temp: 20.000000, diff: 0.039963, HVAC on: False, HVAC lockdown: 20, date: 2021-09-26 20:03:32
House ID: 18 -- OD_temp : 29.580777, ID_temp: 20.031073, target_temp: 20.000000, diff: 0.031073, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
House ID: 19 -- OD_temp : 29.580777, ID_temp: 19.988759, target_temp: 20.000000, diff: -0.011241, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 20 -- OD_temp : 29.580777, ID_temp: 19.959133, target_temp: 20.000000, diff: -0.040867, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 21 -- OD_temp : 29.580777, ID_temp: 20.041063, target_temp: 20.000000, diff: 0.041063, HVAC on: False, HVAC lockdown: 36, date: 2021-09-26 20:03:32
House ID: 22 -- OD_temp : 29.580777, ID_temp: 19.986732, target_temp: 20.000000, diff: -0.013268, HVAC on: False, HVAC lockdown: 12, date: 2021-09-26 20:03:32
House ID: 23 -- OD_temp : 29.580777, ID_temp: 19.970143, target_temp: 20.000000, diff: -0.029857, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
House ID: 24 -- OD_temp : 29.580777, ID_temp: 20.064490, target_temp: 20.000000, diff: 0.064490, HVAC on: False, HVAC lockdown: 36, date: 2021-09-26 20:03:32
House ID: 25 -- OD_temp : 29.580777, ID_temp: 20.054786, target_temp: 20.000000, diff: 0.054786, HVAC on: False, HVAC lockdown: 36, date: 2021-09-26 20:03:32
House ID: 26 -- OD_temp : 29.580777, ID_temp: 19.987030, target_temp: 20.000000, diff: -0.012970, HVAC on: False, HVAC lockdown: 8, date: 2021-09-26 20:03:32
House ID: 27 -- OD_temp : 29.580777, ID_temp: 20.024866, target_temp: 20.000000, diff: 0.024866, HVAC on: False, HVAC lockdown: 8, date: 2021-09-26 20:03:32
House ID: 28 -- OD_temp : 29.580777, ID_temp: 20.011670, target_temp: 20.000000, diff: 0.011670, HVAC on: False, HVAC lockdown: 8, date: 2021-09-26 20:03:32
House ID: 29 -- OD_temp : 29.580777, ID_temp: 20.040550, target_temp: 20.000000, diff: 0.040550, HVAC on: False, HVAC lockdown: 32, date: 2021-09-26 20:03:32
House ID: 30 -- OD_temp : 29.580777, ID_temp: 19.947526, target_temp: 20.000000, diff: -0.052474, HVAC on: False, HVAC lockdown: 8, date: 2021-09-26 20:03:32
House ID: 31 -- OD_temp : 29.580777, ID_temp: 20.033104, target_temp: 20.000000, diff: 0.033104, HVAC on: False, HVAC lockdown: 36, date: 2021-09-26 20:03:32
House ID: 32 -- OD_temp : 29.580777, ID_temp: 20.031867, target_temp: 20.000000, diff: 0.031867, HVAC on: False, HVAC lockdown: 24, date: 2021-09-26 20:03:32
House ID: 33 -- OD_temp : 29.580777, ID_temp: 20.011152, target_temp: 20.000000, diff: 0.011152, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
House ID: 34 -- OD_temp : 29.580777, ID_temp: 19.996990, target_temp: 20.000000, diff: -0.003010, HVAC on: False, HVAC lockdown: 20, date: 2021-09-26 20:03:32
House ID: 35 -- OD_temp : 29.580777, ID_temp: 19.968221, target_temp: 20.000000, diff: -0.031779, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 36 -- OD_temp : 29.580777, ID_temp: 20.104430, target_temp: 20.000000, diff: 0.104430, HVAC on: False, HVAC lockdown: 36, date: 2021-09-26 20:03:32
House ID: 37 -- OD_temp : 29.580777, ID_temp: 19.996635, target_temp: 20.000000, diff: -0.003365, HVAC on: False, HVAC lockdown: 12, date: 2021-09-26 20:03:32
House ID: 38 -- OD_temp : 29.580777, ID_temp: 20.005979, target_temp: 20.000000, diff: 0.005979, HVAC on: False, HVAC lockdown: 20, date: 2021-09-26 20:03:32
House ID: 39 -- OD_temp : 29.580777, ID_temp: 19.989004, target_temp: 20.000000, diff: -0.010996, HVAC on: False, HVAC lockdown: 12, date: 2021-09-26 20:03:32
House ID: 40 -- OD_temp : 29.580777, ID_temp: 19.990945, target_temp: 20.000000, diff: -0.009055, HVAC on: False, HVAC lockdown: 4, date: 2021-09-26 20:03:32
House ID: 41 -- OD_temp : 29.580777, ID_temp: 20.047244, target_temp: 20.000000, diff: 0.047244, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
House ID: 42 -- OD_temp : 29.580777, ID_temp: 19.937757, target_temp: 20.000000, diff: -0.062243, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 43 -- OD_temp : 29.580777, ID_temp: 19.996013, target_temp: 20.000000, diff: -0.003987, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 44 -- OD_temp : 29.580777, ID_temp: 20.016451, target_temp: 20.000000, diff: 0.016451, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 45 -- OD_temp : 29.580777, ID_temp: 19.954210, target_temp: 20.000000, diff: -0.045790, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-26 20:03:32
House ID: 46 -- OD_temp : 29.580777, ID_temp: 20.002592, target_temp: 20.000000, diff: 0.002592, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
House ID: 47 -- OD_temp : 29.580777, ID_temp: 20.017188, target_temp: 20.000000, diff: 0.017188, HVAC on: False, HVAC lockdown: 28, date: 2021-09-26 20:03:32
House ID: 48 -- OD_temp : 29.580777, ID_temp: 20.006235, target_temp: 20.000000, diff: 0.006235, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
House ID: 49 -- OD_temp : 29.580777, ID_temp: 19.999116, target_temp: 20.000000, diff: -0.000884, HVAC on: False, HVAC lockdown: 16, date: 2021-09-26 20:03:32
New episode at time 589823
Updating agent at time 589823
The agent is updating....
Time step: 589823 ，train 1120000 times
Time step: 589823 ，train 1121000 times
Time step: 589823 ，train 1122000 times
Time step: 589823 ，train 1123000 times
Time step: 589823 ，train 1124000 times
Time step: 589823 ，train 1125000 times
Time step: 589823 ，train 1126000 times
Time step: 589823 ，train 1127000 times
Time step: 589823 ，train 1128000 times
Time step: 589823 ，train 1129000 times
Time step: 589823 ，train 1130000 times
Time step: 589823 ，train 1131000 times
Time step: 589823 ，train 1132000 times
Time step: 589823 ，train 1133000 times
Time step: 589823 ，train 1134000 times
Time step: 589823 ，train 1135000 times
Time step: 589823 ，train 1136000 times
Time step: 589823 ，train 1137000 times
Time step: 589823 ，train 1138000 times
Time step: 589823 ，train 1139000 times
Time step: 589823 ，train 1140000 times
Time step: 589823 ，train 1141000 times
Time step: 589823 ，train 1142000 times
Time step: 589823 ，train 1143000 times
Time step: 589823 ，train 1144000 times
Time step: 589823 ，train 1145000 times
Time step: 589823 ，train 1146000 times
Time step: 589823 ，train 1147000 times
Time step: 589823 ，train 1148000 times
Time step: 589823 ，train 1149000 times
Time step: 589823 ，train 1150000 times
Time step: 589823 ，train 1151000 times
Testing at time 589823
House ID: 0 -- OD_temp : 33.990955, ID_temp: 19.923718, target_temp: 20.000000, diff: -0.076282, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 1 -- OD_temp : 33.990955, ID_temp: 20.024470, target_temp: 20.000000, diff: 0.024470, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 08:08:12
House ID: 2 -- OD_temp : 33.990955, ID_temp: 20.054696, target_temp: 20.000000, diff: 0.054696, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 08:08:12
House ID: 3 -- OD_temp : 33.990955, ID_temp: 19.963564, target_temp: 20.000000, diff: -0.036436, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 4 -- OD_temp : 33.990955, ID_temp: 20.001617, target_temp: 20.000000, diff: 0.001617, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 5 -- OD_temp : 33.990955, ID_temp: 20.048648, target_temp: 20.000000, diff: 0.048648, HVAC on: False, HVAC lockdown: 36, date: 2021-12-05 08:08:12
House ID: 6 -- OD_temp : 33.990955, ID_temp: 19.986293, target_temp: 20.000000, diff: -0.013707, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 7 -- OD_temp : 33.990955, ID_temp: 19.999185, target_temp: 20.000000, diff: -0.000815, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 8 -- OD_temp : 33.990955, ID_temp: 19.987804, target_temp: 20.000000, diff: -0.012196, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 9 -- OD_temp : 33.990955, ID_temp: 19.917545, target_temp: 20.000000, diff: -0.082455, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 10 -- OD_temp : 33.990955, ID_temp: 19.995649, target_temp: 20.000000, diff: -0.004351, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 11 -- OD_temp : 33.990955, ID_temp: 19.925189, target_temp: 20.000000, diff: -0.074811, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 12 -- OD_temp : 33.990955, ID_temp: 20.037215, target_temp: 20.000000, diff: 0.037215, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 13 -- OD_temp : 33.990955, ID_temp: 20.007634, target_temp: 20.000000, diff: 0.007634, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 14 -- OD_temp : 33.990955, ID_temp: 19.943569, target_temp: 20.000000, diff: -0.056431, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 15 -- OD_temp : 33.990955, ID_temp: 20.088693, target_temp: 20.000000, diff: 0.088693, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 08:08:12
House ID: 16 -- OD_temp : 33.990955, ID_temp: 20.108417, target_temp: 20.000000, diff: 0.108417, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 08:08:12
House ID: 17 -- OD_temp : 33.990955, ID_temp: 19.989449, target_temp: 20.000000, diff: -0.010551, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 08:08:12
House ID: 18 -- OD_temp : 33.990955, ID_temp: 20.036944, target_temp: 20.000000, diff: 0.036944, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 19 -- OD_temp : 33.990955, ID_temp: 20.025258, target_temp: 20.000000, diff: 0.025258, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 20 -- OD_temp : 33.990955, ID_temp: 20.029170, target_temp: 20.000000, diff: 0.029170, HVAC on: False, HVAC lockdown: 20, date: 2021-12-05 08:08:12
House ID: 21 -- OD_temp : 33.990955, ID_temp: 19.977672, target_temp: 20.000000, diff: -0.022328, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 08:08:12
House ID: 22 -- OD_temp : 33.990955, ID_temp: 19.941948, target_temp: 20.000000, diff: -0.058052, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 23 -- OD_temp : 33.990955, ID_temp: 19.954961, target_temp: 20.000000, diff: -0.045039, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 24 -- OD_temp : 33.990955, ID_temp: 19.976333, target_temp: 20.000000, diff: -0.023667, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 25 -- OD_temp : 33.990955, ID_temp: 20.036693, target_temp: 20.000000, diff: 0.036693, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 26 -- OD_temp : 33.990955, ID_temp: 19.947932, target_temp: 20.000000, diff: -0.052068, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 27 -- OD_temp : 33.990955, ID_temp: 19.995748, target_temp: 20.000000, diff: -0.004252, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 28 -- OD_temp : 33.990955, ID_temp: 20.023286, target_temp: 20.000000, diff: 0.023286, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 08:08:12
House ID: 29 -- OD_temp : 33.990955, ID_temp: 20.063404, target_temp: 20.000000, diff: 0.063404, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 08:08:12
House ID: 30 -- OD_temp : 33.990955, ID_temp: 19.997878, target_temp: 20.000000, diff: -0.002122, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 08:08:12
House ID: 31 -- OD_temp : 33.990955, ID_temp: 20.045647, target_temp: 20.000000, diff: 0.045647, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 08:08:12
House ID: 32 -- OD_temp : 33.990955, ID_temp: 20.011262, target_temp: 20.000000, diff: 0.011262, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 33 -- OD_temp : 33.990955, ID_temp: 19.990056, target_temp: 20.000000, diff: -0.009944, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 34 -- OD_temp : 33.990955, ID_temp: 20.063082, target_temp: 20.000000, diff: 0.063082, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 35 -- OD_temp : 33.990955, ID_temp: 20.044727, target_temp: 20.000000, diff: 0.044727, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 36 -- OD_temp : 33.990955, ID_temp: 19.904898, target_temp: 20.000000, diff: -0.095102, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 08:08:12
House ID: 37 -- OD_temp : 33.990955, ID_temp: 19.979881, target_temp: 20.000000, diff: -0.020119, HVAC on: False, HVAC lockdown: 20, date: 2021-12-05 08:08:12
House ID: 38 -- OD_temp : 33.990955, ID_temp: 19.990537, target_temp: 20.000000, diff: -0.009463, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 08:08:12
House ID: 39 -- OD_temp : 33.990955, ID_temp: 19.985837, target_temp: 20.000000, diff: -0.014163, HVAC on: False, HVAC lockdown: 20, date: 2021-12-05 08:08:12
House ID: 40 -- OD_temp : 33.990955, ID_temp: 20.048788, target_temp: 20.000000, diff: 0.048788, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 08:08:12
House ID: 41 -- OD_temp : 33.990955, ID_temp: 19.968997, target_temp: 20.000000, diff: -0.031003, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 42 -- OD_temp : 33.990955, ID_temp: 20.037185, target_temp: 20.000000, diff: 0.037185, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 08:08:12
House ID: 43 -- OD_temp : 33.990955, ID_temp: 20.028653, target_temp: 20.000000, diff: 0.028653, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 44 -- OD_temp : 33.990955, ID_temp: 20.032514, target_temp: 20.000000, diff: 0.032514, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 08:08:12
House ID: 45 -- OD_temp : 33.990955, ID_temp: 20.035980, target_temp: 20.000000, diff: 0.035980, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 08:08:12
House ID: 46 -- OD_temp : 33.990955, ID_temp: 19.967144, target_temp: 20.000000, diff: -0.032856, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 08:08:12
House ID: 47 -- OD_temp : 33.990955, ID_temp: 19.995235, target_temp: 20.000000, diff: -0.004765, HVAC on: False, HVAC lockdown: 20, date: 2021-12-05 08:08:12
House ID: 48 -- OD_temp : 33.990955, ID_temp: 20.025782, target_temp: 20.000000, diff: 0.025782, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 08:08:12
House ID: 49 -- OD_temp : 33.990955, ID_temp: 20.023671, target_temp: 20.000000, diff: 0.023671, HVAC on: False, HVAC lockdown: 16, date: 2021-12-05 08:08:12
House ID: 0 -- OD_temp : 30.625224, ID_temp: 19.961224, target_temp: 20.000000, diff: -0.038776, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 19:14:52
House ID: 1 -- OD_temp : 30.625224, ID_temp: 20.023512, target_temp: 20.000000, diff: 0.023512, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 19:14:52
House ID: 2 -- OD_temp : 30.625224, ID_temp: 19.964594, target_temp: 20.000000, diff: -0.035406, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 19:14:52
House ID: 3 -- OD_temp : 30.625224, ID_temp: 20.036904, target_temp: 20.000000, diff: 0.036904, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 19:14:52
House ID: 4 -- OD_temp : 30.625224, ID_temp: 19.960223, target_temp: 20.000000, diff: -0.039777, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 5 -- OD_temp : 30.625224, ID_temp: 19.938389, target_temp: 20.000000, diff: -0.061611, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 6 -- OD_temp : 30.625224, ID_temp: 20.032986, target_temp: 20.000000, diff: 0.032986, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 19:14:52
House ID: 7 -- OD_temp : 30.625224, ID_temp: 19.961029, target_temp: 20.000000, diff: -0.038971, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 19:14:52
House ID: 8 -- OD_temp : 30.625224, ID_temp: 20.080552, target_temp: 20.000000, diff: 0.080552, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 19:14:52
House ID: 9 -- OD_temp : 30.625224, ID_temp: 19.969024, target_temp: 20.000000, diff: -0.030976, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 10 -- OD_temp : 30.625224, ID_temp: 19.996136, target_temp: 20.000000, diff: -0.003864, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 19:14:52
House ID: 11 -- OD_temp : 30.625224, ID_temp: 19.946758, target_temp: 20.000000, diff: -0.053242, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 12 -- OD_temp : 30.625224, ID_temp: 19.958486, target_temp: 20.000000, diff: -0.041514, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 19:14:52
House ID: 13 -- OD_temp : 30.625224, ID_temp: 20.052819, target_temp: 20.000000, diff: 0.052819, HVAC on: False, HVAC lockdown: 36, date: 2021-12-05 19:14:52
House ID: 14 -- OD_temp : 30.625224, ID_temp: 20.053829, target_temp: 20.000000, diff: 0.053829, HVAC on: False, HVAC lockdown: 36, date: 2021-12-05 19:14:52
House ID: 15 -- OD_temp : 30.625224, ID_temp: 20.018114, target_temp: 20.000000, diff: 0.018114, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 16 -- OD_temp : 30.625224, ID_temp: 19.994167, target_temp: 20.000000, diff: -0.005833, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 19:14:52
House ID: 17 -- OD_temp : 30.625224, ID_temp: 19.967141, target_temp: 20.000000, diff: -0.032859, HVAC on: False, HVAC lockdown: 16, date: 2021-12-05 19:14:52
House ID: 18 -- OD_temp : 30.625224, ID_temp: 20.028031, target_temp: 20.000000, diff: 0.028031, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 19 -- OD_temp : 30.625224, ID_temp: 20.064970, target_temp: 20.000000, diff: 0.064970, HVAC on: False, HVAC lockdown: 36, date: 2021-12-05 19:14:52
House ID: 20 -- OD_temp : 30.625224, ID_temp: 20.014280, target_temp: 20.000000, diff: 0.014280, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 21 -- OD_temp : 30.625224, ID_temp: 19.936250, target_temp: 20.000000, diff: -0.063750, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 19:14:52
House ID: 22 -- OD_temp : 30.625224, ID_temp: 20.015013, target_temp: 20.000000, diff: 0.015013, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 19:14:52
House ID: 23 -- OD_temp : 30.625224, ID_temp: 20.008726, target_temp: 20.000000, diff: 0.008726, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 19:14:52
House ID: 24 -- OD_temp : 30.625224, ID_temp: 20.060320, target_temp: 20.000000, diff: 0.060320, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 19:14:52
House ID: 25 -- OD_temp : 30.625224, ID_temp: 19.986658, target_temp: 20.000000, diff: -0.013342, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 26 -- OD_temp : 30.625224, ID_temp: 19.969522, target_temp: 20.000000, diff: -0.030478, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 19:14:52
House ID: 27 -- OD_temp : 30.625224, ID_temp: 19.936962, target_temp: 20.000000, diff: -0.063038, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 28 -- OD_temp : 30.625224, ID_temp: 19.964690, target_temp: 20.000000, diff: -0.035310, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 29 -- OD_temp : 30.625224, ID_temp: 19.970254, target_temp: 20.000000, diff: -0.029746, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 30 -- OD_temp : 30.625224, ID_temp: 20.005570, target_temp: 20.000000, diff: 0.005570, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 31 -- OD_temp : 30.625224, ID_temp: 20.039205, target_temp: 20.000000, diff: 0.039205, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 19:14:52
House ID: 32 -- OD_temp : 30.625224, ID_temp: 20.046060, target_temp: 20.000000, diff: 0.046060, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 19:14:52
House ID: 33 -- OD_temp : 30.625224, ID_temp: 19.987462, target_temp: 20.000000, diff: -0.012538, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 19:14:52
House ID: 34 -- OD_temp : 30.625224, ID_temp: 20.011802, target_temp: 20.000000, diff: 0.011802, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 35 -- OD_temp : 30.625224, ID_temp: 19.982730, target_temp: 20.000000, diff: -0.017270, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 19:14:52
House ID: 36 -- OD_temp : 30.625224, ID_temp: 19.977681, target_temp: 20.000000, diff: -0.022319, HVAC on: False, HVAC lockdown: 12, date: 2021-12-05 19:14:52
House ID: 37 -- OD_temp : 30.625224, ID_temp: 20.007892, target_temp: 20.000000, diff: 0.007892, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 38 -- OD_temp : 30.625224, ID_temp: 20.046117, target_temp: 20.000000, diff: 0.046117, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 19:14:52
House ID: 39 -- OD_temp : 30.625224, ID_temp: 19.925125, target_temp: 20.000000, diff: -0.074875, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 40 -- OD_temp : 30.625224, ID_temp: 19.931408, target_temp: 20.000000, diff: -0.068592, HVAC on: False, HVAC lockdown: 4, date: 2021-12-05 19:14:52
House ID: 41 -- OD_temp : 30.625224, ID_temp: 19.977427, target_temp: 20.000000, diff: -0.022573, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 42 -- OD_temp : 30.625224, ID_temp: 19.953812, target_temp: 20.000000, diff: -0.046188, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-05 19:14:52
House ID: 43 -- OD_temp : 30.625224, ID_temp: 20.064211, target_temp: 20.000000, diff: 0.064211, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 19:14:52
House ID: 44 -- OD_temp : 30.625224, ID_temp: 20.007493, target_temp: 20.000000, diff: 0.007493, HVAC on: False, HVAC lockdown: 20, date: 2021-12-05 19:14:52
House ID: 45 -- OD_temp : 30.625224, ID_temp: 19.991015, target_temp: 20.000000, diff: -0.008985, HVAC on: False, HVAC lockdown: 8, date: 2021-12-05 19:14:52
House ID: 46 -- OD_temp : 30.625224, ID_temp: 20.006776, target_temp: 20.000000, diff: 0.006776, HVAC on: False, HVAC lockdown: 28, date: 2021-12-05 19:14:52
House ID: 47 -- OD_temp : 30.625224, ID_temp: 19.970087, target_temp: 20.000000, diff: -0.029913, HVAC on: False, HVAC lockdown: 16, date: 2021-12-05 19:14:52
House ID: 48 -- OD_temp : 30.625224, ID_temp: 20.008087, target_temp: 20.000000, diff: 0.008087, HVAC on: False, HVAC lockdown: 24, date: 2021-12-05 19:14:52
House ID: 49 -- OD_temp : 30.625224, ID_temp: 20.079035, target_temp: 20.000000, diff: 0.079035, HVAC on: False, HVAC lockdown: 32, date: 2021-12-05 19:14:52
Training step - 589823
House ID: 0 -- OD_temp : 31.578619, ID_temp: 19.996832, target_temp: 20.000000, diff: -0.003168, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 1 -- OD_temp : 31.578619, ID_temp: 19.995860, target_temp: 20.000000, diff: -0.004140, HVAC on: False, HVAC lockdown: 28, date: 2021-11-18 18:58:30
House ID: 2 -- OD_temp : 31.578619, ID_temp: 20.003412, target_temp: 20.000000, diff: 0.003412, HVAC on: False, HVAC lockdown: 28, date: 2021-11-18 18:58:30
House ID: 3 -- OD_temp : 31.578619, ID_temp: 20.022239, target_temp: 20.000000, diff: 0.022239, HVAC on: False, HVAC lockdown: 24, date: 2021-11-18 18:58:30
House ID: 4 -- OD_temp : 31.578619, ID_temp: 19.945598, target_temp: 20.000000, diff: -0.054402, HVAC on: False, HVAC lockdown: 8, date: 2021-11-18 18:58:30
House ID: 5 -- OD_temp : 31.578619, ID_temp: 20.023100, target_temp: 20.000000, diff: 0.023100, HVAC on: False, HVAC lockdown: 20, date: 2021-11-18 18:58:30
House ID: 6 -- OD_temp : 31.578619, ID_temp: 20.027482, target_temp: 20.000000, diff: 0.027482, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 7 -- OD_temp : 31.578619, ID_temp: 20.072171, target_temp: 20.000000, diff: 0.072171, HVAC on: False, HVAC lockdown: 24, date: 2021-11-18 18:58:30
House ID: 8 -- OD_temp : 31.578619, ID_temp: 19.995456, target_temp: 20.000000, diff: -0.004544, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 9 -- OD_temp : 31.578619, ID_temp: 20.017690, target_temp: 20.000000, diff: 0.017690, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 10 -- OD_temp : 31.578619, ID_temp: 20.014206, target_temp: 20.000000, diff: 0.014206, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 11 -- OD_temp : 31.578619, ID_temp: 20.077436, target_temp: 20.000000, diff: 0.077436, HVAC on: False, HVAC lockdown: 28, date: 2021-11-18 18:58:30
House ID: 12 -- OD_temp : 31.578619, ID_temp: 19.987531, target_temp: 20.000000, diff: -0.012469, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 13 -- OD_temp : 31.578619, ID_temp: 20.032237, target_temp: 20.000000, diff: 0.032237, HVAC on: False, HVAC lockdown: 24, date: 2021-11-18 18:58:30
House ID: 14 -- OD_temp : 31.578619, ID_temp: 20.063418, target_temp: 20.000000, diff: 0.063418, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 15 -- OD_temp : 31.578619, ID_temp: 19.990115, target_temp: 20.000000, diff: -0.009885, HVAC on: False, HVAC lockdown: 12, date: 2021-11-18 18:58:30
House ID: 16 -- OD_temp : 31.578619, ID_temp: 19.928142, target_temp: 20.000000, diff: -0.071858, HVAC on: False, HVAC lockdown: 8, date: 2021-11-18 18:58:30
House ID: 17 -- OD_temp : 31.578619, ID_temp: 19.999916, target_temp: 20.000000, diff: -0.000084, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 18 -- OD_temp : 31.578619, ID_temp: 19.965579, target_temp: 20.000000, diff: -0.034421, HVAC on: False, HVAC lockdown: 12, date: 2021-11-18 18:58:30
House ID: 19 -- OD_temp : 31.578619, ID_temp: 20.013869, target_temp: 20.000000, diff: 0.013869, HVAC on: False, HVAC lockdown: 20, date: 2021-11-18 18:58:30
House ID: 20 -- OD_temp : 31.578619, ID_temp: 19.978038, target_temp: 20.000000, diff: -0.021962, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 21 -- OD_temp : 31.578619, ID_temp: 20.026441, target_temp: 20.000000, diff: 0.026441, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 22 -- OD_temp : 31.578619, ID_temp: 19.953064, target_temp: 20.000000, diff: -0.046936, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 23 -- OD_temp : 31.578619, ID_temp: 19.919327, target_temp: 20.000000, diff: -0.080673, HVAC on: False, HVAC lockdown: 8, date: 2021-11-18 18:58:30
House ID: 24 -- OD_temp : 31.578619, ID_temp: 20.058906, target_temp: 20.000000, diff: 0.058906, HVAC on: False, HVAC lockdown: 28, date: 2021-11-18 18:58:30
House ID: 25 -- OD_temp : 31.578619, ID_temp: 20.067562, target_temp: 20.000000, diff: 0.067562, HVAC on: False, HVAC lockdown: 36, date: 2021-11-18 18:58:30
House ID: 26 -- OD_temp : 31.578619, ID_temp: 19.943598, target_temp: 20.000000, diff: -0.056402, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 27 -- OD_temp : 31.578619, ID_temp: 19.966866, target_temp: 20.000000, diff: -0.033134, HVAC on: False, HVAC lockdown: 4, date: 2021-11-18 18:58:30
House ID: 28 -- OD_temp : 31.578619, ID_temp: 19.976476, target_temp: 20.000000, diff: -0.023524, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 29 -- OD_temp : 31.578619, ID_temp: 20.024034, target_temp: 20.000000, diff: 0.024034, HVAC on: False, HVAC lockdown: 36, date: 2021-11-18 18:58:30
House ID: 30 -- OD_temp : 31.578619, ID_temp: 20.061161, target_temp: 20.000000, diff: 0.061161, HVAC on: False, HVAC lockdown: 36, date: 2021-11-18 18:58:30
House ID: 31 -- OD_temp : 31.578619, ID_temp: 20.041643, target_temp: 20.000000, diff: 0.041643, HVAC on: False, HVAC lockdown: 36, date: 2021-11-18 18:58:30
House ID: 32 -- OD_temp : 31.578619, ID_temp: 20.042491, target_temp: 20.000000, diff: 0.042491, HVAC on: False, HVAC lockdown: 24, date: 2021-11-18 18:58:30
House ID: 33 -- OD_temp : 31.578619, ID_temp: 19.949843, target_temp: 20.000000, diff: -0.050157, HVAC on: False, HVAC lockdown: 8, date: 2021-11-18 18:58:30
House ID: 34 -- OD_temp : 31.578619, ID_temp: 19.936074, target_temp: 20.000000, diff: -0.063926, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 35 -- OD_temp : 31.578619, ID_temp: 19.989199, target_temp: 20.000000, diff: -0.010801, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 36 -- OD_temp : 31.578619, ID_temp: 20.039168, target_temp: 20.000000, diff: 0.039168, HVAC on: False, HVAC lockdown: 28, date: 2021-11-18 18:58:30
House ID: 37 -- OD_temp : 31.578619, ID_temp: 20.026351, target_temp: 20.000000, diff: 0.026351, HVAC on: False, HVAC lockdown: 20, date: 2021-11-18 18:58:30
House ID: 38 -- OD_temp : 31.578619, ID_temp: 20.045183, target_temp: 20.000000, diff: 0.045183, HVAC on: False, HVAC lockdown: 16, date: 2021-11-18 18:58:30
House ID: 39 -- OD_temp : 31.578619, ID_temp: 20.026302, target_temp: 20.000000, diff: 0.026302, HVAC on: False, HVAC lockdown: 20, date: 2021-11-18 18:58:30
House ID: 40 -- OD_temp : 31.578619, ID_temp: 19.954249, target_temp: 20.000000, diff: -0.045751, HVAC on: False, HVAC lockdown: 12, date: 2021-11-18 18:58:30
House ID: 41 -- OD_temp : 31.578619, ID_temp: 20.081505, target_temp: 20.000000, diff: 0.081505, HVAC on: False, HVAC lockdown: 36, date: 2021-11-18 18:58:30
House ID: 42 -- OD_temp : 31.578619, ID_temp: 20.002320, target_temp: 20.000000, diff: 0.002320, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 43 -- OD_temp : 31.578619, ID_temp: 19.955543, target_temp: 20.000000, diff: -0.044457, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-18 18:58:30
House ID: 44 -- OD_temp : 31.578619, ID_temp: 20.002544, target_temp: 20.000000, diff: 0.002544, HVAC on: False, HVAC lockdown: 28, date: 2021-11-18 18:58:30
House ID: 45 -- OD_temp : 31.578619, ID_temp: 19.964218, target_temp: 20.000000, diff: -0.035782, HVAC on: False, HVAC lockdown: 4, date: 2021-11-18 18:58:30
House ID: 46 -- OD_temp : 31.578619, ID_temp: 20.082418, target_temp: 20.000000, diff: 0.082418, HVAC on: False, HVAC lockdown: 36, date: 2021-11-18 18:58:30
House ID: 47 -- OD_temp : 31.578619, ID_temp: 19.963742, target_temp: 20.000000, diff: -0.036258, HVAC on: False, HVAC lockdown: 4, date: 2021-11-18 18:58:30
House ID: 48 -- OD_temp : 31.578619, ID_temp: 20.092011, target_temp: 20.000000, diff: 0.092011, HVAC on: False, HVAC lockdown: 28, date: 2021-11-18 18:58:30
House ID: 49 -- OD_temp : 31.578619, ID_temp: 20.027770, target_temp: 20.000000, diff: 0.027770, HVAC on: False, HVAC lockdown: 24, date: 2021-11-18 18:58:30
New episode at time 606207
Updating agent at time 606207
The agent is updating....
Time step: 606207 ，train 1152000 times
Time step: 606207 ，train 1153000 times
Time step: 606207 ，train 1154000 times
Time step: 606207 ，train 1155000 times
Time step: 606207 ，train 1156000 times
Time step: 606207 ，train 1157000 times
Time step: 606207 ，train 1158000 times
Time step: 606207 ，train 1159000 times
Time step: 606207 ，train 1160000 times
Time step: 606207 ，train 1161000 times
Time step: 606207 ，train 1162000 times
Time step: 606207 ，train 1163000 times
Time step: 606207 ，train 1164000 times
Time step: 606207 ，train 1165000 times
Time step: 606207 ，train 1166000 times
Time step: 606207 ，train 1167000 times
Time step: 606207 ，train 1168000 times
Time step: 606207 ，train 1169000 times
Time step: 606207 ，train 1170000 times
Time step: 606207 ，train 1171000 times
Time step: 606207 ，train 1172000 times
Time step: 606207 ，train 1173000 times
Time step: 606207 ，train 1174000 times
Time step: 606207 ，train 1175000 times
Time step: 606207 ，train 1176000 times
Time step: 606207 ，train 1177000 times
Time step: 606207 ，train 1178000 times
Time step: 606207 ，train 1179000 times
Time step: 606207 ，train 1180000 times
Time step: 606207 ，train 1181000 times
Time step: 606207 ，train 1182000 times
Time step: 606207 ，train 1183000 times
Testing at time 606207
House ID: 0 -- OD_temp : 27.613444, ID_temp: 20.008530, target_temp: 20.000000, diff: 0.008530, HVAC on: False, HVAC lockdown: 20, date: 2021-06-02 23:53:20
House ID: 1 -- OD_temp : 27.613444, ID_temp: 20.007850, target_temp: 20.000000, diff: 0.007850, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 2 -- OD_temp : 27.613444, ID_temp: 19.985158, target_temp: 20.000000, diff: -0.014842, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 3 -- OD_temp : 27.613444, ID_temp: 19.943841, target_temp: 20.000000, diff: -0.056159, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 4 -- OD_temp : 27.613444, ID_temp: 20.019714, target_temp: 20.000000, diff: 0.019714, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 5 -- OD_temp : 27.613444, ID_temp: 20.024362, target_temp: 20.000000, diff: 0.024362, HVAC on: False, HVAC lockdown: 20, date: 2021-06-02 23:53:20
House ID: 6 -- OD_temp : 27.613444, ID_temp: 19.988354, target_temp: 20.000000, diff: -0.011646, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 7 -- OD_temp : 27.613444, ID_temp: 19.938851, target_temp: 20.000000, diff: -0.061149, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 8 -- OD_temp : 27.613444, ID_temp: 19.995782, target_temp: 20.000000, diff: -0.004218, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 9 -- OD_temp : 27.613444, ID_temp: 19.985930, target_temp: 20.000000, diff: -0.014070, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 10 -- OD_temp : 27.613444, ID_temp: 20.025289, target_temp: 20.000000, diff: 0.025289, HVAC on: False, HVAC lockdown: 24, date: 2021-06-02 23:53:20
House ID: 11 -- OD_temp : 27.613444, ID_temp: 19.995630, target_temp: 20.000000, diff: -0.004370, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 12 -- OD_temp : 27.613444, ID_temp: 19.940984, target_temp: 20.000000, diff: -0.059016, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 13 -- OD_temp : 27.613444, ID_temp: 20.034289, target_temp: 20.000000, diff: 0.034289, HVAC on: False, HVAC lockdown: 24, date: 2021-06-02 23:53:20
House ID: 14 -- OD_temp : 27.613444, ID_temp: 20.015381, target_temp: 20.000000, diff: 0.015381, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 15 -- OD_temp : 27.613444, ID_temp: 20.035058, target_temp: 20.000000, diff: 0.035058, HVAC on: False, HVAC lockdown: 36, date: 2021-06-02 23:53:20
House ID: 16 -- OD_temp : 27.613444, ID_temp: 20.048438, target_temp: 20.000000, diff: 0.048438, HVAC on: False, HVAC lockdown: 36, date: 2021-06-02 23:53:20
House ID: 17 -- OD_temp : 27.613444, ID_temp: 20.012169, target_temp: 20.000000, diff: 0.012169, HVAC on: False, HVAC lockdown: 32, date: 2021-06-02 23:53:20
House ID: 18 -- OD_temp : 27.613444, ID_temp: 20.010267, target_temp: 20.000000, diff: 0.010267, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 19 -- OD_temp : 27.613444, ID_temp: 20.019768, target_temp: 20.000000, diff: 0.019768, HVAC on: False, HVAC lockdown: 20, date: 2021-06-02 23:53:20
House ID: 20 -- OD_temp : 27.613444, ID_temp: 19.979530, target_temp: 20.000000, diff: -0.020470, HVAC on: False, HVAC lockdown: 12, date: 2021-06-02 23:53:20
House ID: 21 -- OD_temp : 27.613444, ID_temp: 19.986701, target_temp: 20.000000, diff: -0.013299, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 22 -- OD_temp : 27.613444, ID_temp: 20.052322, target_temp: 20.000000, diff: 0.052322, HVAC on: False, HVAC lockdown: 32, date: 2021-06-02 23:53:20
House ID: 23 -- OD_temp : 27.613444, ID_temp: 20.019899, target_temp: 20.000000, diff: 0.019899, HVAC on: False, HVAC lockdown: 24, date: 2021-06-02 23:53:20
House ID: 24 -- OD_temp : 27.613444, ID_temp: 20.007457, target_temp: 20.000000, diff: 0.007457, HVAC on: False, HVAC lockdown: 24, date: 2021-06-02 23:53:20
House ID: 25 -- OD_temp : 27.613444, ID_temp: 20.005024, target_temp: 20.000000, diff: 0.005024, HVAC on: False, HVAC lockdown: 32, date: 2021-06-02 23:53:20
House ID: 26 -- OD_temp : 27.613444, ID_temp: 20.055170, target_temp: 20.000000, diff: 0.055170, HVAC on: False, HVAC lockdown: 16, date: 2021-06-02 23:53:20
House ID: 27 -- OD_temp : 27.613444, ID_temp: 19.990170, target_temp: 20.000000, diff: -0.009830, HVAC on: False, HVAC lockdown: 28, date: 2021-06-02 23:53:20
House ID: 28 -- OD_temp : 27.613444, ID_temp: 19.984765, target_temp: 20.000000, diff: -0.015235, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 29 -- OD_temp : 27.613444, ID_temp: 20.006430, target_temp: 20.000000, diff: 0.006430, HVAC on: False, HVAC lockdown: 24, date: 2021-06-02 23:53:20
House ID: 30 -- OD_temp : 27.613444, ID_temp: 20.078390, target_temp: 20.000000, diff: 0.078390, HVAC on: False, HVAC lockdown: 36, date: 2021-06-02 23:53:20
House ID: 31 -- OD_temp : 27.613444, ID_temp: 19.966000, target_temp: 20.000000, diff: -0.034000, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 32 -- OD_temp : 27.613444, ID_temp: 20.001406, target_temp: 20.000000, diff: 0.001406, HVAC on: False, HVAC lockdown: 16, date: 2021-06-02 23:53:20
House ID: 33 -- OD_temp : 27.613444, ID_temp: 20.023992, target_temp: 20.000000, diff: 0.023992, HVAC on: False, HVAC lockdown: 12, date: 2021-06-02 23:53:20
House ID: 34 -- OD_temp : 27.613444, ID_temp: 19.966909, target_temp: 20.000000, diff: -0.033091, HVAC on: False, HVAC lockdown: 12, date: 2021-06-02 23:53:20
House ID: 35 -- OD_temp : 27.613444, ID_temp: 20.075316, target_temp: 20.000000, diff: 0.075316, HVAC on: False, HVAC lockdown: 24, date: 2021-06-02 23:53:20
House ID: 36 -- OD_temp : 27.613444, ID_temp: 19.935818, target_temp: 20.000000, diff: -0.064182, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 37 -- OD_temp : 27.613444, ID_temp: 20.015830, target_temp: 20.000000, diff: 0.015830, HVAC on: False, HVAC lockdown: 4, date: 2021-06-02 23:53:20
House ID: 38 -- OD_temp : 27.613444, ID_temp: 20.084288, target_temp: 20.000000, diff: 0.084288, HVAC on: False, HVAC lockdown: 32, date: 2021-06-02 23:53:20
House ID: 39 -- OD_temp : 27.613444, ID_temp: 20.011517, target_temp: 20.000000, diff: 0.011517, HVAC on: False, HVAC lockdown: 20, date: 2021-06-02 23:53:20
House ID: 40 -- OD_temp : 27.613444, ID_temp: 20.047513, target_temp: 20.000000, diff: 0.047513, HVAC on: False, HVAC lockdown: 36, date: 2021-06-02 23:53:20
House ID: 41 -- OD_temp : 27.613444, ID_temp: 20.055595, target_temp: 20.000000, diff: 0.055595, HVAC on: False, HVAC lockdown: 24, date: 2021-06-02 23:53:20
House ID: 42 -- OD_temp : 27.613444, ID_temp: 19.961072, target_temp: 20.000000, diff: -0.038928, HVAC on: False, HVAC lockdown: 8, date: 2021-06-02 23:53:20
House ID: 43 -- OD_temp : 27.613444, ID_temp: 20.042256, target_temp: 20.000000, diff: 0.042256, HVAC on: False, HVAC lockdown: 32, date: 2021-06-02 23:53:20
House ID: 44 -- OD_temp : 27.613444, ID_temp: 19.974612, target_temp: 20.000000, diff: -0.025388, HVAC on: False, HVAC lockdown: 12, date: 2021-06-02 23:53:20
House ID: 45 -- OD_temp : 27.613444, ID_temp: 19.976585, target_temp: 20.000000, diff: -0.023415, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 46 -- OD_temp : 27.613444, ID_temp: 19.959505, target_temp: 20.000000, diff: -0.040495, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 47 -- OD_temp : 27.613444, ID_temp: 20.024597, target_temp: 20.000000, diff: 0.024597, HVAC on: False, HVAC lockdown: 36, date: 2021-06-02 23:53:20
House ID: 48 -- OD_temp : 27.613444, ID_temp: 19.962652, target_temp: 20.000000, diff: -0.037348, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-02 23:53:20
House ID: 49 -- OD_temp : 27.613444, ID_temp: 20.006582, target_temp: 20.000000, diff: 0.006582, HVAC on: False, HVAC lockdown: 20, date: 2021-06-02 23:53:20
House ID: 0 -- OD_temp : 33.850375, ID_temp: 19.993949, target_temp: 20.000000, diff: -0.006051, HVAC on: False, HVAC lockdown: 32, date: 2021-06-03 11:00:00
House ID: 1 -- OD_temp : 33.850375, ID_temp: 20.010123, target_temp: 20.000000, diff: 0.010123, HVAC on: False, HVAC lockdown: 24, date: 2021-06-03 11:00:00
House ID: 2 -- OD_temp : 33.850375, ID_temp: 19.998742, target_temp: 20.000000, diff: -0.001258, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 3 -- OD_temp : 33.850375, ID_temp: 19.939072, target_temp: 20.000000, diff: -0.060928, HVAC on: False, HVAC lockdown: 4, date: 2021-06-03 11:00:00
House ID: 4 -- OD_temp : 33.850375, ID_temp: 19.939081, target_temp: 20.000000, diff: -0.060919, HVAC on: False, HVAC lockdown: 4, date: 2021-06-03 11:00:00
House ID: 5 -- OD_temp : 33.850375, ID_temp: 19.989085, target_temp: 20.000000, diff: -0.010915, HVAC on: False, HVAC lockdown: 24, date: 2021-06-03 11:00:00
House ID: 6 -- OD_temp : 33.850375, ID_temp: 20.023344, target_temp: 20.000000, diff: 0.023344, HVAC on: False, HVAC lockdown: 20, date: 2021-06-03 11:00:00
House ID: 7 -- OD_temp : 33.850375, ID_temp: 19.981917, target_temp: 20.000000, diff: -0.018083, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 8 -- OD_temp : 33.850375, ID_temp: 20.104664, target_temp: 20.000000, diff: 0.104664, HVAC on: False, HVAC lockdown: 12, date: 2021-06-03 11:00:00
House ID: 9 -- OD_temp : 33.850375, ID_temp: 19.917499, target_temp: 20.000000, diff: -0.082501, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 10 -- OD_temp : 33.850375, ID_temp: 19.991587, target_temp: 20.000000, diff: -0.008413, HVAC on: False, HVAC lockdown: 20, date: 2021-06-03 11:00:00
House ID: 11 -- OD_temp : 33.850375, ID_temp: 20.033671, target_temp: 20.000000, diff: 0.033671, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 12 -- OD_temp : 33.850375, ID_temp: 19.947465, target_temp: 20.000000, diff: -0.052535, HVAC on: False, HVAC lockdown: 20, date: 2021-06-03 11:00:00
House ID: 13 -- OD_temp : 33.850375, ID_temp: 20.153661, target_temp: 20.000000, diff: 0.153661, HVAC on: False, HVAC lockdown: 36, date: 2021-06-03 11:00:00
House ID: 14 -- OD_temp : 33.850375, ID_temp: 19.943887, target_temp: 20.000000, diff: -0.056113, HVAC on: False, HVAC lockdown: 4, date: 2021-06-03 11:00:00
House ID: 15 -- OD_temp : 33.850375, ID_temp: 20.031734, target_temp: 20.000000, diff: 0.031734, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 16 -- OD_temp : 33.850375, ID_temp: 19.936395, target_temp: 20.000000, diff: -0.063605, HVAC on: False, HVAC lockdown: 8, date: 2021-06-03 11:00:00
House ID: 17 -- OD_temp : 33.850375, ID_temp: 20.021855, target_temp: 20.000000, diff: 0.021855, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 18 -- OD_temp : 33.850375, ID_temp: 20.046132, target_temp: 20.000000, diff: 0.046132, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 19 -- OD_temp : 33.850375, ID_temp: 20.013659, target_temp: 20.000000, diff: 0.013659, HVAC on: False, HVAC lockdown: 28, date: 2021-06-03 11:00:00
House ID: 20 -- OD_temp : 33.850375, ID_temp: 19.961038, target_temp: 20.000000, diff: -0.038962, HVAC on: False, HVAC lockdown: 12, date: 2021-06-03 11:00:00
House ID: 21 -- OD_temp : 33.850375, ID_temp: 19.947371, target_temp: 20.000000, diff: -0.052629, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 22 -- OD_temp : 33.850375, ID_temp: 20.014767, target_temp: 20.000000, diff: 0.014767, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 23 -- OD_temp : 33.850375, ID_temp: 19.938813, target_temp: 20.000000, diff: -0.061187, HVAC on: False, HVAC lockdown: 4, date: 2021-06-03 11:00:00
House ID: 24 -- OD_temp : 33.850375, ID_temp: 20.012122, target_temp: 20.000000, diff: 0.012122, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 25 -- OD_temp : 33.850375, ID_temp: 20.006103, target_temp: 20.000000, diff: 0.006103, HVAC on: False, HVAC lockdown: 24, date: 2021-06-03 11:00:00
House ID: 26 -- OD_temp : 33.850375, ID_temp: 20.036660, target_temp: 20.000000, diff: 0.036660, HVAC on: False, HVAC lockdown: 8, date: 2021-06-03 11:00:00
House ID: 27 -- OD_temp : 33.850375, ID_temp: 19.967270, target_temp: 20.000000, diff: -0.032730, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 28 -- OD_temp : 33.850375, ID_temp: 20.040778, target_temp: 20.000000, diff: 0.040778, HVAC on: False, HVAC lockdown: 32, date: 2021-06-03 11:00:00
House ID: 29 -- OD_temp : 33.850375, ID_temp: 19.928011, target_temp: 20.000000, diff: -0.071989, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 30 -- OD_temp : 33.850375, ID_temp: 20.024234, target_temp: 20.000000, diff: 0.024234, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 31 -- OD_temp : 33.850375, ID_temp: 19.918695, target_temp: 20.000000, diff: -0.081305, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 32 -- OD_temp : 33.850375, ID_temp: 20.018828, target_temp: 20.000000, diff: 0.018828, HVAC on: False, HVAC lockdown: 32, date: 2021-06-03 11:00:00
House ID: 33 -- OD_temp : 33.850375, ID_temp: 19.958463, target_temp: 20.000000, diff: -0.041537, HVAC on: False, HVAC lockdown: 12, date: 2021-06-03 11:00:00
House ID: 34 -- OD_temp : 33.850375, ID_temp: 20.021249, target_temp: 20.000000, diff: 0.021249, HVAC on: False, HVAC lockdown: 28, date: 2021-06-03 11:00:00
House ID: 35 -- OD_temp : 33.850375, ID_temp: 20.049669, target_temp: 20.000000, diff: 0.049669, HVAC on: False, HVAC lockdown: 20, date: 2021-06-03 11:00:00
House ID: 36 -- OD_temp : 33.850375, ID_temp: 19.957127, target_temp: 20.000000, diff: -0.042873, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 37 -- OD_temp : 33.850375, ID_temp: 20.017354, target_temp: 20.000000, diff: 0.017354, HVAC on: False, HVAC lockdown: 32, date: 2021-06-03 11:00:00
House ID: 38 -- OD_temp : 33.850375, ID_temp: 19.958352, target_temp: 20.000000, diff: -0.041648, HVAC on: False, HVAC lockdown: 4, date: 2021-06-03 11:00:00
House ID: 39 -- OD_temp : 33.850375, ID_temp: 20.032548, target_temp: 20.000000, diff: 0.032548, HVAC on: False, HVAC lockdown: 24, date: 2021-06-03 11:00:00
House ID: 40 -- OD_temp : 33.850375, ID_temp: 19.940283, target_temp: 20.000000, diff: -0.059717, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 41 -- OD_temp : 33.850375, ID_temp: 20.057484, target_temp: 20.000000, diff: 0.057484, HVAC on: False, HVAC lockdown: 36, date: 2021-06-03 11:00:00
House ID: 42 -- OD_temp : 33.850375, ID_temp: 19.958590, target_temp: 20.000000, diff: -0.041410, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 43 -- OD_temp : 33.850375, ID_temp: 19.951111, target_temp: 20.000000, diff: -0.048889, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 44 -- OD_temp : 33.850375, ID_temp: 19.940581, target_temp: 20.000000, diff: -0.059419, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 45 -- OD_temp : 33.850375, ID_temp: 19.967179, target_temp: 20.000000, diff: -0.032821, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 46 -- OD_temp : 33.850375, ID_temp: 19.944319, target_temp: 20.000000, diff: -0.055681, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 47 -- OD_temp : 33.850375, ID_temp: 19.969725, target_temp: 20.000000, diff: -0.030275, HVAC on: False, HVAC lockdown: 16, date: 2021-06-03 11:00:00
House ID: 48 -- OD_temp : 33.850375, ID_temp: 19.957002, target_temp: 20.000000, diff: -0.042998, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-03 11:00:00
House ID: 49 -- OD_temp : 33.850375, ID_temp: 19.961754, target_temp: 20.000000, diff: -0.038246, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-03 11:00:00
Training step - 606207
House ID: 0 -- OD_temp : 33.979513, ID_temp: 20.138194, target_temp: 20.000000, diff: 0.138194, HVAC on: False, HVAC lockdown: 24, date: 2021-10-01 10:53:50
House ID: 1 -- OD_temp : 33.979513, ID_temp: 20.036707, target_temp: 20.000000, diff: 0.036707, HVAC on: False, HVAC lockdown: 24, date: 2021-10-01 10:53:50
House ID: 2 -- OD_temp : 33.979513, ID_temp: 20.039304, target_temp: 20.000000, diff: 0.039304, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 3 -- OD_temp : 33.979513, ID_temp: 20.086417, target_temp: 20.000000, diff: 0.086417, HVAC on: False, HVAC lockdown: 28, date: 2021-10-01 10:53:50
House ID: 4 -- OD_temp : 33.979513, ID_temp: 20.008335, target_temp: 20.000000, diff: 0.008335, HVAC on: False, HVAC lockdown: 20, date: 2021-10-01 10:53:50
House ID: 5 -- OD_temp : 33.979513, ID_temp: 19.960629, target_temp: 20.000000, diff: -0.039371, HVAC on: False, HVAC lockdown: 8, date: 2021-10-01 10:53:50
House ID: 6 -- OD_temp : 33.979513, ID_temp: 20.053066, target_temp: 20.000000, diff: 0.053066, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 7 -- OD_temp : 33.979513, ID_temp: 20.050836, target_temp: 20.000000, diff: 0.050836, HVAC on: False, HVAC lockdown: 32, date: 2021-10-01 10:53:50
House ID: 8 -- OD_temp : 33.979513, ID_temp: 19.947625, target_temp: 20.000000, diff: -0.052375, HVAC on: False, HVAC lockdown: 12, date: 2021-10-01 10:53:50
House ID: 9 -- OD_temp : 33.979513, ID_temp: 20.076780, target_temp: 20.000000, diff: 0.076780, HVAC on: False, HVAC lockdown: 16, date: 2021-10-01 10:53:50
House ID: 10 -- OD_temp : 33.979513, ID_temp: 19.954203, target_temp: 20.000000, diff: -0.045797, HVAC on: False, HVAC lockdown: 12, date: 2021-10-01 10:53:50
House ID: 11 -- OD_temp : 33.979513, ID_temp: 20.026902, target_temp: 20.000000, diff: 0.026902, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 12 -- OD_temp : 33.979513, ID_temp: 19.961904, target_temp: 20.000000, diff: -0.038096, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 13 -- OD_temp : 33.979513, ID_temp: 19.994915, target_temp: 20.000000, diff: -0.005085, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 14 -- OD_temp : 33.979513, ID_temp: 19.954894, target_temp: 20.000000, diff: -0.045106, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 15 -- OD_temp : 33.979513, ID_temp: 19.978578, target_temp: 20.000000, diff: -0.021422, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 16 -- OD_temp : 33.979513, ID_temp: 20.104581, target_temp: 20.000000, diff: 0.104581, HVAC on: False, HVAC lockdown: 32, date: 2021-10-01 10:53:50
House ID: 17 -- OD_temp : 33.979513, ID_temp: 20.100113, target_temp: 20.000000, diff: 0.100113, HVAC on: False, HVAC lockdown: 12, date: 2021-10-01 10:53:50
House ID: 18 -- OD_temp : 33.979513, ID_temp: 19.971948, target_temp: 20.000000, diff: -0.028052, HVAC on: False, HVAC lockdown: 4, date: 2021-10-01 10:53:50
House ID: 19 -- OD_temp : 33.979513, ID_temp: 20.057131, target_temp: 20.000000, diff: 0.057131, HVAC on: False, HVAC lockdown: 24, date: 2021-10-01 10:53:50
House ID: 20 -- OD_temp : 33.979513, ID_temp: 20.085630, target_temp: 20.000000, diff: 0.085630, HVAC on: False, HVAC lockdown: 36, date: 2021-10-01 10:53:50
House ID: 21 -- OD_temp : 33.979513, ID_temp: 20.030986, target_temp: 20.000000, diff: 0.030986, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 22 -- OD_temp : 33.979513, ID_temp: 20.012992, target_temp: 20.000000, diff: 0.012992, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 23 -- OD_temp : 33.979513, ID_temp: 19.952880, target_temp: 20.000000, diff: -0.047120, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 24 -- OD_temp : 33.979513, ID_temp: 20.039538, target_temp: 20.000000, diff: 0.039538, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 25 -- OD_temp : 33.979513, ID_temp: 20.071873, target_temp: 20.000000, diff: 0.071873, HVAC on: False, HVAC lockdown: 32, date: 2021-10-01 10:53:50
House ID: 26 -- OD_temp : 33.979513, ID_temp: 19.906710, target_temp: 20.000000, diff: -0.093290, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 27 -- OD_temp : 33.979513, ID_temp: 19.975253, target_temp: 20.000000, diff: -0.024747, HVAC on: False, HVAC lockdown: 4, date: 2021-10-01 10:53:50
House ID: 28 -- OD_temp : 33.979513, ID_temp: 19.930869, target_temp: 20.000000, diff: -0.069131, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 29 -- OD_temp : 33.979513, ID_temp: 19.954668, target_temp: 20.000000, diff: -0.045332, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 30 -- OD_temp : 33.979513, ID_temp: 19.959196, target_temp: 20.000000, diff: -0.040804, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 31 -- OD_temp : 33.979513, ID_temp: 20.126368, target_temp: 20.000000, diff: 0.126368, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 32 -- OD_temp : 33.979513, ID_temp: 20.056857, target_temp: 20.000000, diff: 0.056857, HVAC on: 0, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 33 -- OD_temp : 33.979513, ID_temp: 19.987668, target_temp: 20.000000, diff: -0.012332, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 34 -- OD_temp : 33.979513, ID_temp: 20.012609, target_temp: 20.000000, diff: 0.012609, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 35 -- OD_temp : 33.979513, ID_temp: 19.994331, target_temp: 20.000000, diff: -0.005669, HVAC on: False, HVAC lockdown: 16, date: 2021-10-01 10:53:50
House ID: 36 -- OD_temp : 33.979513, ID_temp: 19.946552, target_temp: 20.000000, diff: -0.053448, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 37 -- OD_temp : 33.979513, ID_temp: 20.025693, target_temp: 20.000000, diff: 0.025693, HVAC on: False, HVAC lockdown: 24, date: 2021-10-01 10:53:50
House ID: 38 -- OD_temp : 33.979513, ID_temp: 20.054627, target_temp: 20.000000, diff: 0.054627, HVAC on: False, HVAC lockdown: 24, date: 2021-10-01 10:53:50
House ID: 39 -- OD_temp : 33.979513, ID_temp: 20.035882, target_temp: 20.000000, diff: 0.035882, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 40 -- OD_temp : 33.979513, ID_temp: 19.953047, target_temp: 20.000000, diff: -0.046953, HVAC on: False, HVAC lockdown: 12, date: 2021-10-01 10:53:50
House ID: 41 -- OD_temp : 33.979513, ID_temp: 19.914735, target_temp: 20.000000, diff: -0.085265, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 42 -- OD_temp : 33.979513, ID_temp: 20.069595, target_temp: 20.000000, diff: 0.069595, HVAC on: False, HVAC lockdown: 32, date: 2021-10-01 10:53:50
House ID: 43 -- OD_temp : 33.979513, ID_temp: 20.025386, target_temp: 20.000000, diff: 0.025386, HVAC on: 1, HVAC lockdown: 0, date: 2021-10-01 10:53:50
House ID: 44 -- OD_temp : 33.979513, ID_temp: 19.984339, target_temp: 20.000000, diff: -0.015661, HVAC on: False, HVAC lockdown: 8, date: 2021-10-01 10:53:50
House ID: 45 -- OD_temp : 33.979513, ID_temp: 20.035647, target_temp: 20.000000, diff: 0.035647, HVAC on: False, HVAC lockdown: 24, date: 2021-10-01 10:53:50
House ID: 46 -- OD_temp : 33.979513, ID_temp: 20.164749, target_temp: 20.000000, diff: 0.164749, HVAC on: False, HVAC lockdown: 36, date: 2021-10-01 10:53:50
House ID: 47 -- OD_temp : 33.979513, ID_temp: 19.990141, target_temp: 20.000000, diff: -0.009859, HVAC on: False, HVAC lockdown: 4, date: 2021-10-01 10:53:50
House ID: 48 -- OD_temp : 33.979513, ID_temp: 19.966371, target_temp: 20.000000, diff: -0.033629, HVAC on: False, HVAC lockdown: 8, date: 2021-10-01 10:53:50
House ID: 49 -- OD_temp : 33.979513, ID_temp: 19.932610, target_temp: 20.000000, diff: -0.067390, HVAC on: False, HVAC lockdown: 8, date: 2021-10-01 10:53:50
New episode at time 622591
Updating agent at time 622591
The agent is updating....
Time step: 622591 ，train 1184000 times
Time step: 622591 ，train 1185000 times
Time step: 622591 ，train 1186000 times
Time step: 622591 ，train 1187000 times
Time step: 622591 ，train 1188000 times
Time step: 622591 ，train 1189000 times
Time step: 622591 ，train 1190000 times
Time step: 622591 ，train 1191000 times
Time step: 622591 ，train 1192000 times
Time step: 622591 ，train 1193000 times
Time step: 622591 ，train 1194000 times
Time step: 622591 ，train 1195000 times
Time step: 622591 ，train 1196000 times
Time step: 622591 ，train 1197000 times
Time step: 622591 ，train 1198000 times
Time step: 622591 ，train 1199000 times
Time step: 622591 ，train 1200000 times
Time step: 622591 ，train 1201000 times
Time step: 622591 ，train 1202000 times
Time step: 622591 ，train 1203000 times
Time step: 622591 ，train 1204000 times
Time step: 622591 ，train 1205000 times
Time step: 622591 ，train 1206000 times
Time step: 622591 ，train 1207000 times
Time step: 622591 ，train 1208000 times
Time step: 622591 ，train 1209000 times
Time step: 622591 ，train 1210000 times
Time step: 622591 ，train 1211000 times
Time step: 622591 ，train 1212000 times
Time step: 622591 ，train 1213000 times
Time step: 622591 ，train 1214000 times
Time step: 622591 ，train 1215000 times
Testing at time 622591
House ID: 0 -- OD_temp : 27.639967, ID_temp: 20.033087, target_temp: 20.000000, diff: 0.033087, HVAC on: False, HVAC lockdown: 32, date: 2021-06-16 00:39:30
House ID: 1 -- OD_temp : 27.639967, ID_temp: 19.978772, target_temp: 20.000000, diff: -0.021228, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 2 -- OD_temp : 27.639967, ID_temp: 20.003119, target_temp: 20.000000, diff: 0.003119, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 3 -- OD_temp : 27.639967, ID_temp: 20.024155, target_temp: 20.000000, diff: 0.024155, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 00:39:30
House ID: 4 -- OD_temp : 27.639967, ID_temp: 20.009200, target_temp: 20.000000, diff: 0.009200, HVAC on: False, HVAC lockdown: 28, date: 2021-06-16 00:39:30
House ID: 5 -- OD_temp : 27.639967, ID_temp: 20.040704, target_temp: 20.000000, diff: 0.040704, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 00:39:30
House ID: 6 -- OD_temp : 27.639967, ID_temp: 20.015235, target_temp: 20.000000, diff: 0.015235, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 7 -- OD_temp : 27.639967, ID_temp: 19.997242, target_temp: 20.000000, diff: -0.002758, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 8 -- OD_temp : 27.639967, ID_temp: 20.034545, target_temp: 20.000000, diff: 0.034545, HVAC on: False, HVAC lockdown: 28, date: 2021-06-16 00:39:30
House ID: 9 -- OD_temp : 27.639967, ID_temp: 20.042736, target_temp: 20.000000, diff: 0.042736, HVAC on: False, HVAC lockdown: 24, date: 2021-06-16 00:39:30
House ID: 10 -- OD_temp : 27.639967, ID_temp: 19.962482, target_temp: 20.000000, diff: -0.037518, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 11 -- OD_temp : 27.639967, ID_temp: 20.036757, target_temp: 20.000000, diff: 0.036757, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 12 -- OD_temp : 27.639967, ID_temp: 19.996492, target_temp: 20.000000, diff: -0.003508, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 13 -- OD_temp : 27.639967, ID_temp: 19.982340, target_temp: 20.000000, diff: -0.017660, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 00:39:30
House ID: 14 -- OD_temp : 27.639967, ID_temp: 20.022623, target_temp: 20.000000, diff: 0.022623, HVAC on: False, HVAC lockdown: 24, date: 2021-06-16 00:39:30
House ID: 15 -- OD_temp : 27.639967, ID_temp: 20.023274, target_temp: 20.000000, diff: 0.023274, HVAC on: False, HVAC lockdown: 12, date: 2021-06-16 00:39:30
House ID: 16 -- OD_temp : 27.639967, ID_temp: 19.978139, target_temp: 20.000000, diff: -0.021861, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 00:39:30
House ID: 17 -- OD_temp : 27.639967, ID_temp: 19.983577, target_temp: 20.000000, diff: -0.016423, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 18 -- OD_temp : 27.639967, ID_temp: 19.975924, target_temp: 20.000000, diff: -0.024076, HVAC on: False, HVAC lockdown: 12, date: 2021-06-16 00:39:30
House ID: 19 -- OD_temp : 27.639967, ID_temp: 19.964799, target_temp: 20.000000, diff: -0.035201, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 00:39:30
House ID: 20 -- OD_temp : 27.639967, ID_temp: 20.014093, target_temp: 20.000000, diff: 0.014093, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 21 -- OD_temp : 27.639967, ID_temp: 20.021805, target_temp: 20.000000, diff: 0.021805, HVAC on: False, HVAC lockdown: 16, date: 2021-06-16 00:39:30
House ID: 22 -- OD_temp : 27.639967, ID_temp: 20.015281, target_temp: 20.000000, diff: 0.015281, HVAC on: False, HVAC lockdown: 12, date: 2021-06-16 00:39:30
House ID: 23 -- OD_temp : 27.639967, ID_temp: 19.997255, target_temp: 20.000000, diff: -0.002745, HVAC on: False, HVAC lockdown: 24, date: 2021-06-16 00:39:30
House ID: 24 -- OD_temp : 27.639967, ID_temp: 19.991560, target_temp: 20.000000, diff: -0.008440, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 25 -- OD_temp : 27.639967, ID_temp: 19.992669, target_temp: 20.000000, diff: -0.007331, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 26 -- OD_temp : 27.639967, ID_temp: 19.979500, target_temp: 20.000000, diff: -0.020500, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 27 -- OD_temp : 27.639967, ID_temp: 19.986229, target_temp: 20.000000, diff: -0.013771, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 28 -- OD_temp : 27.639967, ID_temp: 20.015575, target_temp: 20.000000, diff: 0.015575, HVAC on: False, HVAC lockdown: 28, date: 2021-06-16 00:39:30
House ID: 29 -- OD_temp : 27.639967, ID_temp: 19.976695, target_temp: 20.000000, diff: -0.023305, HVAC on: False, HVAC lockdown: 16, date: 2021-06-16 00:39:30
House ID: 30 -- OD_temp : 27.639967, ID_temp: 20.091904, target_temp: 20.000000, diff: 0.091904, HVAC on: False, HVAC lockdown: 36, date: 2021-06-16 00:39:30
House ID: 31 -- OD_temp : 27.639967, ID_temp: 20.031613, target_temp: 20.000000, diff: 0.031613, HVAC on: False, HVAC lockdown: 16, date: 2021-06-16 00:39:30
House ID: 32 -- OD_temp : 27.639967, ID_temp: 20.012128, target_temp: 20.000000, diff: 0.012128, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 33 -- OD_temp : 27.639967, ID_temp: 20.040211, target_temp: 20.000000, diff: 0.040211, HVAC on: False, HVAC lockdown: 16, date: 2021-06-16 00:39:30
House ID: 34 -- OD_temp : 27.639967, ID_temp: 20.029218, target_temp: 20.000000, diff: 0.029218, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 35 -- OD_temp : 27.639967, ID_temp: 20.040018, target_temp: 20.000000, diff: 0.040018, HVAC on: False, HVAC lockdown: 32, date: 2021-06-16 00:39:30
House ID: 36 -- OD_temp : 27.639967, ID_temp: 20.011595, target_temp: 20.000000, diff: 0.011595, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 00:39:30
House ID: 37 -- OD_temp : 27.639967, ID_temp: 19.944254, target_temp: 20.000000, diff: -0.055746, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 00:39:30
House ID: 38 -- OD_temp : 27.639967, ID_temp: 20.019871, target_temp: 20.000000, diff: 0.019871, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 39 -- OD_temp : 27.639967, ID_temp: 20.044473, target_temp: 20.000000, diff: 0.044473, HVAC on: False, HVAC lockdown: 36, date: 2021-06-16 00:39:30
House ID: 40 -- OD_temp : 27.639967, ID_temp: 20.062315, target_temp: 20.000000, diff: 0.062315, HVAC on: False, HVAC lockdown: 24, date: 2021-06-16 00:39:30
House ID: 41 -- OD_temp : 27.639967, ID_temp: 20.000873, target_temp: 20.000000, diff: 0.000873, HVAC on: False, HVAC lockdown: 24, date: 2021-06-16 00:39:30
House ID: 42 -- OD_temp : 27.639967, ID_temp: 19.951443, target_temp: 20.000000, diff: -0.048557, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 43 -- OD_temp : 27.639967, ID_temp: 20.032355, target_temp: 20.000000, diff: 0.032355, HVAC on: False, HVAC lockdown: 32, date: 2021-06-16 00:39:30
House ID: 44 -- OD_temp : 27.639967, ID_temp: 19.988212, target_temp: 20.000000, diff: -0.011788, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 45 -- OD_temp : 27.639967, ID_temp: 20.003001, target_temp: 20.000000, diff: 0.003001, HVAC on: False, HVAC lockdown: 12, date: 2021-06-16 00:39:30
House ID: 46 -- OD_temp : 27.639967, ID_temp: 20.050053, target_temp: 20.000000, diff: 0.050053, HVAC on: False, HVAC lockdown: 28, date: 2021-06-16 00:39:30
House ID: 47 -- OD_temp : 27.639967, ID_temp: 20.038246, target_temp: 20.000000, diff: 0.038246, HVAC on: False, HVAC lockdown: 36, date: 2021-06-16 00:39:30
House ID: 48 -- OD_temp : 27.639967, ID_temp: 19.990678, target_temp: 20.000000, diff: -0.009322, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 00:39:30
House ID: 49 -- OD_temp : 27.639967, ID_temp: 20.008644, target_temp: 20.000000, diff: 0.008644, HVAC on: False, HVAC lockdown: 36, date: 2021-06-16 00:39:30
House ID: 0 -- OD_temp : 33.389452, ID_temp: 20.044442, target_temp: 20.000000, diff: 0.044442, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 1 -- OD_temp : 33.389452, ID_temp: 20.047681, target_temp: 20.000000, diff: 0.047681, HVAC on: False, HVAC lockdown: 32, date: 2021-06-16 11:46:10
House ID: 2 -- OD_temp : 33.389452, ID_temp: 19.984191, target_temp: 20.000000, diff: -0.015809, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 11:46:10
House ID: 3 -- OD_temp : 33.389452, ID_temp: 20.089138, target_temp: 20.000000, diff: 0.089138, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 4 -- OD_temp : 33.389452, ID_temp: 19.972555, target_temp: 20.000000, diff: -0.027445, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 11:46:10
House ID: 5 -- OD_temp : 33.389452, ID_temp: 20.010192, target_temp: 20.000000, diff: 0.010192, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 6 -- OD_temp : 33.389452, ID_temp: 20.097038, target_temp: 20.000000, diff: 0.097038, HVAC on: False, HVAC lockdown: 36, date: 2021-06-16 11:46:10
House ID: 7 -- OD_temp : 33.389452, ID_temp: 20.007215, target_temp: 20.000000, diff: 0.007215, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 8 -- OD_temp : 33.389452, ID_temp: 20.025122, target_temp: 20.000000, diff: 0.025122, HVAC on: False, HVAC lockdown: 12, date: 2021-06-16 11:46:10
House ID: 9 -- OD_temp : 33.389452, ID_temp: 19.982951, target_temp: 20.000000, diff: -0.017049, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 11:46:10
House ID: 10 -- OD_temp : 33.389452, ID_temp: 20.072633, target_temp: 20.000000, diff: 0.072633, HVAC on: False, HVAC lockdown: 24, date: 2021-06-16 11:46:10
House ID: 11 -- OD_temp : 33.389452, ID_temp: 20.028852, target_temp: 20.000000, diff: 0.028852, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 12 -- OD_temp : 33.389452, ID_temp: 20.001004, target_temp: 20.000000, diff: 0.001004, HVAC on: False, HVAC lockdown: 12, date: 2021-06-16 11:46:10
House ID: 13 -- OD_temp : 33.389452, ID_temp: 20.053724, target_temp: 20.000000, diff: 0.053724, HVAC on: False, HVAC lockdown: 36, date: 2021-06-16 11:46:10
House ID: 14 -- OD_temp : 33.389452, ID_temp: 20.030218, target_temp: 20.000000, diff: 0.030218, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 15 -- OD_temp : 33.389452, ID_temp: 20.014167, target_temp: 20.000000, diff: 0.014167, HVAC on: False, HVAC lockdown: 12, date: 2021-06-16 11:46:10
House ID: 16 -- OD_temp : 33.389452, ID_temp: 20.050483, target_temp: 20.000000, diff: 0.050483, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 17 -- OD_temp : 33.389452, ID_temp: 20.016494, target_temp: 20.000000, diff: 0.016494, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 11:46:10
House ID: 18 -- OD_temp : 33.389452, ID_temp: 20.001570, target_temp: 20.000000, diff: 0.001570, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 11:46:10
House ID: 19 -- OD_temp : 33.389452, ID_temp: 20.077136, target_temp: 20.000000, diff: 0.077136, HVAC on: False, HVAC lockdown: 28, date: 2021-06-16 11:46:10
House ID: 20 -- OD_temp : 33.389452, ID_temp: 19.989020, target_temp: 20.000000, diff: -0.010980, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 11:46:10
House ID: 21 -- OD_temp : 33.389452, ID_temp: 20.060788, target_temp: 20.000000, diff: 0.060788, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 11:46:10
House ID: 22 -- OD_temp : 33.389452, ID_temp: 20.029015, target_temp: 20.000000, diff: 0.029015, HVAC on: False, HVAC lockdown: 16, date: 2021-06-16 11:46:10
House ID: 23 -- OD_temp : 33.389452, ID_temp: 20.001160, target_temp: 20.000000, diff: 0.001160, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 24 -- OD_temp : 33.389452, ID_temp: 20.017824, target_temp: 20.000000, diff: 0.017824, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 25 -- OD_temp : 33.389452, ID_temp: 20.027055, target_temp: 20.000000, diff: 0.027055, HVAC on: False, HVAC lockdown: 28, date: 2021-06-16 11:46:10
House ID: 26 -- OD_temp : 33.389452, ID_temp: 20.019683, target_temp: 20.000000, diff: 0.019683, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 11:46:10
House ID: 27 -- OD_temp : 33.389452, ID_temp: 20.036911, target_temp: 20.000000, diff: 0.036911, HVAC on: False, HVAC lockdown: 28, date: 2021-06-16 11:46:10
House ID: 28 -- OD_temp : 33.389452, ID_temp: 19.991310, target_temp: 20.000000, diff: -0.008690, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 11:46:10
House ID: 29 -- OD_temp : 33.389452, ID_temp: 20.048922, target_temp: 20.000000, diff: 0.048922, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 30 -- OD_temp : 33.389452, ID_temp: 20.012241, target_temp: 20.000000, diff: 0.012241, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 11:46:10
House ID: 31 -- OD_temp : 33.389452, ID_temp: 20.009433, target_temp: 20.000000, diff: 0.009433, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 11:46:10
House ID: 32 -- OD_temp : 33.389452, ID_temp: 20.072815, target_temp: 20.000000, diff: 0.072815, HVAC on: False, HVAC lockdown: 36, date: 2021-06-16 11:46:10
House ID: 33 -- OD_temp : 33.389452, ID_temp: 20.013321, target_temp: 20.000000, diff: 0.013321, HVAC on: False, HVAC lockdown: 20, date: 2021-06-16 11:46:10
House ID: 34 -- OD_temp : 33.389452, ID_temp: 19.970797, target_temp: 20.000000, diff: -0.029203, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 35 -- OD_temp : 33.389452, ID_temp: 20.009218, target_temp: 20.000000, diff: 0.009218, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 36 -- OD_temp : 33.389452, ID_temp: 20.020183, target_temp: 20.000000, diff: 0.020183, HVAC on: False, HVAC lockdown: 24, date: 2021-06-16 11:46:10
House ID: 37 -- OD_temp : 33.389452, ID_temp: 20.031776, target_temp: 20.000000, diff: 0.031776, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 38 -- OD_temp : 33.389452, ID_temp: 20.052815, target_temp: 20.000000, diff: 0.052815, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 39 -- OD_temp : 33.389452, ID_temp: 20.011494, target_temp: 20.000000, diff: 0.011494, HVAC on: False, HVAC lockdown: 16, date: 2021-06-16 11:46:10
House ID: 40 -- OD_temp : 33.389452, ID_temp: 19.975643, target_temp: 20.000000, diff: -0.024357, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 11:46:10
House ID: 41 -- OD_temp : 33.389452, ID_temp: 19.981391, target_temp: 20.000000, diff: -0.018609, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 11:46:10
House ID: 42 -- OD_temp : 33.389452, ID_temp: 20.003153, target_temp: 20.000000, diff: 0.003153, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 43 -- OD_temp : 33.389452, ID_temp: 20.007831, target_temp: 20.000000, diff: 0.007831, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 44 -- OD_temp : 33.389452, ID_temp: 19.959781, target_temp: 20.000000, diff: -0.040219, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 45 -- OD_temp : 33.389452, ID_temp: 20.092944, target_temp: 20.000000, diff: 0.092944, HVAC on: False, HVAC lockdown: 32, date: 2021-06-16 11:46:10
House ID: 46 -- OD_temp : 33.389452, ID_temp: 19.972292, target_temp: 20.000000, diff: -0.027708, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 47 -- OD_temp : 33.389452, ID_temp: 19.974306, target_temp: 20.000000, diff: -0.025694, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-16 11:46:10
House ID: 48 -- OD_temp : 33.389452, ID_temp: 20.028255, target_temp: 20.000000, diff: 0.028255, HVAC on: False, HVAC lockdown: 4, date: 2021-06-16 11:46:10
House ID: 49 -- OD_temp : 33.389452, ID_temp: 20.004169, target_temp: 20.000000, diff: 0.004169, HVAC on: False, HVAC lockdown: 8, date: 2021-06-16 11:46:10
Training step - 622591
House ID: 0 -- OD_temp : 31.330117, ID_temp: 20.006982, target_temp: 20.000000, diff: 0.006982, HVAC on: False, HVAC lockdown: 8, date: 2021-02-04 06:42:52
House ID: 1 -- OD_temp : 31.330117, ID_temp: 19.989991, target_temp: 20.000000, diff: -0.010009, HVAC on: False, HVAC lockdown: 8, date: 2021-02-04 06:42:52
House ID: 2 -- OD_temp : 31.330117, ID_temp: 19.969172, target_temp: 20.000000, diff: -0.030828, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
House ID: 3 -- OD_temp : 31.330117, ID_temp: 19.946998, target_temp: 20.000000, diff: -0.053002, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 4 -- OD_temp : 31.330117, ID_temp: 19.942120, target_temp: 20.000000, diff: -0.057880, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 5 -- OD_temp : 31.330117, ID_temp: 19.980850, target_temp: 20.000000, diff: -0.019150, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
House ID: 6 -- OD_temp : 31.330117, ID_temp: 20.040226, target_temp: 20.000000, diff: 0.040226, HVAC on: False, HVAC lockdown: 32, date: 2021-02-04 06:42:52
House ID: 7 -- OD_temp : 31.330117, ID_temp: 20.006942, target_temp: 20.000000, diff: 0.006942, HVAC on: False, HVAC lockdown: 24, date: 2021-02-04 06:42:52
House ID: 8 -- OD_temp : 31.330117, ID_temp: 19.999339, target_temp: 20.000000, diff: -0.000661, HVAC on: False, HVAC lockdown: 20, date: 2021-02-04 06:42:52
House ID: 9 -- OD_temp : 31.330117, ID_temp: 19.986124, target_temp: 20.000000, diff: -0.013876, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
House ID: 10 -- OD_temp : 31.330117, ID_temp: 20.034889, target_temp: 20.000000, diff: 0.034889, HVAC on: False, HVAC lockdown: 20, date: 2021-02-04 06:42:52
House ID: 11 -- OD_temp : 31.330117, ID_temp: 19.921817, target_temp: 20.000000, diff: -0.078183, HVAC on: False, HVAC lockdown: 4, date: 2021-02-04 06:42:52
House ID: 12 -- OD_temp : 31.330117, ID_temp: 20.023738, target_temp: 20.000000, diff: 0.023738, HVAC on: False, HVAC lockdown: 36, date: 2021-02-04 06:42:52
House ID: 13 -- OD_temp : 31.330117, ID_temp: 20.043067, target_temp: 20.000000, diff: 0.043067, HVAC on: False, HVAC lockdown: 24, date: 2021-02-04 06:42:52
House ID: 14 -- OD_temp : 31.330117, ID_temp: 20.008194, target_temp: 20.000000, diff: 0.008194, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
House ID: 15 -- OD_temp : 31.330117, ID_temp: 20.057115, target_temp: 20.000000, diff: 0.057115, HVAC on: False, HVAC lockdown: 32, date: 2021-02-04 06:42:52
House ID: 16 -- OD_temp : 31.330117, ID_temp: 19.926413, target_temp: 20.000000, diff: -0.073587, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 17 -- OD_temp : 31.330117, ID_temp: 19.987433, target_temp: 20.000000, diff: -0.012567, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
House ID: 18 -- OD_temp : 31.330117, ID_temp: 20.010403, target_temp: 20.000000, diff: 0.010403, HVAC on: False, HVAC lockdown: 20, date: 2021-02-04 06:42:52
House ID: 19 -- OD_temp : 31.330117, ID_temp: 20.025476, target_temp: 20.000000, diff: 0.025476, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 20 -- OD_temp : 31.330117, ID_temp: 19.921007, target_temp: 20.000000, diff: -0.078993, HVAC on: False, HVAC lockdown: 4, date: 2021-02-04 06:42:52
House ID: 21 -- OD_temp : 31.330117, ID_temp: 20.056150, target_temp: 20.000000, diff: 0.056150, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 22 -- OD_temp : 31.330117, ID_temp: 19.969595, target_temp: 20.000000, diff: -0.030405, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 23 -- OD_temp : 31.330117, ID_temp: 20.104101, target_temp: 20.000000, diff: 0.104101, HVAC on: False, HVAC lockdown: 36, date: 2021-02-04 06:42:52
House ID: 24 -- OD_temp : 31.330117, ID_temp: 19.991576, target_temp: 20.000000, diff: -0.008424, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
House ID: 25 -- OD_temp : 31.330117, ID_temp: 20.029368, target_temp: 20.000000, diff: 0.029368, HVAC on: False, HVAC lockdown: 36, date: 2021-02-04 06:42:52
House ID: 26 -- OD_temp : 31.330117, ID_temp: 20.037002, target_temp: 20.000000, diff: 0.037002, HVAC on: False, HVAC lockdown: 36, date: 2021-02-04 06:42:52
House ID: 27 -- OD_temp : 31.330117, ID_temp: 19.986461, target_temp: 20.000000, diff: -0.013539, HVAC on: False, HVAC lockdown: 8, date: 2021-02-04 06:42:52
House ID: 28 -- OD_temp : 31.330117, ID_temp: 20.069697, target_temp: 20.000000, diff: 0.069697, HVAC on: False, HVAC lockdown: 32, date: 2021-02-04 06:42:52
House ID: 29 -- OD_temp : 31.330117, ID_temp: 19.976389, target_temp: 20.000000, diff: -0.023611, HVAC on: False, HVAC lockdown: 20, date: 2021-02-04 06:42:52
House ID: 30 -- OD_temp : 31.330117, ID_temp: 19.991324, target_temp: 20.000000, diff: -0.008676, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 31 -- OD_temp : 31.330117, ID_temp: 20.070094, target_temp: 20.000000, diff: 0.070094, HVAC on: False, HVAC lockdown: 36, date: 2021-02-04 06:42:52
House ID: 32 -- OD_temp : 31.330117, ID_temp: 19.935760, target_temp: 20.000000, diff: -0.064240, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 33 -- OD_temp : 31.330117, ID_temp: 19.956920, target_temp: 20.000000, diff: -0.043080, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
House ID: 34 -- OD_temp : 31.330117, ID_temp: 20.011655, target_temp: 20.000000, diff: 0.011655, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 35 -- OD_temp : 31.330117, ID_temp: 20.041291, target_temp: 20.000000, diff: 0.041291, HVAC on: False, HVAC lockdown: 24, date: 2021-02-04 06:42:52
House ID: 36 -- OD_temp : 31.330117, ID_temp: 19.992109, target_temp: 20.000000, diff: -0.007891, HVAC on: False, HVAC lockdown: 16, date: 2021-02-04 06:42:52
House ID: 37 -- OD_temp : 31.330117, ID_temp: 20.009496, target_temp: 20.000000, diff: 0.009496, HVAC on: False, HVAC lockdown: 28, date: 2021-02-04 06:42:52
House ID: 38 -- OD_temp : 31.330117, ID_temp: 20.007487, target_temp: 20.000000, diff: 0.007487, HVAC on: False, HVAC lockdown: 20, date: 2021-02-04 06:42:52
House ID: 39 -- OD_temp : 31.330117, ID_temp: 19.924821, target_temp: 20.000000, diff: -0.075179, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 40 -- OD_temp : 31.330117, ID_temp: 20.044271, target_temp: 20.000000, diff: 0.044271, HVAC on: False, HVAC lockdown: 24, date: 2021-02-04 06:42:52
House ID: 41 -- OD_temp : 31.330117, ID_temp: 20.009029, target_temp: 20.000000, diff: 0.009029, HVAC on: False, HVAC lockdown: 4, date: 2021-02-04 06:42:52
House ID: 42 -- OD_temp : 31.330117, ID_temp: 20.059272, target_temp: 20.000000, diff: 0.059272, HVAC on: False, HVAC lockdown: 36, date: 2021-02-04 06:42:52
House ID: 43 -- OD_temp : 31.330117, ID_temp: 19.999570, target_temp: 20.000000, diff: -0.000430, HVAC on: False, HVAC lockdown: 8, date: 2021-02-04 06:42:52
House ID: 44 -- OD_temp : 31.330117, ID_temp: 20.041865, target_temp: 20.000000, diff: 0.041865, HVAC on: False, HVAC lockdown: 24, date: 2021-02-04 06:42:52
House ID: 45 -- OD_temp : 31.330117, ID_temp: 19.907489, target_temp: 20.000000, diff: -0.092511, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 46 -- OD_temp : 31.330117, ID_temp: 20.031542, target_temp: 20.000000, diff: 0.031542, HVAC on: False, HVAC lockdown: 28, date: 2021-02-04 06:42:52
House ID: 47 -- OD_temp : 31.330117, ID_temp: 20.002246, target_temp: 20.000000, diff: 0.002246, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-04 06:42:52
House ID: 48 -- OD_temp : 31.330117, ID_temp: 20.095910, target_temp: 20.000000, diff: 0.095910, HVAC on: False, HVAC lockdown: 36, date: 2021-02-04 06:42:52
House ID: 49 -- OD_temp : 31.330117, ID_temp: 20.024121, target_temp: 20.000000, diff: 0.024121, HVAC on: False, HVAC lockdown: 12, date: 2021-02-04 06:42:52
New episode at time 638975
Updating agent at time 638975
The agent is updating....
Time step: 638975 ，train 1216000 times
Time step: 638975 ，train 1217000 times
Time step: 638975 ，train 1218000 times
Time step: 638975 ，train 1219000 times
Time step: 638975 ，train 1220000 times
Time step: 638975 ，train 1221000 times
Time step: 638975 ，train 1222000 times
Time step: 638975 ，train 1223000 times
Time step: 638975 ，train 1224000 times
Time step: 638975 ，train 1225000 times
Time step: 638975 ，train 1226000 times
Time step: 638975 ，train 1227000 times
Time step: 638975 ，train 1228000 times
Time step: 638975 ，train 1229000 times
Time step: 638975 ，train 1230000 times
Time step: 638975 ，train 1231000 times
Time step: 638975 ，train 1232000 times
Time step: 638975 ，train 1233000 times
Time step: 638975 ，train 1234000 times
Time step: 638975 ，train 1235000 times
Time step: 638975 ，train 1236000 times
Time step: 638975 ，train 1237000 times
Time step: 638975 ，train 1238000 times
Time step: 638975 ，train 1239000 times
Time step: 638975 ，train 1240000 times
Time step: 638975 ，train 1241000 times
Time step: 638975 ，train 1242000 times
Time step: 638975 ，train 1243000 times
Time step: 638975 ，train 1244000 times
Time step: 638975 ，train 1245000 times
Time step: 638975 ，train 1246000 times
Time step: 638975 ，train 1247000 times
Testing at time 638975
House ID: 0 -- OD_temp : 28.568431, ID_temp: 19.971107, target_temp: 20.000000, diff: -0.028893, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 1 -- OD_temp : 28.568431, ID_temp: 19.978670, target_temp: 20.000000, diff: -0.021330, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 01:34:38
House ID: 2 -- OD_temp : 28.568431, ID_temp: 20.030586, target_temp: 20.000000, diff: 0.030586, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 01:34:38
House ID: 3 -- OD_temp : 28.568431, ID_temp: 19.964782, target_temp: 20.000000, diff: -0.035218, HVAC on: False, HVAC lockdown: 4, date: 2021-06-19 01:34:38
House ID: 4 -- OD_temp : 28.568431, ID_temp: 20.020695, target_temp: 20.000000, diff: 0.020695, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 01:34:38
House ID: 5 -- OD_temp : 28.568431, ID_temp: 19.970311, target_temp: 20.000000, diff: -0.029689, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 01:34:38
House ID: 6 -- OD_temp : 28.568431, ID_temp: 20.054553, target_temp: 20.000000, diff: 0.054553, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 01:34:38
House ID: 7 -- OD_temp : 28.568431, ID_temp: 19.974187, target_temp: 20.000000, diff: -0.025813, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 8 -- OD_temp : 28.568431, ID_temp: 20.013724, target_temp: 20.000000, diff: 0.013724, HVAC on: False, HVAC lockdown: 32, date: 2021-06-19 01:34:38
House ID: 9 -- OD_temp : 28.568431, ID_temp: 19.974203, target_temp: 20.000000, diff: -0.025797, HVAC on: False, HVAC lockdown: 16, date: 2021-06-19 01:34:38
House ID: 10 -- OD_temp : 28.568431, ID_temp: 19.938517, target_temp: 20.000000, diff: -0.061483, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 11 -- OD_temp : 28.568431, ID_temp: 20.027706, target_temp: 20.000000, diff: 0.027706, HVAC on: False, HVAC lockdown: 4, date: 2021-06-19 01:34:38
House ID: 12 -- OD_temp : 28.568431, ID_temp: 19.965658, target_temp: 20.000000, diff: -0.034342, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 13 -- OD_temp : 28.568431, ID_temp: 19.980739, target_temp: 20.000000, diff: -0.019261, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 14 -- OD_temp : 28.568431, ID_temp: 20.007885, target_temp: 20.000000, diff: 0.007885, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 01:34:38
House ID: 15 -- OD_temp : 28.568431, ID_temp: 19.968295, target_temp: 20.000000, diff: -0.031705, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 16 -- OD_temp : 28.568431, ID_temp: 19.951019, target_temp: 20.000000, diff: -0.048981, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 01:34:38
House ID: 17 -- OD_temp : 28.568431, ID_temp: 20.017512, target_temp: 20.000000, diff: 0.017512, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 01:34:38
House ID: 18 -- OD_temp : 28.568431, ID_temp: 20.020068, target_temp: 20.000000, diff: 0.020068, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 01:34:38
House ID: 19 -- OD_temp : 28.568431, ID_temp: 19.989842, target_temp: 20.000000, diff: -0.010158, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 20 -- OD_temp : 28.568431, ID_temp: 20.054765, target_temp: 20.000000, diff: 0.054765, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 01:34:38
House ID: 21 -- OD_temp : 28.568431, ID_temp: 20.031284, target_temp: 20.000000, diff: 0.031284, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 01:34:38
House ID: 22 -- OD_temp : 28.568431, ID_temp: 20.022846, target_temp: 20.000000, diff: 0.022846, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 01:34:38
House ID: 23 -- OD_temp : 28.568431, ID_temp: 20.027360, target_temp: 20.000000, diff: 0.027360, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 24 -- OD_temp : 28.568431, ID_temp: 20.002661, target_temp: 20.000000, diff: 0.002661, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 01:34:38
House ID: 25 -- OD_temp : 28.568431, ID_temp: 20.025497, target_temp: 20.000000, diff: 0.025497, HVAC on: False, HVAC lockdown: 16, date: 2021-06-19 01:34:38
House ID: 26 -- OD_temp : 28.568431, ID_temp: 19.963220, target_temp: 20.000000, diff: -0.036780, HVAC on: False, HVAC lockdown: 4, date: 2021-06-19 01:34:38
House ID: 27 -- OD_temp : 28.568431, ID_temp: 19.979883, target_temp: 20.000000, diff: -0.020117, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 01:34:38
House ID: 28 -- OD_temp : 28.568431, ID_temp: 19.995709, target_temp: 20.000000, diff: -0.004291, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 01:34:38
House ID: 29 -- OD_temp : 28.568431, ID_temp: 20.029370, target_temp: 20.000000, diff: 0.029370, HVAC on: False, HVAC lockdown: 16, date: 2021-06-19 01:34:38
House ID: 30 -- OD_temp : 28.568431, ID_temp: 20.041300, target_temp: 20.000000, diff: 0.041300, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 01:34:38
House ID: 31 -- OD_temp : 28.568431, ID_temp: 19.986507, target_temp: 20.000000, diff: -0.013493, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 01:34:38
House ID: 32 -- OD_temp : 28.568431, ID_temp: 19.985116, target_temp: 20.000000, diff: -0.014884, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 33 -- OD_temp : 28.568431, ID_temp: 19.976380, target_temp: 20.000000, diff: -0.023620, HVAC on: False, HVAC lockdown: 16, date: 2021-06-19 01:34:38
House ID: 34 -- OD_temp : 28.568431, ID_temp: 19.960526, target_temp: 20.000000, diff: -0.039474, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 35 -- OD_temp : 28.568431, ID_temp: 20.023480, target_temp: 20.000000, diff: 0.023480, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 01:34:38
House ID: 36 -- OD_temp : 28.568431, ID_temp: 19.982797, target_temp: 20.000000, diff: -0.017203, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 37 -- OD_temp : 28.568431, ID_temp: 19.973129, target_temp: 20.000000, diff: -0.026871, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 38 -- OD_temp : 28.568431, ID_temp: 19.981813, target_temp: 20.000000, diff: -0.018187, HVAC on: False, HVAC lockdown: 4, date: 2021-06-19 01:34:38
House ID: 39 -- OD_temp : 28.568431, ID_temp: 19.980186, target_temp: 20.000000, diff: -0.019814, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 01:34:38
House ID: 40 -- OD_temp : 28.568431, ID_temp: 20.010618, target_temp: 20.000000, diff: 0.010618, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 01:34:38
House ID: 41 -- OD_temp : 28.568431, ID_temp: 20.033948, target_temp: 20.000000, diff: 0.033948, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 01:34:38
House ID: 42 -- OD_temp : 28.568431, ID_temp: 19.955761, target_temp: 20.000000, diff: -0.044239, HVAC on: False, HVAC lockdown: 28, date: 2021-06-19 01:34:38
House ID: 43 -- OD_temp : 28.568431, ID_temp: 19.962027, target_temp: 20.000000, diff: -0.037973, HVAC on: False, HVAC lockdown: 4, date: 2021-06-19 01:34:38
House ID: 44 -- OD_temp : 28.568431, ID_temp: 19.995708, target_temp: 20.000000, diff: -0.004292, HVAC on: False, HVAC lockdown: 28, date: 2021-06-19 01:34:38
House ID: 45 -- OD_temp : 28.568431, ID_temp: 20.013985, target_temp: 20.000000, diff: 0.013985, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 46 -- OD_temp : 28.568431, ID_temp: 20.001970, target_temp: 20.000000, diff: 0.001970, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 01:34:38
House ID: 47 -- OD_temp : 28.568431, ID_temp: 20.003348, target_temp: 20.000000, diff: 0.003348, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 48 -- OD_temp : 28.568431, ID_temp: 19.999994, target_temp: 20.000000, diff: -0.000006, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 01:34:38
House ID: 49 -- OD_temp : 28.568431, ID_temp: 19.977732, target_temp: 20.000000, diff: -0.022268, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 01:34:38
House ID: 0 -- OD_temp : 34.028245, ID_temp: 20.023804, target_temp: 20.000000, diff: 0.023804, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 1 -- OD_temp : 34.028245, ID_temp: 19.946738, target_temp: 20.000000, diff: -0.053262, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 2 -- OD_temp : 34.028245, ID_temp: 19.993348, target_temp: 20.000000, diff: -0.006652, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 3 -- OD_temp : 34.028245, ID_temp: 20.051869, target_temp: 20.000000, diff: 0.051869, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 12:41:18
House ID: 4 -- OD_temp : 34.028245, ID_temp: 19.990349, target_temp: 20.000000, diff: -0.009651, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 12:41:18
House ID: 5 -- OD_temp : 34.028245, ID_temp: 19.941577, target_temp: 20.000000, diff: -0.058423, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 6 -- OD_temp : 34.028245, ID_temp: 20.143206, target_temp: 20.000000, diff: 0.143206, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 12:41:18
House ID: 7 -- OD_temp : 34.028245, ID_temp: 20.030643, target_temp: 20.000000, diff: 0.030643, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 12:41:18
House ID: 8 -- OD_temp : 34.028245, ID_temp: 19.997848, target_temp: 20.000000, diff: -0.002152, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 9 -- OD_temp : 34.028245, ID_temp: 19.963215, target_temp: 20.000000, diff: -0.036785, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 12:41:18
House ID: 10 -- OD_temp : 34.028245, ID_temp: 20.010863, target_temp: 20.000000, diff: 0.010863, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 11 -- OD_temp : 34.028245, ID_temp: 19.967524, target_temp: 20.000000, diff: -0.032476, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 12 -- OD_temp : 34.028245, ID_temp: 20.117088, target_temp: 20.000000, diff: 0.117088, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 12:41:18
House ID: 13 -- OD_temp : 34.028245, ID_temp: 20.085306, target_temp: 20.000000, diff: 0.085306, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 12:41:18
House ID: 14 -- OD_temp : 34.028245, ID_temp: 20.052827, target_temp: 20.000000, diff: 0.052827, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 12:41:18
House ID: 15 -- OD_temp : 34.028245, ID_temp: 20.061644, target_temp: 20.000000, diff: 0.061644, HVAC on: False, HVAC lockdown: 32, date: 2021-06-19 12:41:18
House ID: 16 -- OD_temp : 34.028245, ID_temp: 20.077929, target_temp: 20.000000, diff: 0.077929, HVAC on: False, HVAC lockdown: 32, date: 2021-06-19 12:41:18
House ID: 17 -- OD_temp : 34.028245, ID_temp: 20.066894, target_temp: 20.000000, diff: 0.066894, HVAC on: False, HVAC lockdown: 28, date: 2021-06-19 12:41:18
House ID: 18 -- OD_temp : 34.028245, ID_temp: 20.069764, target_temp: 20.000000, diff: 0.069764, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 12:41:18
House ID: 19 -- OD_temp : 34.028245, ID_temp: 19.987193, target_temp: 20.000000, diff: -0.012807, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 12:41:18
House ID: 20 -- OD_temp : 34.028245, ID_temp: 20.038850, target_temp: 20.000000, diff: 0.038850, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 12:41:18
House ID: 21 -- OD_temp : 34.028245, ID_temp: 20.079738, target_temp: 20.000000, diff: 0.079738, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 12:41:18
House ID: 22 -- OD_temp : 34.028245, ID_temp: 20.015080, target_temp: 20.000000, diff: 0.015080, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 12:41:18
House ID: 23 -- OD_temp : 34.028245, ID_temp: 19.949820, target_temp: 20.000000, diff: -0.050180, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 24 -- OD_temp : 34.028245, ID_temp: 20.002205, target_temp: 20.000000, diff: 0.002205, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 25 -- OD_temp : 34.028245, ID_temp: 20.014085, target_temp: 20.000000, diff: 0.014085, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 12:41:18
House ID: 26 -- OD_temp : 34.028245, ID_temp: 20.036737, target_temp: 20.000000, diff: 0.036737, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 12:41:18
House ID: 27 -- OD_temp : 34.028245, ID_temp: 20.070490, target_temp: 20.000000, diff: 0.070490, HVAC on: False, HVAC lockdown: 28, date: 2021-06-19 12:41:18
House ID: 28 -- OD_temp : 34.028245, ID_temp: 19.949956, target_temp: 20.000000, diff: -0.050044, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 29 -- OD_temp : 34.028245, ID_temp: 20.001314, target_temp: 20.000000, diff: 0.001314, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 12:41:18
House ID: 30 -- OD_temp : 34.028245, ID_temp: 20.088379, target_temp: 20.000000, diff: 0.088379, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 12:41:18
House ID: 31 -- OD_temp : 34.028245, ID_temp: 19.961993, target_temp: 20.000000, diff: -0.038007, HVAC on: False, HVAC lockdown: 4, date: 2021-06-19 12:41:18
House ID: 32 -- OD_temp : 34.028245, ID_temp: 20.011773, target_temp: 20.000000, diff: 0.011773, HVAC on: False, HVAC lockdown: 4, date: 2021-06-19 12:41:18
House ID: 33 -- OD_temp : 34.028245, ID_temp: 20.109754, target_temp: 20.000000, diff: 0.109754, HVAC on: False, HVAC lockdown: 32, date: 2021-06-19 12:41:18
House ID: 34 -- OD_temp : 34.028245, ID_temp: 20.070979, target_temp: 20.000000, diff: 0.070979, HVAC on: False, HVAC lockdown: 24, date: 2021-06-19 12:41:18
House ID: 35 -- OD_temp : 34.028245, ID_temp: 19.989187, target_temp: 20.000000, diff: -0.010813, HVAC on: False, HVAC lockdown: 12, date: 2021-06-19 12:41:18
House ID: 36 -- OD_temp : 34.028245, ID_temp: 19.942605, target_temp: 20.000000, diff: -0.057395, HVAC on: False, HVAC lockdown: 8, date: 2021-06-19 12:41:18
House ID: 37 -- OD_temp : 34.028245, ID_temp: 20.073639, target_temp: 20.000000, diff: 0.073639, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 12:41:18
House ID: 38 -- OD_temp : 34.028245, ID_temp: 19.976207, target_temp: 20.000000, diff: -0.023793, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 39 -- OD_temp : 34.028245, ID_temp: 20.061366, target_temp: 20.000000, diff: 0.061366, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 12:41:18
House ID: 40 -- OD_temp : 34.028245, ID_temp: 20.061038, target_temp: 20.000000, diff: 0.061038, HVAC on: False, HVAC lockdown: 36, date: 2021-06-19 12:41:18
House ID: 41 -- OD_temp : 34.028245, ID_temp: 20.001217, target_temp: 20.000000, diff: 0.001217, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 42 -- OD_temp : 34.028245, ID_temp: 20.004396, target_temp: 20.000000, diff: 0.004396, HVAC on: False, HVAC lockdown: 16, date: 2021-06-19 12:41:18
House ID: 43 -- OD_temp : 34.028245, ID_temp: 19.995591, target_temp: 20.000000, diff: -0.004409, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 12:41:18
House ID: 44 -- OD_temp : 34.028245, ID_temp: 19.920014, target_temp: 20.000000, diff: -0.079986, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 45 -- OD_temp : 34.028245, ID_temp: 20.070173, target_temp: 20.000000, diff: 0.070173, HVAC on: False, HVAC lockdown: 32, date: 2021-06-19 12:41:18
House ID: 46 -- OD_temp : 34.028245, ID_temp: 19.984956, target_temp: 20.000000, diff: -0.015044, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-19 12:41:18
House ID: 47 -- OD_temp : 34.028245, ID_temp: 20.015080, target_temp: 20.000000, diff: 0.015080, HVAC on: False, HVAC lockdown: 20, date: 2021-06-19 12:41:18
House ID: 48 -- OD_temp : 34.028245, ID_temp: 20.099023, target_temp: 20.000000, diff: 0.099023, HVAC on: False, HVAC lockdown: 32, date: 2021-06-19 12:41:18
House ID: 49 -- OD_temp : 34.028245, ID_temp: 19.936087, target_temp: 20.000000, diff: -0.063913, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-19 12:41:18
Training step - 638975
House ID: 0 -- OD_temp : 32.792519, ID_temp: 20.103302, target_temp: 20.000000, diff: 0.103302, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 1 -- OD_temp : 32.792519, ID_temp: 20.060676, target_temp: 20.000000, diff: 0.060676, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 2 -- OD_temp : 32.792519, ID_temp: 19.942903, target_temp: 20.000000, diff: -0.057097, HVAC on: False, HVAC lockdown: 4, date: 2021-04-07 10:08:45
House ID: 3 -- OD_temp : 32.792519, ID_temp: 19.895583, target_temp: 20.000000, diff: -0.104417, HVAC on: False, HVAC lockdown: 4, date: 2021-04-07 10:08:45
House ID: 4 -- OD_temp : 32.792519, ID_temp: 19.985472, target_temp: 20.000000, diff: -0.014528, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 5 -- OD_temp : 32.792519, ID_temp: 19.958940, target_temp: 20.000000, diff: -0.041060, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 6 -- OD_temp : 32.792519, ID_temp: 19.940493, target_temp: 20.000000, diff: -0.059507, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 7 -- OD_temp : 32.792519, ID_temp: 19.935085, target_temp: 20.000000, diff: -0.064915, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 8 -- OD_temp : 32.792519, ID_temp: 20.086593, target_temp: 20.000000, diff: 0.086593, HVAC on: False, HVAC lockdown: 8, date: 2021-04-07 10:08:45
House ID: 9 -- OD_temp : 32.792519, ID_temp: 20.075366, target_temp: 20.000000, diff: 0.075366, HVAC on: False, HVAC lockdown: 36, date: 2021-04-07 10:08:45
House ID: 10 -- OD_temp : 32.792519, ID_temp: 20.072150, target_temp: 20.000000, diff: 0.072150, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 11 -- OD_temp : 32.792519, ID_temp: 19.974039, target_temp: 20.000000, diff: -0.025961, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 12 -- OD_temp : 32.792519, ID_temp: 19.990855, target_temp: 20.000000, diff: -0.009145, HVAC on: False, HVAC lockdown: 16, date: 2021-04-07 10:08:45
House ID: 13 -- OD_temp : 32.792519, ID_temp: 19.930280, target_temp: 20.000000, diff: -0.069720, HVAC on: False, HVAC lockdown: 8, date: 2021-04-07 10:08:45
House ID: 14 -- OD_temp : 32.792519, ID_temp: 20.047086, target_temp: 20.000000, diff: 0.047086, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 15 -- OD_temp : 32.792519, ID_temp: 19.999555, target_temp: 20.000000, diff: -0.000445, HVAC on: False, HVAC lockdown: 16, date: 2021-04-07 10:08:45
House ID: 16 -- OD_temp : 32.792519, ID_temp: 19.946841, target_temp: 20.000000, diff: -0.053159, HVAC on: False, HVAC lockdown: 12, date: 2021-04-07 10:08:45
House ID: 17 -- OD_temp : 32.792519, ID_temp: 20.055959, target_temp: 20.000000, diff: 0.055959, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 18 -- OD_temp : 32.792519, ID_temp: 19.971048, target_temp: 20.000000, diff: -0.028952, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 19 -- OD_temp : 32.792519, ID_temp: 20.039159, target_temp: 20.000000, diff: 0.039159, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 20 -- OD_temp : 32.792519, ID_temp: 19.882590, target_temp: 20.000000, diff: -0.117410, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 21 -- OD_temp : 32.792519, ID_temp: 19.970573, target_temp: 20.000000, diff: -0.029427, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 22 -- OD_temp : 32.792519, ID_temp: 20.035563, target_temp: 20.000000, diff: 0.035563, HVAC on: False, HVAC lockdown: 28, date: 2021-04-07 10:08:45
House ID: 23 -- OD_temp : 32.792519, ID_temp: 20.010934, target_temp: 20.000000, diff: 0.010934, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 24 -- OD_temp : 32.792519, ID_temp: 19.989505, target_temp: 20.000000, diff: -0.010495, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 25 -- OD_temp : 32.792519, ID_temp: 20.069601, target_temp: 20.000000, diff: 0.069601, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 26 -- OD_temp : 32.792519, ID_temp: 19.955957, target_temp: 20.000000, diff: -0.044043, HVAC on: False, HVAC lockdown: 8, date: 2021-04-07 10:08:45
House ID: 27 -- OD_temp : 32.792519, ID_temp: 20.038872, target_temp: 20.000000, diff: 0.038872, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 28 -- OD_temp : 32.792519, ID_temp: 20.082948, target_temp: 20.000000, diff: 0.082948, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 29 -- OD_temp : 32.792519, ID_temp: 19.952929, target_temp: 20.000000, diff: -0.047071, HVAC on: False, HVAC lockdown: 8, date: 2021-04-07 10:08:45
House ID: 30 -- OD_temp : 32.792519, ID_temp: 20.100902, target_temp: 20.000000, diff: 0.100902, HVAC on: False, HVAC lockdown: 36, date: 2021-04-07 10:08:45
House ID: 31 -- OD_temp : 32.792519, ID_temp: 20.017232, target_temp: 20.000000, diff: 0.017232, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 32 -- OD_temp : 32.792519, ID_temp: 19.964112, target_temp: 20.000000, diff: -0.035888, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 33 -- OD_temp : 32.792519, ID_temp: 19.936448, target_temp: 20.000000, diff: -0.063552, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 34 -- OD_temp : 32.792519, ID_temp: 20.085078, target_temp: 20.000000, diff: 0.085078, HVAC on: False, HVAC lockdown: 28, date: 2021-04-07 10:08:45
House ID: 35 -- OD_temp : 32.792519, ID_temp: 20.023649, target_temp: 20.000000, diff: 0.023649, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 36 -- OD_temp : 32.792519, ID_temp: 19.896922, target_temp: 20.000000, diff: -0.103078, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 37 -- OD_temp : 32.792519, ID_temp: 20.020697, target_temp: 20.000000, diff: 0.020697, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 38 -- OD_temp : 32.792519, ID_temp: 20.065571, target_temp: 20.000000, diff: 0.065571, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 39 -- OD_temp : 32.792519, ID_temp: 20.062207, target_temp: 20.000000, diff: 0.062207, HVAC on: False, HVAC lockdown: 28, date: 2021-04-07 10:08:45
House ID: 40 -- OD_temp : 32.792519, ID_temp: 19.984171, target_temp: 20.000000, diff: -0.015829, HVAC on: False, HVAC lockdown: 20, date: 2021-04-07 10:08:45
House ID: 41 -- OD_temp : 32.792519, ID_temp: 19.973426, target_temp: 20.000000, diff: -0.026574, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 42 -- OD_temp : 32.792519, ID_temp: 20.074789, target_temp: 20.000000, diff: 0.074789, HVAC on: False, HVAC lockdown: 12, date: 2021-04-07 10:08:45
House ID: 43 -- OD_temp : 32.792519, ID_temp: 20.093287, target_temp: 20.000000, diff: 0.093287, HVAC on: False, HVAC lockdown: 36, date: 2021-04-07 10:08:45
House ID: 44 -- OD_temp : 32.792519, ID_temp: 20.050966, target_temp: 20.000000, diff: 0.050966, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-07 10:08:45
House ID: 45 -- OD_temp : 32.792519, ID_temp: 20.048462, target_temp: 20.000000, diff: 0.048462, HVAC on: False, HVAC lockdown: 24, date: 2021-04-07 10:08:45
House ID: 46 -- OD_temp : 32.792519, ID_temp: 20.061663, target_temp: 20.000000, diff: 0.061663, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 47 -- OD_temp : 32.792519, ID_temp: 20.080302, target_temp: 20.000000, diff: 0.080302, HVAC on: False, HVAC lockdown: 28, date: 2021-04-07 10:08:45
House ID: 48 -- OD_temp : 32.792519, ID_temp: 20.082493, target_temp: 20.000000, diff: 0.082493, HVAC on: False, HVAC lockdown: 32, date: 2021-04-07 10:08:45
House ID: 49 -- OD_temp : 32.792519, ID_temp: 20.001717, target_temp: 20.000000, diff: 0.001717, HVAC on: False, HVAC lockdown: 28, date: 2021-04-07 10:08:45
New episode at time 655359
Updating agent at time 655359
The agent is updating....
Time step: 655359 ，train 1248000 times
Time step: 655359 ，train 1249000 times
Time step: 655359 ，train 1250000 times
Time step: 655359 ，train 1251000 times
Time step: 655359 ，train 1252000 times
Time step: 655359 ，train 1253000 times
Time step: 655359 ，train 1254000 times
Time step: 655359 ，train 1255000 times
Time step: 655359 ，train 1256000 times
Time step: 655359 ，train 1257000 times
Time step: 655359 ，train 1258000 times
Time step: 655359 ，train 1259000 times
Time step: 655359 ，train 1260000 times
Time step: 655359 ，train 1261000 times
Time step: 655359 ，train 1262000 times
Time step: 655359 ，train 1263000 times
Time step: 655359 ，train 1264000 times
Time step: 655359 ，train 1265000 times
Time step: 655359 ，train 1266000 times
Time step: 655359 ，train 1267000 times
Time step: 655359 ，train 1268000 times
Time step: 655359 ，train 1269000 times
Time step: 655359 ，train 1270000 times
Time step: 655359 ，train 1271000 times
Time step: 655359 ，train 1272000 times
Time step: 655359 ，train 1273000 times
Time step: 655359 ，train 1274000 times
Time step: 655359 ，train 1275000 times
Time step: 655359 ，train 1276000 times
Time step: 655359 ，train 1277000 times
Time step: 655359 ，train 1278000 times
Time step: 655359 ，train 1279000 times
Testing at time 655359
House ID: 0 -- OD_temp : 29.583728, ID_temp: 19.939523, target_temp: 20.000000, diff: -0.060477, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 1 -- OD_temp : 29.583728, ID_temp: 20.029099, target_temp: 20.000000, diff: 0.029099, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 03:16:04
House ID: 2 -- OD_temp : 29.583728, ID_temp: 20.033581, target_temp: 20.000000, diff: 0.033581, HVAC on: False, HVAC lockdown: 24, date: 2021-11-25 03:16:04
House ID: 3 -- OD_temp : 29.583728, ID_temp: 20.005281, target_temp: 20.000000, diff: 0.005281, HVAC on: False, HVAC lockdown: 24, date: 2021-11-25 03:16:04
House ID: 4 -- OD_temp : 29.583728, ID_temp: 20.038017, target_temp: 20.000000, diff: 0.038017, HVAC on: False, HVAC lockdown: 36, date: 2021-11-25 03:16:04
House ID: 5 -- OD_temp : 29.583728, ID_temp: 19.996505, target_temp: 20.000000, diff: -0.003495, HVAC on: False, HVAC lockdown: 24, date: 2021-11-25 03:16:04
House ID: 6 -- OD_temp : 29.583728, ID_temp: 20.043942, target_temp: 20.000000, diff: 0.043942, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 03:16:04
House ID: 7 -- OD_temp : 29.583728, ID_temp: 20.019519, target_temp: 20.000000, diff: 0.019519, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 8 -- OD_temp : 29.583728, ID_temp: 20.053564, target_temp: 20.000000, diff: 0.053564, HVAC on: False, HVAC lockdown: 36, date: 2021-11-25 03:16:04
House ID: 9 -- OD_temp : 29.583728, ID_temp: 19.971024, target_temp: 20.000000, diff: -0.028976, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 10 -- OD_temp : 29.583728, ID_temp: 20.059288, target_temp: 20.000000, diff: 0.059288, HVAC on: False, HVAC lockdown: 12, date: 2021-11-25 03:16:04
House ID: 11 -- OD_temp : 29.583728, ID_temp: 19.988500, target_temp: 20.000000, diff: -0.011500, HVAC on: False, HVAC lockdown: 8, date: 2021-11-25 03:16:04
House ID: 12 -- OD_temp : 29.583728, ID_temp: 19.930187, target_temp: 20.000000, diff: -0.069813, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 13 -- OD_temp : 29.583728, ID_temp: 20.010426, target_temp: 20.000000, diff: 0.010426, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 14 -- OD_temp : 29.583728, ID_temp: 19.965425, target_temp: 20.000000, diff: -0.034575, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 15 -- OD_temp : 29.583728, ID_temp: 19.974090, target_temp: 20.000000, diff: -0.025910, HVAC on: False, HVAC lockdown: 12, date: 2021-11-25 03:16:04
House ID: 16 -- OD_temp : 29.583728, ID_temp: 20.001470, target_temp: 20.000000, diff: 0.001470, HVAC on: False, HVAC lockdown: 8, date: 2021-11-25 03:16:04
House ID: 17 -- OD_temp : 29.583728, ID_temp: 19.989338, target_temp: 20.000000, diff: -0.010662, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 18 -- OD_temp : 29.583728, ID_temp: 19.981206, target_temp: 20.000000, diff: -0.018794, HVAC on: False, HVAC lockdown: 8, date: 2021-11-25 03:16:04
House ID: 19 -- OD_temp : 29.583728, ID_temp: 20.022218, target_temp: 20.000000, diff: 0.022218, HVAC on: False, HVAC lockdown: 8, date: 2021-11-25 03:16:04
House ID: 20 -- OD_temp : 29.583728, ID_temp: 19.996751, target_temp: 20.000000, diff: -0.003249, HVAC on: False, HVAC lockdown: 20, date: 2021-11-25 03:16:04
House ID: 21 -- OD_temp : 29.583728, ID_temp: 19.972464, target_temp: 20.000000, diff: -0.027536, HVAC on: False, HVAC lockdown: 4, date: 2021-11-25 03:16:04
House ID: 22 -- OD_temp : 29.583728, ID_temp: 20.001483, target_temp: 20.000000, diff: 0.001483, HVAC on: False, HVAC lockdown: 16, date: 2021-11-25 03:16:04
House ID: 23 -- OD_temp : 29.583728, ID_temp: 20.001652, target_temp: 20.000000, diff: 0.001652, HVAC on: False, HVAC lockdown: 8, date: 2021-11-25 03:16:04
House ID: 24 -- OD_temp : 29.583728, ID_temp: 20.005286, target_temp: 20.000000, diff: 0.005286, HVAC on: False, HVAC lockdown: 20, date: 2021-11-25 03:16:04
House ID: 25 -- OD_temp : 29.583728, ID_temp: 20.058459, target_temp: 20.000000, diff: 0.058459, HVAC on: False, HVAC lockdown: 36, date: 2021-11-25 03:16:04
House ID: 26 -- OD_temp : 29.583728, ID_temp: 20.017279, target_temp: 20.000000, diff: 0.017279, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 27 -- OD_temp : 29.583728, ID_temp: 19.951093, target_temp: 20.000000, diff: -0.048907, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 28 -- OD_temp : 29.583728, ID_temp: 20.041036, target_temp: 20.000000, diff: 0.041036, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 03:16:04
House ID: 29 -- OD_temp : 29.583728, ID_temp: 20.051098, target_temp: 20.000000, diff: 0.051098, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 03:16:04
House ID: 30 -- OD_temp : 29.583728, ID_temp: 19.940049, target_temp: 20.000000, diff: -0.059951, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 31 -- OD_temp : 29.583728, ID_temp: 19.992017, target_temp: 20.000000, diff: -0.007983, HVAC on: False, HVAC lockdown: 4, date: 2021-11-25 03:16:04
House ID: 32 -- OD_temp : 29.583728, ID_temp: 20.050401, target_temp: 20.000000, diff: 0.050401, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 03:16:04
House ID: 33 -- OD_temp : 29.583728, ID_temp: 19.988135, target_temp: 20.000000, diff: -0.011865, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 34 -- OD_temp : 29.583728, ID_temp: 19.974756, target_temp: 20.000000, diff: -0.025244, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 35 -- OD_temp : 29.583728, ID_temp: 20.032409, target_temp: 20.000000, diff: 0.032409, HVAC on: False, HVAC lockdown: 20, date: 2021-11-25 03:16:04
House ID: 36 -- OD_temp : 29.583728, ID_temp: 20.026111, target_temp: 20.000000, diff: 0.026111, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 03:16:04
House ID: 37 -- OD_temp : 29.583728, ID_temp: 19.998966, target_temp: 20.000000, diff: -0.001034, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 38 -- OD_temp : 29.583728, ID_temp: 20.032384, target_temp: 20.000000, diff: 0.032384, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 39 -- OD_temp : 29.583728, ID_temp: 20.026343, target_temp: 20.000000, diff: 0.026343, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 40 -- OD_temp : 29.583728, ID_temp: 20.057280, target_temp: 20.000000, diff: 0.057280, HVAC on: False, HVAC lockdown: 36, date: 2021-11-25 03:16:04
House ID: 41 -- OD_temp : 29.583728, ID_temp: 20.005778, target_temp: 20.000000, diff: 0.005778, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 42 -- OD_temp : 29.583728, ID_temp: 20.064597, target_temp: 20.000000, diff: 0.064597, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 03:16:04
House ID: 43 -- OD_temp : 29.583728, ID_temp: 20.020114, target_temp: 20.000000, diff: 0.020114, HVAC on: False, HVAC lockdown: 8, date: 2021-11-25 03:16:04
House ID: 44 -- OD_temp : 29.583728, ID_temp: 20.014801, target_temp: 20.000000, diff: 0.014801, HVAC on: False, HVAC lockdown: 20, date: 2021-11-25 03:16:04
House ID: 45 -- OD_temp : 29.583728, ID_temp: 20.060256, target_temp: 20.000000, diff: 0.060256, HVAC on: False, HVAC lockdown: 36, date: 2021-11-25 03:16:04
House ID: 46 -- OD_temp : 29.583728, ID_temp: 20.008262, target_temp: 20.000000, diff: 0.008262, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 47 -- OD_temp : 29.583728, ID_temp: 20.007584, target_temp: 20.000000, diff: 0.007584, HVAC on: False, HVAC lockdown: 24, date: 2021-11-25 03:16:04
House ID: 48 -- OD_temp : 29.583728, ID_temp: 20.060672, target_temp: 20.000000, diff: 0.060672, HVAC on: False, HVAC lockdown: 28, date: 2021-11-25 03:16:04
House ID: 49 -- OD_temp : 29.583728, ID_temp: 19.976100, target_temp: 20.000000, diff: -0.023900, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 03:16:04
House ID: 0 -- OD_temp : 32.789160, ID_temp: 20.098553, target_temp: 20.000000, diff: 0.098553, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 14:22:44
House ID: 1 -- OD_temp : 32.789160, ID_temp: 19.970583, target_temp: 20.000000, diff: -0.029417, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 2 -- OD_temp : 32.789160, ID_temp: 19.969014, target_temp: 20.000000, diff: -0.030986, HVAC on: False, HVAC lockdown: 16, date: 2021-11-25 14:22:44
House ID: 3 -- OD_temp : 32.789160, ID_temp: 19.992674, target_temp: 20.000000, diff: -0.007326, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 4 -- OD_temp : 32.789160, ID_temp: 19.922870, target_temp: 20.000000, diff: -0.077130, HVAC on: False, HVAC lockdown: 4, date: 2021-11-25 14:22:44
House ID: 5 -- OD_temp : 32.789160, ID_temp: 20.076150, target_temp: 20.000000, diff: 0.076150, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 14:22:44
House ID: 6 -- OD_temp : 32.789160, ID_temp: 19.960048, target_temp: 20.000000, diff: -0.039952, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 7 -- OD_temp : 32.789160, ID_temp: 19.953786, target_temp: 20.000000, diff: -0.046214, HVAC on: False, HVAC lockdown: 12, date: 2021-11-25 14:22:44
House ID: 8 -- OD_temp : 32.789160, ID_temp: 19.948234, target_temp: 20.000000, diff: -0.051766, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 9 -- OD_temp : 32.789160, ID_temp: 20.037272, target_temp: 20.000000, diff: 0.037272, HVAC on: False, HVAC lockdown: 28, date: 2021-11-25 14:22:44
House ID: 10 -- OD_temp : 32.789160, ID_temp: 20.022044, target_temp: 20.000000, diff: 0.022044, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 11 -- OD_temp : 32.789160, ID_temp: 19.917674, target_temp: 20.000000, diff: -0.082326, HVAC on: False, HVAC lockdown: 4, date: 2021-11-25 14:22:44
House ID: 12 -- OD_temp : 32.789160, ID_temp: 19.930767, target_temp: 20.000000, diff: -0.069233, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 13 -- OD_temp : 32.789160, ID_temp: 19.927840, target_temp: 20.000000, diff: -0.072160, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 14 -- OD_temp : 32.789160, ID_temp: 20.024001, target_temp: 20.000000, diff: 0.024001, HVAC on: False, HVAC lockdown: 24, date: 2021-11-25 14:22:44
House ID: 15 -- OD_temp : 32.789160, ID_temp: 20.009072, target_temp: 20.000000, diff: 0.009072, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 16 -- OD_temp : 32.789160, ID_temp: 19.964494, target_temp: 20.000000, diff: -0.035506, HVAC on: False, HVAC lockdown: 12, date: 2021-11-25 14:22:44
House ID: 17 -- OD_temp : 32.789160, ID_temp: 20.003761, target_temp: 20.000000, diff: 0.003761, HVAC on: False, HVAC lockdown: 20, date: 2021-11-25 14:22:44
House ID: 18 -- OD_temp : 32.789160, ID_temp: 20.074032, target_temp: 20.000000, diff: 0.074032, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 14:22:44
House ID: 19 -- OD_temp : 32.789160, ID_temp: 19.918798, target_temp: 20.000000, diff: -0.081202, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 20 -- OD_temp : 32.789160, ID_temp: 20.036462, target_temp: 20.000000, diff: 0.036462, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 21 -- OD_temp : 32.789160, ID_temp: 20.108743, target_temp: 20.000000, diff: 0.108743, HVAC on: False, HVAC lockdown: 32, date: 2021-11-25 14:22:44
House ID: 22 -- OD_temp : 32.789160, ID_temp: 20.070325, target_temp: 20.000000, diff: 0.070325, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 23 -- OD_temp : 32.789160, ID_temp: 20.008891, target_temp: 20.000000, diff: 0.008891, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 24 -- OD_temp : 32.789160, ID_temp: 19.937684, target_temp: 20.000000, diff: -0.062316, HVAC on: 0, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 25 -- OD_temp : 32.789160, ID_temp: 20.051885, target_temp: 20.000000, diff: 0.051885, HVAC on: False, HVAC lockdown: 36, date: 2021-11-25 14:22:44
House ID: 26 -- OD_temp : 32.789160, ID_temp: 20.008012, target_temp: 20.000000, diff: 0.008012, HVAC on: False, HVAC lockdown: 28, date: 2021-11-25 14:22:44
House ID: 27 -- OD_temp : 32.789160, ID_temp: 20.065032, target_temp: 20.000000, diff: 0.065032, HVAC on: False, HVAC lockdown: 28, date: 2021-11-25 14:22:44
House ID: 28 -- OD_temp : 32.789160, ID_temp: 19.924325, target_temp: 20.000000, diff: -0.075675, HVAC on: 1, HVAC lockdown: 0, date: 2021-11-25 14:22:44
House ID: 29 -- OD_temp : 32.789160, ID_temp: 20.033619, target_temp: 20.000000, diff: 0.033619, HVAC on: False, HVAC lockdown: 16, date: 2021-11-25 14:22:44
"""