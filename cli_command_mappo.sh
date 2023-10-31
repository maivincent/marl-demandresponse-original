# 粘贴自v0,复制到终端或者命令行:bash cli_command.sh,记得先删掉没用的
# --agent_type=dqn, ppo
python main.py --agent_type=mappo \
            --exp=train_efan \
            --save_actor_name=MAPPO \
            --nb_inter_saving_actor=50 \  
            # nb_inter_saving_actor=50则actor64250第一次保存

# 测试MAPPO167430/actor64250
Time step: 999
Elapsed time for 100% of steps: 7 seconds.
RMSE Signal per agent: 3481 W
RMSE Temperature: 3.380963836042834 C
RMS Max Error Temperature: 10.060759979477941 C
# 测试MAPPO167430/actor128500
Elapsed time for 100% of steps: 27 seconds.
RMSE Signal per agent: 2057 W
RMSE Temperature: 2.643241607335983 C
RMS Max Error Temperature: 8.035180790201046 C
# 测试MAPPO167430/actor192750.pth
Time step: 999
Elapsed time for 100% of steps: 26 seconds.
RMSE Signal per agent: 1069 W
RMSE Temperature: 2.1976434390877477 C
RMS Max Error Temperature: 7.069165397910847 C


# 训练
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
    (0): Linear(in_features=70, out_features=100, bias=True)
    (1): Linear(in_features=100, out_features=100, bias=True)
    (2): Linear(in_features=100, out_features=1, bias=True)
  )
)
mappo_update_time: 10, max_grad_norm: 0.5, clip_param: 0.2, gamma: 0.99, batch_size: 256, lr_actor: 0.001, lr_critic: 0.003
House ID: 0 -- OD_temp : 27.645149, ID_temp: 20.629779, target_temp: 20.000000, diff: 0.629779, HVAC on: False, HVAC lockdown: 28, date: 2021-12-15 01:16:48
House ID: 1 -- OD_temp : 27.645149, ID_temp: 21.821898, target_temp: 20.000000, diff: 1.821898, HVAC on: False, HVAC lockdown: 32, date: 2021-12-15 01:16:48
House ID: 2 -- OD_temp : 27.645149, ID_temp: 20.906009, target_temp: 20.000000, diff: 0.906009, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 3 -- OD_temp : 27.645149, ID_temp: 20.562617, target_temp: 20.000000, diff: 0.562617, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 4 -- OD_temp : 27.645149, ID_temp: 21.198586, target_temp: 20.000000, diff: 1.198586, HVAC on: False, HVAC lockdown: 8, date: 2021-12-15 01:16:48
House ID: 5 -- OD_temp : 27.645149, ID_temp: 21.117315, target_temp: 20.000000, diff: 1.117315, HVAC on: False, HVAC lockdown: 24, date: 2021-12-15 01:16:48
House ID: 6 -- OD_temp : 27.645149, ID_temp: 21.078615, target_temp: 20.000000, diff: 1.078615, HVAC on: False, HVAC lockdown: 36, date: 2021-12-15 01:16:48
House ID: 7 -- OD_temp : 27.645149, ID_temp: 21.008096, target_temp: 20.000000, diff: 1.008096, HVAC on: False, HVAC lockdown: 32, date: 2021-12-15 01:16:48
House ID: 8 -- OD_temp : 27.645149, ID_temp: 20.623273, target_temp: 20.000000, diff: 0.623273, HVAC on: False, HVAC lockdown: 4, date: 2021-12-15 01:16:48
House ID: 9 -- OD_temp : 27.645149, ID_temp: 20.145996, target_temp: 20.000000, diff: 0.145996, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 10 -- OD_temp : 27.645149, ID_temp: 21.179354, target_temp: 20.000000, diff: 1.179354, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 11 -- OD_temp : 27.645149, ID_temp: 20.329968, target_temp: 20.000000, diff: 0.329968, HVAC on: False, HVAC lockdown: 16, date: 2021-12-15 01:16:48
House ID: 12 -- OD_temp : 27.645149, ID_temp: 20.720208, target_temp: 20.000000, diff: 0.720208, HVAC on: False, HVAC lockdown: 16, date: 2021-12-15 01:16:48
House ID: 13 -- OD_temp : 27.645149, ID_temp: 20.799035, target_temp: 20.000000, diff: 0.799035, HVAC on: False, HVAC lockdown: 12, date: 2021-12-15 01:16:48
House ID: 14 -- OD_temp : 27.645149, ID_temp: 20.879140, target_temp: 20.000000, diff: 0.879140, HVAC on: False, HVAC lockdown: 36, date: 2021-12-15 01:16:48
House ID: 15 -- OD_temp : 27.645149, ID_temp: 20.532136, target_temp: 20.000000, diff: 0.532136, HVAC on: False, HVAC lockdown: 12, date: 2021-12-15 01:16:48
House ID: 16 -- OD_temp : 27.645149, ID_temp: 20.348530, target_temp: 20.000000, diff: 0.348530, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 17 -- OD_temp : 27.645149, ID_temp: 20.152582, target_temp: 20.000000, diff: 0.152582, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 18 -- OD_temp : 27.645149, ID_temp: 21.016489, target_temp: 20.000000, diff: 1.016489, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-15 01:16:48
House ID: 19 -- OD_temp : 27.645149, ID_temp: 20.601893, target_temp: 20.000000, diff: 0.601893, HVAC on: False, HVAC lockdown: 4, date: 2021-12-15 01:16:48
New episode at time 16383
Updating agent at time 16383
UPDATING
/home/ef/Documents/code/ubuntu/marl-demandresponse-original/agents/mappo.py:62: UserWarning: Creating a tensor from a list of numpy.ndarrays is extremely slow. Please consider converting the list to a single numpy.ndarray with numpy.array() before converting to a tensor. (Triggered internally at ../torch/csrc/utils/tensor_new.cpp:230.)
  state = torch.tensor([t.state for t in self.buffer], dtype=torch.float)
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
House ID: 0 -- OD_temp : 29.554508, ID_temp: 21.648852, target_temp: 20.000000, diff: 1.648852, HVAC on: False, HVAC lockdown: 16, date: 2021-05-30 19:52:15
House ID: 1 -- OD_temp : 29.554508, ID_temp: 20.595830, target_temp: 20.000000, diff: 0.595830, HVAC on: False, HVAC lockdown: 8, date: 2021-05-30 19:52:15
House ID: 2 -- OD_temp : 29.554508, ID_temp: 21.393563, target_temp: 20.000000, diff: 1.393563, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 3 -- OD_temp : 29.554508, ID_temp: 21.899593, target_temp: 20.000000, diff: 1.899593, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 4 -- OD_temp : 29.554508, ID_temp: 21.585174, target_temp: 20.000000, diff: 1.585174, HVAC on: False, HVAC lockdown: 4, date: 2021-05-30 19:52:15
House ID: 5 -- OD_temp : 29.554508, ID_temp: 21.968590, target_temp: 20.000000, diff: 1.968590, HVAC on: False, HVAC lockdown: 4, date: 2021-05-30 19:52:15
House ID: 6 -- OD_temp : 29.554508, ID_temp: 20.850531, target_temp: 20.000000, diff: 0.850531, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 7 -- OD_temp : 29.554508, ID_temp: 20.984624, target_temp: 20.000000, diff: 0.984624, HVAC on: 0, HVAC lockdown: 44, date: 2021-05-30 19:52:15
House ID: 8 -- OD_temp : 29.554508, ID_temp: 21.308687, target_temp: 20.000000, diff: 1.308687, HVAC on: 0, HVAC lockdown: 48, date: 2021-05-30 19:52:15
House ID: 9 -- OD_temp : 29.554508, ID_temp: 21.212152, target_temp: 20.000000, diff: 1.212152, HVAC on: 0, HVAC lockdown: 44, date: 2021-05-30 19:52:15
House ID: 10 -- OD_temp : 29.554508, ID_temp: 20.660977, target_temp: 20.000000, diff: 0.660977, HVAC on: False, HVAC lockdown: 12, date: 2021-05-30 19:52:15
House ID: 11 -- OD_temp : 29.554508, ID_temp: 21.438326, target_temp: 20.000000, diff: 1.438326, HVAC on: False, HVAC lockdown: 12, date: 2021-05-30 19:52:15
House ID: 12 -- OD_temp : 29.554508, ID_temp: 21.138012, target_temp: 20.000000, diff: 1.138012, HVAC on: False, HVAC lockdown: 8, date: 2021-05-30 19:52:15
House ID: 13 -- OD_temp : 29.554508, ID_temp: 21.343967, target_temp: 20.000000, diff: 1.343967, HVAC on: False, HVAC lockdown: 8, date: 2021-05-30 19:52:15
House ID: 14 -- OD_temp : 29.554508, ID_temp: 22.103630, target_temp: 20.000000, diff: 2.103630, HVAC on: False, HVAC lockdown: 4, date: 2021-05-30 19:52:15
House ID: 15 -- OD_temp : 29.554508, ID_temp: 21.011081, target_temp: 20.000000, diff: 1.011081, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 16 -- OD_temp : 29.554508, ID_temp: 20.997028, target_temp: 20.000000, diff: 0.997028, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 17 -- OD_temp : 29.554508, ID_temp: 21.630951, target_temp: 20.000000, diff: 1.630951, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 18 -- OD_temp : 29.554508, ID_temp: 21.307159, target_temp: 20.000000, diff: 1.307159, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 19 -- OD_temp : 29.554508, ID_temp: 21.596184, target_temp: 20.000000, diff: 1.596184, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-30 19:52:15
House ID: 0 -- OD_temp : 31.850495, ID_temp: 19.101670, target_temp: 20.000000, diff: -0.898330, HVAC on: False, HVAC lockdown: 12, date: 2021-05-31 06:58:55
House ID: 1 -- OD_temp : 31.850495, ID_temp: 19.272430, target_temp: 20.000000, diff: -0.727570, HVAC on: False, HVAC lockdown: 28, date: 2021-05-31 06:58:55
House ID: 2 -- OD_temp : 31.850495, ID_temp: 19.993735, target_temp: 20.000000, diff: -0.006265, HVAC on: False, HVAC lockdown: 12, date: 2021-05-31 06:58:55
House ID: 3 -- OD_temp : 31.850495, ID_temp: 19.563107, target_temp: 20.000000, diff: -0.436893, HVAC on: False, HVAC lockdown: 20, date: 2021-05-31 06:58:55
House ID: 4 -- OD_temp : 31.850495, ID_temp: 19.084898, target_temp: 20.000000, diff: -0.915102, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 5 -- OD_temp : 31.850495, ID_temp: 19.545878, target_temp: 20.000000, diff: -0.454122, HVAC on: False, HVAC lockdown: 8, date: 2021-05-31 06:58:55
House ID: 6 -- OD_temp : 31.850495, ID_temp: 19.158392, target_temp: 20.000000, diff: -0.841608, HVAC on: False, HVAC lockdown: 16, date: 2021-05-31 06:58:55
House ID: 7 -- OD_temp : 31.850495, ID_temp: 19.425761, target_temp: 20.000000, diff: -0.574239, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 8 -- OD_temp : 31.850495, ID_temp: 19.546640, target_temp: 20.000000, diff: -0.453360, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 9 -- OD_temp : 31.850495, ID_temp: 19.571064, target_temp: 20.000000, diff: -0.428936, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 10 -- OD_temp : 31.850495, ID_temp: 18.932427, target_temp: 20.000000, diff: -1.067573, HVAC on: False, HVAC lockdown: 8, date: 2021-05-31 06:58:55
House ID: 11 -- OD_temp : 31.850495, ID_temp: 19.314504, target_temp: 20.000000, diff: -0.685496, HVAC on: False, HVAC lockdown: 24, date: 2021-05-31 06:58:55
House ID: 12 -- OD_temp : 31.850495, ID_temp: 19.569997, target_temp: 20.000000, diff: -0.430003, HVAC on: False, HVAC lockdown: 8, date: 2021-05-31 06:58:55
House ID: 13 -- OD_temp : 31.850495, ID_temp: 19.091233, target_temp: 20.000000, diff: -0.908767, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 14 -- OD_temp : 31.850495, ID_temp: 19.830416, target_temp: 20.000000, diff: -0.169584, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-31 06:58:55
House ID: 15 -- OD_temp : 31.850495, ID_temp: 18.911695, target_temp: 20.000000, diff: -1.088305, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 16 -- OD_temp : 31.850495, ID_temp: 19.634309, target_temp: 20.000000, diff: -0.365691, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-31 06:58:55
House ID: 17 -- OD_temp : 31.850495, ID_temp: 19.214585, target_temp: 20.000000, diff: -0.785415, HVAC on: False, HVAC lockdown: 12, date: 2021-05-31 06:58:55
House ID: 18 -- OD_temp : 31.850495, ID_temp: 19.683755, target_temp: 20.000000, diff: -0.316245, HVAC on: False, HVAC lockdown: 36, date: 2021-05-31 06:58:55
House ID: 19 -- OD_temp : 31.850495, ID_temp: 19.463971, target_temp: 20.000000, diff: -0.536029, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-31 06:58:55
Training step - 16383
House ID: 0 -- OD_temp : 32.451078, ID_temp: 20.495959, target_temp: 20.000000, diff: 0.495959, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 1 -- OD_temp : 32.451078, ID_temp: 20.971084, target_temp: 20.000000, diff: 0.971084, HVAC on: False, HVAC lockdown: 4, date: 2021-08-24 08:38:56
House ID: 2 -- OD_temp : 32.451078, ID_temp: 20.649559, target_temp: 20.000000, diff: 0.649559, HVAC on: False, HVAC lockdown: 28, date: 2021-08-24 08:38:56
House ID: 3 -- OD_temp : 32.451078, ID_temp: 19.680257, target_temp: 20.000000, diff: -0.319743, HVAC on: False, HVAC lockdown: 8, date: 2021-08-24 08:38:56
House ID: 4 -- OD_temp : 32.451078, ID_temp: 20.892947, target_temp: 20.000000, diff: 0.892947, HVAC on: False, HVAC lockdown: 24, date: 2021-08-24 08:38:56
House ID: 5 -- OD_temp : 32.451078, ID_temp: 20.553892, target_temp: 20.000000, diff: 0.553892, HVAC on: False, HVAC lockdown: 16, date: 2021-08-24 08:38:56
House ID: 6 -- OD_temp : 32.451078, ID_temp: 19.307798, target_temp: 20.000000, diff: -0.692202, HVAC on: False, HVAC lockdown: 4, date: 2021-08-24 08:38:56
House ID: 7 -- OD_temp : 32.451078, ID_temp: 20.209518, target_temp: 20.000000, diff: 0.209518, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 8 -- OD_temp : 32.451078, ID_temp: 21.611004, target_temp: 20.000000, diff: 1.611004, HVAC on: False, HVAC lockdown: 16, date: 2021-08-24 08:38:56
House ID: 9 -- OD_temp : 32.451078, ID_temp: 20.633622, target_temp: 20.000000, diff: 0.633622, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 10 -- OD_temp : 32.451078, ID_temp: 20.688699, target_temp: 20.000000, diff: 0.688699, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 11 -- OD_temp : 32.451078, ID_temp: 21.024404, target_temp: 20.000000, diff: 1.024404, HVAC on: False, HVAC lockdown: 24, date: 2021-08-24 08:38:56
House ID: 12 -- OD_temp : 32.451078, ID_temp: 20.262960, target_temp: 20.000000, diff: 0.262960, HVAC on: False, HVAC lockdown: 36, date: 2021-08-24 08:38:56
House ID: 13 -- OD_temp : 32.451078, ID_temp: 19.980653, target_temp: 20.000000, diff: -0.019347, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 14 -- OD_temp : 32.451078, ID_temp: 19.780602, target_temp: 20.000000, diff: -0.219398, HVAC on: False, HVAC lockdown: 36, date: 2021-08-24 08:38:56
House ID: 15 -- OD_temp : 32.451078, ID_temp: 20.140844, target_temp: 20.000000, diff: 0.140844, HVAC on: False, HVAC lockdown: 8, date: 2021-08-24 08:38:56
House ID: 16 -- OD_temp : 32.451078, ID_temp: 20.939345, target_temp: 20.000000, diff: 0.939345, HVAC on: False, HVAC lockdown: 4, date: 2021-08-24 08:38:56
House ID: 17 -- OD_temp : 32.451078, ID_temp: 19.933724, target_temp: 20.000000, diff: -0.066276, HVAC on: False, HVAC lockdown: 28, date: 2021-08-24 08:38:56
House ID: 18 -- OD_temp : 32.451078, ID_temp: 20.325300, target_temp: 20.000000, diff: 0.325300, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-24 08:38:56
House ID: 19 -- OD_temp : 32.451078, ID_temp: 20.084290, target_temp: 20.000000, diff: 0.084290, HVAC on: False, HVAC lockdown: 24, date: 2021-08-24 08:38:56
New episode at time 32767
Updating agent at time 32767
UPDATING
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
House ID: 0 -- OD_temp : 33.930163, ID_temp: 19.241843, target_temp: 20.000000, diff: -0.758157, HVAC on: False, HVAC lockdown: 20, date: 2021-03-15 10:54:23
House ID: 1 -- OD_temp : 33.930163, ID_temp: 20.526222, target_temp: 20.000000, diff: 0.526222, HVAC on: False, HVAC lockdown: 32, date: 2021-03-15 10:54:23
House ID: 2 -- OD_temp : 33.930163, ID_temp: 19.422965, target_temp: 20.000000, diff: -0.577035, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 3 -- OD_temp : 33.930163, ID_temp: 19.787961, target_temp: 20.000000, diff: -0.212039, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 4 -- OD_temp : 33.930163, ID_temp: 21.074470, target_temp: 20.000000, diff: 1.074470, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 10:54:23
House ID: 5 -- OD_temp : 33.930163, ID_temp: 20.067960, target_temp: 20.000000, diff: 0.067960, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 6 -- OD_temp : 33.930163, ID_temp: 19.817377, target_temp: 20.000000, diff: -0.182623, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 7 -- OD_temp : 33.930163, ID_temp: 19.573094, target_temp: 20.000000, diff: -0.426906, HVAC on: False, HVAC lockdown: 20, date: 2021-03-15 10:54:23
House ID: 8 -- OD_temp : 33.930163, ID_temp: 19.978001, target_temp: 20.000000, diff: -0.021999, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 9 -- OD_temp : 33.930163, ID_temp: 19.675577, target_temp: 20.000000, diff: -0.324423, HVAC on: False, HVAC lockdown: 36, date: 2021-03-15 10:54:23
House ID: 10 -- OD_temp : 33.930163, ID_temp: 20.107757, target_temp: 20.000000, diff: 0.107757, HVAC on: False, HVAC lockdown: 20, date: 2021-03-15 10:54:23
House ID: 11 -- OD_temp : 33.930163, ID_temp: 19.984217, target_temp: 20.000000, diff: -0.015783, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 10:54:23
House ID: 12 -- OD_temp : 33.930163, ID_temp: 19.852496, target_temp: 20.000000, diff: -0.147504, HVAC on: False, HVAC lockdown: 20, date: 2021-03-15 10:54:23
House ID: 13 -- OD_temp : 33.930163, ID_temp: 20.065096, target_temp: 20.000000, diff: 0.065096, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 10:54:23
House ID: 14 -- OD_temp : 33.930163, ID_temp: 20.675168, target_temp: 20.000000, diff: 0.675168, HVAC on: False, HVAC lockdown: 32, date: 2021-03-15 10:54:23
House ID: 15 -- OD_temp : 33.930163, ID_temp: 20.146932, target_temp: 20.000000, diff: 0.146932, HVAC on: False, HVAC lockdown: 20, date: 2021-03-15 10:54:23
House ID: 16 -- OD_temp : 33.930163, ID_temp: 20.252357, target_temp: 20.000000, diff: 0.252357, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 17 -- OD_temp : 33.930163, ID_temp: 20.366263, target_temp: 20.000000, diff: 0.366263, HVAC on: False, HVAC lockdown: 24, date: 2021-03-15 10:54:23
House ID: 18 -- OD_temp : 33.930163, ID_temp: 19.587868, target_temp: 20.000000, diff: -0.412132, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 10:54:23
House ID: 19 -- OD_temp : 33.930163, ID_temp: 20.223872, target_temp: 20.000000, diff: 0.223872, HVAC on: False, HVAC lockdown: 36, date: 2021-03-15 10:54:23
House ID: 0 -- OD_temp : 28.749972, ID_temp: 18.696940, target_temp: 20.000000, diff: -1.303060, HVAC on: False, HVAC lockdown: 36, date: 2021-03-15 22:01:03
House ID: 1 -- OD_temp : 28.749972, ID_temp: 18.746624, target_temp: 20.000000, diff: -1.253376, HVAC on: False, HVAC lockdown: 32, date: 2021-03-15 22:01:03
House ID: 2 -- OD_temp : 28.749972, ID_temp: 18.653921, target_temp: 20.000000, diff: -1.346079, HVAC on: False, HVAC lockdown: 16, date: 2021-03-15 22:01:03
House ID: 3 -- OD_temp : 28.749972, ID_temp: 18.215907, target_temp: 20.000000, diff: -1.784093, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 4 -- OD_temp : 28.749972, ID_temp: 19.205699, target_temp: 20.000000, diff: -0.794301, HVAC on: False, HVAC lockdown: 28, date: 2021-03-15 22:01:03
House ID: 5 -- OD_temp : 28.749972, ID_temp: 18.589938, target_temp: 20.000000, diff: -1.410062, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 6 -- OD_temp : 28.749972, ID_temp: 18.155002, target_temp: 20.000000, diff: -1.844998, HVAC on: False, HVAC lockdown: 4, date: 2021-03-15 22:01:03
House ID: 7 -- OD_temp : 28.749972, ID_temp: 18.572966, target_temp: 20.000000, diff: -1.427034, HVAC on: False, HVAC lockdown: 4, date: 2021-03-15 22:01:03
House ID: 8 -- OD_temp : 28.749972, ID_temp: 18.178572, target_temp: 20.000000, diff: -1.821428, HVAC on: False, HVAC lockdown: 32, date: 2021-03-15 22:01:03
House ID: 9 -- OD_temp : 28.749972, ID_temp: 18.408851, target_temp: 20.000000, diff: -1.591149, HVAC on: False, HVAC lockdown: 24, date: 2021-03-15 22:01:03
House ID: 10 -- OD_temp : 28.749972, ID_temp: 18.476053, target_temp: 20.000000, diff: -1.523947, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 11 -- OD_temp : 28.749972, ID_temp: 17.754138, target_temp: 20.000000, diff: -2.245862, HVAC on: False, HVAC lockdown: 12, date: 2021-03-15 22:01:03
House ID: 12 -- OD_temp : 28.749972, ID_temp: 18.669581, target_temp: 20.000000, diff: -1.330419, HVAC on: False, HVAC lockdown: 16, date: 2021-03-15 22:01:03
House ID: 13 -- OD_temp : 28.749972, ID_temp: 18.137337, target_temp: 20.000000, diff: -1.862663, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 14 -- OD_temp : 28.749972, ID_temp: 18.729996, target_temp: 20.000000, diff: -1.270004, HVAC on: False, HVAC lockdown: 4, date: 2021-03-15 22:01:03
House ID: 15 -- OD_temp : 28.749972, ID_temp: 18.052326, target_temp: 20.000000, diff: -1.947674, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 16 -- OD_temp : 28.749972, ID_temp: 18.161548, target_temp: 20.000000, diff: -1.838452, HVAC on: False, HVAC lockdown: 36, date: 2021-03-15 22:01:03
House ID: 17 -- OD_temp : 28.749972, ID_temp: 18.627489, target_temp: 20.000000, diff: -1.372511, HVAC on: False, HVAC lockdown: 24, date: 2021-03-15 22:01:03
House ID: 18 -- OD_temp : 28.749972, ID_temp: 18.211093, target_temp: 20.000000, diff: -1.788907, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
House ID: 19 -- OD_temp : 28.749972, ID_temp: 18.565586, target_temp: 20.000000, diff: -1.434414, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-15 22:01:03
Training step - 32767
House ID: 0 -- OD_temp : 31.227584, ID_temp: 17.846664, target_temp: 20.000000, diff: -2.153336, HVAC on: False, HVAC lockdown: 32, date: 2021-07-06 05:07:01
House ID: 1 -- OD_temp : 31.227584, ID_temp: 18.206592, target_temp: 20.000000, diff: -1.793408, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 2 -- OD_temp : 31.227584, ID_temp: 17.976630, target_temp: 20.000000, diff: -2.023370, HVAC on: False, HVAC lockdown: 16, date: 2021-07-06 05:07:01
House ID: 3 -- OD_temp : 31.227584, ID_temp: 17.580564, target_temp: 20.000000, diff: -2.419436, HVAC on: 0, HVAC lockdown: 40, date: 2021-07-06 05:07:01
House ID: 4 -- OD_temp : 31.227584, ID_temp: 18.761110, target_temp: 20.000000, diff: -1.238890, HVAC on: False, HVAC lockdown: 16, date: 2021-07-06 05:07:01
House ID: 5 -- OD_temp : 31.227584, ID_temp: 17.955247, target_temp: 20.000000, diff: -2.044753, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 6 -- OD_temp : 31.227584, ID_temp: 17.944263, target_temp: 20.000000, diff: -2.055737, HVAC on: False, HVAC lockdown: 16, date: 2021-07-06 05:07:01
House ID: 7 -- OD_temp : 31.227584, ID_temp: 17.942452, target_temp: 20.000000, diff: -2.057548, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 8 -- OD_temp : 31.227584, ID_temp: 17.694074, target_temp: 20.000000, diff: -2.305926, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 9 -- OD_temp : 31.227584, ID_temp: 18.562026, target_temp: 20.000000, diff: -1.437974, HVAC on: False, HVAC lockdown: 16, date: 2021-07-06 05:07:01
House ID: 10 -- OD_temp : 31.227584, ID_temp: 17.645009, target_temp: 20.000000, diff: -2.354991, HVAC on: False, HVAC lockdown: 24, date: 2021-07-06 05:07:01
House ID: 11 -- OD_temp : 31.227584, ID_temp: 17.407054, target_temp: 20.000000, diff: -2.592946, HVAC on: False, HVAC lockdown: 16, date: 2021-07-06 05:07:01
House ID: 12 -- OD_temp : 31.227584, ID_temp: 16.949138, target_temp: 20.000000, diff: -3.050862, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 13 -- OD_temp : 31.227584, ID_temp: 17.382241, target_temp: 20.000000, diff: -2.617759, HVAC on: False, HVAC lockdown: 16, date: 2021-07-06 05:07:01
House ID: 14 -- OD_temp : 31.227584, ID_temp: 17.663786, target_temp: 20.000000, diff: -2.336214, HVAC on: False, HVAC lockdown: 16, date: 2021-07-06 05:07:01
House ID: 15 -- OD_temp : 31.227584, ID_temp: 18.160257, target_temp: 20.000000, diff: -1.839743, HVAC on: False, HVAC lockdown: 36, date: 2021-07-06 05:07:01
House ID: 16 -- OD_temp : 31.227584, ID_temp: 19.287469, target_temp: 20.000000, diff: -0.712531, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 17 -- OD_temp : 31.227584, ID_temp: 16.751498, target_temp: 20.000000, diff: -3.248502, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
House ID: 18 -- OD_temp : 31.227584, ID_temp: 17.731982, target_temp: 20.000000, diff: -2.268018, HVAC on: False, HVAC lockdown: 24, date: 2021-07-06 05:07:01
House ID: 19 -- OD_temp : 31.227584, ID_temp: 17.481902, target_temp: 20.000000, diff: -2.518098, HVAC on: 1, HVAC lockdown: 0, date: 2021-07-06 05:07:01
New episode at time 49151
Updating agent at time 49151
UPDATING
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
House ID: 0 -- OD_temp : 29.065040, ID_temp: 19.257228, target_temp: 20.000000, diff: -0.742772, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 1 -- OD_temp : 29.065040, ID_temp: 19.150328, target_temp: 20.000000, diff: -0.849672, HVAC on: False, HVAC lockdown: 12, date: 2021-02-28 21:13:07
House ID: 2 -- OD_temp : 29.065040, ID_temp: 18.722871, target_temp: 20.000000, diff: -1.277129, HVAC on: False, HVAC lockdown: 24, date: 2021-02-28 21:13:07
House ID: 3 -- OD_temp : 29.065040, ID_temp: 18.916985, target_temp: 20.000000, diff: -1.083015, HVAC on: False, HVAC lockdown: 24, date: 2021-02-28 21:13:07
House ID: 4 -- OD_temp : 29.065040, ID_temp: 19.705608, target_temp: 20.000000, diff: -0.294392, HVAC on: 0, HVAC lockdown: 48, date: 2021-02-28 21:13:07
House ID: 5 -- OD_temp : 29.065040, ID_temp: 19.048737, target_temp: 20.000000, diff: -0.951263, HVAC on: False, HVAC lockdown: 20, date: 2021-02-28 21:13:07
House ID: 6 -- OD_temp : 29.065040, ID_temp: 20.421721, target_temp: 20.000000, diff: 0.421721, HVAC on: False, HVAC lockdown: 28, date: 2021-02-28 21:13:07
House ID: 7 -- OD_temp : 29.065040, ID_temp: 19.546690, target_temp: 20.000000, diff: -0.453310, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 8 -- OD_temp : 29.065040, ID_temp: 19.430705, target_temp: 20.000000, diff: -0.569295, HVAC on: False, HVAC lockdown: 32, date: 2021-02-28 21:13:07
House ID: 9 -- OD_temp : 29.065040, ID_temp: 19.143705, target_temp: 20.000000, diff: -0.856295, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 10 -- OD_temp : 29.065040, ID_temp: 19.242851, target_temp: 20.000000, diff: -0.757149, HVAC on: False, HVAC lockdown: 36, date: 2021-02-28 21:13:07
House ID: 11 -- OD_temp : 29.065040, ID_temp: 18.817198, target_temp: 20.000000, diff: -1.182802, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 12 -- OD_temp : 29.065040, ID_temp: 19.489110, target_temp: 20.000000, diff: -0.510890, HVAC on: False, HVAC lockdown: 28, date: 2021-02-28 21:13:07
House ID: 13 -- OD_temp : 29.065040, ID_temp: 19.429513, target_temp: 20.000000, diff: -0.570487, HVAC on: False, HVAC lockdown: 16, date: 2021-02-28 21:13:07
House ID: 14 -- OD_temp : 29.065040, ID_temp: 19.517499, target_temp: 20.000000, diff: -0.482501, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 15 -- OD_temp : 29.065040, ID_temp: 18.957036, target_temp: 20.000000, diff: -1.042964, HVAC on: False, HVAC lockdown: 28, date: 2021-02-28 21:13:07
House ID: 16 -- OD_temp : 29.065040, ID_temp: 18.936257, target_temp: 20.000000, diff: -1.063743, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 17 -- OD_temp : 29.065040, ID_temp: 19.339184, target_temp: 20.000000, diff: -0.660816, HVAC on: False, HVAC lockdown: 12, date: 2021-02-28 21:13:07
House ID: 18 -- OD_temp : 29.065040, ID_temp: 19.261539, target_temp: 20.000000, diff: -0.738461, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 19 -- OD_temp : 29.065040, ID_temp: 19.499471, target_temp: 20.000000, diff: -0.500529, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-28 21:13:07
House ID: 0 -- OD_temp : 32.855303, ID_temp: 20.194257, target_temp: 20.000000, diff: 0.194257, HVAC on: False, HVAC lockdown: 24, date: 2021-03-01 08:19:47
House ID: 1 -- OD_temp : 32.855303, ID_temp: 19.116334, target_temp: 20.000000, diff: -0.883666, HVAC on: False, HVAC lockdown: 12, date: 2021-03-01 08:19:47
House ID: 2 -- OD_temp : 32.855303, ID_temp: 20.025482, target_temp: 20.000000, diff: 0.025482, HVAC on: False, HVAC lockdown: 32, date: 2021-03-01 08:19:47
House ID: 3 -- OD_temp : 32.855303, ID_temp: 19.786467, target_temp: 20.000000, diff: -0.213533, HVAC on: False, HVAC lockdown: 16, date: 2021-03-01 08:19:47
House ID: 4 -- OD_temp : 32.855303, ID_temp: 19.937694, target_temp: 20.000000, diff: -0.062306, HVAC on: False, HVAC lockdown: 28, date: 2021-03-01 08:19:47
House ID: 5 -- OD_temp : 32.855303, ID_temp: 19.346980, target_temp: 20.000000, diff: -0.653020, HVAC on: False, HVAC lockdown: 12, date: 2021-03-01 08:19:47
House ID: 6 -- OD_temp : 32.855303, ID_temp: 20.063277, target_temp: 20.000000, diff: 0.063277, HVAC on: False, HVAC lockdown: 4, date: 2021-03-01 08:19:47
House ID: 7 -- OD_temp : 32.855303, ID_temp: 19.916964, target_temp: 20.000000, diff: -0.083036, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 8 -- OD_temp : 32.855303, ID_temp: 19.168300, target_temp: 20.000000, diff: -0.831700, HVAC on: False, HVAC lockdown: 12, date: 2021-03-01 08:19:47
House ID: 9 -- OD_temp : 32.855303, ID_temp: 19.742238, target_temp: 20.000000, diff: -0.257762, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 10 -- OD_temp : 32.855303, ID_temp: 19.647950, target_temp: 20.000000, diff: -0.352050, HVAC on: False, HVAC lockdown: 36, date: 2021-03-01 08:19:47
House ID: 11 -- OD_temp : 32.855303, ID_temp: 20.066699, target_temp: 20.000000, diff: 0.066699, HVAC on: False, HVAC lockdown: 28, date: 2021-03-01 08:19:47
House ID: 12 -- OD_temp : 32.855303, ID_temp: 19.437965, target_temp: 20.000000, diff: -0.562035, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 13 -- OD_temp : 32.855303, ID_temp: 19.394474, target_temp: 20.000000, diff: -0.605526, HVAC on: False, HVAC lockdown: 24, date: 2021-03-01 08:19:47
House ID: 14 -- OD_temp : 32.855303, ID_temp: 20.073025, target_temp: 20.000000, diff: 0.073025, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-01 08:19:47
House ID: 15 -- OD_temp : 32.855303, ID_temp: 19.890553, target_temp: 20.000000, diff: -0.109447, HVAC on: False, HVAC lockdown: 4, date: 2021-03-01 08:19:47
House ID: 16 -- OD_temp : 32.855303, ID_temp: 19.636776, target_temp: 20.000000, diff: -0.363224, HVAC on: False, HVAC lockdown: 20, date: 2021-03-01 08:19:47
House ID: 17 -- OD_temp : 32.855303, ID_temp: 19.866899, target_temp: 20.000000, diff: -0.133101, HVAC on: False, HVAC lockdown: 24, date: 2021-03-01 08:19:47
House ID: 18 -- OD_temp : 32.855303, ID_temp: 19.692043, target_temp: 20.000000, diff: -0.307957, HVAC on: False, HVAC lockdown: 28, date: 2021-03-01 08:19:47
House ID: 19 -- OD_temp : 32.855303, ID_temp: 19.851800, target_temp: 20.000000, diff: -0.148200, HVAC on: False, HVAC lockdown: 8, date: 2021-03-01 08:19:47
Training step - 49151
House ID: 0 -- OD_temp : 34.036076, ID_temp: 19.919862, target_temp: 20.000000, diff: -0.080138, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 13:58:14
House ID: 1 -- OD_temp : 34.036076, ID_temp: 20.092540, target_temp: 20.000000, diff: 0.092540, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 13:58:14
House ID: 2 -- OD_temp : 34.036076, ID_temp: 20.838448, target_temp: 20.000000, diff: 0.838448, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 13:58:14
House ID: 3 -- OD_temp : 34.036076, ID_temp: 20.463995, target_temp: 20.000000, diff: 0.463995, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 13:58:14
House ID: 4 -- OD_temp : 34.036076, ID_temp: 19.720808, target_temp: 20.000000, diff: -0.279192, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 13:58:14
House ID: 5 -- OD_temp : 34.036076, ID_temp: 21.165311, target_temp: 20.000000, diff: 1.165311, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 13:58:14
House ID: 6 -- OD_temp : 34.036076, ID_temp: 20.011577, target_temp: 20.000000, diff: 0.011577, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 13:58:14
House ID: 7 -- OD_temp : 34.036076, ID_temp: 20.126004, target_temp: 20.000000, diff: 0.126004, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 13:58:14
House ID: 8 -- OD_temp : 34.036076, ID_temp: 20.639018, target_temp: 20.000000, diff: 0.639018, HVAC on: 0, HVAC lockdown: 40, date: 2021-09-05 13:58:14
House ID: 9 -- OD_temp : 34.036076, ID_temp: 20.698529, target_temp: 20.000000, diff: 0.698529, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 13:58:14
House ID: 10 -- OD_temp : 34.036076, ID_temp: 19.415522, target_temp: 20.000000, diff: -0.584478, HVAC on: False, HVAC lockdown: 16, date: 2021-09-05 13:58:14
House ID: 11 -- OD_temp : 34.036076, ID_temp: 19.890034, target_temp: 20.000000, diff: -0.109966, HVAC on: False, HVAC lockdown: 8, date: 2021-09-05 13:58:14
House ID: 12 -- OD_temp : 34.036076, ID_temp: 20.646270, target_temp: 20.000000, diff: 0.646270, HVAC on: False, HVAC lockdown: 36, date: 2021-09-05 13:58:14
House ID: 13 -- OD_temp : 34.036076, ID_temp: 20.443297, target_temp: 20.000000, diff: 0.443297, HVAC on: False, HVAC lockdown: 28, date: 2021-09-05 13:58:14
House ID: 14 -- OD_temp : 34.036076, ID_temp: 20.454912, target_temp: 20.000000, diff: 0.454912, HVAC on: False, HVAC lockdown: 4, date: 2021-09-05 13:58:14
House ID: 15 -- OD_temp : 34.036076, ID_temp: 20.243741, target_temp: 20.000000, diff: 0.243741, HVAC on: False, HVAC lockdown: 32, date: 2021-09-05 13:58:14
House ID: 16 -- OD_temp : 34.036076, ID_temp: 20.938754, target_temp: 20.000000, diff: 0.938754, HVAC on: False, HVAC lockdown: 24, date: 2021-09-05 13:58:14
House ID: 17 -- OD_temp : 34.036076, ID_temp: 19.913592, target_temp: 20.000000, diff: -0.086408, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-05 13:58:14
House ID: 18 -- OD_temp : 34.036076, ID_temp: 19.999856, target_temp: 20.000000, diff: -0.000144, HVAC on: False, HVAC lockdown: 20, date: 2021-09-05 13:58:14
House ID: 19 -- OD_temp : 34.036076, ID_temp: 19.647058, target_temp: 20.000000, diff: -0.352942, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-05 13:58:14
New episode at time 65535
Updating agent at time 65535
UPDATING
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
House ID: 0 -- OD_temp : 28.854603, ID_temp: 19.310307, target_temp: 20.000000, diff: -0.689693, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 1 -- OD_temp : 28.854603, ID_temp: 19.589180, target_temp: 20.000000, diff: -0.410820, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 03:55:27
House ID: 2 -- OD_temp : 28.854603, ID_temp: 19.313410, target_temp: 20.000000, diff: -0.686590, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 03:55:27
House ID: 3 -- OD_temp : 28.854603, ID_temp: 19.406943, target_temp: 20.000000, diff: -0.593057, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 03:55:27
House ID: 4 -- OD_temp : 28.854603, ID_temp: 19.755572, target_temp: 20.000000, diff: -0.244428, HVAC on: False, HVAC lockdown: 20, date: 2021-05-02 03:55:27
House ID: 5 -- OD_temp : 28.854603, ID_temp: 19.541671, target_temp: 20.000000, diff: -0.458329, HVAC on: False, HVAC lockdown: 32, date: 2021-05-02 03:55:27
House ID: 6 -- OD_temp : 28.854603, ID_temp: 19.225900, target_temp: 20.000000, diff: -0.774100, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 03:55:27
House ID: 7 -- OD_temp : 28.854603, ID_temp: 19.055015, target_temp: 20.000000, diff: -0.944985, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 03:55:27
House ID: 8 -- OD_temp : 28.854603, ID_temp: 19.702380, target_temp: 20.000000, diff: -0.297620, HVAC on: False, HVAC lockdown: 20, date: 2021-05-02 03:55:27
House ID: 9 -- OD_temp : 28.854603, ID_temp: 19.545096, target_temp: 20.000000, diff: -0.454904, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 03:55:27
House ID: 10 -- OD_temp : 28.854603, ID_temp: 19.681856, target_temp: 20.000000, diff: -0.318144, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 11 -- OD_temp : 28.854603, ID_temp: 19.705421, target_temp: 20.000000, diff: -0.294579, HVAC on: False, HVAC lockdown: 36, date: 2021-05-02 03:55:27
House ID: 12 -- OD_temp : 28.854603, ID_temp: 18.851862, target_temp: 20.000000, diff: -1.148138, HVAC on: False, HVAC lockdown: 12, date: 2021-05-02 03:55:27
House ID: 13 -- OD_temp : 28.854603, ID_temp: 19.304333, target_temp: 20.000000, diff: -0.695667, HVAC on: False, HVAC lockdown: 36, date: 2021-05-02 03:55:27
House ID: 14 -- OD_temp : 28.854603, ID_temp: 19.712718, target_temp: 20.000000, diff: -0.287282, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 15 -- OD_temp : 28.854603, ID_temp: 19.199934, target_temp: 20.000000, diff: -0.800066, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 03:55:27
House ID: 16 -- OD_temp : 28.854603, ID_temp: 19.437163, target_temp: 20.000000, diff: -0.562837, HVAC on: False, HVAC lockdown: 36, date: 2021-05-02 03:55:27
House ID: 17 -- OD_temp : 28.854603, ID_temp: 20.017191, target_temp: 20.000000, diff: 0.017191, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 18 -- OD_temp : 28.854603, ID_temp: 19.247482, target_temp: 20.000000, diff: -0.752518, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 03:55:27
House ID: 19 -- OD_temp : 28.854603, ID_temp: 19.220385, target_temp: 20.000000, diff: -0.779615, HVAC on: False, HVAC lockdown: 32, date: 2021-05-02 03:55:27
House ID: 0 -- OD_temp : 34.239282, ID_temp: 20.273427, target_temp: 20.000000, diff: 0.273427, HVAC on: False, HVAC lockdown: 20, date: 2021-05-02 15:02:07
House ID: 1 -- OD_temp : 34.239282, ID_temp: 19.617279, target_temp: 20.000000, diff: -0.382721, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 15:02:07
House ID: 2 -- OD_temp : 34.239282, ID_temp: 20.053134, target_temp: 20.000000, diff: 0.053134, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-02 15:02:07
House ID: 3 -- OD_temp : 34.239282, ID_temp: 19.949525, target_temp: 20.000000, diff: -0.050475, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 4 -- OD_temp : 34.239282, ID_temp: 20.103072, target_temp: 20.000000, diff: 0.103072, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 5 -- OD_temp : 34.239282, ID_temp: 19.771801, target_temp: 20.000000, diff: -0.228199, HVAC on: False, HVAC lockdown: 28, date: 2021-05-02 15:02:07
House ID: 6 -- OD_temp : 34.239282, ID_temp: 20.145274, target_temp: 20.000000, diff: 0.145274, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 15:02:07
House ID: 7 -- OD_temp : 34.239282, ID_temp: 20.023535, target_temp: 20.000000, diff: 0.023535, HVAC on: False, HVAC lockdown: 28, date: 2021-05-02 15:02:07
House ID: 8 -- OD_temp : 34.239282, ID_temp: 19.410618, target_temp: 20.000000, diff: -0.589382, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 15:02:07
House ID: 9 -- OD_temp : 34.239282, ID_temp: 19.825957, target_temp: 20.000000, diff: -0.174043, HVAC on: False, HVAC lockdown: 28, date: 2021-05-02 15:02:07
House ID: 10 -- OD_temp : 34.239282, ID_temp: 20.177631, target_temp: 20.000000, diff: 0.177631, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 15:02:07
House ID: 11 -- OD_temp : 34.239282, ID_temp: 20.241931, target_temp: 20.000000, diff: 0.241931, HVAC on: False, HVAC lockdown: 28, date: 2021-05-02 15:02:07
House ID: 12 -- OD_temp : 34.239282, ID_temp: 19.419563, target_temp: 20.000000, diff: -0.580437, HVAC on: False, HVAC lockdown: 24, date: 2021-05-02 15:02:07
House ID: 13 -- OD_temp : 34.239282, ID_temp: 20.125887, target_temp: 20.000000, diff: 0.125887, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 14 -- OD_temp : 34.239282, ID_temp: 19.737090, target_temp: 20.000000, diff: -0.262910, HVAC on: False, HVAC lockdown: 16, date: 2021-05-02 15:02:07
House ID: 15 -- OD_temp : 34.239282, ID_temp: 20.210302, target_temp: 20.000000, diff: 0.210302, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-02 15:02:07
House ID: 16 -- OD_temp : 34.239282, ID_temp: 20.053921, target_temp: 20.000000, diff: 0.053921, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 15:02:07
House ID: 17 -- OD_temp : 34.239282, ID_temp: 19.924894, target_temp: 20.000000, diff: -0.075106, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-02 15:02:07
House ID: 18 -- OD_temp : 34.239282, ID_temp: 19.999752, target_temp: 20.000000, diff: -0.000248, HVAC on: False, HVAC lockdown: 8, date: 2021-05-02 15:02:07
House ID: 19 -- OD_temp : 34.239282, ID_temp: 19.849372, target_temp: 20.000000, diff: -0.150628, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-02 15:02:07
Training step - 65535
House ID: 0 -- OD_temp : 31.427871, ID_temp: 19.676764, target_temp: 20.000000, diff: -0.323236, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 1 -- OD_temp : 31.427871, ID_temp: 19.999761, target_temp: 20.000000, diff: -0.000239, HVAC on: False, HVAC lockdown: 36, date: 2021-12-26 06:15:46
House ID: 2 -- OD_temp : 31.427871, ID_temp: 19.423533, target_temp: 20.000000, diff: -0.576467, HVAC on: False, HVAC lockdown: 36, date: 2021-12-26 06:15:46
House ID: 3 -- OD_temp : 31.427871, ID_temp: 19.546308, target_temp: 20.000000, diff: -0.453692, HVAC on: False, HVAC lockdown: 12, date: 2021-12-26 06:15:46
House ID: 4 -- OD_temp : 31.427871, ID_temp: 19.484952, target_temp: 20.000000, diff: -0.515048, HVAC on: False, HVAC lockdown: 32, date: 2021-12-26 06:15:46
House ID: 5 -- OD_temp : 31.427871, ID_temp: 19.921876, target_temp: 20.000000, diff: -0.078124, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 6 -- OD_temp : 31.427871, ID_temp: 19.934793, target_temp: 20.000000, diff: -0.065207, HVAC on: False, HVAC lockdown: 32, date: 2021-12-26 06:15:46
House ID: 7 -- OD_temp : 31.427871, ID_temp: 19.792219, target_temp: 20.000000, diff: -0.207781, HVAC on: False, HVAC lockdown: 8, date: 2021-12-26 06:15:46
House ID: 8 -- OD_temp : 31.427871, ID_temp: 19.958063, target_temp: 20.000000, diff: -0.041937, HVAC on: False, HVAC lockdown: 16, date: 2021-12-26 06:15:46
House ID: 9 -- OD_temp : 31.427871, ID_temp: 19.439512, target_temp: 20.000000, diff: -0.560488, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 10 -- OD_temp : 31.427871, ID_temp: 19.948687, target_temp: 20.000000, diff: -0.051313, HVAC on: 0, HVAC lockdown: 40, date: 2021-12-26 06:15:46
House ID: 11 -- OD_temp : 31.427871, ID_temp: 19.629795, target_temp: 20.000000, diff: -0.370205, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 12 -- OD_temp : 31.427871, ID_temp: 20.138820, target_temp: 20.000000, diff: 0.138820, HVAC on: False, HVAC lockdown: 20, date: 2021-12-26 06:15:46
House ID: 13 -- OD_temp : 31.427871, ID_temp: 19.871317, target_temp: 20.000000, diff: -0.128683, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 14 -- OD_temp : 31.427871, ID_temp: 19.818709, target_temp: 20.000000, diff: -0.181291, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 15 -- OD_temp : 31.427871, ID_temp: 20.249841, target_temp: 20.000000, diff: 0.249841, HVAC on: False, HVAC lockdown: 36, date: 2021-12-26 06:15:46
House ID: 16 -- OD_temp : 31.427871, ID_temp: 19.658379, target_temp: 20.000000, diff: -0.341621, HVAC on: 1, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 17 -- OD_temp : 31.427871, ID_temp: 19.389328, target_temp: 20.000000, diff: -0.610672, HVAC on: 0, HVAC lockdown: 40, date: 2021-12-26 06:15:46
House ID: 18 -- OD_temp : 31.427871, ID_temp: 19.711108, target_temp: 20.000000, diff: -0.288892, HVAC on: 0, HVAC lockdown: 0, date: 2021-12-26 06:15:46
House ID: 19 -- OD_temp : 31.427871, ID_temp: 20.366910, target_temp: 20.000000, diff: 0.366910, HVAC on: False, HVAC lockdown: 28, date: 2021-12-26 06:15:46
New episode at time 81919
Updating agent at time 81919
UPDATING
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
House ID: 0 -- OD_temp : 29.077748, ID_temp: 19.944329, target_temp: 20.000000, diff: -0.055671, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 1 -- OD_temp : 29.077748, ID_temp: 19.469482, target_temp: 20.000000, diff: -0.530518, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 2 -- OD_temp : 29.077748, ID_temp: 19.938671, target_temp: 20.000000, diff: -0.061329, HVAC on: False, HVAC lockdown: 32, date: 2021-03-09 22:29:42
House ID: 3 -- OD_temp : 29.077748, ID_temp: 19.841401, target_temp: 20.000000, diff: -0.158599, HVAC on: False, HVAC lockdown: 8, date: 2021-03-09 22:29:42
House ID: 4 -- OD_temp : 29.077748, ID_temp: 19.486567, target_temp: 20.000000, diff: -0.513433, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 5 -- OD_temp : 29.077748, ID_temp: 19.635617, target_temp: 20.000000, diff: -0.364383, HVAC on: False, HVAC lockdown: 8, date: 2021-03-09 22:29:42
House ID: 6 -- OD_temp : 29.077748, ID_temp: 19.632836, target_temp: 20.000000, diff: -0.367164, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 7 -- OD_temp : 29.077748, ID_temp: 19.748145, target_temp: 20.000000, diff: -0.251855, HVAC on: False, HVAC lockdown: 20, date: 2021-03-09 22:29:42
House ID: 8 -- OD_temp : 29.077748, ID_temp: 19.905449, target_temp: 20.000000, diff: -0.094551, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 22:29:42
House ID: 9 -- OD_temp : 29.077748, ID_temp: 19.952249, target_temp: 20.000000, diff: -0.047751, HVAC on: False, HVAC lockdown: 28, date: 2021-03-09 22:29:42
House ID: 10 -- OD_temp : 29.077748, ID_temp: 19.602877, target_temp: 20.000000, diff: -0.397123, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-09 22:29:42
House ID: 11 -- OD_temp : 29.077748, ID_temp: 19.787479, target_temp: 20.000000, diff: -0.212521, HVAC on: False, HVAC lockdown: 12, date: 2021-03-09 22:29:42
House ID: 12 -- OD_temp : 29.077748, ID_temp: 19.800291, target_temp: 20.000000, diff: -0.199709, HVAC on: False, HVAC lockdown: 36, date: 2021-03-09 22:29:42
House ID: 13 -- OD_temp : 29.077748, ID_temp: 19.629906, target_temp: 20.000000, diff: -0.370094, HVAC on: False, HVAC lockdown: 36, date: 2021-03-09 22:29:42
House ID: 14 -- OD_temp : 29.077748, ID_temp: 19.854489, target_temp: 20.000000, diff: -0.145511, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 22:29:42
House ID: 15 -- OD_temp : 29.077748, ID_temp: 19.756278, target_temp: 20.000000, diff: -0.243722, HVAC on: False, HVAC lockdown: 12, date: 2021-03-09 22:29:42
House ID: 16 -- OD_temp : 29.077748, ID_temp: 19.619206, target_temp: 20.000000, diff: -0.380794, HVAC on: False, HVAC lockdown: 8, date: 2021-03-09 22:29:42
House ID: 17 -- OD_temp : 29.077748, ID_temp: 19.786601, target_temp: 20.000000, diff: -0.213399, HVAC on: False, HVAC lockdown: 20, date: 2021-03-09 22:29:42
House ID: 18 -- OD_temp : 29.077748, ID_temp: 19.578756, target_temp: 20.000000, diff: -0.421244, HVAC on: False, HVAC lockdown: 4, date: 2021-03-09 22:29:42
House ID: 19 -- OD_temp : 29.077748, ID_temp: 19.638168, target_temp: 20.000000, diff: -0.361832, HVAC on: False, HVAC lockdown: 16, date: 2021-03-09 22:29:42
House ID: 0 -- OD_temp : 33.123907, ID_temp: 20.158721, target_temp: 20.000000, diff: 0.158721, HVAC on: 0, HVAC lockdown: 40, date: 2021-03-10 09:36:22
House ID: 1 -- OD_temp : 33.123907, ID_temp: 19.903713, target_temp: 20.000000, diff: -0.096287, HVAC on: False, HVAC lockdown: 24, date: 2021-03-10 09:36:22
House ID: 2 -- OD_temp : 33.123907, ID_temp: 19.915051, target_temp: 20.000000, diff: -0.084949, HVAC on: 0, HVAC lockdown: 40, date: 2021-03-10 09:36:22
House ID: 3 -- OD_temp : 33.123907, ID_temp: 19.653544, target_temp: 20.000000, diff: -0.346456, HVAC on: False, HVAC lockdown: 12, date: 2021-03-10 09:36:22
House ID: 4 -- OD_temp : 33.123907, ID_temp: 19.535715, target_temp: 20.000000, diff: -0.464285, HVAC on: False, HVAC lockdown: 8, date: 2021-03-10 09:36:22
House ID: 5 -- OD_temp : 33.123907, ID_temp: 19.849680, target_temp: 20.000000, diff: -0.150320, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 6 -- OD_temp : 33.123907, ID_temp: 20.228190, target_temp: 20.000000, diff: 0.228190, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 7 -- OD_temp : 33.123907, ID_temp: 20.417640, target_temp: 20.000000, diff: 0.417640, HVAC on: False, HVAC lockdown: 36, date: 2021-03-10 09:36:22
House ID: 8 -- OD_temp : 33.123907, ID_temp: 20.099392, target_temp: 20.000000, diff: 0.099392, HVAC on: False, HVAC lockdown: 4, date: 2021-03-10 09:36:22
House ID: 9 -- OD_temp : 33.123907, ID_temp: 19.723377, target_temp: 20.000000, diff: -0.276623, HVAC on: False, HVAC lockdown: 20, date: 2021-03-10 09:36:22
House ID: 10 -- OD_temp : 33.123907, ID_temp: 20.085887, target_temp: 20.000000, diff: 0.085887, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 11 -- OD_temp : 33.123907, ID_temp: 20.005615, target_temp: 20.000000, diff: 0.005615, HVAC on: False, HVAC lockdown: 4, date: 2021-03-10 09:36:22
House ID: 12 -- OD_temp : 33.123907, ID_temp: 19.534795, target_temp: 20.000000, diff: -0.465205, HVAC on: False, HVAC lockdown: 12, date: 2021-03-10 09:36:22
House ID: 13 -- OD_temp : 33.123907, ID_temp: 20.117532, target_temp: 20.000000, diff: 0.117532, HVAC on: False, HVAC lockdown: 16, date: 2021-03-10 09:36:22
House ID: 14 -- OD_temp : 33.123907, ID_temp: 20.103227, target_temp: 20.000000, diff: 0.103227, HVAC on: False, HVAC lockdown: 28, date: 2021-03-10 09:36:22
House ID: 15 -- OD_temp : 33.123907, ID_temp: 20.062463, target_temp: 20.000000, diff: 0.062463, HVAC on: False, HVAC lockdown: 4, date: 2021-03-10 09:36:22
House ID: 16 -- OD_temp : 33.123907, ID_temp: 19.924462, target_temp: 20.000000, diff: -0.075538, HVAC on: False, HVAC lockdown: 4, date: 2021-03-10 09:36:22
House ID: 17 -- OD_temp : 33.123907, ID_temp: 20.076157, target_temp: 20.000000, diff: 0.076157, HVAC on: False, HVAC lockdown: 20, date: 2021-03-10 09:36:22
House ID: 18 -- OD_temp : 33.123907, ID_temp: 19.710045, target_temp: 20.000000, diff: -0.289955, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-10 09:36:22
House ID: 19 -- OD_temp : 33.123907, ID_temp: 20.057825, target_temp: 20.000000, diff: 0.057825, HVAC on: False, HVAC lockdown: 4, date: 2021-03-10 09:36:22
Training step - 81919
House ID: 0 -- OD_temp : 29.850285, ID_temp: 19.983243, target_temp: 20.000000, diff: -0.016757, HVAC on: 0, HVAC lockdown: 44, date: 2021-08-08 04:17:36
House ID: 1 -- OD_temp : 29.850285, ID_temp: 19.794198, target_temp: 20.000000, diff: -0.205802, HVAC on: False, HVAC lockdown: 24, date: 2021-08-08 04:17:36
House ID: 2 -- OD_temp : 29.850285, ID_temp: 19.702717, target_temp: 20.000000, diff: -0.297283, HVAC on: False, HVAC lockdown: 8, date: 2021-08-08 04:17:36
House ID: 3 -- OD_temp : 29.850285, ID_temp: 19.835709, target_temp: 20.000000, diff: -0.164291, HVAC on: False, HVAC lockdown: 28, date: 2021-08-08 04:17:36
House ID: 4 -- OD_temp : 29.850285, ID_temp: 19.876858, target_temp: 20.000000, diff: -0.123142, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 04:17:36
House ID: 5 -- OD_temp : 29.850285, ID_temp: 19.635466, target_temp: 20.000000, diff: -0.364534, HVAC on: False, HVAC lockdown: 8, date: 2021-08-08 04:17:36
House ID: 6 -- OD_temp : 29.850285, ID_temp: 20.070576, target_temp: 20.000000, diff: 0.070576, HVAC on: False, HVAC lockdown: 28, date: 2021-08-08 04:17:36
House ID: 7 -- OD_temp : 29.850285, ID_temp: 19.663530, target_temp: 20.000000, diff: -0.336470, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 8 -- OD_temp : 29.850285, ID_temp: 19.796167, target_temp: 20.000000, diff: -0.203833, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 04:17:36
House ID: 9 -- OD_temp : 29.850285, ID_temp: 19.893128, target_temp: 20.000000, diff: -0.106872, HVAC on: False, HVAC lockdown: 20, date: 2021-08-08 04:17:36
House ID: 10 -- OD_temp : 29.850285, ID_temp: 19.568429, target_temp: 20.000000, diff: -0.431571, HVAC on: False, HVAC lockdown: 28, date: 2021-08-08 04:17:36
House ID: 11 -- OD_temp : 29.850285, ID_temp: 20.023658, target_temp: 20.000000, diff: 0.023658, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 04:17:36
House ID: 12 -- OD_temp : 29.850285, ID_temp: 19.888535, target_temp: 20.000000, diff: -0.111465, HVAC on: False, HVAC lockdown: 20, date: 2021-08-08 04:17:36
House ID: 13 -- OD_temp : 29.850285, ID_temp: 19.678294, target_temp: 20.000000, diff: -0.321706, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 14 -- OD_temp : 29.850285, ID_temp: 19.770300, target_temp: 20.000000, diff: -0.229700, HVAC on: False, HVAC lockdown: 20, date: 2021-08-08 04:17:36
House ID: 15 -- OD_temp : 29.850285, ID_temp: 19.668003, target_temp: 20.000000, diff: -0.331997, HVAC on: False, HVAC lockdown: 8, date: 2021-08-08 04:17:36
House ID: 16 -- OD_temp : 29.850285, ID_temp: 19.821398, target_temp: 20.000000, diff: -0.178602, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 17 -- OD_temp : 29.850285, ID_temp: 19.955824, target_temp: 20.000000, diff: -0.044176, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
House ID: 18 -- OD_temp : 29.850285, ID_temp: 19.792734, target_temp: 20.000000, diff: -0.207266, HVAC on: False, HVAC lockdown: 20, date: 2021-08-08 04:17:36
House ID: 19 -- OD_temp : 29.850285, ID_temp: 19.763223, target_temp: 20.000000, diff: -0.236777, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 04:17:36
New episode at time 98303
Updating agent at time 98303
UPDATING
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
House ID: 0 -- OD_temp : 29.695471, ID_temp: 19.947396, target_temp: 20.000000, diff: -0.052604, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 1 -- OD_temp : 29.695471, ID_temp: 19.555197, target_temp: 20.000000, diff: -0.444803, HVAC on: 0, HVAC lockdown: 68, date: 2021-09-30 04:58:53
House ID: 2 -- OD_temp : 29.695471, ID_temp: 19.645437, target_temp: 20.000000, diff: -0.354563, HVAC on: False, HVAC lockdown: 20, date: 2021-09-30 04:58:53
House ID: 3 -- OD_temp : 29.695471, ID_temp: 19.971708, target_temp: 20.000000, diff: -0.028292, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 04:58:53
House ID: 4 -- OD_temp : 29.695471, ID_temp: 19.710438, target_temp: 20.000000, diff: -0.289562, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 5 -- OD_temp : 29.695471, ID_temp: 20.261349, target_temp: 20.000000, diff: 0.261349, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 04:58:53
House ID: 6 -- OD_temp : 29.695471, ID_temp: 20.119401, target_temp: 20.000000, diff: 0.119401, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 04:58:53
House ID: 7 -- OD_temp : 29.695471, ID_temp: 19.735897, target_temp: 20.000000, diff: -0.264103, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 8 -- OD_temp : 29.695471, ID_temp: 19.590016, target_temp: 20.000000, diff: -0.409984, HVAC on: False, HVAC lockdown: 28, date: 2021-09-30 04:58:53
House ID: 9 -- OD_temp : 29.695471, ID_temp: 19.928440, target_temp: 20.000000, diff: -0.071560, HVAC on: False, HVAC lockdown: 12, date: 2021-09-30 04:58:53
House ID: 10 -- OD_temp : 29.695471, ID_temp: 20.167406, target_temp: 20.000000, diff: 0.167406, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 11 -- OD_temp : 29.695471, ID_temp: 20.146579, target_temp: 20.000000, diff: 0.146579, HVAC on: False, HVAC lockdown: 28, date: 2021-09-30 04:58:53
House ID: 12 -- OD_temp : 29.695471, ID_temp: 20.015749, target_temp: 20.000000, diff: 0.015749, HVAC on: False, HVAC lockdown: 36, date: 2021-09-30 04:58:53
House ID: 13 -- OD_temp : 29.695471, ID_temp: 19.572222, target_temp: 20.000000, diff: -0.427778, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 04:58:53
House ID: 14 -- OD_temp : 29.695471, ID_temp: 19.919066, target_temp: 20.000000, diff: -0.080934, HVAC on: False, HVAC lockdown: 36, date: 2021-09-30 04:58:53
House ID: 15 -- OD_temp : 29.695471, ID_temp: 19.971921, target_temp: 20.000000, diff: -0.028079, HVAC on: False, HVAC lockdown: 36, date: 2021-09-30 04:58:53
House ID: 16 -- OD_temp : 29.695471, ID_temp: 19.866091, target_temp: 20.000000, diff: -0.133909, HVAC on: False, HVAC lockdown: 12, date: 2021-09-30 04:58:53
House ID: 17 -- OD_temp : 29.695471, ID_temp: 20.072354, target_temp: 20.000000, diff: 0.072354, HVAC on: False, HVAC lockdown: 36, date: 2021-09-30 04:58:53
House ID: 18 -- OD_temp : 29.695471, ID_temp: 19.891967, target_temp: 20.000000, diff: -0.108033, HVAC on: False, HVAC lockdown: 36, date: 2021-09-30 04:58:53
House ID: 19 -- OD_temp : 29.695471, ID_temp: 20.197626, target_temp: 20.000000, diff: 0.197626, HVAC on: False, HVAC lockdown: 24, date: 2021-09-30 04:58:53
House ID: 0 -- OD_temp : 32.268021, ID_temp: 19.623968, target_temp: 20.000000, diff: -0.376032, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 1 -- OD_temp : 32.268021, ID_temp: 20.116646, target_temp: 20.000000, diff: 0.116646, HVAC on: False, HVAC lockdown: 28, date: 2021-09-30 16:05:33
House ID: 2 -- OD_temp : 32.268021, ID_temp: 19.637713, target_temp: 20.000000, diff: -0.362287, HVAC on: False, HVAC lockdown: 8, date: 2021-09-30 16:05:33
House ID: 3 -- OD_temp : 32.268021, ID_temp: 20.096576, target_temp: 20.000000, diff: 0.096576, HVAC on: False, HVAC lockdown: 12, date: 2021-09-30 16:05:33
House ID: 4 -- OD_temp : 32.268021, ID_temp: 20.451837, target_temp: 20.000000, diff: 0.451837, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 5 -- OD_temp : 32.268021, ID_temp: 20.131483, target_temp: 20.000000, diff: 0.131483, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 16:05:33
House ID: 6 -- OD_temp : 32.268021, ID_temp: 19.654084, target_temp: 20.000000, diff: -0.345916, HVAC on: False, HVAC lockdown: 8, date: 2021-09-30 16:05:33
House ID: 7 -- OD_temp : 32.268021, ID_temp: 19.790923, target_temp: 20.000000, diff: -0.209077, HVAC on: False, HVAC lockdown: 32, date: 2021-09-30 16:05:33
House ID: 8 -- OD_temp : 32.268021, ID_temp: 20.033646, target_temp: 20.000000, diff: 0.033646, HVAC on: False, HVAC lockdown: 16, date: 2021-09-30 16:05:33
House ID: 9 -- OD_temp : 32.268021, ID_temp: 19.639467, target_temp: 20.000000, diff: -0.360533, HVAC on: 0, HVAC lockdown: 44, date: 2021-09-30 16:05:33
House ID: 10 -- OD_temp : 32.268021, ID_temp: 20.181774, target_temp: 20.000000, diff: 0.181774, HVAC on: False, HVAC lockdown: 32, date: 2021-09-30 16:05:33
House ID: 11 -- OD_temp : 32.268021, ID_temp: 20.306032, target_temp: 20.000000, diff: 0.306032, HVAC on: False, HVAC lockdown: 4, date: 2021-09-30 16:05:33
House ID: 12 -- OD_temp : 32.268021, ID_temp: 19.883940, target_temp: 20.000000, diff: -0.116060, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 13 -- OD_temp : 32.268021, ID_temp: 20.237364, target_temp: 20.000000, diff: 0.237364, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 14 -- OD_temp : 32.268021, ID_temp: 19.533618, target_temp: 20.000000, diff: -0.466382, HVAC on: False, HVAC lockdown: 20, date: 2021-09-30 16:05:33
House ID: 15 -- OD_temp : 32.268021, ID_temp: 19.946260, target_temp: 20.000000, diff: -0.053740, HVAC on: 0, HVAC lockdown: 40, date: 2021-09-30 16:05:33
House ID: 16 -- OD_temp : 32.268021, ID_temp: 19.733526, target_temp: 20.000000, diff: -0.266474, HVAC on: 0, HVAC lockdown: 44, date: 2021-09-30 16:05:33
House ID: 17 -- OD_temp : 32.268021, ID_temp: 20.163841, target_temp: 20.000000, diff: 0.163841, HVAC on: False, HVAC lockdown: 36, date: 2021-09-30 16:05:33
House ID: 18 -- OD_temp : 32.268021, ID_temp: 20.286740, target_temp: 20.000000, diff: 0.286740, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
House ID: 19 -- OD_temp : 32.268021, ID_temp: 19.860438, target_temp: 20.000000, diff: -0.139562, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-30 16:05:33
Training step - 98303
House ID: 0 -- OD_temp : 33.818862, ID_temp: 20.209646, target_temp: 20.000000, diff: 0.209646, HVAC on: False, HVAC lockdown: 32, date: 2021-06-22 11:49:40
House ID: 1 -- OD_temp : 33.818862, ID_temp: 20.330870, target_temp: 20.000000, diff: 0.330870, HVAC on: False, HVAC lockdown: 28, date: 2021-06-22 11:49:40
House ID: 2 -- OD_temp : 33.818862, ID_temp: 20.326781, target_temp: 20.000000, diff: 0.326781, HVAC on: False, HVAC lockdown: 16, date: 2021-06-22 11:49:40
House ID: 3 -- OD_temp : 33.818862, ID_temp: 20.266085, target_temp: 20.000000, diff: 0.266085, HVAC on: 0, HVAC lockdown: 40, date: 2021-06-22 11:49:40
House ID: 4 -- OD_temp : 33.818862, ID_temp: 19.795577, target_temp: 20.000000, diff: -0.204423, HVAC on: False, HVAC lockdown: 12, date: 2021-06-22 11:49:40
House ID: 5 -- OD_temp : 33.818862, ID_temp: 19.850940, target_temp: 20.000000, diff: -0.149060, HVAC on: False, HVAC lockdown: 16, date: 2021-06-22 11:49:40
House ID: 6 -- OD_temp : 33.818862, ID_temp: 20.010338, target_temp: 20.000000, diff: 0.010338, HVAC on: False, HVAC lockdown: 36, date: 2021-06-22 11:49:40
House ID: 7 -- OD_temp : 33.818862, ID_temp: 19.988302, target_temp: 20.000000, diff: -0.011698, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 8 -- OD_temp : 33.818862, ID_temp: 20.280033, target_temp: 20.000000, diff: 0.280033, HVAC on: 0, HVAC lockdown: 56, date: 2021-06-22 11:49:40
House ID: 9 -- OD_temp : 33.818862, ID_temp: 19.790601, target_temp: 20.000000, diff: -0.209399, HVAC on: False, HVAC lockdown: 12, date: 2021-06-22 11:49:40
House ID: 10 -- OD_temp : 33.818862, ID_temp: 19.724744, target_temp: 20.000000, diff: -0.275256, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 11 -- OD_temp : 33.818862, ID_temp: 20.242730, target_temp: 20.000000, diff: 0.242730, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 12 -- OD_temp : 33.818862, ID_temp: 19.901928, target_temp: 20.000000, diff: -0.098072, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 13 -- OD_temp : 33.818862, ID_temp: 19.943047, target_temp: 20.000000, diff: -0.056953, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 14 -- OD_temp : 33.818862, ID_temp: 19.948538, target_temp: 20.000000, diff: -0.051462, HVAC on: False, HVAC lockdown: 12, date: 2021-06-22 11:49:40
House ID: 15 -- OD_temp : 33.818862, ID_temp: 19.736463, target_temp: 20.000000, diff: -0.263537, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 16 -- OD_temp : 33.818862, ID_temp: 19.875840, target_temp: 20.000000, diff: -0.124160, HVAC on: False, HVAC lockdown: 16, date: 2021-06-22 11:49:40
House ID: 17 -- OD_temp : 33.818862, ID_temp: 20.226101, target_temp: 20.000000, diff: 0.226101, HVAC on: False, HVAC lockdown: 24, date: 2021-06-22 11:49:40
House ID: 18 -- OD_temp : 33.818862, ID_temp: 20.111195, target_temp: 20.000000, diff: 0.111195, HVAC on: 0, HVAC lockdown: 0, date: 2021-06-22 11:49:40
House ID: 19 -- OD_temp : 33.818862, ID_temp: 20.286771, target_temp: 20.000000, diff: 0.286771, HVAC on: 1, HVAC lockdown: 0, date: 2021-06-22 11:49:40
New episode at time 114687
Updating agent at time 114687
UPDATING
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
House ID: 0 -- OD_temp : 33.440583, ID_temp: 20.022847, target_temp: 20.000000, diff: 0.022847, HVAC on: False, HVAC lockdown: 16, date: 2021-05-29 11:48:51
House ID: 1 -- OD_temp : 33.440583, ID_temp: 20.024667, target_temp: 20.000000, diff: 0.024667, HVAC on: False, HVAC lockdown: 20, date: 2021-05-29 11:48:51
House ID: 2 -- OD_temp : 33.440583, ID_temp: 20.134684, target_temp: 20.000000, diff: 0.134684, HVAC on: False, HVAC lockdown: 8, date: 2021-05-29 11:48:51
House ID: 3 -- OD_temp : 33.440583, ID_temp: 19.896141, target_temp: 20.000000, diff: -0.103859, HVAC on: False, HVAC lockdown: 4, date: 2021-05-29 11:48:51
House ID: 4 -- OD_temp : 33.440583, ID_temp: 19.898227, target_temp: 20.000000, diff: -0.101773, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 5 -- OD_temp : 33.440583, ID_temp: 19.582616, target_temp: 20.000000, diff: -0.417384, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 6 -- OD_temp : 33.440583, ID_temp: 19.868571, target_temp: 20.000000, diff: -0.131429, HVAC on: False, HVAC lockdown: 24, date: 2021-05-29 11:48:51
House ID: 7 -- OD_temp : 33.440583, ID_temp: 20.292777, target_temp: 20.000000, diff: 0.292777, HVAC on: False, HVAC lockdown: 32, date: 2021-05-29 11:48:51
House ID: 8 -- OD_temp : 33.440583, ID_temp: 19.830948, target_temp: 20.000000, diff: -0.169052, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 9 -- OD_temp : 33.440583, ID_temp: 19.968964, target_temp: 20.000000, diff: -0.031036, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 10 -- OD_temp : 33.440583, ID_temp: 19.953535, target_temp: 20.000000, diff: -0.046465, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 11:48:51
House ID: 11 -- OD_temp : 33.440583, ID_temp: 20.058284, target_temp: 20.000000, diff: 0.058284, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 12 -- OD_temp : 33.440583, ID_temp: 20.240349, target_temp: 20.000000, diff: 0.240349, HVAC on: False, HVAC lockdown: 24, date: 2021-05-29 11:48:51
House ID: 13 -- OD_temp : 33.440583, ID_temp: 20.236039, target_temp: 20.000000, diff: 0.236039, HVAC on: False, HVAC lockdown: 24, date: 2021-05-29 11:48:51
House ID: 14 -- OD_temp : 33.440583, ID_temp: 20.393707, target_temp: 20.000000, diff: 0.393707, HVAC on: False, HVAC lockdown: 12, date: 2021-05-29 11:48:51
House ID: 15 -- OD_temp : 33.440583, ID_temp: 20.228622, target_temp: 20.000000, diff: 0.228622, HVAC on: False, HVAC lockdown: 4, date: 2021-05-29 11:48:51
House ID: 16 -- OD_temp : 33.440583, ID_temp: 19.934781, target_temp: 20.000000, diff: -0.065219, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-29 11:48:51
House ID: 17 -- OD_temp : 33.440583, ID_temp: 19.851467, target_temp: 20.000000, diff: -0.148533, HVAC on: False, HVAC lockdown: 24, date: 2021-05-29 11:48:51
House ID: 18 -- OD_temp : 33.440583, ID_temp: 20.065832, target_temp: 20.000000, diff: 0.065832, HVAC on: False, HVAC lockdown: 32, date: 2021-05-29 11:48:51
House ID: 19 -- OD_temp : 33.440583, ID_temp: 19.612641, target_temp: 20.000000, diff: -0.387359, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 11:48:51
House ID: 0 -- OD_temp : 28.227258, ID_temp: 19.806973, target_temp: 20.000000, diff: -0.193027, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 1 -- OD_temp : 28.227258, ID_temp: 19.975651, target_temp: 20.000000, diff: -0.024349, HVAC on: False, HVAC lockdown: 4, date: 2021-05-29 22:55:31
House ID: 2 -- OD_temp : 28.227258, ID_temp: 19.755869, target_temp: 20.000000, diff: -0.244131, HVAC on: False, HVAC lockdown: 12, date: 2021-05-29 22:55:31
House ID: 3 -- OD_temp : 28.227258, ID_temp: 19.957812, target_temp: 20.000000, diff: -0.042188, HVAC on: False, HVAC lockdown: 24, date: 2021-05-29 22:55:31
House ID: 4 -- OD_temp : 28.227258, ID_temp: 20.053788, target_temp: 20.000000, diff: 0.053788, HVAC on: False, HVAC lockdown: 20, date: 2021-05-29 22:55:31
House ID: 5 -- OD_temp : 28.227258, ID_temp: 19.616825, target_temp: 20.000000, diff: -0.383175, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 6 -- OD_temp : 28.227258, ID_temp: 20.113443, target_temp: 20.000000, diff: 0.113443, HVAC on: False, HVAC lockdown: 12, date: 2021-05-29 22:55:31
House ID: 7 -- OD_temp : 28.227258, ID_temp: 19.965915, target_temp: 20.000000, diff: -0.034085, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 8 -- OD_temp : 28.227258, ID_temp: 19.938557, target_temp: 20.000000, diff: -0.061443, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 22:55:31
House ID: 9 -- OD_temp : 28.227258, ID_temp: 19.813408, target_temp: 20.000000, diff: -0.186592, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 10 -- OD_temp : 28.227258, ID_temp: 19.990628, target_temp: 20.000000, diff: -0.009372, HVAC on: False, HVAC lockdown: 16, date: 2021-05-29 22:55:31
House ID: 11 -- OD_temp : 28.227258, ID_temp: 19.819980, target_temp: 20.000000, diff: -0.180020, HVAC on: False, HVAC lockdown: 28, date: 2021-05-29 22:55:31
House ID: 12 -- OD_temp : 28.227258, ID_temp: 20.032667, target_temp: 20.000000, diff: 0.032667, HVAC on: False, HVAC lockdown: 20, date: 2021-05-29 22:55:31
House ID: 13 -- OD_temp : 28.227258, ID_temp: 20.038163, target_temp: 20.000000, diff: 0.038163, HVAC on: False, HVAC lockdown: 28, date: 2021-05-29 22:55:31
House ID: 14 -- OD_temp : 28.227258, ID_temp: 20.021569, target_temp: 20.000000, diff: 0.021569, HVAC on: False, HVAC lockdown: 16, date: 2021-05-29 22:55:31
House ID: 15 -- OD_temp : 28.227258, ID_temp: 19.824719, target_temp: 20.000000, diff: -0.175281, HVAC on: False, HVAC lockdown: 28, date: 2021-05-29 22:55:31
House ID: 16 -- OD_temp : 28.227258, ID_temp: 19.525384, target_temp: 20.000000, diff: -0.474616, HVAC on: False, HVAC lockdown: 20, date: 2021-05-29 22:55:31
House ID: 17 -- OD_temp : 28.227258, ID_temp: 19.979135, target_temp: 20.000000, diff: -0.020865, HVAC on: False, HVAC lockdown: 36, date: 2021-05-29 22:55:31
House ID: 18 -- OD_temp : 28.227258, ID_temp: 19.815142, target_temp: 20.000000, diff: -0.184858, HVAC on: 0, HVAC lockdown: 0, date: 2021-05-29 22:55:31
House ID: 19 -- OD_temp : 28.227258, ID_temp: 19.864783, target_temp: 20.000000, diff: -0.135217, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-29 22:55:31
Training step - 114687
House ID: 0 -- OD_temp : 28.403654, ID_temp: 19.795033, target_temp: 20.000000, diff: -0.204967, HVAC on: False, HVAC lockdown: 16, date: 2021-08-17 23:49:23
House ID: 1 -- OD_temp : 28.403654, ID_temp: 19.969571, target_temp: 20.000000, diff: -0.030429, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 2 -- OD_temp : 28.403654, ID_temp: 19.820059, target_temp: 20.000000, diff: -0.179941, HVAC on: False, HVAC lockdown: 24, date: 2021-08-17 23:49:23
House ID: 3 -- OD_temp : 28.403654, ID_temp: 20.095346, target_temp: 20.000000, diff: 0.095346, HVAC on: False, HVAC lockdown: 36, date: 2021-08-17 23:49:23
House ID: 4 -- OD_temp : 28.403654, ID_temp: 20.084166, target_temp: 20.000000, diff: 0.084166, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 5 -- OD_temp : 28.403654, ID_temp: 19.810791, target_temp: 20.000000, diff: -0.189209, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 6 -- OD_temp : 28.403654, ID_temp: 20.049919, target_temp: 20.000000, diff: 0.049919, HVAC on: False, HVAC lockdown: 16, date: 2021-08-17 23:49:23
House ID: 7 -- OD_temp : 28.403654, ID_temp: 19.908760, target_temp: 20.000000, diff: -0.091240, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 8 -- OD_temp : 28.403654, ID_temp: 19.926358, target_temp: 20.000000, diff: -0.073642, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 9 -- OD_temp : 28.403654, ID_temp: 19.964640, target_temp: 20.000000, diff: -0.035360, HVAC on: False, HVAC lockdown: 8, date: 2021-08-17 23:49:23
House ID: 10 -- OD_temp : 28.403654, ID_temp: 19.873610, target_temp: 20.000000, diff: -0.126390, HVAC on: False, HVAC lockdown: 32, date: 2021-08-17 23:49:23
House ID: 11 -- OD_temp : 28.403654, ID_temp: 19.970708, target_temp: 20.000000, diff: -0.029292, HVAC on: False, HVAC lockdown: 28, date: 2021-08-17 23:49:23
House ID: 12 -- OD_temp : 28.403654, ID_temp: 19.946299, target_temp: 20.000000, diff: -0.053701, HVAC on: False, HVAC lockdown: 16, date: 2021-08-17 23:49:23
House ID: 13 -- OD_temp : 28.403654, ID_temp: 20.030955, target_temp: 20.000000, diff: 0.030955, HVAC on: False, HVAC lockdown: 20, date: 2021-08-17 23:49:23
House ID: 14 -- OD_temp : 28.403654, ID_temp: 19.862156, target_temp: 20.000000, diff: -0.137844, HVAC on: False, HVAC lockdown: 36, date: 2021-08-17 23:49:23
House ID: 15 -- OD_temp : 28.403654, ID_temp: 19.885809, target_temp: 20.000000, diff: -0.114191, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-17 23:49:23
House ID: 16 -- OD_temp : 28.403654, ID_temp: 19.905838, target_temp: 20.000000, diff: -0.094162, HVAC on: False, HVAC lockdown: 8, date: 2021-08-17 23:49:23
House ID: 17 -- OD_temp : 28.403654, ID_temp: 19.905633, target_temp: 20.000000, diff: -0.094367, HVAC on: False, HVAC lockdown: 36, date: 2021-08-17 23:49:23
House ID: 18 -- OD_temp : 28.403654, ID_temp: 19.730160, target_temp: 20.000000, diff: -0.269840, HVAC on: False, HVAC lockdown: 16, date: 2021-08-17 23:49:23
House ID: 19 -- OD_temp : 28.403654, ID_temp: 19.615851, target_temp: 20.000000, diff: -0.384149, HVAC on: False, HVAC lockdown: 32, date: 2021-08-17 23:49:23
New episode at time 131071
Updating agent at time 131071
UPDATING
Time step: 131071 ，train 90000 times
Time step: 131071 ，train 91000 times
Time step: 131071 ，train 92000 times
Time step: 131071 ，train 93000 times
Time step: 131071 ，train 94000 times
Time step: 131071 ，train 95000 times
Time step: 131071 ，train 96000 times
Time step: 131071 ，train 97000 times
Time step: 131071 ，train 98000 times
Time step: 131071 ，train 99000 times
Time step: 131071 ，train 100000 times
Time step: 131071 ，train 101000 times
Time step: 131071 ，train 102000 times
Testing at time 131071
House ID: 0 -- OD_temp : 30.147710, ID_temp: 19.857047, target_temp: 20.000000, diff: -0.142953, HVAC on: False, HVAC lockdown: 12, date: 2021-02-25 19:38:56
House ID: 1 -- OD_temp : 30.147710, ID_temp: 19.987184, target_temp: 20.000000, diff: -0.012816, HVAC on: False, HVAC lockdown: 12, date: 2021-02-25 19:38:56
House ID: 2 -- OD_temp : 30.147710, ID_temp: 19.982112, target_temp: 20.000000, diff: -0.017888, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-25 19:38:56
House ID: 3 -- OD_temp : 30.147710, ID_temp: 19.852991, target_temp: 20.000000, diff: -0.147009, HVAC on: False, HVAC lockdown: 36, date: 2021-02-25 19:38:56
House ID: 4 -- OD_temp : 30.147710, ID_temp: 20.080065, target_temp: 20.000000, diff: 0.080065, HVAC on: False, HVAC lockdown: 28, date: 2021-02-25 19:38:56
House ID: 5 -- OD_temp : 30.147710, ID_temp: 20.028382, target_temp: 20.000000, diff: 0.028382, HVAC on: False, HVAC lockdown: 32, date: 2021-02-25 19:38:56
House ID: 6 -- OD_temp : 30.147710, ID_temp: 20.193979, target_temp: 20.000000, diff: 0.193979, HVAC on: False, HVAC lockdown: 8, date: 2021-02-25 19:38:56
House ID: 7 -- OD_temp : 30.147710, ID_temp: 20.041959, target_temp: 20.000000, diff: 0.041959, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-25 19:38:56
House ID: 8 -- OD_temp : 30.147710, ID_temp: 20.065376, target_temp: 20.000000, diff: 0.065376, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-25 19:38:56
House ID: 9 -- OD_temp : 30.147710, ID_temp: 19.655261, target_temp: 20.000000, diff: -0.344739, HVAC on: False, HVAC lockdown: 16, date: 2021-02-25 19:38:56
House ID: 10 -- OD_temp : 30.147710, ID_temp: 20.093184, target_temp: 20.000000, diff: 0.093184, HVAC on: False, HVAC lockdown: 28, date: 2021-02-25 19:38:56
House ID: 11 -- OD_temp : 30.147710, ID_temp: 20.044621, target_temp: 20.000000, diff: 0.044621, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-25 19:38:56
House ID: 12 -- OD_temp : 30.147710, ID_temp: 19.979512, target_temp: 20.000000, diff: -0.020488, HVAC on: False, HVAC lockdown: 4, date: 2021-02-25 19:38:56
House ID: 13 -- OD_temp : 30.147710, ID_temp: 20.059541, target_temp: 20.000000, diff: 0.059541, HVAC on: False, HVAC lockdown: 36, date: 2021-02-25 19:38:56
House ID: 14 -- OD_temp : 30.147710, ID_temp: 19.816302, target_temp: 20.000000, diff: -0.183698, HVAC on: False, HVAC lockdown: 16, date: 2021-02-25 19:38:56
House ID: 15 -- OD_temp : 30.147710, ID_temp: 19.876244, target_temp: 20.000000, diff: -0.123756, HVAC on: False, HVAC lockdown: 24, date: 2021-02-25 19:38:56
House ID: 16 -- OD_temp : 30.147710, ID_temp: 20.081186, target_temp: 20.000000, diff: 0.081186, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-25 19:38:56
House ID: 17 -- OD_temp : 30.147710, ID_temp: 20.121935, target_temp: 20.000000, diff: 0.121935, HVAC on: False, HVAC lockdown: 36, date: 2021-02-25 19:38:56
House ID: 18 -- OD_temp : 30.147710, ID_temp: 20.146581, target_temp: 20.000000, diff: 0.146581, HVAC on: False, HVAC lockdown: 36, date: 2021-02-25 19:38:56
House ID: 19 -- OD_temp : 30.147710, ID_temp: 20.053839, target_temp: 20.000000, diff: 0.053839, HVAC on: False, HVAC lockdown: 4, date: 2021-02-25 19:38:56
House ID: 0 -- OD_temp : 31.193474, ID_temp: 20.078685, target_temp: 20.000000, diff: 0.078685, HVAC on: False, HVAC lockdown: 8, date: 2021-02-26 06:45:36
House ID: 1 -- OD_temp : 31.193474, ID_temp: 19.880289, target_temp: 20.000000, diff: -0.119711, HVAC on: False, HVAC lockdown: 20, date: 2021-02-26 06:45:36
House ID: 2 -- OD_temp : 31.193474, ID_temp: 19.895542, target_temp: 20.000000, diff: -0.104458, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-26 06:45:36
House ID: 3 -- OD_temp : 31.193474, ID_temp: 20.176319, target_temp: 20.000000, diff: 0.176319, HVAC on: False, HVAC lockdown: 32, date: 2021-02-26 06:45:36
House ID: 4 -- OD_temp : 31.193474, ID_temp: 20.023418, target_temp: 20.000000, diff: 0.023418, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-26 06:45:36
House ID: 5 -- OD_temp : 31.193474, ID_temp: 20.050026, target_temp: 20.000000, diff: 0.050026, HVAC on: False, HVAC lockdown: 16, date: 2021-02-26 06:45:36
House ID: 6 -- OD_temp : 31.193474, ID_temp: 20.458219, target_temp: 20.000000, diff: 0.458219, HVAC on: 0, HVAC lockdown: 0, date: 2021-02-26 06:45:36
House ID: 7 -- OD_temp : 31.193474, ID_temp: 19.767475, target_temp: 20.000000, diff: -0.232525, HVAC on: False, HVAC lockdown: 8, date: 2021-02-26 06:45:36
House ID: 8 -- OD_temp : 31.193474, ID_temp: 19.955274, target_temp: 20.000000, diff: -0.044726, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-26 06:45:36
House ID: 9 -- OD_temp : 31.193474, ID_temp: 20.171587, target_temp: 20.000000, diff: 0.171587, HVAC on: False, HVAC lockdown: 24, date: 2021-02-26 06:45:36
House ID: 10 -- OD_temp : 31.193474, ID_temp: 19.885785, target_temp: 20.000000, diff: -0.114215, HVAC on: 0, HVAC lockdown: 48, date: 2021-02-26 06:45:36
House ID: 11 -- OD_temp : 31.193474, ID_temp: 19.874304, target_temp: 20.000000, diff: -0.125696, HVAC on: False, HVAC lockdown: 36, date: 2021-02-26 06:45:36
House ID: 12 -- OD_temp : 31.193474, ID_temp: 20.250608, target_temp: 20.000000, diff: 0.250608, HVAC on: False, HVAC lockdown: 16, date: 2021-02-26 06:45:36
House ID: 13 -- OD_temp : 31.193474, ID_temp: 20.008557, target_temp: 20.000000, diff: 0.008557, HVAC on: False, HVAC lockdown: 4, date: 2021-02-26 06:45:36
House ID: 14 -- OD_temp : 31.193474, ID_temp: 20.022417, target_temp: 20.000000, diff: 0.022417, HVAC on: False, HVAC lockdown: 20, date: 2021-02-26 06:45:36
House ID: 15 -- OD_temp : 31.193474, ID_temp: 20.000196, target_temp: 20.000000, diff: 0.000196, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-26 06:45:36
House ID: 16 -- OD_temp : 31.193474, ID_temp: 19.760219, target_temp: 20.000000, diff: -0.239781, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-26 06:45:36
House ID: 17 -- OD_temp : 31.193474, ID_temp: 19.888531, target_temp: 20.000000, diff: -0.111469, HVAC on: 1, HVAC lockdown: 0, date: 2021-02-26 06:45:36
House ID: 18 -- OD_temp : 31.193474, ID_temp: 19.956129, target_temp: 20.000000, diff: -0.043871, HVAC on: False, HVAC lockdown: 20, date: 2021-02-26 06:45:36
House ID: 19 -- OD_temp : 31.193474, ID_temp: 19.984749, target_temp: 20.000000, diff: -0.015251, HVAC on: False, HVAC lockdown: 20, date: 2021-02-26 06:45:36
Training step - 131071
House ID: 0 -- OD_temp : 28.221903, ID_temp: 20.037801, target_temp: 20.000000, diff: 0.037801, HVAC on: False, HVAC lockdown: 32, date: 2021-03-30 23:48:57
House ID: 1 -- OD_temp : 28.221903, ID_temp: 19.988560, target_temp: 20.000000, diff: -0.011440, HVAC on: False, HVAC lockdown: 12, date: 2021-03-30 23:48:57
House ID: 2 -- OD_temp : 28.221903, ID_temp: 19.888689, target_temp: 20.000000, diff: -0.111311, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-30 23:48:57
House ID: 3 -- OD_temp : 28.221903, ID_temp: 19.781434, target_temp: 20.000000, diff: -0.218566, HVAC on: 0, HVAC lockdown: 44, date: 2021-03-30 23:48:57
House ID: 4 -- OD_temp : 28.221903, ID_temp: 19.743683, target_temp: 20.000000, diff: -0.256317, HVAC on: False, HVAC lockdown: 20, date: 2021-03-30 23:48:57
House ID: 5 -- OD_temp : 28.221903, ID_temp: 20.096476, target_temp: 20.000000, diff: 0.096476, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-30 23:48:57
House ID: 6 -- OD_temp : 28.221903, ID_temp: 20.133810, target_temp: 20.000000, diff: 0.133810, HVAC on: False, HVAC lockdown: 28, date: 2021-03-30 23:48:57
House ID: 7 -- OD_temp : 28.221903, ID_temp: 20.178863, target_temp: 20.000000, diff: 0.178863, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-30 23:48:57
House ID: 8 -- OD_temp : 28.221903, ID_temp: 19.916961, target_temp: 20.000000, diff: -0.083039, HVAC on: False, HVAC lockdown: 16, date: 2021-03-30 23:48:57
House ID: 9 -- OD_temp : 28.221903, ID_temp: 19.841623, target_temp: 20.000000, diff: -0.158377, HVAC on: 0, HVAC lockdown: 40, date: 2021-03-30 23:48:57
House ID: 10 -- OD_temp : 28.221903, ID_temp: 19.901099, target_temp: 20.000000, diff: -0.098901, HVAC on: 0, HVAC lockdown: 40, date: 2021-03-30 23:48:57
House ID: 11 -- OD_temp : 28.221903, ID_temp: 19.924319, target_temp: 20.000000, diff: -0.075681, HVAC on: False, HVAC lockdown: 24, date: 2021-03-30 23:48:57
House ID: 12 -- OD_temp : 28.221903, ID_temp: 19.901757, target_temp: 20.000000, diff: -0.098243, HVAC on: False, HVAC lockdown: 36, date: 2021-03-30 23:48:57
House ID: 13 -- OD_temp : 28.221903, ID_temp: 20.024616, target_temp: 20.000000, diff: 0.024616, HVAC on: False, HVAC lockdown: 4, date: 2021-03-30 23:48:57
House ID: 14 -- OD_temp : 28.221903, ID_temp: 20.016373, target_temp: 20.000000, diff: 0.016373, HVAC on: False, HVAC lockdown: 32, date: 2021-03-30 23:48:57
House ID: 15 -- OD_temp : 28.221903, ID_temp: 19.998198, target_temp: 20.000000, diff: -0.001802, HVAC on: False, HVAC lockdown: 12, date: 2021-03-30 23:48:57
House ID: 16 -- OD_temp : 28.221903, ID_temp: 19.845367, target_temp: 20.000000, diff: -0.154633, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-30 23:48:57
House ID: 17 -- OD_temp : 28.221903, ID_temp: 19.815243, target_temp: 20.000000, diff: -0.184757, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-30 23:48:57
House ID: 18 -- OD_temp : 28.221903, ID_temp: 19.985292, target_temp: 20.000000, diff: -0.014708, HVAC on: False, HVAC lockdown: 32, date: 2021-03-30 23:48:57
House ID: 19 -- OD_temp : 28.221903, ID_temp: 20.015870, target_temp: 20.000000, diff: 0.015870, HVAC on: False, HVAC lockdown: 36, date: 2021-03-30 23:48:57
New episode at time 147455
Updating agent at time 147455
UPDATING
Time step: 147455 ，train 103000 times
Time step: 147455 ，train 104000 times
Time step: 147455 ，train 105000 times
Time step: 147455 ，train 106000 times
Time step: 147455 ，train 107000 times
Time step: 147455 ，train 108000 times
Time step: 147455 ，train 109000 times
Time step: 147455 ，train 110000 times
Time step: 147455 ，train 111000 times
Time step: 147455 ，train 112000 times
Time step: 147455 ，train 113000 times
Time step: 147455 ，train 114000 times
Time step: 147455 ，train 115000 times
Testing at time 147455
House ID: 0 -- OD_temp : 29.068939, ID_temp: 19.947384, target_temp: 20.000000, diff: -0.052616, HVAC on: False, HVAC lockdown: 24, date: 2021-08-08 03:10:36
House ID: 1 -- OD_temp : 29.068939, ID_temp: 20.072593, target_temp: 20.000000, diff: 0.072593, HVAC on: False, HVAC lockdown: 36, date: 2021-08-08 03:10:36
House ID: 2 -- OD_temp : 29.068939, ID_temp: 19.957509, target_temp: 20.000000, diff: -0.042491, HVAC on: False, HVAC lockdown: 24, date: 2021-08-08 03:10:36
House ID: 3 -- OD_temp : 29.068939, ID_temp: 20.204269, target_temp: 20.000000, diff: 0.204269, HVAC on: False, HVAC lockdown: 16, date: 2021-08-08 03:10:36
House ID: 4 -- OD_temp : 29.068939, ID_temp: 19.941076, target_temp: 20.000000, diff: -0.058924, HVAC on: False, HVAC lockdown: 8, date: 2021-08-08 03:10:36
House ID: 5 -- OD_temp : 29.068939, ID_temp: 20.224279, target_temp: 20.000000, diff: 0.224279, HVAC on: False, HVAC lockdown: 8, date: 2021-08-08 03:10:36
House ID: 6 -- OD_temp : 29.068939, ID_temp: 20.107036, target_temp: 20.000000, diff: 0.107036, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 03:10:36
House ID: 7 -- OD_temp : 29.068939, ID_temp: 19.864002, target_temp: 20.000000, diff: -0.135998, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 03:10:36
House ID: 8 -- OD_temp : 29.068939, ID_temp: 19.848931, target_temp: 20.000000, diff: -0.151069, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 03:10:36
House ID: 9 -- OD_temp : 29.068939, ID_temp: 20.080948, target_temp: 20.000000, diff: 0.080948, HVAC on: False, HVAC lockdown: 24, date: 2021-08-08 03:10:36
House ID: 10 -- OD_temp : 29.068939, ID_temp: 20.220589, target_temp: 20.000000, diff: 0.220589, HVAC on: 0, HVAC lockdown: 40, date: 2021-08-08 03:10:36
House ID: 11 -- OD_temp : 29.068939, ID_temp: 20.104749, target_temp: 20.000000, diff: 0.104749, HVAC on: False, HVAC lockdown: 16, date: 2021-08-08 03:10:36
House ID: 12 -- OD_temp : 29.068939, ID_temp: 19.860663, target_temp: 20.000000, diff: -0.139337, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 03:10:36
House ID: 13 -- OD_temp : 29.068939, ID_temp: 20.076209, target_temp: 20.000000, diff: 0.076209, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 03:10:36
House ID: 14 -- OD_temp : 29.068939, ID_temp: 20.003670, target_temp: 20.000000, diff: 0.003670, HVAC on: False, HVAC lockdown: 16, date: 2021-08-08 03:10:36
House ID: 15 -- OD_temp : 29.068939, ID_temp: 19.817491, target_temp: 20.000000, diff: -0.182509, HVAC on: False, HVAC lockdown: 8, date: 2021-08-08 03:10:36
House ID: 16 -- OD_temp : 29.068939, ID_temp: 20.033032, target_temp: 20.000000, diff: 0.033032, HVAC on: 0, HVAC lockdown: 44, date: 2021-08-08 03:10:36
House ID: 17 -- OD_temp : 29.068939, ID_temp: 19.910743, target_temp: 20.000000, diff: -0.089257, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 03:10:36
House ID: 18 -- OD_temp : 29.068939, ID_temp: 20.164953, target_temp: 20.000000, diff: 0.164953, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 03:10:36
House ID: 19 -- OD_temp : 29.068939, ID_temp: 20.098412, target_temp: 20.000000, diff: 0.098412, HVAC on: False, HVAC lockdown: 28, date: 2021-08-08 03:10:36
House ID: 0 -- OD_temp : 33.783299, ID_temp: 19.936687, target_temp: 20.000000, diff: -0.063313, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 14:17:16
House ID: 1 -- OD_temp : 33.783299, ID_temp: 20.311004, target_temp: 20.000000, diff: 0.311004, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 14:17:16
House ID: 2 -- OD_temp : 33.783299, ID_temp: 19.874243, target_temp: 20.000000, diff: -0.125757, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 14:17:16
House ID: 3 -- OD_temp : 33.783299, ID_temp: 19.974675, target_temp: 20.000000, diff: -0.025325, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-08 14:17:16
House ID: 4 -- OD_temp : 33.783299, ID_temp: 20.121988, target_temp: 20.000000, diff: 0.121988, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 14:17:16
House ID: 5 -- OD_temp : 33.783299, ID_temp: 20.022416, target_temp: 20.000000, diff: 0.022416, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 14:17:16
House ID: 6 -- OD_temp : 33.783299, ID_temp: 19.450934, target_temp: 20.000000, diff: -0.549066, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 14:17:16
House ID: 7 -- OD_temp : 33.783299, ID_temp: 19.992784, target_temp: 20.000000, diff: -0.007216, HVAC on: False, HVAC lockdown: 24, date: 2021-08-08 14:17:16
House ID: 8 -- OD_temp : 33.783299, ID_temp: 20.264448, target_temp: 20.000000, diff: 0.264448, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 14:17:16
House ID: 9 -- OD_temp : 33.783299, ID_temp: 20.277085, target_temp: 20.000000, diff: 0.277085, HVAC on: False, HVAC lockdown: 32, date: 2021-08-08 14:17:16
House ID: 10 -- OD_temp : 33.783299, ID_temp: 20.026267, target_temp: 20.000000, diff: 0.026267, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 14:17:16
House ID: 11 -- OD_temp : 33.783299, ID_temp: 20.266528, target_temp: 20.000000, diff: 0.266528, HVAC on: False, HVAC lockdown: 24, date: 2021-08-08 14:17:16
House ID: 12 -- OD_temp : 33.783299, ID_temp: 19.955835, target_temp: 20.000000, diff: -0.044165, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-08 14:17:16
House ID: 13 -- OD_temp : 33.783299, ID_temp: 20.077356, target_temp: 20.000000, diff: 0.077356, HVAC on: False, HVAC lockdown: 36, date: 2021-08-08 14:17:16
House ID: 14 -- OD_temp : 33.783299, ID_temp: 20.221391, target_temp: 20.000000, diff: 0.221391, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 14:17:16
House ID: 15 -- OD_temp : 33.783299, ID_temp: 19.740614, target_temp: 20.000000, diff: -0.259386, HVAC on: False, HVAC lockdown: 4, date: 2021-08-08 14:17:16
House ID: 16 -- OD_temp : 33.783299, ID_temp: 20.069746, target_temp: 20.000000, diff: 0.069746, HVAC on: False, HVAC lockdown: 24, date: 2021-08-08 14:17:16
House ID: 17 -- OD_temp : 33.783299, ID_temp: 19.882771, target_temp: 20.000000, diff: -0.117229, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-08 14:17:16
House ID: 18 -- OD_temp : 33.783299, ID_temp: 20.251524, target_temp: 20.000000, diff: 0.251524, HVAC on: 0, HVAC lockdown: 48, date: 2021-08-08 14:17:16
House ID: 19 -- OD_temp : 33.783299, ID_temp: 19.961382, target_temp: 20.000000, diff: -0.038618, HVAC on: False, HVAC lockdown: 8, date: 2021-08-08 14:17:16
Training step - 147455
House ID: 0 -- OD_temp : 30.933156, ID_temp: 19.814559, target_temp: 20.000000, diff: -0.185441, HVAC on: False, HVAC lockdown: 24, date: 2021-04-05 05:52:32
House ID: 1 -- OD_temp : 30.933156, ID_temp: 20.067203, target_temp: 20.000000, diff: 0.067203, HVAC on: 1, HVAC lockdown: 0, date: 2021-04-05 05:52:32
House ID: 2 -- OD_temp : 30.933156, ID_temp: 19.828023, target_temp: 20.000000, diff: -0.171977, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-05 05:52:32
House ID: 3 -- OD_temp : 30.933156, ID_temp: 20.257828, target_temp: 20.000000, diff: 0.257828, HVAC on: False, HVAC lockdown: 24, date: 2021-04-05 05:52:32
House ID: 4 -- OD_temp : 30.933156, ID_temp: 19.857936, target_temp: 20.000000, diff: -0.142064, HVAC on: False, HVAC lockdown: 8, date: 2021-04-05 05:52:32
House ID: 5 -- OD_temp : 30.933156, ID_temp: 20.009462, target_temp: 20.000000, diff: 0.009462, HVAC on: 0, HVAC lockdown: 40, date: 2021-04-05 05:52:32
House ID: 6 -- OD_temp : 30.933156, ID_temp: 20.147952, target_temp: 20.000000, diff: 0.147952, HVAC on: False, HVAC lockdown: 24, date: 2021-04-05 05:52:32
House ID: 7 -- OD_temp : 30.933156, ID_temp: 20.232073, target_temp: 20.000000, diff: 0.232073, HVAC on: 0, HVAC lockdown: 40, date: 2021-04-05 05:52:32
House ID: 8 -- OD_temp : 30.933156, ID_temp: 20.030644, target_temp: 20.000000, diff: 0.030644, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-05 05:52:32
House ID: 9 -- OD_temp : 30.933156, ID_temp: 20.253490, target_temp: 20.000000, diff: 0.253490, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-05 05:52:32
House ID: 10 -- OD_temp : 30.933156, ID_temp: 20.232883, target_temp: 20.000000, diff: 0.232883, HVAC on: False, HVAC lockdown: 16, date: 2021-04-05 05:52:32
House ID: 11 -- OD_temp : 30.933156, ID_temp: 19.954158, target_temp: 20.000000, diff: -0.045842, HVAC on: False, HVAC lockdown: 28, date: 2021-04-05 05:52:32
House ID: 12 -- OD_temp : 30.933156, ID_temp: 19.846662, target_temp: 20.000000, diff: -0.153338, HVAC on: False, HVAC lockdown: 32, date: 2021-04-05 05:52:32
House ID: 13 -- OD_temp : 30.933156, ID_temp: 20.100047, target_temp: 20.000000, diff: 0.100047, HVAC on: False, HVAC lockdown: 24, date: 2021-04-05 05:52:32
House ID: 14 -- OD_temp : 30.933156, ID_temp: 19.841485, target_temp: 20.000000, diff: -0.158515, HVAC on: 0, HVAC lockdown: 0, date: 2021-04-05 05:52:32
House ID: 15 -- OD_temp : 30.933156, ID_temp: 20.028850, target_temp: 20.000000, diff: 0.028850, HVAC on: False, HVAC lockdown: 16, date: 2021-04-05 05:52:32
House ID: 16 -- OD_temp : 30.933156, ID_temp: 20.170643, target_temp: 20.000000, diff: 0.170643, HVAC on: False, HVAC lockdown: 16, date: 2021-04-05 05:52:32
House ID: 17 -- OD_temp : 30.933156, ID_temp: 19.947499, target_temp: 20.000000, diff: -0.052501, HVAC on: False, HVAC lockdown: 4, date: 2021-04-05 05:52:32
House ID: 18 -- OD_temp : 30.933156, ID_temp: 19.968080, target_temp: 20.000000, diff: -0.031920, HVAC on: False, HVAC lockdown: 36, date: 2021-04-05 05:52:32
House ID: 19 -- OD_temp : 30.933156, ID_temp: 20.155777, target_temp: 20.000000, diff: 0.155777, HVAC on: 0, HVAC lockdown: 40, date: 2021-04-05 05:52:32
New episode at time 163839
Updating agent at time 163839
UPDATING
Time step: 163839 ，train 116000 times
Time step: 163839 ，train 117000 times
Time step: 163839 ，train 118000 times
Time step: 163839 ，train 119000 times
Time step: 163839 ，train 120000 times
Time step: 163839 ，train 121000 times
Time step: 163839 ，train 122000 times
Time step: 163839 ，train 123000 times
Time step: 163839 ，train 124000 times
Time step: 163839 ，train 125000 times
Time step: 163839 ，train 126000 times
Time step: 163839 ，train 127000 times
Testing at time 163839
House ID: 0 -- OD_temp : 28.193037, ID_temp: 19.947383, target_temp: 20.000000, diff: -0.052617, HVAC on: False, HVAC lockdown: 4, date: 2021-08-14 00:34:43
House ID: 1 -- OD_temp : 28.193037, ID_temp: 20.045434, target_temp: 20.000000, diff: 0.045434, HVAC on: False, HVAC lockdown: 28, date: 2021-08-14 00:34:43
House ID: 2 -- OD_temp : 28.193037, ID_temp: 20.063964, target_temp: 20.000000, diff: 0.063964, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 00:34:43
House ID: 3 -- OD_temp : 28.193037, ID_temp: 20.006192, target_temp: 20.000000, diff: 0.006192, HVAC on: False, HVAC lockdown: 4, date: 2021-08-14 00:34:43
House ID: 4 -- OD_temp : 28.193037, ID_temp: 19.972460, target_temp: 20.000000, diff: -0.027540, HVAC on: False, HVAC lockdown: 16, date: 2021-08-14 00:34:43
House ID: 5 -- OD_temp : 28.193037, ID_temp: 20.148400, target_temp: 20.000000, diff: 0.148400, HVAC on: False, HVAC lockdown: 16, date: 2021-08-14 00:34:43
House ID: 6 -- OD_temp : 28.193037, ID_temp: 20.115776, target_temp: 20.000000, diff: 0.115776, HVAC on: False, HVAC lockdown: 16, date: 2021-08-14 00:34:43
House ID: 7 -- OD_temp : 28.193037, ID_temp: 20.162820, target_temp: 20.000000, diff: 0.162820, HVAC on: 0, HVAC lockdown: 40, date: 2021-08-14 00:34:43
House ID: 8 -- OD_temp : 28.193037, ID_temp: 19.663130, target_temp: 20.000000, diff: -0.336870, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 00:34:43
House ID: 9 -- OD_temp : 28.193037, ID_temp: 19.849513, target_temp: 20.000000, diff: -0.150487, HVAC on: False, HVAC lockdown: 16, date: 2021-08-14 00:34:43
House ID: 10 -- OD_temp : 28.193037, ID_temp: 19.982308, target_temp: 20.000000, diff: -0.017692, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 00:34:43
House ID: 11 -- OD_temp : 28.193037, ID_temp: 19.843735, target_temp: 20.000000, diff: -0.156265, HVAC on: False, HVAC lockdown: 4, date: 2021-08-14 00:34:43
House ID: 12 -- OD_temp : 28.193037, ID_temp: 19.707590, target_temp: 20.000000, diff: -0.292410, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-14 00:34:43
House ID: 13 -- OD_temp : 28.193037, ID_temp: 20.089370, target_temp: 20.000000, diff: 0.089370, HVAC on: False, HVAC lockdown: 32, date: 2021-08-14 00:34:43
House ID: 14 -- OD_temp : 28.193037, ID_temp: 19.930694, target_temp: 20.000000, diff: -0.069306, HVAC on: False, HVAC lockdown: 20, date: 2021-08-14 00:34:43
House ID: 15 -- OD_temp : 28.193037, ID_temp: 20.063991, target_temp: 20.000000, diff: 0.063991, HVAC on: False, HVAC lockdown: 12, date: 2021-08-14 00:34:43
House ID: 16 -- OD_temp : 28.193037, ID_temp: 19.968569, target_temp: 20.000000, diff: -0.031431, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 00:34:43
House ID: 17 -- OD_temp : 28.193037, ID_temp: 20.094707, target_temp: 20.000000, diff: 0.094707, HVAC on: False, HVAC lockdown: 20, date: 2021-08-14 00:34:43
House ID: 18 -- OD_temp : 28.193037, ID_temp: 19.870823, target_temp: 20.000000, diff: -0.129177, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 00:34:43
House ID: 19 -- OD_temp : 28.193037, ID_temp: 19.883074, target_temp: 20.000000, diff: -0.116926, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-14 00:34:43
House ID: 0 -- OD_temp : 35.263280, ID_temp: 19.863585, target_temp: 20.000000, diff: -0.136415, HVAC on: False, HVAC lockdown: 4, date: 2021-08-14 11:41:23
House ID: 1 -- OD_temp : 35.263280, ID_temp: 20.106008, target_temp: 20.000000, diff: 0.106008, HVAC on: False, HVAC lockdown: 20, date: 2021-08-14 11:41:23
House ID: 2 -- OD_temp : 35.263280, ID_temp: 20.160422, target_temp: 20.000000, diff: 0.160422, HVAC on: False, HVAC lockdown: 24, date: 2021-08-14 11:41:23
House ID: 3 -- OD_temp : 35.263280, ID_temp: 20.311348, target_temp: 20.000000, diff: 0.311348, HVAC on: False, HVAC lockdown: 32, date: 2021-08-14 11:41:23
House ID: 4 -- OD_temp : 35.263280, ID_temp: 20.163653, target_temp: 20.000000, diff: 0.163653, HVAC on: False, HVAC lockdown: 32, date: 2021-08-14 11:41:23
House ID: 5 -- OD_temp : 35.263280, ID_temp: 19.804930, target_temp: 20.000000, diff: -0.195070, HVAC on: False, HVAC lockdown: 4, date: 2021-08-14 11:41:23
House ID: 6 -- OD_temp : 35.263280, ID_temp: 19.921163, target_temp: 20.000000, diff: -0.078837, HVAC on: False, HVAC lockdown: 4, date: 2021-08-14 11:41:23
House ID: 7 -- OD_temp : 35.263280, ID_temp: 20.014487, target_temp: 20.000000, diff: 0.014487, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 11:41:23
House ID: 8 -- OD_temp : 35.263280, ID_temp: 19.835027, target_temp: 20.000000, diff: -0.164973, HVAC on: False, HVAC lockdown: 32, date: 2021-08-14 11:41:23
House ID: 9 -- OD_temp : 35.263280, ID_temp: 19.984234, target_temp: 20.000000, diff: -0.015766, HVAC on: False, HVAC lockdown: 8, date: 2021-08-14 11:41:23
House ID: 10 -- OD_temp : 35.263280, ID_temp: 20.396218, target_temp: 20.000000, diff: 0.396218, HVAC on: False, HVAC lockdown: 16, date: 2021-08-14 11:41:23
House ID: 11 -- OD_temp : 35.263280, ID_temp: 20.210645, target_temp: 20.000000, diff: 0.210645, HVAC on: False, HVAC lockdown: 36, date: 2021-08-14 11:41:23
House ID: 12 -- OD_temp : 35.263280, ID_temp: 20.013350, target_temp: 20.000000, diff: 0.013350, HVAC on: False, HVAC lockdown: 20, date: 2021-08-14 11:41:23
House ID: 13 -- OD_temp : 35.263280, ID_temp: 20.186484, target_temp: 20.000000, diff: 0.186484, HVAC on: 0, HVAC lockdown: 40, date: 2021-08-14 11:41:23
House ID: 14 -- OD_temp : 35.263280, ID_temp: 19.916393, target_temp: 20.000000, diff: -0.083607, HVAC on: False, HVAC lockdown: 4, date: 2021-08-14 11:41:23
House ID: 15 -- OD_temp : 35.263280, ID_temp: 19.916249, target_temp: 20.000000, diff: -0.083751, HVAC on: 0, HVAC lockdown: 0, date: 2021-08-14 11:41:23
House ID: 16 -- OD_temp : 35.263280, ID_temp: 20.309981, target_temp: 20.000000, diff: 0.309981, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 11:41:23
House ID: 17 -- OD_temp : 35.263280, ID_temp: 19.850214, target_temp: 20.000000, diff: -0.149786, HVAC on: 1, HVAC lockdown: 0, date: 2021-08-14 11:41:23
House ID: 18 -- OD_temp : 35.263280, ID_temp: 19.701165, target_temp: 20.000000, diff: -0.298835, HVAC on: False, HVAC lockdown: 32, date: 2021-08-14 11:41:23
House ID: 19 -- OD_temp : 35.263280, ID_temp: 20.273497, target_temp: 20.000000, diff: 0.273497, HVAC on: False, HVAC lockdown: 32, date: 2021-08-14 11:41:23
Training step - 163839
House ID: 0 -- OD_temp : 32.147551, ID_temp: 20.381074, target_temp: 20.000000, diff: 0.381074, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-07 09:00:04
House ID: 1 -- OD_temp : 32.147551, ID_temp: 19.648038, target_temp: 20.000000, diff: -0.351962, HVAC on: False, HVAC lockdown: 4, date: 2021-03-07 09:00:04
House ID: 2 -- OD_temp : 32.147551, ID_temp: 20.096692, target_temp: 20.000000, diff: 0.096692, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-07 09:00:04
House ID: 3 -- OD_temp : 32.147551, ID_temp: 19.940445, target_temp: 20.000000, diff: -0.059555, HVAC on: False, HVAC lockdown: 28, date: 2021-03-07 09:00:04
House ID: 4 -- OD_temp : 32.147551, ID_temp: 19.839940, target_temp: 20.000000, diff: -0.160060, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-07 09:00:04
House ID: 5 -- OD_temp : 32.147551, ID_temp: 20.010848, target_temp: 20.000000, diff: 0.010848, HVAC on: False, HVAC lockdown: 4, date: 2021-03-07 09:00:04
House ID: 6 -- OD_temp : 32.147551, ID_temp: 20.164062, target_temp: 20.000000, diff: 0.164062, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-07 09:00:04
House ID: 7 -- OD_temp : 32.147551, ID_temp: 20.279390, target_temp: 20.000000, diff: 0.279390, HVAC on: False, HVAC lockdown: 24, date: 2021-03-07 09:00:04
House ID: 8 -- OD_temp : 32.147551, ID_temp: 19.917497, target_temp: 20.000000, diff: -0.082503, HVAC on: False, HVAC lockdown: 32, date: 2021-03-07 09:00:04
House ID: 9 -- OD_temp : 32.147551, ID_temp: 20.033723, target_temp: 20.000000, diff: 0.033723, HVAC on: False, HVAC lockdown: 8, date: 2021-03-07 09:00:04
House ID: 10 -- OD_temp : 32.147551, ID_temp: 19.900209, target_temp: 20.000000, diff: -0.099791, HVAC on: False, HVAC lockdown: 24, date: 2021-03-07 09:00:04
House ID: 11 -- OD_temp : 32.147551, ID_temp: 19.772752, target_temp: 20.000000, diff: -0.227248, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-07 09:00:04
House ID: 12 -- OD_temp : 32.147551, ID_temp: 19.963832, target_temp: 20.000000, diff: -0.036168, HVAC on: False, HVAC lockdown: 16, date: 2021-03-07 09:00:04
House ID: 13 -- OD_temp : 32.147551, ID_temp: 20.118452, target_temp: 20.000000, diff: 0.118452, HVAC on: False, HVAC lockdown: 4, date: 2021-03-07 09:00:04
House ID: 14 -- OD_temp : 32.147551, ID_temp: 19.977072, target_temp: 20.000000, diff: -0.022928, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-07 09:00:04
House ID: 15 -- OD_temp : 32.147551, ID_temp: 20.142384, target_temp: 20.000000, diff: 0.142384, HVAC on: False, HVAC lockdown: 28, date: 2021-03-07 09:00:04
House ID: 16 -- OD_temp : 32.147551, ID_temp: 19.884899, target_temp: 20.000000, diff: -0.115101, HVAC on: False, HVAC lockdown: 16, date: 2021-03-07 09:00:04
House ID: 17 -- OD_temp : 32.147551, ID_temp: 20.164551, target_temp: 20.000000, diff: 0.164551, HVAC on: False, HVAC lockdown: 24, date: 2021-03-07 09:00:04
House ID: 18 -- OD_temp : 32.147551, ID_temp: 20.192880, target_temp: 20.000000, diff: 0.192880, HVAC on: False, HVAC lockdown: 12, date: 2021-03-07 09:00:04
House ID: 19 -- OD_temp : 32.147551, ID_temp: 19.975788, target_temp: 20.000000, diff: -0.024212, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-07 09:00:04
New episode at time 180223
Updating agent at time 180223
UPDATING
Time step: 180223 ，train 128000 times
Time step: 180223 ，train 129000 times
Time step: 180223 ，train 130000 times
Time step: 180223 ，train 131000 times
Time step: 180223 ，train 132000 times
Time step: 180223 ，train 133000 times
Time step: 180223 ，train 134000 times
Time step: 180223 ，train 135000 times
Time step: 180223 ，train 136000 times
Time step: 180223 ，train 137000 times
Time step: 180223 ，train 138000 times
Time step: 180223 ，train 139000 times
Time step: 180223 ，train 140000 times
Testing at time 180223
House ID: 0 -- OD_temp : 32.573232, ID_temp: 20.150036, target_temp: 20.000000, diff: 0.150036, HVAC on: False, HVAC lockdown: 20, date: 2021-09-12 15:09:27
House ID: 1 -- OD_temp : 32.573232, ID_temp: 20.140395, target_temp: 20.000000, diff: 0.140395, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-12 15:09:27
House ID: 2 -- OD_temp : 32.573232, ID_temp: 19.964382, target_temp: 20.000000, diff: -0.035618, HVAC on: False, HVAC lockdown: 12, date: 2021-09-12 15:09:27
House ID: 3 -- OD_temp : 32.573232, ID_temp: 20.028720, target_temp: 20.000000, diff: 0.028720, HVAC on: False, HVAC lockdown: 20, date: 2021-09-12 15:09:27
House ID: 4 -- OD_temp : 32.573232, ID_temp: 19.984918, target_temp: 20.000000, diff: -0.015082, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-12 15:09:27
House ID: 5 -- OD_temp : 32.573232, ID_temp: 19.991912, target_temp: 20.000000, diff: -0.008088, HVAC on: False, HVAC lockdown: 36, date: 2021-09-12 15:09:27
House ID: 6 -- OD_temp : 32.573232, ID_temp: 20.031455, target_temp: 20.000000, diff: 0.031455, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-12 15:09:27
House ID: 7 -- OD_temp : 32.573232, ID_temp: 20.145540, target_temp: 20.000000, diff: 0.145540, HVAC on: False, HVAC lockdown: 12, date: 2021-09-12 15:09:27
House ID: 8 -- OD_temp : 32.573232, ID_temp: 20.083423, target_temp: 20.000000, diff: 0.083423, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-12 15:09:27
House ID: 9 -- OD_temp : 32.573232, ID_temp: 19.931768, target_temp: 20.000000, diff: -0.068232, HVAC on: False, HVAC lockdown: 32, date: 2021-09-12 15:09:27
House ID: 10 -- OD_temp : 32.573232, ID_temp: 20.160668, target_temp: 20.000000, diff: 0.160668, HVAC on: False, HVAC lockdown: 36, date: 2021-09-12 15:09:27
House ID: 11 -- OD_temp : 32.573232, ID_temp: 19.901788, target_temp: 20.000000, diff: -0.098212, HVAC on: False, HVAC lockdown: 12, date: 2021-09-12 15:09:27
House ID: 12 -- OD_temp : 32.573232, ID_temp: 20.127404, target_temp: 20.000000, diff: 0.127404, HVAC on: False, HVAC lockdown: 20, date: 2021-09-12 15:09:27
House ID: 13 -- OD_temp : 32.573232, ID_temp: 20.235763, target_temp: 20.000000, diff: 0.235763, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-12 15:09:27
House ID: 14 -- OD_temp : 32.573232, ID_temp: 19.736096, target_temp: 20.000000, diff: -0.263904, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-12 15:09:27
House ID: 15 -- OD_temp : 32.573232, ID_temp: 20.049497, target_temp: 20.000000, diff: 0.049497, HVAC on: 0, HVAC lockdown: 48, date: 2021-09-12 15:09:27
House ID: 16 -- OD_temp : 32.573232, ID_temp: 20.171810, target_temp: 20.000000, diff: 0.171810, HVAC on: False, HVAC lockdown: 24, date: 2021-09-12 15:09:27
House ID: 17 -- OD_temp : 32.573232, ID_temp: 20.175109, target_temp: 20.000000, diff: 0.175109, HVAC on: False, HVAC lockdown: 32, date: 2021-09-12 15:09:27
House ID: 18 -- OD_temp : 32.573232, ID_temp: 19.938381, target_temp: 20.000000, diff: -0.061619, HVAC on: False, HVAC lockdown: 4, date: 2021-09-12 15:09:27
House ID: 19 -- OD_temp : 32.573232, ID_temp: 19.988969, target_temp: 20.000000, diff: -0.011031, HVAC on: False, HVAC lockdown: 24, date: 2021-09-12 15:09:27
House ID: 0 -- OD_temp : 28.675571, ID_temp: 19.999717, target_temp: 20.000000, diff: -0.000283, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-13 02:16:07
House ID: 1 -- OD_temp : 28.675571, ID_temp: 20.110605, target_temp: 20.000000, diff: 0.110605, HVAC on: False, HVAC lockdown: 36, date: 2021-09-13 02:16:07
House ID: 2 -- OD_temp : 28.675571, ID_temp: 20.014735, target_temp: 20.000000, diff: 0.014735, HVAC on: False, HVAC lockdown: 16, date: 2021-09-13 02:16:07
House ID: 3 -- OD_temp : 28.675571, ID_temp: 20.112169, target_temp: 20.000000, diff: 0.112169, HVAC on: False, HVAC lockdown: 32, date: 2021-09-13 02:16:07
House ID: 4 -- OD_temp : 28.675571, ID_temp: 20.057922, target_temp: 20.000000, diff: 0.057922, HVAC on: 0, HVAC lockdown: 40, date: 2021-09-13 02:16:07
House ID: 5 -- OD_temp : 28.675571, ID_temp: 20.066883, target_temp: 20.000000, diff: 0.066883, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-13 02:16:07
House ID: 6 -- OD_temp : 28.675571, ID_temp: 20.131120, target_temp: 20.000000, diff: 0.131120, HVAC on: False, HVAC lockdown: 32, date: 2021-09-13 02:16:07
House ID: 7 -- OD_temp : 28.675571, ID_temp: 19.892418, target_temp: 20.000000, diff: -0.107582, HVAC on: False, HVAC lockdown: 8, date: 2021-09-13 02:16:07
House ID: 8 -- OD_temp : 28.675571, ID_temp: 19.985657, target_temp: 20.000000, diff: -0.014343, HVAC on: False, HVAC lockdown: 16, date: 2021-09-13 02:16:07
House ID: 9 -- OD_temp : 28.675571, ID_temp: 19.831822, target_temp: 20.000000, diff: -0.168178, HVAC on: False, HVAC lockdown: 4, date: 2021-09-13 02:16:07
House ID: 10 -- OD_temp : 28.675571, ID_temp: 20.046340, target_temp: 20.000000, diff: 0.046340, HVAC on: 1, HVAC lockdown: 0, date: 2021-09-13 02:16:07
House ID: 11 -- OD_temp : 28.675571, ID_temp: 20.126281, target_temp: 20.000000, diff: 0.126281, HVAC on: False, HVAC lockdown: 24, date: 2021-09-13 02:16:07
House ID: 12 -- OD_temp : 28.675571, ID_temp: 20.009501, target_temp: 20.000000, diff: 0.009501, HVAC on: False, HVAC lockdown: 20, date: 2021-09-13 02:16:07
House ID: 13 -- OD_temp : 28.675571, ID_temp: 20.059269, target_temp: 20.000000, diff: 0.059269, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-13 02:16:07
House ID: 14 -- OD_temp : 28.675571, ID_temp: 20.045524, target_temp: 20.000000, diff: 0.045524, HVAC on: False, HVAC lockdown: 32, date: 2021-09-13 02:16:07
House ID: 15 -- OD_temp : 28.675571, ID_temp: 19.827331, target_temp: 20.000000, diff: -0.172669, HVAC on: 0, HVAC lockdown: 0, date: 2021-09-13 02:16:07
House ID: 16 -- OD_temp : 28.675571, ID_temp: 19.978732, target_temp: 20.000000, diff: -0.021268, HVAC on: False, HVAC lockdown: 8, date: 2021-09-13 02:16:07
House ID: 17 -- OD_temp : 28.675571, ID_temp: 20.141374, target_temp: 20.000000, diff: 0.141374, HVAC on: False, HVAC lockdown: 32, date: 2021-09-13 02:16:07
House ID: 18 -- OD_temp : 28.675571, ID_temp: 20.029558, target_temp: 20.000000, diff: 0.029558, HVAC on: False, HVAC lockdown: 8, date: 2021-09-13 02:16:07
House ID: 19 -- OD_temp : 28.675571, ID_temp: 20.014731, target_temp: 20.000000, diff: 0.014731, HVAC on: False, HVAC lockdown: 32, date: 2021-09-13 02:16:07
Training step - 180223
House ID: 0 -- OD_temp : 27.760033, ID_temp: 19.841349, target_temp: 20.000000, diff: -0.158651, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 23:56:21
House ID: 1 -- OD_temp : 27.760033, ID_temp: 19.907177, target_temp: 20.000000, diff: -0.092823, HVAC on: False, HVAC lockdown: 16, date: 2021-03-09 23:56:21
House ID: 2 -- OD_temp : 27.760033, ID_temp: 19.979123, target_temp: 20.000000, diff: -0.020877, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 23:56:21
House ID: 3 -- OD_temp : 27.760033, ID_temp: 20.126541, target_temp: 20.000000, diff: 0.126541, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 23:56:21
House ID: 4 -- OD_temp : 27.760033, ID_temp: 20.046463, target_temp: 20.000000, diff: 0.046463, HVAC on: False, HVAC lockdown: 32, date: 2021-03-09 23:56:21
House ID: 5 -- OD_temp : 27.760033, ID_temp: 19.893822, target_temp: 20.000000, diff: -0.106178, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-09 23:56:21
House ID: 6 -- OD_temp : 27.760033, ID_temp: 19.905672, target_temp: 20.000000, diff: -0.094328, HVAC on: 0, HVAC lockdown: 40, date: 2021-03-09 23:56:21
House ID: 7 -- OD_temp : 27.760033, ID_temp: 19.959747, target_temp: 20.000000, diff: -0.040253, HVAC on: False, HVAC lockdown: 16, date: 2021-03-09 23:56:21
House ID: 8 -- OD_temp : 27.760033, ID_temp: 20.153999, target_temp: 20.000000, diff: 0.153999, HVAC on: False, HVAC lockdown: 20, date: 2021-03-09 23:56:21
House ID: 9 -- OD_temp : 27.760033, ID_temp: 20.040963, target_temp: 20.000000, diff: 0.040963, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 23:56:21
House ID: 10 -- OD_temp : 27.760033, ID_temp: 19.886584, target_temp: 20.000000, diff: -0.113416, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 23:56:21
House ID: 11 -- OD_temp : 27.760033, ID_temp: 19.935154, target_temp: 20.000000, diff: -0.064846, HVAC on: False, HVAC lockdown: 12, date: 2021-03-09 23:56:21
House ID: 12 -- OD_temp : 27.760033, ID_temp: 20.057566, target_temp: 20.000000, diff: 0.057566, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 23:56:21
House ID: 13 -- OD_temp : 27.760033, ID_temp: 19.873411, target_temp: 20.000000, diff: -0.126589, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 23:56:21
House ID: 14 -- OD_temp : 27.760033, ID_temp: 19.792415, target_temp: 20.000000, diff: -0.207585, HVAC on: 0, HVAC lockdown: 0, date: 2021-03-09 23:56:21
House ID: 15 -- OD_temp : 27.760033, ID_temp: 20.133949, target_temp: 20.000000, diff: 0.133949, HVAC on: False, HVAC lockdown: 4, date: 2021-03-09 23:56:21
House ID: 16 -- OD_temp : 27.760033, ID_temp: 20.044616, target_temp: 20.000000, diff: 0.044616, HVAC on: False, HVAC lockdown: 28, date: 2021-03-09 23:56:21
House ID: 17 -- OD_temp : 27.760033, ID_temp: 20.054841, target_temp: 20.000000, diff: 0.054841, HVAC on: 1, HVAC lockdown: 0, date: 2021-03-09 23:56:21
House ID: 18 -- OD_temp : 27.760033, ID_temp: 19.815796, target_temp: 20.000000, diff: -0.184204, HVAC on: False, HVAC lockdown: 4, date: 2021-03-09 23:56:21
House ID: 19 -- OD_temp : 27.760033, ID_temp: 20.158273, target_temp: 20.000000, diff: 0.158273, HVAC on: False, HVAC lockdown: 24, date: 2021-03-09 23:56:21
New episode at time 196607
Updating agent at time 196607
UPDATING
Time step: 196607 ，train 141000 times
Time step: 196607 ，train 142000 times
Time step: 196607 ，train 143000 times
Time step: 196607 ，train 144000 times
Time step: 196607 ，train 145000 times
Time step: 196607 ，train 146000 times
Time step: 196607 ，train 147000 times
Time step: 196607 ，train 148000 times
Time step: 196607 ，train 149000 times
Time step: 196607 ，train 150000 times
Time step: 196607 ，train 151000 times
Time step: 196607 ，train 152000 times
Time step: 196607 ，train 153000 times
Testing at time 196607
House ID: 0 -- OD_temp : 33.077248, ID_temp: 20.175957, target_temp: 20.000000, diff: 0.175957, HVAC on: False, HVAC lockdown: 12, date: 2021-05-26 15:12:20
House ID: 1 -- OD_temp : 33.077248, ID_temp: 19.712150, target_temp: 20.000000, diff: -0.287850, HVAC on: False, HVAC lockdown: 4, date: 2021-05-26 15:12:20
House ID: 2 -- OD_temp : 33.077248, ID_temp: 20.027260, target_temp: 20.000000, diff: 0.027260, HVAC on: False, HVAC lockdown: 24, date: 2021-05-26 15:12:20
House ID: 3 -- OD_temp : 33.077248, ID_temp: 20.024112, target_temp: 20.000000, diff: 0.024112, HVAC on: False, HVAC lockdown: 4, date: 2021-05-26 15:12:20
House ID: 4 -- OD_temp : 33.077248, ID_temp: 20.013589, target_temp: 20.000000, diff: 0.013589, HVAC on: False, HVAC lockdown: 24, date: 2021-05-26 15:12:20
House ID: 5 -- OD_temp : 33.077248, ID_temp: 20.261417, target_temp: 20.000000, diff: 0.261417, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-26 15:12:20
House ID: 6 -- OD_temp : 33.077248, ID_temp: 19.780261, target_temp: 20.000000, diff: -0.219739, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-26 15:12:20
House ID: 7 -- OD_temp : 33.077248, ID_temp: 19.981536, target_temp: 20.000000, diff: -0.018464, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-26 15:12:20
House ID: 8 -- OD_temp : 33.077248, ID_temp: 20.153259, target_temp: 20.000000, diff: 0.153259, HVAC on: False, HVAC lockdown: 8, date: 2021-05-26 15:12:20
House ID: 9 -- OD_temp : 33.077248, ID_temp: 20.022203, target_temp: 20.000000, diff: 0.022203, HVAC on: False, HVAC lockdown: 16, date: 2021-05-26 15:12:20
House ID: 10 -- OD_temp : 33.077248, ID_temp: 19.844493, target_temp: 20.000000, diff: -0.155507, HVAC on: False, HVAC lockdown: 32, date: 2021-05-26 15:12:20
House ID: 11 -- OD_temp : 33.077248, ID_temp: 20.013824, target_temp: 20.000000, diff: 0.013824, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-26 15:12:20
House ID: 12 -- OD_temp : 33.077248, ID_temp: 19.731702, target_temp: 20.000000, diff: -0.268298, HVAC on: False, HVAC lockdown: 4, date: 2021-05-26 15:12:20
House ID: 13 -- OD_temp : 33.077248, ID_temp: 20.009119, target_temp: 20.000000, diff: 0.009119, HVAC on: False, HVAC lockdown: 32, date: 2021-05-26 15:12:20
House ID: 14 -- OD_temp : 33.077248, ID_temp: 20.262908, target_temp: 20.000000, diff: 0.262908, HVAC on: False, HVAC lockdown: 24, date: 2021-05-26 15:12:20
House ID: 15 -- OD_temp : 33.077248, ID_temp: 19.929109, target_temp: 20.000000, diff: -0.070891, HVAC on: False, HVAC lockdown: 12, date: 2021-05-26 15:12:20
House ID: 16 -- OD_temp : 33.077248, ID_temp: 19.931067, target_temp: 20.000000, diff: -0.068933, HVAC on: False, HVAC lockdown: 36, date: 2021-05-26 15:12:20
House ID: 17 -- OD_temp : 33.077248, ID_temp: 20.202725, target_temp: 20.000000, diff: 0.202725, HVAC on: False, HVAC lockdown: 16, date: 2021-05-26 15:12:20
House ID: 18 -- OD_temp : 33.077248, ID_temp: 20.099535, target_temp: 20.000000, diff: 0.099535, HVAC on: 1, HVAC lockdown: 0, date: 2021-05-26 15:12:20
House ID: 19 -- OD_temp : 33.077248, ID_temp: 19.948492, target_temp: 20.000000, diff: -0.051508, HVAC on: 0, HVAC lockdown: 40, date: 2021-05-26 15:12:20