# 未改,粘贴自v0,复制到终端或者命令行:bash cli_command.sh,记得先删掉没用的
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

训练
--nb_agents=20
测试
--nb_agents=50

# 测试 PPO-20231020-22:10:23-509974 actor64250
Time step: 999
Elapsed time for 100% of steps: 27 seconds.
RMSE Signal per agent: 3253 W
RMSE Temperature: 3.2239307694510866 C
RMS Max Error Temperature: 9.530794506207204 C

训练--非默认的模板
/home/ef/anaconda3/envs/dr/bin/python /home/ef/Documents/code/ubuntu/marl-demandresponse-original/main.py
/home/ef/anaconda3/envs/dr/lib/python3.9/site-packages/ray/tune/logger/tensorboardx.py:35: DeprecationWarning: `np.bool8` is a deprecated alias for `np.bool_`.  (Deprecated NumPy 1.24)
  VALID_NP_HPARAMS = (np.bool8, np.float32, np.float64, np.int32, np.int64)
/home/ef/anaconda3/envs/dr/lib/python3.9/site-packages/skimage/util/dtype.py:27: DeprecationWarning: `np.bool8` is a deprecated alias for `np.bool_`.  (Deprecated NumPy 1.24)
  np.bool8: (False, True),
Configuration elements changed by the CLI:
 -- General environment properties --
Setting nb_agents to 20
 -- Reward properties --
-- Outdoors environment --
Setting solar_gain_bool to False
-- HVAC properties --
-- Noise properties --
Setting house_noise_mode_test to big_start_temp
Setting hvac_noise_mode_test to no_noise
-- Signal --
Setting artificial_ratio to 1.0
-- Agent communication constraints --
-- PPO agent --
{0: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 20.546981215359985, 'house_mass_temp': 26.316133538353334, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 1: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 23.324019804301454, 'house_mass_temp': 23.202266066261892, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 2: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 27.200353217932292, 'house_mass_temp': 24.43595637155004, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 3: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 28.707450029196345, 'house_mass_temp': 20.71008452255917, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 4: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 22.93267552486048, 'house_mass_temp': 22.215718765110516, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 5: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 22.933159248652885, 'house_mass_temp': 21.83600319785465, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 6: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 26.75946858112622, 'house_mass_temp': 29.863295806472387, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 7: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 28.986017740643412, 'house_mass_temp': 24.450855931818438, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 8: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 29.12138643140073, 'house_mass_temp': 20.33949322480712, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 9: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 21.494598234333115, 'house_mass_temp': 28.66560869474068, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 10: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 20.69690908236691, 'house_mass_temp': 20.969389714893662, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 2.933159248652885, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 11: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 28.776247435433312, 'house_mass_temp': 26.618251429804424, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 6.759468581126221, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 12: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 29.179682679858125, 'house_mass_temp': 20.820787725993412, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 8.986017740643412, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 13: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 20.698240499594675, 'house_mass_temp': 21.662582692988373, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 9.12138643140073, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 14: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 26.84902593857469, 'house_mass_temp': 27.357550183583605, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 1.4945982343331146, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 15: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 23.540451451647343, 'house_mass_temp': 21.986220108158363, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 0.6969090823669113, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 16: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 20.56819313772207, 'house_mass_temp': 22.03573082011433, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 8.776247435433312, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 17: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 25.91936481552266, 'house_mass_temp': 23.20523077300788, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 9.179682679858125, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 18: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 21.0140246695185, 'house_mass_temp': 22.733775059329368, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 0.6982404995946752, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5586259011426904, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}, 19: {'OD_temp': 28.345351324247336, 'datetime': datetime.datetime(2021, 9, 21, 21, 54, 51), 'house_temp': 20.55862590114269, 'house_mass_temp': 21.923547564971845, 'hvac_turned_on': False, 'hvac_seconds_since_off': 40, 'hvac_lockout': False, 'house_target_temp': 20.0, 'house_deadband': 0, 'house_Ua': 218.0, 'house_Cm': 3450000.0, 'house_Ca': 908000.0, 'house_Hm': 2840.0, 'house_solar_gain': 0, 'hvac_COP': 2.5, 'hvac_cooling_capacity': 15000, 'hvac_latent_cooling_fraction': 0.35, 'hvac_lockout_duration': 40, 'message': [{'current_temp_diff_to_target': 6.849025938574691, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.5404514516473427, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5681931377220693, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 5.919364815522659, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 1.0140246695184985, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 0.5469812153599847, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 3.3240198043014537, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 7.200353217932292, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 8.707450029196345, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}, {'current_temp_diff_to_target': 2.9326755248604783, 'hvac_seconds_since_off': 40, 'hvac_curr_consumption': 0, 'hvac_max_consumption': 6000.0, 'hvac_lockout_duration': 40}], 'reg_signal': 119054.38383383461, 'cluster_hvac_power': 0}}
Number of states: 51
Actor(
  (fc): ModuleList(
    (0): Linear(in_features=51, out_features=100, bias=True)
    (1): Linear(in_features=100, out_features=100, bias=True)
    (2): Linear(in_features=100, out_features=2, bias=True)
  )
)
Critic(
  (fc): ModuleList(
    (0): Linear(in_features=51, out_features=100, bias=True)
    (1): Linear(in_features=100, out_features=100, bias=True)
    (2): Linear(in_features=100, out_features=1, bias=True)
  )
)
ppo_update_time: 10, max_grad_norm: 0.5, clip_param: 0.2, gamma: 0.99, batch_size: 256, lr_actor: 0.001, lr_critic: 0.003
House ID: 0 -- OD_temp : 27.645149, ID_temp: 21.141811, target_temp: 20.000000, diff: 1.141811, HVAC on: 0, HVAC lockdown: 48, date: 2021-12-15 01:16:48
House ID: 1 -- OD_temp : 27.645149, ID_temp: 21.325832, target_temp: 20.000000, diff: 1.325832, HVAC on: False, HVAC lockdown: 32, date: 2021-12-15 01:16:48
House ID: 2 -- OD_temp : 27.645149, ID_temp: 20.321162, target_temp: 20.000000, diff: 0.321162, HVAC on: False, HVAC lockdown: 24, date: 2021-12-15 01:16:48
House ID: 3 -- OD_temp : 27.645149, ID_temp: 21.347875, target_temp: 20.000000, diff: 1.347875, HVAC on: False, HVAC lockdown: 16, date: 2021-12-15 01:16:48
House ID: 4 -- OD_temp : 27.645149, ID_temp: 21.772732, target_temp: 20.000000, diff: 1.772732, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 5 -- OD_temp : 27.645149, ID_temp: 20.748285, target_temp: 20.000000, diff: 0.748285, HVAC on: False, HVAC lockdown: 36, date: 2021-12-15 01:16:48
House ID: 6 -- OD_temp : 27.645149, ID_temp: 20.434764, target_temp: 20.000000, diff: 0.434764, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 7 -- OD_temp : 27.645149, ID_temp: 20.452782, target_temp: 20.000000, diff: 0.452782, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 8 -- OD_temp : 27.645149, ID_temp: 20.574766, target_temp: 20.000000, diff: 0.574766, HVAC on: False, HVAC lockdown: 28, date: 2021-12-15 01:16:48
House ID: 9 -- OD_temp : 27.645149, ID_temp: 20.393084, target_temp: 20.000000, diff: 0.393084, HVAC on: False, HVAC lockdown: 28, date: 2021-12-15 01:16:48
House ID: 10 -- OD_temp : 27.645149, ID_temp: 21.062529, target_temp: 20.000000, diff: 1.062529, HVAC on: False, HVAC lockdown: 24, date: 2021-12-15 01:16:48
House ID: 11 -- OD_temp : 27.645149, ID_temp: 20.588599, target_temp: 20.000000, diff: 0.588599, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 12 -- OD_temp : 27.645149, ID_temp: 21.044636, target_temp: 20.000000, diff: 1.044636, HVAC on: 0, HVAC lockdown: 52, date: 2021-12-15 01:16:48
House ID: 13 -- OD_temp : 27.645149, ID_temp: 20.026919, target_temp: 20.000000, diff: 0.026919, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 14 -- OD_temp : 27.645149, ID_temp: 20.599758, target_temp: 20.000000, diff: 0.599758, HVAC on: False, HVAC lockdown: 12, date: 2021-12-15 01:16:48
House ID: 15 -- OD_temp : 27.645149, ID_temp: 21.026755, target_temp: 20.000000, diff: 1.026755, HVAC on: False, HVAC lockdown: 4, date: 2021-12-15 01:16:48
House ID: 16 -- OD_temp : 27.645149, ID_temp: 20.900129, target_temp: 20.000000, diff: 0.900129, HVAC on: 0, HVAC lockdown: 44, date: 2021-12-15 01:16:48
House ID: 17 -- OD_temp : 27.645149, ID_temp: 20.567739, target_temp: 20.000000, diff: 0.567739, HVAC on: False, HVAC lockdown: 32, date: 2021-12-15 01:16:48
House ID: 18 -- OD_temp : 27.645149, ID_temp: 21.036056, target_temp: 20.000000, diff: 1.036056, HVAC on: False, HVAC lockdown: 8, date: 2021-12-15 01:16:48
House ID: 19 -- OD_temp : 27.645149, ID_temp: 20.795032, target_temp: 20.000000, diff: 0.795032, HVAC on: False, HVAC lockdown: 36, date: 2021-12-15 01:16:48
New episode at time 16383
Updating agent at time 16383
The agent is updating....
Time step: 16383 ，train 0 times
Time step: 16383 ，train 1000 times
Time step: 16383 ，train 2000 times
Time step: 16383 ，train 3000 times
Time step: 16383 ，train 4000 times
Time step: 16383 ，train 5000 times
Time step: 16383 ，train 6000 times
Time step: 16383 ，train 7000 times
Time step: 16383 ，train 8000 times
Time step: 16383 ，train 9000 times
Time step: 16383 ，train 10000 times
Time step: 16383 ，train 11000 times
Time step: 16383 ，train 12000 times
Testing at time 16383
House ID: 0 -- OD_temp : 29.554508, ID_temp: 21.108213, target_temp: 20.000000, diff: 1.108213, HVAC on: False, HVAC lockdown: 20, date: 2021-05-30 19:52:15
House ID: 1 -- OD_temp : 29.554508, ID_temp: 20.822437, target_temp: 20.000000, diff: 0.822437, HVAC on: False, HVAC lockdown: 24, date: 2021-05-30 19:52:15
House ID: 2 -- OD_temp : 29.554508, ID_temp: 21.524237, target_temp: 20.000000, diff: 1.524237, HVAC on: False, HVAC lockdown: 16, date: 2021-05-30 19:52:15
House ID: 3 -- OD_temp : 29.554508, ID_temp: 21.545806, target_temp: 20.000000, diff: 1.545806, HVAC on: False, HVAC lockdown: 36, date: 2021-05-30 19:52:15
House ID: 4 -- OD_temp : 29.554508, ID_temp: 21.850830, target_temp: 20.000000, diff: 1.850830, HVAC on: False, HVAC lockdown: 36, date: 2021-05-30 19:52:15
House ID: 5 -- OD_temp : 29.554508, ID_temp: 21.428316, target_temp: 20.000000, diff: 1.428316, HVAC on: False, HVAC lockdown: 32, date: 2021-05-30 19:52:15
House ID: 6 -- OD_temp : 29.554508, ID_temp: 20.934371, target_temp: 20.000000, diff: 0.934371, HVAC on: False, HVAC lockdown: 32, date: 2021-05-30 19:52:15
House ID: 7 -- OD_temp : 29.554508, ID_temp: 21.446629, target_temp: 20.000000, diff: 1.446629, HVAC on: False, HVAC lockdown: 4, date: 2021-05-30 19:52:15
House ID: 8 -- OD_temp : 29.554508, ID_temp: 21.287829, target_temp: 20.000000, diff: 1.287829, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 9 -- OD_temp : 29.554508, ID_temp: 21.134120, target_temp: 20.000000, diff: 1.134120, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 10 -- OD_temp : 29.554508, ID_temp: 21.475547, target_temp: 20.000000, diff: 1.475547, HVAC on: False, HVAC lockdown: 32, date: 2021-05-30 19:52:15
House ID: 11 -- OD_temp : 29.554508, ID_temp: 20.961263, target_temp: 20.000000, diff: 0.961263, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 12 -- OD_temp : 29.554508, ID_temp: 21.094185, target_temp: 20.000000, diff: 1.094185, HVAC on: False, HVAC lockdown: 36, date: 2021-05-30 19:52:15
House ID: 13 -- OD_temp : 29.554508, ID_temp: 21.655339, target_temp: 20.000000, diff: 1.655339, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 14 -- OD_temp : 29.554508, ID_temp: 22.024879, target_temp: 20.000000, diff: 2.024879, HVAC on: False, HVAC lockdown: 16, date: 2021-05-30 19:52:15
House ID: 15 -- OD_temp : 29.554508, ID_temp: 21.833384, target_temp: 20.000000, diff: 1.833384, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 16 -- OD_temp : 29.554508, ID_temp: 21.131060, target_temp: 20.000000, diff: 1.131060, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-30 19:52:15
House ID: 17 -- OD_temp : 29.554508, ID_temp: 21.140472, target_temp: 20.000000, diff: 1.140472, HVAC on: False, HVAC lockdown: 16, date: 2021-05-30 19:52:15
House ID: 18 -- OD_temp : 29.554508, ID_temp: 21.738963, target_temp: 20.000000, diff: 1.738963, HVAC on: False, HVAC lockdown: 28, date: 2021-05-30 19:52:15
House ID: 19 -- OD_temp : 29.554508, ID_temp: 21.048883, target_temp: 20.000000, diff: 1.048883, HVAC on: False, HVAC lockdown: 24, date: 2021-05-30 19:52:15
House ID: 0 -- OD_temp : 31.850495, ID_temp: 19.248963, target_temp: 20.000000, diff: -0.751037, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 1 -- OD_temp : 31.850495, ID_temp: 19.266500, target_temp: 20.000000, diff: -0.733500, HVAC on: False, HVAC lockdown: 8, date: 2021-05-31 06:58:55
House ID: 2 -- OD_temp : 31.850495, ID_temp: 19.540416, target_temp: 20.000000, diff: -0.459584, HVAC on: False, HVAC lockdown: 24, date: 2021-05-31 06:58:55
House ID: 3 -- OD_temp : 31.850495, ID_temp: 19.129541, target_temp: 20.000000, diff: -0.870459, HVAC on: False, HVAC lockdown: 8, date: 2021-05-31 06:58:55
House ID: 4 -- OD_temp : 31.850495, ID_temp: 19.810986, target_temp: 20.000000, diff: -0.189014, HVAC on: False, HVAC lockdown: 16, date: 2021-05-31 06:58:55
House ID: 5 -- OD_temp : 31.850495, ID_temp: 19.083135, target_temp: 20.000000, diff: -0.916865, HVAC on: False, HVAC lockdown: 20, date: 2021-05-31 06:58:55
House ID: 6 -- OD_temp : 31.850495, ID_temp: 19.448941, target_temp: 20.000000, diff: -0.551059, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 7 -- OD_temp : 31.850495, ID_temp: 19.049044, target_temp: 20.000000, diff: -0.950956, HVAC on: False, HVAC lockdown: 24, date: 2021-05-31 06:58:55
House ID: 8 -- OD_temp : 31.850495, ID_temp: 19.420710, target_temp: 20.000000, diff: -0.579290, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-31 06:58:55
House ID: 9 -- OD_temp : 31.850495, ID_temp: 19.417036, target_temp: 20.000000, diff: -0.582964, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 10 -- OD_temp : 31.850495, ID_temp: 19.245816, target_temp: 20.000000, diff: -0.754184, HVAC on: False, HVAC lockdown: 4, date: 2021-05-31 06:58:55
House ID: 11 -- OD_temp : 31.850495, ID_temp: 19.282237, target_temp: 20.000000, diff: -0.717763, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 12 -- OD_temp : 31.850495, ID_temp: 19.622791, target_temp: 20.000000, diff: -0.377209, HVAC on: False, HVAC lockdown: 12, date: 2021-05-31 06:58:55
House ID: 13 -- OD_temp : 31.850495, ID_temp: 19.758766, target_temp: 20.000000, diff: -0.241234, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 14 -- OD_temp : 31.850495, ID_temp: 19.096694, target_temp: 20.000000, diff: -0.903306, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 15 -- OD_temp : 31.850495, ID_temp: 19.477454, target_temp: 20.000000, diff: -0.522546, HVAC on: False, HVAC lockdown: 20, date: 2021-05-31 06:58:55
House ID: 16 -- OD_temp : 31.850495, ID_temp: 19.291864, target_temp: 20.000000, diff: -0.708136, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 17 -- OD_temp : 31.850495, ID_temp: 19.736290, target_temp: 20.000000, diff: -0.263710, HVAC on: False, HVAC lockdown: 20, date: 2021-05-31 06:58:55
House ID: 18 -- OD_temp : 31.850495, ID_temp: 19.680958, target_temp: 20.000000, diff: -0.319042, HVAC on: False, HVAC lockdown: 32, date: 2021-05-31 06:58:55
House ID: 19 -- OD_temp : 31.850495, ID_temp: 19.509997, target_temp: 20.000000, diff: -0.490003, HVAC on: False, HVAC lockdown: 32, date: 2021-05-31 06:58:55
Training step - 16383
House ID: 0 -- OD_temp : 32.451078, ID_temp: 20.206561, target_temp: 20.000000, diff: 0.206561, HVAC on: False, HVAC lockdown: 4, date: 2021-08-24 08:38:56
House ID: 1 -- OD_temp : 32.451078, ID_temp: 21.547336, target_temp: 20.000000, diff: 1.547336, HVAC on: False, HVAC lockdown: 20, date: 2021-08-24 08:38:56
House ID: 2 -- OD_temp : 32.451078, ID_temp: 20.474298, target_temp: 20.000000, diff: 0.474298, HVAC on: False, HVAC lockdown: 16, date: 2021-08-24 08:38:56
House ID: 3 -- OD_temp : 32.451078, ID_temp: 19.984763, target_temp: 20.000000, diff: -0.015237, HVAC on: False, HVAC lockdown: 20, date: 2021-08-24 08:38:56
House ID: 4 -- OD_temp : 32.451078, ID_temp: 20.343277, target_temp: 20.000000, diff: 0.343277, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 5 -- OD_temp : 32.451078, ID_temp: 20.569880, target_temp: 20.000000, diff: 0.569880, HVAC on: False, HVAC lockdown: 4, date: 2021-08-24 08:38:56
House ID: 6 -- OD_temp : 32.451078, ID_temp: 20.706574, target_temp: 20.000000, diff: 0.706574, HVAC on: False, HVAC lockdown: 32, date: 2021-08-24 08:38:56
House ID: 7 -- OD_temp : 32.451078, ID_temp: 20.087877, target_temp: 20.000000, diff: 0.087877, HVAC on: False, HVAC lockdown: 4, date: 2021-08-24 08:38:56
House ID: 8 -- OD_temp : 32.451078, ID_temp: 20.949333, target_temp: 20.000000, diff: 0.949333, HVAC on: False, HVAC lockdown: 28, date: 2021-08-24 08:38:56
House ID: 9 -- OD_temp : 32.451078, ID_temp: 20.654757, target_temp: 20.000000, diff: 0.654757, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 10 -- OD_temp : 32.451078, ID_temp: 21.060745, target_temp: 20.000000, diff: 1.060745, HVAC on: False, HVAC lockdown: 20, date: 2021-08-24 08:38:56
House ID: 11 -- OD_temp : 32.451078, ID_temp: 20.354502, target_temp: 20.000000, diff: 0.354502, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 12 -- OD_temp : 32.451078, ID_temp: 20.726503, target_temp: 20.000000, diff: 0.726503, HVAC on: False, HVAC lockdown: 12, date: 2021-08-24 08:38:56
House ID: 13 -- OD_temp : 32.451078, ID_temp: 20.281100, target_temp: 20.000000, diff: 0.281100, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 14 -- OD_temp : 32.451078, ID_temp: 20.508949, target_temp: 20.000000, diff: 0.508949, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 15 -- OD_temp : 32.451078, ID_temp: 20.173504, target_temp: 20.000000, diff: 0.173504, HVAC on: False, HVAC lockdown: 16, date: 2021-08-24 08:38:56
House ID: 16 -- OD_temp : 32.451078, ID_temp: 19.896550, target_temp: 20.000000, diff: -0.103450, HVAC on: False, HVAC lockdown: 32, date: 2021-08-24 08:38:56
House ID: 17 -- OD_temp : 32.451078, ID_temp: 20.068923, target_temp: 20.000000, diff: 0.068923, HVAC on: False, HVAC lockdown: 4, date: 2021-08-24 08:38:56
House ID: 18 -- OD_temp : 32.451078, ID_temp: 21.020091, target_temp: 20.000000, diff: 1.020091, HVAC on: False, HVAC lockdown: 16, date: 2021-08-24 08:38:56
House ID: 19 -- OD_temp : 32.451078, ID_temp: 20.248938, target_temp: 20.000000, diff: 0.248938, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
New episode at time 32767
Updating agent at time 32767
The agent is updating....
Time step: 32767 ，train 13000 times
Time step: 32767 ，train 14000 times
Time step: 32767 ，train 15000 times
Time step: 32767 ，train 16000 times
Time step: 32767 ，train 17000 times
Time step: 32767 ，train 18000 times
Time step: 32767 ，train 19000 times
Time step: 32767 ，train 20000 times
Time step: 32767 ，train 21000 times
Time step: 32767 ，train 22000 times
Time step: 32767 ，train 23000 times
Time step: 32767 ，train 24000 times
Time step: 32767 ，train 25000 times
Testing at time 32767
House ID: 0 -- OD_temp : 33.930163, ID_temp: 20.870563, target_temp: 20.000000, diff: 0.870563, HVAC on: False, HVAC lockdown: 8, date: 2021-03-15 10:54:23
House ID: 1 -- OD_temp : 33.930163, ID_temp: 20.232487, target_temp: 20.000000, diff: 0.232487, HVAC on: False, HVAC lockdown: 8, date: 2021-03-15 10:54:23
House ID: 2 -- OD_temp : 33.930163, ID_temp: 20.337081, target_temp: 20.000000, diff: 0.337081, HVAC on: False, HVAC lockdown: 36, date: 2021-03-15 10:54:23
House ID: 3 -- OD_temp : 33.930163, ID_temp: 20.710845, target_temp: 20.000000, diff: 0.710845, HVAC on: False, HVAC lockdown: 16, date: 2021-03-15 10:54:23
House ID: 4 -- OD_temp : 33.930163, ID_temp: 21.076082, target_temp: 20.000000, diff: 1.076082, HVAC on: 0, HVAC lockdown: 44, date: 2021-03-15 10:54:23
House ID: 5 -- OD_temp : 33.930163, ID_temp: 20.853611, target_temp: 20.000000, diff: 0.853611, HVAC on: False, HVAC lockdown: 20, date: 2021-03-15 10:54:23
House ID: 6 -- OD_temp : 33.930163, ID_temp: 20.937000, target_temp: 20.000000, diff: 0.937000, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 7 -- OD_temp : 33.930163, ID_temp: 20.783302, target_temp: 20.000000, diff: 0.783302, HVAC on: False, HVAC lockdown: 4, date: 2021-03-15 10:54:23
House ID: 8 -- OD_temp : 33.930163, ID_temp: 20.420306, target_temp: 20.000000, diff: 0.420306, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 10:54:23
House ID: 9 -- OD_temp : 33.930163, ID_temp: 20.695859, target_temp: 20.000000, diff: 0.695859, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 10:54:23
House ID: 10 -- OD_temp : 33.930163, ID_temp: 20.434374, target_temp: 20.000000, diff: 0.434374, HVAC on: False, HVAC lockdown: 16, date: 2021-03-15 10:54:23
House ID: 11 -- OD_temp : 33.930163, ID_temp: 20.833379, target_temp: 20.000000, diff: 0.833379, HVAC on: False, HVAC lockdown: 12, date: 2021-03-15 10:54:23
House ID: 12 -- OD_temp : 33.930163, ID_temp: 20.714348, target_temp: 20.000000, diff: 0.714348, HVAC on: False, HVAC lockdown: 12, date: 2021-03-15 10:54:23
House ID: 13 -- OD_temp : 33.930163, ID_temp: 20.440211, target_temp: 20.000000, diff: 0.440211, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 10:54:23
House ID: 14 -- OD_temp : 33.930163, ID_temp: 20.747092, target_temp: 20.000000, diff: 0.747092, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 15 -- OD_temp : 33.930163, ID_temp: 20.088514, target_temp: 20.000000, diff: 0.088514, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 16 -- OD_temp : 33.930163, ID_temp: 20.875337, target_temp: 20.000000, diff: 0.875337, HVAC on: False, HVAC lockdown: 24, date: 2021-03-15 10:54:23
House ID: 17 -- OD_temp : 33.930163, ID_temp: 20.523401, target_temp: 20.000000, diff: 0.523401, HVAC on: False, HVAC lockdown: 32, date: 2021-03-15 10:54:23
House ID: 18 -- OD_temp : 33.930163, ID_temp: 20.794490, target_temp: 20.000000, diff: 0.794490, HVAC on: False, HVAC lockdown: 24, date: 2021-03-15 10:54:23
House ID: 19 -- OD_temp : 33.930163, ID_temp: 20.982847, target_temp: 20.000000, diff: 0.982847, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 0 -- OD_temp : 28.749972, ID_temp: 20.015698, target_temp: 20.000000, diff: 0.015698, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 1 -- OD_temp : 28.749972, ID_temp: 19.708254, target_temp: 20.000000, diff: -0.291746, HVAC on: 0, HVAC lockdown: 44, date: 2021-03-15 22:01:03
House ID: 2 -- OD_temp : 28.749972, ID_temp: 19.941441, target_temp: 20.000000, diff: -0.058559, HVAC on: False, HVAC lockdown: 4, date: 2021-03-15 22:01:03
House ID: 3 -- OD_temp : 28.749972, ID_temp: 19.707559, target_temp: 20.000000, diff: -0.292441, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 22:01:03
House ID: 4 -- OD_temp : 28.749972, ID_temp: 19.802841, target_temp: 20.000000, diff: -0.197159, HVAC on: False, HVAC lockdown: 20, date: 2021-03-15 22:01:03
House ID: 5 -- OD_temp : 28.749972, ID_temp: 19.966534, target_temp: 20.000000, diff: -0.033466, HVAC on: False, HVAC lockdown: 24, date: 2021-03-15 22:01:03
House ID: 6 -- OD_temp : 28.749972, ID_temp: 19.451391, target_temp: 20.000000, diff: -0.548609, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 7 -- OD_temp : 28.749972, ID_temp: 19.770868, target_temp: 20.000000, diff: -0.229132, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 8 -- OD_temp : 28.749972, ID_temp: 19.601302, target_temp: 20.000000, diff: -0.398698, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 9 -- OD_temp : 28.749972, ID_temp: 19.536830, target_temp: 20.000000, diff: -0.463170, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 10 -- OD_temp : 28.749972, ID_temp: 19.893330, target_temp: 20.000000, diff: -0.106670, HVAC on: False, HVAC lockdown: 32, date: 2021-03-15 22:01:03
House ID: 11 -- OD_temp : 28.749972, ID_temp: 19.841475, target_temp: 20.000000, diff: -0.158525, HVAC on: False, HVAC lockdown: 12, date: 2021-03-15 22:01:03
House ID: 12 -- OD_temp : 28.749972, ID_temp: 19.835101, target_temp: 20.000000, diff: -0.164899, HVAC on: False, HVAC lockdown: 4, date: 2021-03-15 22:01:03
House ID: 13 -- OD_temp : 28.749972, ID_temp: 19.974948, target_temp: 20.000000, diff: -0.025052, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 14 -- OD_temp : 28.749972, ID_temp: 19.890358, target_temp: 20.000000, diff: -0.109642, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 15 -- OD_temp : 28.749972, ID_temp: 19.837240, target_temp: 20.000000, diff: -0.162760, HVAC on: False, HVAC lockdown: 12, date: 2021-03-15 22:01:03
House ID: 16 -- OD_temp : 28.749972, ID_temp: 19.956984, target_temp: 20.000000, diff: -0.043016, HVAC on: 0, HVAC lockdown: 44, date: 2021-03-15 22:01:03
House ID: 17 -- OD_temp : 28.749972, ID_temp: 19.775240, target_temp: 20.000000, diff: -0.224760, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 22:01:03
House ID: 18 -- OD_temp : 28.749972, ID_temp: 19.879031, target_temp: 20.000000, diff: -0.120969, HVAC on: False, HVAC lockdown: 12, date: 2021-03-15 22:01:03
House ID: 19 -- OD_temp : 28.749972, ID_temp: 19.739114, target_temp: 20.000000, diff: -0.260886, HVAC on: False, HVAC lockdown: 12, date: 2021-03-15 22:01:03
Training step - 32767
House ID: 0 -- OD_temp : 31.227584, ID_temp: 20.096528, target_temp: 20.000000, diff: 0.096528, HVAC on: 0, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 1 -- OD_temp : 31.227584, ID_temp: 19.940845, target_temp: 20.000000, diff: -0.059155, HVAC on: False, HVAC lockdown: 12, date: 2021-07-06 05:07:01
House ID: 2 -- OD_temp : 31.227584, ID_temp: 19.830749, target_temp: 20.000000, diff: -0.169251, HVAC on: 0, HVAC lockdown: 40, date: 2021-07-06 05:07:01
House ID: 3 -- OD_temp : 31.227584, ID_temp: 19.560669, target_temp: 20.000000, diff: -0.439331, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 4 -- OD_temp : 31.227584, ID_temp: 20.109441, target_temp: 20.000000, diff: 0.109441, HVAC on: False, HVAC lockdown: 8, date: 2021-07-06 05:07:01
House ID: 5 -- OD_temp : 31.227584, ID_temp: 19.825600, target_temp: 20.000000, diff: -0.174400, HVAC on: False, HVAC lockdown: 8, date: 2021-07-06 05:07:01
House ID: 6 -- OD_temp : 31.227584, ID_temp: 20.007101, target_temp: 20.000000, diff: 0.007101, HVAC on: False, HVAC lockdown: 24, date: 2021-07-06 05:07:01
House ID: 7 -- OD_temp : 31.227584, ID_temp: 19.952773, target_temp: 20.000000, diff: -0.047227, HVAC on: False, HVAC lockdown: 32, date: 2021-07-06 05:07:01
House ID: 8 -- OD_temp : 31.227584, ID_temp: 19.766511, target_temp: 20.000000, diff: -0.233489, HVAC on: 0, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 9 -- OD_temp : 31.227584, ID_temp: 20.004971, target_temp: 20.000000, diff: 0.004971, HVAC on: False, HVAC lockdown: 36, date: 2021-07-06 05:07:01
House ID: 10 -- OD_temp : 31.227584, ID_temp: 20.051558, target_temp: 20.000000, diff: 0.051558, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 11 -- OD_temp : 31.227584, ID_temp: 19.774389, target_temp: 20.000000, diff: -0.225611, HVAC on: False, HVAC lockdown: 20, date: 2021-07-06 05:07:01
House ID: 12 -- OD_temp : 31.227584, ID_temp: 19.890176, target_temp: 20.000000, diff: -0.109824, HVAC on: False, HVAC lockdown: 8, date: 2021-07-06 05:07:01
House ID: 13 -- OD_temp : 31.227584, ID_temp: 19.900587, target_temp: 20.000000, diff: -0.099413, HVAC on: False, HVAC lockdown: 32, date: 2021-07-06 05:07:01
House ID: 14 -- OD_temp : 31.227584, ID_temp: 20.132989, target_temp: 20.000000, diff: 0.132989, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 15 -- OD_temp : 31.227584, ID_temp: 19.839860, target_temp: 20.000000, diff: -0.160140, HVAC on: False, HVAC lockdown: 4, date: 2021-07-06 05:07:01
House ID: 16 -- OD_temp : 31.227584, ID_temp: 20.375858, target_temp: 20.000000, diff: 0.375858, HVAC on: False, HVAC lockdown: 4, date: 2021-07-06 05:07:01
House ID: 17 -- OD_temp : 31.227584, ID_temp: 19.832419, target_temp: 20.000000, diff: -0.167581, HVAC on: False, HVAC lockdown: 36, date: 2021-07-06 05:07:01
House ID: 18 -- OD_temp : 31.227584, ID_temp: 20.192672, target_temp: 20.000000, diff: 0.192672, HVAC on: 0, HVAC lockdown: 52, date: 2021-07-06 05:07:01
House ID: 19 -- OD_temp : 31.227584, ID_temp: 20.096418, target_temp: 20.000000, diff: 0.096418, HVAC on: 0, HVAC lockdown: 40, date: 2021-07-06 05:07:01
New episode at time 49151
Updating agent at time 49151
The agent is updating....
Time step: 49151 ，train 26000 times
Time step: 49151 ，train 27000 times
Time step: 49151 ，train 28000 times
Time step: 49151 ，train 29000 times
Time step: 49151 ，train 30000 times
Time step: 49151 ，train 31000 times
Time step: 49151 ，train 32000 times
Time step: 49151 ，train 33000 times
Time step: 49151 ，train 34000 times
Time step: 49151 ，train 35000 times
Time step: 49151 ，train 36000 times
Time step: 49151 ，train 37000 times
Time step: 49151 ，train 38000 times
Testing at time 49151
House ID: 0 -- OD_temp : 29.065040, ID_temp: 19.843734, target_temp: 20.000000, diff: -0.156266, HVAC on: False, HVAC lockdown: 4, date: 2021-02-28 21:13:07
House ID: 1 -- OD_temp : 29.065040, ID_temp: 19.922385, target_temp: 20.000000, diff: -0.077615, HVAC on: False, HVAC lockdown: 8, date: 2021-02-28 21:13:07
House ID: 2 -- OD_temp : 29.065040, ID_temp: 19.997147, target_temp: 20.000000, diff: -0.002853, HVAC on: False, HVAC lockdown: 4, date: 2021-02-28 21:13:07
House ID: 3 -- OD_temp : 29.065040, ID_temp: 19.975841, target_temp: 20.000000, diff: -0.024159, HVAC on: 0, HVAC lockdown: 40, date: 2021-02-28 21:13:07
House ID: 4 -- OD_temp : 29.065040, ID_temp: 20.135061, target_temp: 20.000000, diff: 0.135061, HVAC on: False, HVAC lockdown: 8, date: 2021-02-28 21:13:07
House ID: 5 -- OD_temp : 29.065040, ID_temp: 19.854436, target_temp: 20.000000, diff: -0.145564, HVAC on: False, HVAC lockdown: 4, date: 2021-02-28 21:13:07
House ID: 6 -- OD_temp : 29.065040, ID_temp: 19.907587, target_temp: 20.000000, diff: -0.092413, HVAC on: False, HVAC lockdown: 4, date: 2021-02-28 21:13:07
House ID: 7 -- OD_temp : 29.065040, ID_temp: 19.745468, target_temp: 20.000000, diff: -0.254532, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 8 -- OD_temp : 29.065040, ID_temp: 19.950468, target_temp: 20.000000, diff: -0.049532, HVAC on: False, HVAC lockdown: 32, date: 2021-02-28 21:13:07
House ID: 9 -- OD_temp : 29.065040, ID_temp: 19.917084, target_temp: 20.000000, diff: -0.082916, HVAC on: False, HVAC lockdown: 36, date: 2021-02-28 21:13:07
House ID: 10 -- OD_temp : 29.065040, ID_temp: 19.946565, target_temp: 20.000000, diff: -0.053435, HVAC on: False, HVAC lockdown: 28, date: 2021-02-28 21:13:07
House ID: 11 -- OD_temp : 29.065040, ID_temp: 20.058018, target_temp: 20.000000, diff: 0.058018, HVAC on: False, HVAC lockdown: 16, date: 2021-02-28 21:13:07
House ID: 12 -- OD_temp : 29.065040, ID_temp: 19.895864, target_temp: 20.000000, diff: -0.104136, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 13 -- OD_temp : 29.065040, ID_temp: 20.129083, target_temp: 20.000000, diff: 0.129083, HVAC on: False, HVAC lockdown: 16, date: 2021-02-28 21:13:07
House ID: 14 -- OD_temp : 29.065040, ID_temp: 19.927582, target_temp: 20.000000, diff: -0.072418, HVAC on: False, HVAC lockdown: 20, date: 2021-02-28 21:13:07
House ID: 15 -- OD_temp : 29.065040, ID_temp: 20.055717, target_temp: 20.000000, diff: 0.055717, HVAC on: False, HVAC lockdown: 36, date: 2021-02-28 21:13:07
House ID: 16 -- OD_temp : 29.065040, ID_temp: 19.942352, target_temp: 20.000000, diff: -0.057648, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 17 -- OD_temp : 29.065040, ID_temp: 19.909663, target_temp: 20.000000, diff: -0.090337, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 18 -- OD_temp : 29.065040, ID_temp: 20.047303, target_temp: 20.000000, diff: 0.047303, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 19 -- OD_temp : 29.065040, ID_temp: 20.016773, target_temp: 20.000000, diff: 0.016773, HVAC on: False, HVAC lockdown: 16, date: 2021-02-28 21:13:07
House ID: 0 -- OD_temp : 32.855303, ID_temp: 20.198500, target_temp: 20.000000, diff: 0.198500, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 1 -- OD_temp : 32.855303, ID_temp: 20.265287, target_temp: 20.000000, diff: 0.265287, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 2 -- OD_temp : 32.855303, ID_temp: 19.995753, target_temp: 20.000000, diff: -0.004247, HVAC on: False, HVAC lockdown: 28, date: 2021-03-01 08:19:47
House ID: 3 -- OD_temp : 32.855303, ID_temp: 20.254585, target_temp: 20.000000, diff: 0.254585, HVAC on: False, HVAC lockdown: 32, date: 2021-03-01 08:19:47
House ID: 4 -- OD_temp : 32.855303, ID_temp: 20.422519, target_temp: 20.000000, diff: 0.422519, HVAC on: False, HVAC lockdown: 24, date: 2021-03-01 08:19:47
House ID: 5 -- OD_temp : 32.855303, ID_temp: 20.231619, target_temp: 20.000000, diff: 0.231619, HVAC on: False, HVAC lockdown: 16, date: 2021-03-01 08:19:47
House ID: 6 -- OD_temp : 32.855303, ID_temp: 20.389526, target_temp: 20.000000, diff: 0.389526, HVAC on: 0, HVAC lockdown: 40, date: 2021-03-01 08:19:47
House ID: 7 -- OD_temp : 32.855303, ID_temp: 20.331988, target_temp: 20.000000, diff: 0.331988, HVAC on: False, HVAC lockdown: 16, date: 2021-03-01 08:19:47
House ID: 8 -- OD_temp : 32.855303, ID_temp: 20.383330, target_temp: 20.000000, diff: 0.383330, HVAC on: False, HVAC lockdown: 32, date: 2021-03-01 08:19:47
House ID: 9 -- OD_temp : 32.855303, ID_temp: 20.231407, target_temp: 20.000000, diff: 0.231407, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 10 -- OD_temp : 32.855303, ID_temp: 20.513029, target_temp: 20.000000, diff: 0.513029, HVAC on: False, HVAC lockdown: 32, date: 2021-03-01 08:19:47
House ID: 11 -- OD_temp : 32.855303, ID_temp: 20.365850, target_temp: 20.000000, diff: 0.365850, HVAC on: False, HVAC lockdown: 36, date: 2021-03-01 08:19:47
House ID: 12 -- OD_temp : 32.855303, ID_temp: 20.249640, target_temp: 20.000000, diff: 0.249640, HVAC on: False, HVAC lockdown: 32, date: 2021-03-01 08:19:47
House ID: 13 -- OD_temp : 32.855303, ID_temp: 20.194585, target_temp: 20.000000, diff: 0.194585, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 14 -- OD_temp : 32.855303, ID_temp: 20.367836, target_temp: 20.000000, diff: 0.367836, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 15 -- OD_temp : 32.855303, ID_temp: 20.044992, target_temp: 20.000000, diff: 0.044992, HVAC on: False, HVAC lockdown: 20, date: 2021-03-01 08:19:47
House ID: 16 -- OD_temp : 32.855303, ID_temp: 20.307416, target_temp: 20.000000, diff: 0.307416, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 17 -- OD_temp : 32.855303, ID_temp: 20.412414, target_temp: 20.000000, diff: 0.412414, HVAC on: False, HVAC lockdown: 4, date: 2021-03-01 08:19:47
House ID: 18 -- OD_temp : 32.855303, ID_temp: 20.273342, target_temp: 20.000000, diff: 0.273342, HVAC on: False, HVAC lockdown: 20, date: 2021-03-01 08:19:47
House ID: 19 -- OD_temp : 32.855303, ID_temp: 20.296318, target_temp: 20.000000, diff: 0.296318, HVAC on: False, HVAC lockdown: 24, date: 2021-03-01 08:19:47
Training step - 49151
House ID: 0 -- OD_temp : 34.036076, ID_temp: 20.210360, target_temp: 20.000000, diff: 0.210360, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 13:58:14
House ID: 1 -- OD_temp : 34.036076, ID_temp: 20.516200, target_temp: 20.000000, diff: 0.516200, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 13:58:14
House ID: 2 -- OD_temp : 34.036076, ID_temp: 20.377864, target_temp: 20.000000, diff: 0.377864, HVAC on: False, HVAC lockdown: 12, date: 2021-09-05 13:58:14
House ID: 3 -- OD_temp : 34.036076, ID_temp: 20.461763, target_temp: 20.000000, diff: 0.461763, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 13:58:14
House ID: 4 -- OD_temp : 34.036076, ID_temp: 20.046608, target_temp: 20.000000, diff: 0.046608, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 13:58:14
House ID: 5 -- OD_temp : 34.036076, ID_temp: 20.246932, target_temp: 20.000000, diff: 0.246932, HVAC on: False, HVAC lockdown: 20, date: 2021-09-05 13:58:14
House ID: 6 -- OD_temp : 34.036076, ID_temp: 20.255510, target_temp: 20.000000, diff: 0.255510, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 13:58:14
House ID: 7 -- OD_temp : 34.036076, ID_temp: 20.398674, target_temp: 20.000000, diff: 0.398674, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 13:58:14
House ID: 8 -- OD_temp : 34.036076, ID_temp: 20.391396, target_temp: 20.000000, diff: 0.391396, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 13:58:14
House ID: 9 -- OD_temp : 34.036076, ID_temp: 20.457036, target_temp: 20.000000, diff: 0.457036, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 13:58:14
House ID: 10 -- OD_temp : 34.036076, ID_temp: 20.633490, target_temp: 20.000000, diff: 0.633490, HVAC on: 0, HVAC lockdown: 40, date: 2021-09-05 13:58:14
House ID: 11 -- OD_temp : 34.036076, ID_temp: 20.039690, target_temp: 20.000000, diff: 0.039690, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 13:58:14
House ID: 12 -- OD_temp : 34.036076, ID_temp: 20.146734, target_temp: 20.000000, diff: 0.146734, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 13:58:14
House ID: 13 -- OD_temp : 34.036076, ID_temp: 20.336779, target_temp: 20.000000, diff: 0.336779, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 13:58:14
House ID: 14 -- OD_temp : 34.036076, ID_temp: 20.229268, target_temp: 20.000000, diff: 0.229268, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 13:58:14
House ID: 15 -- OD_temp : 34.036076, ID_temp: 20.521623, target_temp: 20.000000, diff: 0.521623, HVAC on: False, HVAC lockdown: 20, date: 2021-09-05 13:58:14
House ID: 16 -- OD_temp : 34.036076, ID_temp: 20.409169, target_temp: 20.000000, diff: 0.409169, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 13:58:14
House ID: 17 -- OD_temp : 34.036076, ID_temp: 20.587099, target_temp: 20.000000, diff: 0.587099, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 13:58:14
House ID: 18 -- OD_temp : 34.036076, ID_temp: 20.262285, target_temp: 20.000000, diff: 0.262285, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 13:58:14
House ID: 19 -- OD_temp : 34.036076, ID_temp: 20.433026, target_temp: 20.000000, diff: 0.433026, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 13:58:14
New episode at time 65535
Updating agent at time 65535
The agent is updating....
Time step: 65535 ，train 39000 times
Time step: 65535 ，train 40000 times
Time step: 65535 ，train 41000 times
Time step: 65535 ，train 42000 times
Time step: 65535 ，train 43000 times
Time step: 65535 ，train 44000 times
Time step: 65535 ，train 45000 times
Time step: 65535 ，train 46000 times
Time step: 65535 ，train 47000 times
Time step: 65535 ，train 48000 times
Time step: 65535 ，train 49000 times
Time step: 65535 ，train 50000 times
Time step: 65535 ，train 51000 times
Testing at time 65535
House ID: 0 -- OD_temp : 28.854603, ID_temp: 20.063611, target_temp: 20.000000, diff: 0.063611, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-02 03:55:27
House ID: 1 -- OD_temp : 28.854603, ID_temp: 19.979679, target_temp: 20.000000, diff: -0.020321, HVAC on: False, HVAC lockdown: 4, date: 2021-05-02 03:55:27
House ID: 2 -- OD_temp : 28.854603, ID_temp: 20.040148, target_temp: 20.000000, diff: 0.040148, HVAC on: False, HVAC lockdown: 4, date: 2021-05-02 03:55:27
House ID: 3 -- OD_temp : 28.854603, ID_temp: 19.736437, target_temp: 20.000000, diff: -0.263563, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 4 -- OD_temp : 28.854603, ID_temp: 20.015732, target_temp: 20.000000, diff: 0.015732, HVAC on: False, HVAC lockdown: 4, date: 2021-05-02 03:55:27
House ID: 5 -- OD_temp : 28.854603, ID_temp: 19.712554, target_temp: 20.000000, diff: -0.287446, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 03:55:27
House ID: 6 -- OD_temp : 28.854603, ID_temp: 19.983606, target_temp: 20.000000, diff: -0.016394, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 03:55:27
House ID: 7 -- OD_temp : 28.854603, ID_temp: 19.864744, target_temp: 20.000000, diff: -0.135256, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 8 -- OD_temp : 28.854603, ID_temp: 19.986522, target_temp: 20.000000, diff: -0.013478, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 03:55:27
House ID: 9 -- OD_temp : 28.854603, ID_temp: 19.990846, target_temp: 20.000000, diff: -0.009154, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 10 -- OD_temp : 28.854603, ID_temp: 19.896307, target_temp: 20.000000, diff: -0.103693, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 03:55:27
House ID: 11 -- OD_temp : 28.854603, ID_temp: 20.106106, target_temp: 20.000000, diff: 0.106106, HVAC on: False, HVAC lockdown: 32, date: 2021-05-02 03:55:27
House ID: 12 -- OD_temp : 28.854603, ID_temp: 20.057679, target_temp: 20.000000, diff: 0.057679, HVAC on: False, HVAC lockdown: 28, date: 2021-05-02 03:55:27
House ID: 13 -- OD_temp : 28.854603, ID_temp: 19.976040, target_temp: 20.000000, diff: -0.023960, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 03:55:27
House ID: 14 -- OD_temp : 28.854603, ID_temp: 19.987433, target_temp: 20.000000, diff: -0.012567, HVAC on: False, HVAC lockdown: 36, date: 2021-05-02 03:55:27
House ID: 15 -- OD_temp : 28.854603, ID_temp: 19.904250, target_temp: 20.000000, diff: -0.095750, HVAC on: False, HVAC lockdown: 12, date: 2021-05-02 03:55:27
House ID: 16 -- OD_temp : 28.854603, ID_temp: 19.793118, target_temp: 20.000000, diff: -0.206882, HVAC on: False, HVAC lockdown: 20, date: 2021-05-02 03:55:27
House ID: 17 -- OD_temp : 28.854603, ID_temp: 19.756661, target_temp: 20.000000, diff: -0.243339, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 03:55:27
House ID: 18 -- OD_temp : 28.854603, ID_temp: 19.903208, target_temp: 20.000000, diff: -0.096792, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 03:55:27
House ID: 19 -- OD_temp : 28.854603, ID_temp: 19.951172, target_temp: 20.000000, diff: -0.048828, HVAC on: False, HVAC lockdown: 4, date: 2021-05-02 03:55:27
House ID: 0 -- OD_temp : 34.239282, ID_temp: 20.261318, target_temp: 20.000000, diff: 0.261318, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 15:02:07
House ID: 1 -- OD_temp : 34.239282, ID_temp: 20.166442, target_temp: 20.000000, diff: 0.166442, HVAC on: False, HVAC lockdown: 12, date: 2021-05-02 15:02:07
House ID: 2 -- OD_temp : 34.239282, ID_temp: 20.023552, target_temp: 20.000000, diff: 0.023552, HVAC on: False, HVAC lockdown: 20, date: 2021-05-02 15:02:07
House ID: 3 -- OD_temp : 34.239282, ID_temp: 20.289694, target_temp: 20.000000, diff: 0.289694, HVAC on: False, HVAC lockdown: 12, date: 2021-05-02 15:02:07
House ID: 4 -- OD_temp : 34.239282, ID_temp: 20.274036, target_temp: 20.000000, diff: 0.274036, HVAC on: False, HVAC lockdown: 28, date: 2021-05-02 15:02:07
House ID: 5 -- OD_temp : 34.239282, ID_temp: 20.137873, target_temp: 20.000000, diff: 0.137873, HVAC on: False, HVAC lockdown: 20, date: 2021-05-02 15:02:07
House ID: 6 -- OD_temp : 34.239282, ID_temp: 20.128567, target_temp: 20.000000, diff: 0.128567, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 15:02:07
House ID: 7 -- OD_temp : 34.239282, ID_temp: 20.046321, target_temp: 20.000000, diff: 0.046321, HVAC on: False, HVAC lockdown: 32, date: 2021-05-02 15:02:07
House ID: 8 -- OD_temp : 34.239282, ID_temp: 20.084793, target_temp: 20.000000, diff: 0.084793, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 9 -- OD_temp : 34.239282, ID_temp: 19.987164, target_temp: 20.000000, diff: -0.012836, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 15:02:07
House ID: 10 -- OD_temp : 34.239282, ID_temp: 20.226178, target_temp: 20.000000, diff: 0.226178, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 11 -- OD_temp : 34.239282, ID_temp: 20.169233, target_temp: 20.000000, diff: 0.169233, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 15:02:07
House ID: 12 -- OD_temp : 34.239282, ID_temp: 19.982914, target_temp: 20.000000, diff: -0.017086, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-02 15:02:07
House ID: 13 -- OD_temp : 34.239282, ID_temp: 20.347149, target_temp: 20.000000, diff: 0.347149, HVAC on: False, HVAC lockdown: 20, date: 2021-05-02 15:02:07
House ID: 14 -- OD_temp : 34.239282, ID_temp: 19.957054, target_temp: 20.000000, diff: -0.042946, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 15 -- OD_temp : 34.239282, ID_temp: 20.032599, target_temp: 20.000000, diff: 0.032599, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 16 -- OD_temp : 34.239282, ID_temp: 20.180771, target_temp: 20.000000, diff: 0.180771, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 15:02:07
House ID: 17 -- OD_temp : 34.239282, ID_temp: 19.974022, target_temp: 20.000000, diff: -0.025978, HVAC on: False, HVAC lockdown: 4, date: 2021-05-02 15:02:07
House ID: 18 -- OD_temp : 34.239282, ID_temp: 20.116548, target_temp: 20.000000, diff: 0.116548, HVAC on: False, HVAC lockdown: 4, date: 2021-05-02 15:02:07
House ID: 19 -- OD_temp : 34.239282, ID_temp: 20.150892, target_temp: 20.000000, diff: 0.150892, HVAC on: False, HVAC lockdown: 36, date: 2021-05-02 15:02:07
Training step - 65535
House ID: 0 -- OD_temp : 31.427871, ID_temp: 19.898589, target_temp: 20.000000, diff: -0.101411, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 1 -- OD_temp : 31.427871, ID_temp: 20.046643, target_temp: 20.000000, diff: 0.046643, HVAC on: False, HVAC lockdown: 24, date: 2021-12-26 06:15:46
House ID: 2 -- OD_temp : 31.427871, ID_temp: 20.179768, target_temp: 20.000000, diff: 0.179768, HVAC on: False, HVAC lockdown: 24, date: 2021-12-26 06:15:46
House ID: 3 -- OD_temp : 31.427871, ID_temp: 19.845998, target_temp: 20.000000, diff: -0.154002, HVAC on: False, HVAC lockdown: 8, date: 2021-12-26 06:15:46
House ID: 4 -- OD_temp : 31.427871, ID_temp: 20.127953, target_temp: 20.000000, diff: 0.127953, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 5 -- OD_temp : 31.427871, ID_temp: 19.937073, target_temp: 20.000000, diff: -0.062927, HVAC on: False, HVAC lockdown: 8, date: 2021-12-26 06:15:46
House ID: 6 -- OD_temp : 31.427871, ID_temp: 19.986483, target_temp: 20.000000, diff: -0.013517, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 7 -- OD_temp : 31.427871, ID_temp: 19.928257, target_temp: 20.000000, diff: -0.071743, HVAC on: False, HVAC lockdown: 8, date: 2021-12-26 06:15:46
House ID: 8 -- OD_temp : 31.427871, ID_temp: 20.073876, target_temp: 20.000000, diff: 0.073876, HVAC on: False, HVAC lockdown: 20, date: 2021-12-26 06:15:46
House ID: 9 -- OD_temp : 31.427871, ID_temp: 20.227049, target_temp: 20.000000, diff: 0.227049, HVAC on: False, HVAC lockdown: 16, date: 2021-12-26 06:15:46
House ID: 10 -- OD_temp : 31.427871, ID_temp: 19.856757, target_temp: 20.000000, diff: -0.143243, HVAC on: False, HVAC lockdown: 36, date: 2021-12-26 06:15:46
House ID: 11 -- OD_temp : 31.427871, ID_temp: 20.112284, target_temp: 20.000000, diff: 0.112284, HVAC on: False, HVAC lockdown: 36, date: 2021-12-26 06:15:46
House ID: 12 -- OD_temp : 31.427871, ID_temp: 19.876077, target_temp: 20.000000, diff: -0.123923, HVAC on: False, HVAC lockdown: 24, date: 2021-12-26 06:15:46
House ID: 13 -- OD_temp : 31.427871, ID_temp: 19.917187, target_temp: 20.000000, diff: -0.082813, HVAC on: False, HVAC lockdown: 4, date: 2021-12-26 06:15:46
House ID: 14 -- OD_temp : 31.427871, ID_temp: 20.034978, target_temp: 20.000000, diff: 0.034978, HVAC on: False, HVAC lockdown: 16, date: 2021-12-26 06:15:46
House ID: 15 -- OD_temp : 31.427871, ID_temp: 20.035563, target_temp: 20.000000, diff: 0.035563, HVAC on: False, HVAC lockdown: 8, date: 2021-12-26 06:15:46
House ID: 16 -- OD_temp : 31.427871, ID_temp: 19.969162, target_temp: 20.000000, diff: -0.030838, HVAC on: False, HVAC lockdown: 4, date: 2021-12-26 06:15:46
House ID: 17 -- OD_temp : 31.427871, ID_temp: 19.954131, target_temp: 20.000000, diff: -0.045869, HVAC on: False, HVAC lockdown: 36, date: 2021-12-26 06:15:46
House ID: 18 -- OD_temp : 31.427871, ID_temp: 20.072909, target_temp: 20.000000, diff: 0.072909, HVAC on: False, HVAC lockdown: 32, date: 2021-12-26 06:15:46
House ID: 19 -- OD_temp : 31.427871, ID_temp: 20.103586, target_temp: 20.000000, diff: 0.103586, HVAC on: False, HVAC lockdown: 20, date: 2021-12-26 06:15:46
New episode at time 81919
Updating agent at time 81919
The agent is updating....
Time step: 81919 ，train 52000 times
Time step: 81919 ，train 53000 times
Time step: 81919 ，train 54000 times
Time step: 81919 ，train 55000 times
Time step: 81919 ，train 56000 times
Time step: 81919 ，train 57000 times
Time step: 81919 ，train 58000 times
Time step: 81919 ，train 59000 times
Time step: 81919 ，train 60000 times
Time step: 81919 ，train 61000 times
Time step: 81919 ，train 62000 times
Time step: 81919 ，train 63000 times
Testing at time 81919
House ID: 0 -- OD_temp : 29.077748, ID_temp: 19.936648, target_temp: 20.000000, diff: -0.063352, HVAC on: False, HVAC lockdown: 16, date: 2021-03-09 22:29:42
House ID: 1 -- OD_temp : 29.077748, ID_temp: 19.977003, target_temp: 20.000000, diff: -0.022997, HVAC on: False, HVAC lockdown: 16, date: 2021-03-09 22:29:42
House ID: 2 -- OD_temp : 29.077748, ID_temp: 19.939997, target_temp: 20.000000, diff: -0.060003, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 3 -- OD_temp : 29.077748, ID_temp: 19.961713, target_temp: 20.000000, diff: -0.038287, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 22:29:42
House ID: 4 -- OD_temp : 29.077748, ID_temp: 20.105093, target_temp: 20.000000, diff: 0.105093, HVAC on: False, HVAC lockdown: 4, date: 2021-03-09 22:29:42
House ID: 5 -- OD_temp : 29.077748, ID_temp: 19.961126, target_temp: 20.000000, diff: -0.038874, HVAC on: False, HVAC lockdown: 20, date: 2021-03-09 22:29:42
House ID: 6 -- OD_temp : 29.077748, ID_temp: 19.894839, target_temp: 20.000000, diff: -0.105161, HVAC on: False, HVAC lockdown: 8, date: 2021-03-09 22:29:42
House ID: 7 -- OD_temp : 29.077748, ID_temp: 19.912047, target_temp: 20.000000, diff: -0.087953, HVAC on: False, HVAC lockdown: 28, date: 2021-03-09 22:29:42
House ID: 8 -- OD_temp : 29.077748, ID_temp: 19.865974, target_temp: 20.000000, diff: -0.134026, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 9 -- OD_temp : 29.077748, ID_temp: 19.789151, target_temp: 20.000000, diff: -0.210849, HVAC on: False, HVAC lockdown: 20, date: 2021-03-09 22:29:42
House ID: 10 -- OD_temp : 29.077748, ID_temp: 19.835542, target_temp: 20.000000, diff: -0.164458, HVAC on: False, HVAC lockdown: 16, date: 2021-03-09 22:29:42
House ID: 11 -- OD_temp : 29.077748, ID_temp: 19.731367, target_temp: 20.000000, diff: -0.268633, HVAC on: False, HVAC lockdown: 4, date: 2021-03-09 22:29:42
House ID: 12 -- OD_temp : 29.077748, ID_temp: 19.908999, target_temp: 20.000000, diff: -0.091001, HVAC on: False, HVAC lockdown: 32, date: 2021-03-09 22:29:42
House ID: 13 -- OD_temp : 29.077748, ID_temp: 20.045642, target_temp: 20.000000, diff: 0.045642, HVAC on: False, HVAC lockdown: 36, date: 2021-03-09 22:29:42
House ID: 14 -- OD_temp : 29.077748, ID_temp: 19.904619, target_temp: 20.000000, diff: -0.095381, HVAC on: False, HVAC lockdown: 28, date: 2021-03-09 22:29:42
House ID: 15 -- OD_temp : 29.077748, ID_temp: 19.910699, target_temp: 20.000000, diff: -0.089301, HVAC on: False, HVAC lockdown: 36, date: 2021-03-09 22:29:42
House ID: 16 -- OD_temp : 29.077748, ID_temp: 19.934943, target_temp: 20.000000, diff: -0.065057, HVAC on: False, HVAC lockdown: 16, date: 2021-03-09 22:29:42
House ID: 17 -- OD_temp : 29.077748, ID_temp: 19.901059, target_temp: 20.000000, diff: -0.098941, HVAC on: False, HVAC lockdown: 20, date: 2021-03-09 22:29:42
House ID: 18 -- OD_temp : 29.077748, ID_temp: 19.867915, target_temp: 20.000000, diff: -0.132085, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 19 -- OD_temp : 29.077748, ID_temp: 19.875618, target_temp: 20.000000, diff: -0.124382, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 0 -- OD_temp : 33.123907, ID_temp: 20.022479, target_temp: 20.000000, diff: 0.022479, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 1 -- OD_temp : 33.123907, ID_temp: 20.181173, target_temp: 20.000000, diff: 0.181173, HVAC on: False, HVAC lockdown: 24, date: 2021-03-10 09:36:22
House ID: 2 -- OD_temp : 33.123907, ID_temp: 20.066751, target_temp: 20.000000, diff: 0.066751, HVAC on: False, HVAC lockdown: 4, date: 2021-03-10 09:36:22
House ID: 3 -- OD_temp : 33.123907, ID_temp: 20.032955, target_temp: 20.000000, diff: 0.032955, HVAC on: False, HVAC lockdown: 20, date: 2021-03-10 09:36:22
House ID: 4 -- OD_temp : 33.123907, ID_temp: 20.065173, target_temp: 20.000000, diff: 0.065173, HVAC on: False, HVAC lockdown: 20, date: 2021-03-10 09:36:22
House ID: 5 -- OD_temp : 33.123907, ID_temp: 20.189393, target_temp: 20.000000, diff: 0.189393, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 6 -- OD_temp : 33.123907, ID_temp: 20.084120, target_temp: 20.000000, diff: 0.084120, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 7 -- OD_temp : 33.123907, ID_temp: 20.026287, target_temp: 20.000000, diff: 0.026287, HVAC on: False, HVAC lockdown: 20, date: 2021-03-10 09:36:22
House ID: 8 -- OD_temp : 33.123907, ID_temp: 20.146112, target_temp: 20.000000, diff: 0.146112, HVAC on: False, HVAC lockdown: 32, date: 2021-03-10 09:36:22
House ID: 9 -- OD_temp : 33.123907, ID_temp: 19.885056, target_temp: 20.000000, diff: -0.114944, HVAC on: False, HVAC lockdown: 28, date: 2021-03-10 09:36:22
House ID: 10 -- OD_temp : 33.123907, ID_temp: 20.049074, target_temp: 20.000000, diff: 0.049074, HVAC on: False, HVAC lockdown: 24, date: 2021-03-10 09:36:22
House ID: 11 -- OD_temp : 33.123907, ID_temp: 19.931894, target_temp: 20.000000, diff: -0.068106, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 12 -- OD_temp : 33.123907, ID_temp: 20.035490, target_temp: 20.000000, diff: 0.035490, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 13 -- OD_temp : 33.123907, ID_temp: 19.972360, target_temp: 20.000000, diff: -0.027640, HVAC on: False, HVAC lockdown: 28, date: 2021-03-10 09:36:22
House ID: 14 -- OD_temp : 33.123907, ID_temp: 19.977201, target_temp: 20.000000, diff: -0.022799, HVAC on: False, HVAC lockdown: 32, date: 2021-03-10 09:36:22
House ID: 15 -- OD_temp : 33.123907, ID_temp: 20.219727, target_temp: 20.000000, diff: 0.219727, HVAC on: False, HVAC lockdown: 32, date: 2021-03-10 09:36:22
House ID: 16 -- OD_temp : 33.123907, ID_temp: 19.919452, target_temp: 20.000000, diff: -0.080548, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 17 -- OD_temp : 33.123907, ID_temp: 20.040249, target_temp: 20.000000, diff: 0.040249, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 18 -- OD_temp : 33.123907, ID_temp: 20.092729, target_temp: 20.000000, diff: 0.092729, HVAC on: False, HVAC lockdown: 24, date: 2021-03-10 09:36:22
House ID: 19 -- OD_temp : 33.123907, ID_temp: 20.022422, target_temp: 20.000000, diff: 0.022422, HVAC on: False, HVAC lockdown: 28, date: 2021-03-10 09:36:22
Training step - 81919
House ID: 0 -- OD_temp : 29.850285, ID_temp: 19.807033, target_temp: 20.000000, diff: -0.192967, HVAC on: False, HVAC lockdown: 36, date: 2021-08-08 04:17:36
House ID: 1 -- OD_temp : 29.850285, ID_temp: 19.973256, target_temp: 20.000000, diff: -0.026744, HVAC on: False, HVAC lockdown: 16, date: 2021-08-08 04:17:36
House ID: 2 -- OD_temp : 29.850285, ID_temp: 20.096475, target_temp: 20.000000, diff: 0.096475, HVAC on: False, HVAC lockdown: 16, date: 2021-08-08 04:17:36
House ID: 3 -- OD_temp : 29.850285, ID_temp: 19.995182, target_temp: 20.000000, diff: -0.004818, HVAC on: False, HVAC lockdown: 28, date: 2021-08-08 04:17:36
House ID: 4 -- OD_temp : 29.850285, ID_temp: 19.920840, target_temp: 20.000000, diff: -0.079160, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 5 -- OD_temp : 29.850285, ID_temp: 19.850260, target_temp: 20.000000, diff: -0.149740, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 04:17:36
House ID: 6 -- OD_temp : 29.850285, ID_temp: 20.024229, target_temp: 20.000000, diff: 0.024229, HVAC on: False, HVAC lockdown: 28, date: 2021-08-08 04:17:36
House ID: 7 -- OD_temp : 29.850285, ID_temp: 19.981826, target_temp: 20.000000, diff: -0.018174, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 8 -- OD_temp : 29.850285, ID_temp: 19.897976, target_temp: 20.000000, diff: -0.102024, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 9 -- OD_temp : 29.850285, ID_temp: 19.994775, target_temp: 20.000000, diff: -0.005225, HVAC on: 0, HVAC lockdown: 40, date: 2021-08-08 04:17:36
House ID: 10 -- OD_temp : 29.850285, ID_temp: 19.926573, target_temp: 20.000000, diff: -0.073427, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 11 -- OD_temp : 29.850285, ID_temp: 19.874942, target_temp: 20.000000, diff: -0.125058, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 12 -- OD_temp : 29.850285, ID_temp: 19.910863, target_temp: 20.000000, diff: -0.089137, HVAC on: False, HVAC lockdown: 12, date: 2021-08-08 04:17:36
House ID: 13 -- OD_temp : 29.850285, ID_temp: 20.037722, target_temp: 20.000000, diff: 0.037722, HVAC on: False, HVAC lockdown: 28, date: 2021-08-08 04:17:36
House ID: 14 -- OD_temp : 29.850285, ID_temp: 20.060537, target_temp: 20.000000, diff: 0.060537, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 15 -- OD_temp : 29.850285, ID_temp: 20.157173, target_temp: 20.000000, diff: 0.157173, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 04:17:36
House ID: 16 -- OD_temp : 29.850285, ID_temp: 19.989495, target_temp: 20.000000, diff: -0.010505, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 17 -- OD_temp : 29.850285, ID_temp: 19.905102, target_temp: 20.000000, diff: -0.094898, HVAC on: False, HVAC lockdown: 16, date: 2021-08-08 04:17:36
House ID: 18 -- OD_temp : 29.850285, ID_temp: 20.011036, target_temp: 20.000000, diff: 0.011036, HVAC on: False, HVAC lockdown: 36, date: 2021-08-08 04:17:36
House ID: 19 -- OD_temp : 29.850285, ID_temp: 20.032939, target_temp: 20.000000, diff: 0.032939, HVAC on: False, HVAC lockdown: 16, date: 2021-08-08 04:17:36
New episode at time 98303
Updating agent at time 98303
The agent is updating....
Time step: 98303 ，train 64000 times
Time step: 98303 ，train 65000 times
Time step: 98303 ，train 66000 times
Time step: 98303 ，train 67000 times
Time step: 98303 ，train 68000 times
Time step: 98303 ，train 69000 times
Time step: 98303 ，train 70000 times
Time step: 98303 ，train 71000 times
Time step: 98303 ，train 72000 times
Time step: 98303 ，train 73000 times
Time step: 98303 ，train 74000 times
Time step: 98303 ，train 75000 times
Time step: 98303 ，train 76000 times
Testing at time 98303
House ID: 0 -- OD_temp : 29.695471, ID_temp: 20.088086, target_temp: 20.000000, diff: 0.088086, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 1 -- OD_temp : 29.695471, ID_temp: 19.995522, target_temp: 20.000000, diff: -0.004478, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 2 -- OD_temp : 29.695471, ID_temp: 20.019160, target_temp: 20.000000, diff: 0.019160, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 04:58:53
House ID: 3 -- OD_temp : 29.695471, ID_temp: 20.024797, target_temp: 20.000000, diff: 0.024797, HVAC on: 0, HVAC lockdown: 40, date: 2021-09-30 04:58:53
House ID: 4 -- OD_temp : 29.695471, ID_temp: 19.862928, target_temp: 20.000000, diff: -0.137072, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 5 -- OD_temp : 29.695471, ID_temp: 20.021984, target_temp: 20.000000, diff: 0.021984, HVAC on: False, HVAC lockdown: 32, date: 2021-09-30 04:58:53
House ID: 6 -- OD_temp : 29.695471, ID_temp: 20.138745, target_temp: 20.000000, diff: 0.138745, HVAC on: 0, HVAC lockdown: 40, date: 2021-09-30 04:58:53
House ID: 7 -- OD_temp : 29.695471, ID_temp: 19.918682, target_temp: 20.000000, diff: -0.081318, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 8 -- OD_temp : 29.695471, ID_temp: 20.031002, target_temp: 20.000000, diff: 0.031002, HVAC on: False, HVAC lockdown: 8, date: 2021-09-30 04:58:53
House ID: 9 -- OD_temp : 29.695471, ID_temp: 19.984800, target_temp: 20.000000, diff: -0.015200, HVAC on: False, HVAC lockdown: 32, date: 2021-09-30 04:58:53
House ID: 10 -- OD_temp : 29.695471, ID_temp: 20.102631, target_temp: 20.000000, diff: 0.102631, HVAC on: False, HVAC lockdown: 20, date: 2021-09-30 04:58:53
House ID: 11 -- OD_temp : 29.695471, ID_temp: 19.868220, target_temp: 20.000000, diff: -0.131780, HVAC on: False, HVAC lockdown: 8, date: 2021-09-30 04:58:53
House ID: 12 -- OD_temp : 29.695471, ID_temp: 19.982905, target_temp: 20.000000, diff: -0.017095, HVAC on: False, HVAC lockdown: 28, date: 2021-09-30 04:58:53
House ID: 13 -- OD_temp : 29.695471, ID_temp: 19.929701, target_temp: 20.000000, diff: -0.070299, HVAC on: False, HVAC lockdown: 20, date: 2021-09-30 04:58:53
House ID: 14 -- OD_temp : 29.695471, ID_temp: 19.942438, target_temp: 20.000000, diff: -0.057562, HVAC on: False, HVAC lockdown: 20, date: 2021-09-30 04:58:53
House ID: 15 -- OD_temp : 29.695471, ID_temp: 20.018883, target_temp: 20.000000, diff: 0.018883, HVAC on: False, HVAC lockdown: 28, date: 2021-09-30 04:58:53
House ID: 16 -- OD_temp : 29.695471, ID_temp: 19.907684, target_temp: 20.000000, diff: -0.092316, HVAC on: False, HVAC lockdown: 8, date: 2021-09-30 04:58:53
House ID: 17 -- OD_temp : 29.695471, ID_temp: 19.812967, target_temp: 20.000000, diff: -0.187033, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 18 -- OD_temp : 29.695471, ID_temp: 20.086937, target_temp: 20.000000, diff: 0.086937, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 19 -- OD_temp : 29.695471, ID_temp: 20.098454, target_temp: 20.000000, diff: 0.098454, HVAC on: False, HVAC lockdown: 28, date: 2021-09-30 04:58:53
House ID: 0 -- OD_temp : 32.268021, ID_temp: 20.067034, target_temp: 20.000000, diff: 0.067034, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 1 -- OD_temp : 32.268021, ID_temp: 20.135239, target_temp: 20.000000, diff: 0.135239, HVAC on: False, HVAC lockdown: 16, date: 2021-09-30 16:05:33
House ID: 2 -- OD_temp : 32.268021, ID_temp: 20.013757, target_temp: 20.000000, diff: 0.013757, HVAC on: False, HVAC lockdown: 16, date: 2021-09-30 16:05:33
House ID: 3 -- OD_temp : 32.268021, ID_temp: 20.210213, target_temp: 20.000000, diff: 0.210213, HVAC on: False, HVAC lockdown: 12, date: 2021-09-30 16:05:33
House ID: 4 -- OD_temp : 32.268021, ID_temp: 20.248237, target_temp: 20.000000, diff: 0.248237, HVAC on: False, HVAC lockdown: 32, date: 2021-09-30 16:05:33
House ID: 5 -- OD_temp : 32.268021, ID_temp: 19.989131, target_temp: 20.000000, diff: -0.010869, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 6 -- OD_temp : 32.268021, ID_temp: 19.998484, target_temp: 20.000000, diff: -0.001516, HVAC on: False, HVAC lockdown: 20, date: 2021-09-30 16:05:33
House ID: 7 -- OD_temp : 32.268021, ID_temp: 19.841335, target_temp: 20.000000, diff: -0.158665, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 8 -- OD_temp : 32.268021, ID_temp: 19.970409, target_temp: 20.000000, diff: -0.029591, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 16:05:33
House ID: 9 -- OD_temp : 32.268021, ID_temp: 20.063853, target_temp: 20.000000, diff: 0.063853, HVAC on: False, HVAC lockdown: 16, date: 2021-09-30 16:05:33
House ID: 10 -- OD_temp : 32.268021, ID_temp: 19.886456, target_temp: 20.000000, diff: -0.113544, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 11 -- OD_temp : 32.268021, ID_temp: 20.045129, target_temp: 20.000000, diff: 0.045129, HVAC on: False, HVAC lockdown: 28, date: 2021-09-30 16:05:33
House ID: 12 -- OD_temp : 32.268021, ID_temp: 20.082925, target_temp: 20.000000, diff: 0.082925, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 13 -- OD_temp : 32.268021, ID_temp: 19.928770, target_temp: 20.000000, diff: -0.071230, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 14 -- OD_temp : 32.268021, ID_temp: 20.024315, target_temp: 20.000000, diff: 0.024315, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 15 -- OD_temp : 32.268021, ID_temp: 20.055463, target_temp: 20.000000, diff: 0.055463, HVAC on: False, HVAC lockdown: 24, date: 2021-09-30 16:05:33
House ID: 16 -- OD_temp : 32.268021, ID_temp: 20.021463, target_temp: 20.000000, diff: 0.021463, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 16:05:33
House ID: 17 -- OD_temp : 32.268021, ID_temp: 20.246622, target_temp: 20.000000, diff: 0.246622, HVAC on: False, HVAC lockdown: 20, date: 2021-09-30 16:05:33
House ID: 18 -- OD_temp : 32.268021, ID_temp: 20.197042, target_temp: 20.000000, diff: 0.197042, HVAC on: False, HVAC lockdown: 8, date: 2021-09-30 16:05:33
House ID: 19 -- OD_temp : 32.268021, ID_temp: 20.039126, target_temp: 20.000000, diff: 0.039126, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
Training step - 98303
House ID: 0 -- OD_temp : 33.818862, ID_temp: 20.127603, target_temp: 20.000000, diff: 0.127603, HVAC on: False, HVAC lockdown: 24, date: 2021-06-22 11:49:40
House ID: 1 -- OD_temp : 33.818862, ID_temp: 19.996370, target_temp: 20.000000, diff: -0.003630, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 2 -- OD_temp : 33.818862, ID_temp: 20.185241, target_temp: 20.000000, diff: 0.185241, HVAC on: False, HVAC lockdown: 24, date: 2021-06-22 11:49:40
House ID: 3 -- OD_temp : 33.818862, ID_temp: 20.041525, target_temp: 20.000000, diff: 0.041525, HVAC on: False, HVAC lockdown: 8, date: 2021-06-22 11:49:40
House ID: 4 -- OD_temp : 33.818862, ID_temp: 20.137105, target_temp: 20.000000, diff: 0.137105, HVAC on: False, HVAC lockdown: 36, date: 2021-06-22 11:49:40
House ID: 5 -- OD_temp : 33.818862, ID_temp: 20.074071, target_temp: 20.000000, diff: 0.074071, HVAC on: False, HVAC lockdown: 4, date: 2021-06-22 11:49:40
House ID: 6 -- OD_temp : 33.818862, ID_temp: 20.069346, target_temp: 20.000000, diff: 0.069346, HVAC on: False, HVAC lockdown: 32, date: 2021-06-22 11:49:40
House ID: 7 -- OD_temp : 33.818862, ID_temp: 20.307592, target_temp: 20.000000, diff: 0.307592, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 8 -- OD_temp : 33.818862, ID_temp: 19.976948, target_temp: 20.000000, diff: -0.023052, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 9 -- OD_temp : 33.818862, ID_temp: 20.165532, target_temp: 20.000000, diff: 0.165532, HVAC on: False, HVAC lockdown: 8, date: 2021-06-22 11:49:40
House ID: 10 -- OD_temp : 33.818862, ID_temp: 20.217821, target_temp: 20.000000, diff: 0.217821, HVAC on: False, HVAC lockdown: 28, date: 2021-06-22 11:49:40
House ID: 11 -- OD_temp : 33.818862, ID_temp: 20.098728, target_temp: 20.000000, diff: 0.098728, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 12 -- OD_temp : 33.818862, ID_temp: 20.007856, target_temp: 20.000000, diff: 0.007856, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 13 -- OD_temp : 33.818862, ID_temp: 20.147880, target_temp: 20.000000, diff: 0.147880, HVAC on: False, HVAC lockdown: 24, date: 2021-06-22 11:49:40
House ID: 14 -- OD_temp : 33.818862, ID_temp: 19.966167, target_temp: 20.000000, diff: -0.033833, HVAC on: False, HVAC lockdown: 8, date: 2021-06-22 11:49:40
House ID: 15 -- OD_temp : 33.818862, ID_temp: 20.032768, target_temp: 20.000000, diff: 0.032768, HVAC on: False, HVAC lockdown: 8, date: 2021-06-22 11:49:40
House ID: 16 -- OD_temp : 33.818862, ID_temp: 20.085117, target_temp: 20.000000, diff: 0.085117, HVAC on: False, HVAC lockdown: 20, date: 2021-06-22 11:49:40
House ID: 17 -- OD_temp : 33.818862, ID_temp: 19.805207, target_temp: 20.000000, diff: -0.194793, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 18 -- OD_temp : 33.818862, ID_temp: 20.039743, target_temp: 20.000000, diff: 0.039743, HVAC on: False, HVAC lockdown: 20, date: 2021-06-22 11:49:40
House ID: 19 -- OD_temp : 33.818862, ID_temp: 19.879283, target_temp: 20.000000, diff: -0.120717, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
New episode at time 114687
Updating agent at time 114687
The agent is updating....
Time step: 114687 ，train 77000 times
Time step: 114687 ，train 78000 times
Time step: 114687 ，train 79000 times
Time step: 114687 ，train 80000 times
Time step: 114687 ，train 81000 times
Time step: 114687 ，train 82000 times
Time step: 114687 ，train 83000 times
Time step: 114687 ，train 84000 times
Time step: 114687 ，train 85000 times
Time step: 114687 ，train 86000 times
Time step: 114687 ，train 87000 times
Time step: 114687 ，train 88000 times
Time step: 114687 ，train 89000 times
Testing at time 114687
House ID: 0 -- OD_temp : 33.440583, ID_temp: 20.042993, target_temp: 20.000000, diff: 0.042993, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 11:48:51
House ID: 1 -- OD_temp : 33.440583, ID_temp: 20.140973, target_temp: 20.000000, diff: 0.140973, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 2 -- OD_temp : 33.440583, ID_temp: 19.960705, target_temp: 20.000000, diff: -0.039295, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 3 -- OD_temp : 33.440583, ID_temp: 20.114908, target_temp: 20.000000, diff: 0.114908, HVAC on: False, HVAC lockdown: 28, date: 2021-05-29 11:48:51
House ID: 4 -- OD_temp : 33.440583, ID_temp: 20.025128, target_temp: 20.000000, diff: 0.025128, HVAC on: False, HVAC lockdown: 16, date: 2021-05-29 11:48:51
House ID: 5 -- OD_temp : 33.440583, ID_temp: 20.066088, target_temp: 20.000000, diff: 0.066088, HVAC on: False, HVAC lockdown: 28, date: 2021-05-29 11:48:51
House ID: 6 -- OD_temp : 33.440583, ID_temp: 20.089020, target_temp: 20.000000, diff: 0.089020, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 7 -- OD_temp : 33.440583, ID_temp: 19.999385, target_temp: 20.000000, diff: -0.000615, HVAC on: False, HVAC lockdown: 8, date: 2021-05-29 11:48:51
House ID: 8 -- OD_temp : 33.440583, ID_temp: 20.044896, target_temp: 20.000000, diff: 0.044896, HVAC on: False, HVAC lockdown: 12, date: 2021-05-29 11:48:51
House ID: 9 -- OD_temp : 33.440583, ID_temp: 20.110160, target_temp: 20.000000, diff: 0.110160, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 10 -- OD_temp : 33.440583, ID_temp: 19.866360, target_temp: 20.000000, diff: -0.133640, HVAC on: False, HVAC lockdown: 16, date: 2021-05-29 11:48:51
House ID: 11 -- OD_temp : 33.440583, ID_temp: 20.045773, target_temp: 20.000000, diff: 0.045773, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 11:48:51
House ID: 12 -- OD_temp : 33.440583, ID_temp: 19.902244, target_temp: 20.000000, diff: -0.097756, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 13 -- OD_temp : 33.440583, ID_temp: 20.053950, target_temp: 20.000000, diff: 0.053950, HVAC on: False, HVAC lockdown: 28, date: 2021-05-29 11:48:51
House ID: 14 -- OD_temp : 33.440583, ID_temp: 20.043903, target_temp: 20.000000, diff: 0.043903, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 15 -- OD_temp : 33.440583, ID_temp: 20.006542, target_temp: 20.000000, diff: 0.006542, HVAC on: False, HVAC lockdown: 24, date: 2021-05-29 11:48:51
House ID: 16 -- OD_temp : 33.440583, ID_temp: 19.898196, target_temp: 20.000000, diff: -0.101804, HVAC on: False, HVAC lockdown: 8, date: 2021-05-29 11:48:51
House ID: 17 -- OD_temp : 33.440583, ID_temp: 20.113918, target_temp: 20.000000, diff: 0.113918, HVAC on: False, HVAC lockdown: 32, date: 2021-05-29 11:48:51
House ID: 18 -- OD_temp : 33.440583, ID_temp: 19.975127, target_temp: 20.000000, diff: -0.024873, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 19 -- OD_temp : 33.440583, ID_temp: 19.956036, target_temp: 20.000000, diff: -0.043964, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 0 -- OD_temp : 28.227258, ID_temp: 19.989769, target_temp: 20.000000, diff: -0.010231, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 1 -- OD_temp : 28.227258, ID_temp: 20.010672, target_temp: 20.000000, diff: 0.010672, HVAC on: False, HVAC lockdown: 20, date: 2021-05-29 22:55:31
House ID: 2 -- OD_temp : 28.227258, ID_temp: 19.955328, target_temp: 20.000000, diff: -0.044672, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 3 -- OD_temp : 28.227258, ID_temp: 20.010115, target_temp: 20.000000, diff: 0.010115, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 22:55:31
House ID: 4 -- OD_temp : 28.227258, ID_temp: 19.917244, target_temp: 20.000000, diff: -0.082756, HVAC on: False, HVAC lockdown: 20, date: 2021-05-29 22:55:31
House ID: 5 -- OD_temp : 28.227258, ID_temp: 20.047076, target_temp: 20.000000, diff: 0.047076, HVAC on: False, HVAC lockdown: 4, date: 2021-05-29 22:55:31
House ID: 6 -- OD_temp : 28.227258, ID_temp: 20.026463, target_temp: 20.000000, diff: 0.026463, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-29 22:55:31
House ID: 7 -- OD_temp : 28.227258, ID_temp: 20.026337, target_temp: 20.000000, diff: 0.026337, HVAC on: False, HVAC lockdown: 4, date: 2021-05-29 22:55:31
House ID: 8 -- OD_temp : 28.227258, ID_temp: 19.989997, target_temp: 20.000000, diff: -0.010003, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 9 -- OD_temp : 28.227258, ID_temp: 20.014007, target_temp: 20.000000, diff: 0.014007, HVAC on: False, HVAC lockdown: 20, date: 2021-05-29 22:55:31
House ID: 10 -- OD_temp : 28.227258, ID_temp: 19.846859, target_temp: 20.000000, diff: -0.153141, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 11 -- OD_temp : 28.227258, ID_temp: 19.985086, target_temp: 20.000000, diff: -0.014914, HVAC on: False, HVAC lockdown: 32, date: 2021-05-29 22:55:31
House ID: 12 -- OD_temp : 28.227258, ID_temp: 19.956252, target_temp: 20.000000, diff: -0.043748, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 22:55:31
House ID: 13 -- OD_temp : 28.227258, ID_temp: 19.954896, target_temp: 20.000000, diff: -0.045104, HVAC on: False, HVAC lockdown: 8, date: 2021-05-29 22:55:31
House ID: 14 -- OD_temp : 28.227258, ID_temp: 19.926990, target_temp: 20.000000, diff: -0.073010, HVAC on: False, HVAC lockdown: 16, date: 2021-05-29 22:55:31
House ID: 15 -- OD_temp : 28.227258, ID_temp: 19.903967, target_temp: 20.000000, diff: -0.096033, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-29 22:55:31
House ID: 16 -- OD_temp : 28.227258, ID_temp: 20.023384, target_temp: 20.000000, diff: 0.023384, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 17 -- OD_temp : 28.227258, ID_temp: 19.922159, target_temp: 20.000000, diff: -0.077841, HVAC on: False, HVAC lockdown: 32, date: 2021-05-29 22:55:31
House ID: 18 -- OD_temp : 28.227258, ID_temp: 20.025042, target_temp: 20.000000, diff: 0.025042, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 22:55:31
House ID: 19 -- OD_temp : 28.227258, ID_temp: 19.916230, target_temp: 20.000000, diff: -0.083770, HVAC on: False, HVAC lockdown: 12, date: 2021-05-29 22:55:31
Training step - 114687
House ID: 0 -- OD_temp : 28.403654, ID_temp: 19.906434, target_temp: 20.000000, diff: -0.093566, HVAC on: False, HVAC lockdown: 20, date: 2021-08-17 23:49:23
House ID: 1 -- OD_temp : 28.403654, ID_temp: 19.840558, target_temp: 20.000000, diff: -0.159442, HVAC on: False, HVAC lockdown: 32, date: 2021-08-17 23:49:23
House ID: 2 -- OD_temp : 28.403654, ID_temp: 19.957712, target_temp: 20.000000, diff: -0.042288, HVAC on: False, HVAC lockdown: 20, date: 2021-08-17 23:49:23
House ID: 3 -- OD_temp : 28.403654, ID_temp: 20.040699, target_temp: 20.000000, diff: 0.040699, HVAC on: False, HVAC lockdown: 24, date: 2021-08-17 23:49:23
House ID: 4 -- OD_temp : 28.403654, ID_temp: 20.024845, target_temp: 20.000000, diff: 0.024845, HVAC on: False, HVAC lockdown: 4, date: 2021-08-17 23:49:23
House ID: 5 -- OD_temp : 28.403654, ID_temp: 20.052733, target_temp: 20.000000, diff: 0.052733, HVAC on: False, HVAC lockdown: 28, date: 2021-08-17 23:49:23
House ID: 6 -- OD_temp : 28.403654, ID_temp: 19.926216, target_temp: 20.000000, diff: -0.073784, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 7 -- OD_temp : 28.403654, ID_temp: 20.042563, target_temp: 20.000000, diff: 0.042563, HVAC on: False, HVAC lockdown: 28, date: 2021-08-17 23:49:23
House ID: 8 -- OD_temp : 28.403654, ID_temp: 19.770153, target_temp: 20.000000, diff: -0.229847, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 9 -- OD_temp : 28.403654, ID_temp: 19.942094, target_temp: 20.000000, diff: -0.057906, HVAC on: False, HVAC lockdown: 8, date: 2021-08-17 23:49:23
House ID: 10 -- OD_temp : 28.403654, ID_temp: 20.033045, target_temp: 20.000000, diff: 0.033045, HVAC on: False, HVAC lockdown: 32, date: 2021-08-17 23:49:23
House ID: 11 -- OD_temp : 28.403654, ID_temp: 19.980517, target_temp: 20.000000, diff: -0.019483, HVAC on: False, HVAC lockdown: 16, date: 2021-08-17 23:49:23
House ID: 12 -- OD_temp : 28.403654, ID_temp: 20.053333, target_temp: 20.000000, diff: 0.053333, HVAC on: False, HVAC lockdown: 16, date: 2021-08-17 23:49:23
House ID: 13 -- OD_temp : 28.403654, ID_temp: 19.993891, target_temp: 20.000000, diff: -0.006109, HVAC on: False, HVAC lockdown: 20, date: 2021-08-17 23:49:23
House ID: 14 -- OD_temp : 28.403654, ID_temp: 20.090335, target_temp: 20.000000, diff: 0.090335, HVAC on: False, HVAC lockdown: 24, date: 2021-08-17 23:49:23
House ID: 15 -- OD_temp : 28.403654, ID_temp: 19.935293, target_temp: 20.000000, diff: -0.064707, HVAC on: False, HVAC lockdown: 12, date: 2021-08-17 23:49:23
House ID: 16 -- OD_temp : 28.403654, ID_temp: 20.029360, target_temp: 20.000000, diff: 0.029360, HVAC on: False, HVAC lockdown: 24, date: 2021-08-17 23:49:23
House ID: 17 -- OD_temp : 28.403654, ID_temp: 19.935997, target_temp: 20.000000, diff: -0.064003, HVAC on: False, HVAC lockdown: 8, date: 2021-08-17 23:49:23
House ID: 18 -- OD_temp : 28.403654, ID_temp: 19.960208, target_temp: 20.000000, diff: -0.039792, HVAC on: False, HVAC lockdown: 4, date: 2021-08-17 23:49:23
House ID: 19 -- OD_temp : 28.403654, ID_temp: 19.920100, target_temp: 20.000000, diff: -0.079900, HVAC on: False, HVAC lockdown: 8, date: 2021-08-17 23:49:23
New episode at time 131071
Updating agent at time 131071