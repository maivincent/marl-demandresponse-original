config_dict = {
    # House properties
    # The house is modelled as a 10mx10m square with 2.5m height, 8 windows of 1.125 m² and 2 doors of 2m² each.
    # The formulas for Ua, Cm, Ca and Hm are mainly taken here: http://gridlab-d.shoutwiki.com/wiki/Residential_module_user's_guide
    # 在物理定律中，温度、电导、热质量和热流(temperatures, conductances, thermal masses and heat flows)完全等同于电路模拟中的电压、电导、电容器和电流(voltages, conductances, capacitors and current flows)。也就是说，表示能量守恒的微分方程是相同的。在实践中，当用于表示建筑物中的热流时，该电路总是过阻尼。也就是说，它表现出指数衰减并接近稳态（非振荡）条件。
    # ETP电路(图1)捕捉了在对智能电网分析至关重要的大多数情况下家庭响应的本质：热量增益和损失以及热质量的影响，作为天气（温度和太阳辐射），居住者行为（恒温器设置和电器内部热量增益）和加热/冷却系统效率的函数。本文档介绍了如何使用此框架对这些进行建模。
    # 从本质上讲，家庭的热包络层具有电导（U_A），热量通过该电导从室温（T_A）流向室外空气温度（T_O）。U_A是穿过建筑物围护结构（墙壁、窗户、门、天花板、地板和渗透气流）的所有平行热流路径的总和。这里的主要简化假设是，与它们的电导相比，建筑围护结构的这些元素的质量相对微不足道，因此它们的质量可以归入房屋内部。
    # 家中的大部分质量(我理解为家具和突出的建筑)相加以形成集总质量C_M，该质量通过代表质量表面积和传热系数乘积之和的电导耦合到室内空气。房屋内部体积中的空气质量由更小的质量C_A表示，它直接与室内空气耦合。C_A的主要作用是实际抑制加热/冷却（HVAC）系统打开和关闭时传递到空气中的热量（Q_A）的影响，否则会导致室温的瞬时变化。
    # 来自太阳辐射和电器的热量增益与来自加热/冷却系统的热量相结合，形成对空气的热量增益，Q_A。House_e模型允许加热/冷却、太阳辐射和内部电器的每个热增益都有指定的分数，以允许它们绕过空气节点并直接传递到质量上以形成Q_M。例如，这可用于表示固体内部物体吸收通过窗户照射的太阳辐射的热量。这是美国家庭中占主导地位的木框架结构的合理近似值。对于具有大量砖石或砖砌外部的建筑物来说，这是一个越来越糟糕的假设。GridLab-D的未来版本将能够使用修改后的方法明确地对这些效应进行建模。
    # 最后，必须解决ETP电路的时间序列解决方案，恒温器控制HVAC系统以维持居住者指定的加热和冷却设定点。这需要对HVAC系统的输出及其电力输入进行建模，作为设备在不同条件（如室外温度）下的类型，容量和效率的函数。
    # 以下各节详细介绍了如何根据用户指定的输入对这些输入进行建模(见上面链接)。
    "default_house_prop": {
        "id": 1,
        "init_air_temp": 20,
        "init_mass_temp": 20,
        "target_temp": 20,
        "deadband": 0,
        # 下面4个参数与论文一致
        "Ua": 2.18e02,  # House walls conductance (W/K). Multiplied by 3 to account for drafts (according to https://dothemath.ucsd.edu/2012/11/this-thermal-house/)
        "Cm": 3.45e06,  # House thermal mass (J/K) (area heat capacity:: 40700 J/K/m2 * area 100 m2)
        "Ca": 9.08e05,  # Air thermal mass in the house (J/K): 3 * (volumetric heat capacity: 1200 J/m3/K, default area 100 m2, default height 2.5 m)
        "Hm": 2.84e03,  # House mass surface conductance (W/K) (interioor surface heat tansfer coefficient: 8.14 W/K/m2; wall areas = Afloor + Aceiling + Aoutwalls + Ainwalls = A + A + (1+IWR)*h*R*sqrt(A/R) = 455m2 where R = width/depth of the house (default R: 1.5) and IWR is I/O wall surface ratio (default IWR: 1.5))
        "window_area": 7.175,  # Gross window area, in m^2
        "shading_coeff": 0.67,  # Window Solar Heat Gain Coefficient, look-up table in Gridlab reference
        "solar_gain_bool": True,  # Boolean to model the solar gain
    },
    "noise_house_prop": {
        "noise_mode": "big_start_temp",  # Can be: no_noise, small_noise, big_noise, small_start_temp, big_start_temp
        "noise_parameters": {
            "no_noise": {
                "std_start_temp": 0,  # Std noise on starting temperature
                "std_target_temp": 0,  # Std Noise on target temperature
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm
            },
            "dwarf_noise": {
                "std_start_temp": 0.05,  # Std noise on starting temperature
                "std_target_temp": 0.05,  # Std Noise on target temperature
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm
            },
            "house_small_noise": {
                "std_start_temp": 0,  # Std noise on starting temperature
                "std_target_temp": 0,  # Std Noise on target temperature
                "factor_thermo_low": 0.9,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1.1,  # Highest random factor for Ua, Cm, Ca, Hm
            },
            "house_medium_noise": {
                "std_start_temp": 0,  # Std noise on starting temperature
                "std_target_temp": 0,  # Std Noise on target temperature
                "factor_thermo_low": 0.8,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1.2,  # Highest random factor for Ua, Cm, Ca, Hm
            },
            "house_big_noise": {
                "std_start_temp": 0,  # Std noise on starting temperature
                "std_target_temp": 0,  # Std Noise on target temperature
                "factor_thermo_low": 0.5,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1.5,  # Highest random factor for Ua, Cm, Ca, Hm
            },

            "small_noise": {
                "std_start_temp": 3,  # Std noise on starting temperature
                "std_target_temp": 1,  # Std Noise on target temperature
                "factor_thermo_low": 0.9,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1.1,  # Highest random factor for Ua, Cm, Ca, Hm
            },
            "big_noise": {
                "std_start_temp": 5,  # Std noise on starting temperature
                "std_target_temp": 2,  # Std Noise on target temperature
                "factor_thermo_low": 0.8,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1.2,  # Highest random factor for Ua, Cm, Ca, Hm
            },
            "small_start_temp": {
                "std_start_temp": 3,  # Std noise on starting temperature
                "std_target_temp": 0,  # Std Noise on target temperature
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm
            },
            "big_start_temp": {
                "std_start_temp": 5,  # Std noise on starting temperature
                "std_target_temp": 0,  # Std Noise on target temperature
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm
            },
        },
    },

    "noise_house_prop_test": { 
        "noise_mode": "small_start_temp",  # Can be: no_noise, small_noise, big_noise, small_start_temp, big_start_temp 
        "noise_parameters": { 
            "no_noise": { 
                "std_start_temp": 0,  # Std noise on starting temperature 
                "std_target_temp": 0,  # Std Noise on target temperature 
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm 
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm 
            }, 
            "dwarf_noise": { 
                "std_start_temp": 0.05,  # Std noise on starting temperature 
                "std_target_temp": 0.05,  # Std Noise on target temperature 
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm 
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm 
            }, 
            "small_noise": { 
                "std_start_temp": 3,  # Std noise on starting temperature 
                "std_target_temp": 1,  # Std Noise on target temperature 
                "factor_thermo_low": 0.9,  # Lowest random factor for Ua, Cm, Ca, Hm 
                "factor_thermo_high": 1.1,  # Highest random factor for Ua, Cm, Ca, Hm 
            }, 
            "big_noise": { 
                "std_start_temp": 5,  # Std noise on starting temperature 
                "std_target_temp": 2,  # Std Noise on target temperature 
                "factor_thermo_low": 0.8,  # Lowest random factor for Ua, Cm, Ca, Hm 
                "factor_thermo_high": 1.2,  # Highest random factor for Ua, Cm, Ca, Hm 
            }, 
            "small_start_temp": { 
                "std_start_temp": 3,  # Std noise on starting temperature 
                "std_target_temp": 0,  # Std Noise on target temperature 
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm 
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm 
            }, 
            "big_start_temp": { 
                "std_start_temp": 5,  # Std noise on starting temperature 
                "std_target_temp": 0,  # Std Noise on target temperature 
                "factor_thermo_low": 1,  # Lowest random factor for Ua, Cm, Ca, Hm 
                "factor_thermo_high": 1,  # Highest random factor for Ua, Cm, Ca, Hm 
            }, 
        }, 
    }, 
    # HVAC properties
    "default_hvac_prop": {
        "id": 1,
        # 性能系数（消耗的功率与排出的热量之比）
        "COP": 2.5,  # Coefficient of performance (power spent vs heat displaced)
        "cooling_capacity": 15000,  # Cooling capacity (W)
        "latent_cooling_fraction": 0.35,  # Fraction of latent cooling w.r.t. sensible cooling
        "lockout_duration": 40,  # In seconds
        "lockout_noise": 0,  # In seconds
    },
    "noise_hvac_prop": {
        "noise_mode": "no_noise",  # Can be: no_noise, small_noise, big_noise
        "noise_parameters": {
            "no_noise": {
                "cooling_capacity_list": {10000: [10000], 15000: [15000]}
                # "std_latent_cooling_fraction": 0,     # Std Gaussian noise on latent_cooling_fraction
                # "factor_COP_low": 1,   # Lowest random factor for COP
                # "factor_COP_high": 1,   # Highest random factor for COP
                # "factor_cooling_capacity_low": 1,   # Lowest random factor for cooling_capacity
                # "factor_cooling_capacity_high": 1,   # Highest random factor for cooling_capacity
            },
            "small_noise": {
                "cooling_capacity_list": {10000: [9000, 10000, 11000], 15000: [12500, 15000, 17500]}
                # "std_latent_cooling_fraction": 0.05,     # Std Gaussian noise on latent_cooling_fraction
                # "factor_COP_low": 0.95,   # Lowest random factor for COP
                # "factor_COP_high": 1.05,   # Highest random factor for COP
                # "factor_cooling_capacity_low": 0.9,   # Lowest random factor for cooling_capacity
                # "factor_cooling_capacity_high": 1.1,   # Highest random factor for cooling_capacity
            },
            "big_noise": {
                "cooling_capacity_list": {
                    10000: [7500, 9000, 10000, 11000, 12500],
                    15000: [10000, 12500, 15000, 17500, 20000],
                }
                # "std_latent_cooling_fraction": 0.1,     # Std Gaussian noise on latent_cooling_fraction
                # "factor_COP_low": 0.85,   # Lowest random factor for COP
                # "factor_COP_high": 1.15,   # Highest random factor for COP
                # "factor_cooling_capacity_low": 0.6666667,   # Lowest random factor for cooling_capacity
                # "factor_cooling_capacity_high": 1.3333333333,   # Highest random factor for cooling_capacity
            },
        },
    },
    "noise_hvac_prop_test": {
        "noise_mode": "no_noise",  # Can be: no_noise, small_noise, big_noise
        "noise_parameters": {
            "no_noise": {
                "std_latent_cooling_fraction": 0,  # Std Gaussian noise on latent_cooling_fraction
                "factor_COP_low": 1,  # Lowest random factor for COP
                "factor_COP_high": 1,  # Highest random factor for COP
                "factor_cooling_capacity_low": 1,  # Lowest random factor for cooling_capacity
                "factor_cooling_capacity_high": 1,  # Highest random factor for cooling_capacity
            },
            "small_noise": {
                "std_latent_cooling_fraction": 0.05,  # Std Gaussian noise on latent_cooling_fraction
                "factor_COP_low": 0.95,  # Lowest random factor for COP
                "factor_COP_high": 1.05,  # Highest random factor for COP
                "factor_cooling_capacity_low": 0.9,  # Lowest random factor for cooling_capacity
                "factor_cooling_capacity_high": 1.1,  # Highest random factor for cooling_capacity
            },
            "big_noise": {
                "std_latent_cooling_fraction": 0.1,  # Std Gaussian noise on latent_cooling_fraction
                "factor_COP_low": 0.85,  # Lowest random factor for COP
                "factor_COP_high": 1.15,  # Highest random factor for COP
                "factor_cooling_capacity_low": 0.6666667,  # Lowest random factor for cooling_capacity
                "factor_cooling_capacity_high": 1.3333333333,  # Highest random factor for cooling_capacity
            },
        },
    },
    # 环境的属性，关于模拟的时间、温度模式、智能体（这里指的是房屋）的数量、它们之间的通信方式、状态、消息、电网和奖励
    # Env properties
    # 默认的环境属性
    "default_env_prop": {
        "start_datetime": "2021-01-01 00:00:00",  # Start date and time (Y-m-d H:M:S)
        # 开始日期和时间的模式。random（在原始start_datetime之后的年份中随机选择）或fixed（保持为原始start_datetime）。
        "start_datetime_mode": "random",  # Can be random (randomly chosen in the year after original start_datetime) or fixed (stays as the original start_datetime)
        "time_step": 4,  # Time step in seconds
        # 集群属性
        "cluster_prop": {
            # 温度模式:三种
            "temp_mode": "noisy_sinusoidal_heatwave",  # Can be: constant, sinusoidal, noisy_sinusoidal
            # 每种模式都有其特定的参数，如day_temp（白天的温度）、night_temp（夜晚的温度）、temp_std（温度的噪声标准差）和random_phase_offset（是否有随机的相位偏移）。
            "temp_parameters": {
                "constant": {
                    "day_temp": 26.5,  # Day temperature
                    "night_temp": 26.5,  # Night temperature
                    "temp_std": 0,  # Noise std dev on the temperature
                    "random_phase_offset": False,
                },
                "sinusoidal": {
                    "day_temp": 30,
                    "night_temp": 23,
                    "temp_std": 0,
                    "random_phase_offset": False,
                },
                "sinusoidal_hot": {
                    "day_temp": 30,
                    "night_temp": 28,
                    "temp_std": 0,
                    "random_phase_offset": False,
                },
                "sinusoidal_heatwave": {
                    "day_temp": 34,
                    "night_temp": 28,
                    "temp_std": 0,
                    "random_phase_offset": False,
                },
                "sinusoidal_hot_heatwave": {
                    "day_temp": 38,
                    "night_temp": 32,
                    "temp_std": 0,
                    "random_phase_offset": False,
                },
                "sinusoidal_cold_heatwave": {
                    "day_temp": 30,
                    "night_temp": 24,
                    "temp_std": 0,
                    "random_phase_offset": False,
                },
                "sinusoidal_cold": {
                    "day_temp": 24,
                    "night_temp": 22,
                    "temp_std": 0,
                    "random_phase_offset": False,
                },
                "noisy_sinusoidal": {
                    "day_temp": 30,
                    "night_temp": 23,
                    "temp_std": 0.5,
                    "random_phase_offset": False,
                },
                "noisy_sinusoidal_hot": {
                    "day_temp": 30,
                    "night_temp": 28,
                    "temp_std": 0.5,
                    "random_phase_offset": False,
                },
                "noisy_sinusoidal_heatwave": {
                    "day_temp": 34,
                    "night_temp": 28,
                    "temp_std": 0.5,
                    "random_phase_offset": False,
                },
                "noisier_sinusoidal_heatwave": {
                    "day_temp": 34,
                    "night_temp": 28,
                    "temp_std": 2,
                    "random_phase_offset": False,
                },
                "noisy_sinusoidal_cold": {
                    "day_temp": 24,
                    "night_temp": 22,
                    "temp_std": 0.5,
                    "random_phase_offset": False,
                },
                "shifting_sinusoidal": {
                    "day_temp": 30,
                    "night_temp": 23,
                    "temp_std": 0,
                    "random_phase_offset": True,
                },
                "shifting_sinusoidal_heatwave": {
                    "day_temp": 34,
                    "night_temp": 28,
                    "temp_std": 0,
                    "random_phase_offset": True,
                },
            },
            "nb_agents": 1,  # Number of houses
            # 单个房屋可以与之通信的房屋的最大数量。
            "nb_agents_comm": 10,  # Maximal number of houses a single house communicates with
            "agents_comm_mode": "neighbours",  # Communication mode
            "comm_defect_prob": 0,  # Probability of a communication link being broken
            # 通信模式的参数:row_size（行的边长）和distance_comm（两个通信房屋之间的最大距离）。
            "agents_comm_parameters": {
                "neighbours_2D": {
                    "row_size": 5,  # Row side length
                    "distance_comm": 2,  # Max distance between two communicating houses
                },
            },
        },
        # 状态中包含的属性,是否包含小时、天、太阳能增益、热、空调的信息
        # 这里指定某些状态不应该被包含，那么这些状态将被忽略。
        "state_properties": {
            "hour": False,
            "day": False,
            "solar_gain": False,
            "thermal": False,
            "hvac": False,
        },
        # 消息中包含的属性,是否包含热、HVAC信息
        "message_properties": {
            "thermal": False,
            "hvac": False,
        },
        # 电网属性
        "power_grid_prop": {
            # 基础功率模式，constant模式使用固定的功率值，而interpolation模式则使用插值方法根据提供的数据动态计算功率。
            "base_power_mode": "interpolation",  # Interpolation (based on deadband bang-bang controller) or constant
            # 定义了各种基础功率模式的参数。
            "base_power_parameters": {
                "constant": {
                    "avg_power_per_hvac": 4200,  # Per hvac. In Watts.
                    # 每个HVAC的初始信号,开始时的功率?
                    "init_signal_per_hvac": 910,  # Per hvac.
                },
                "interpolation": {
                    # 可能包含与电网相关的某些数据，这些数据将用于插值。
                    "path_datafile": "./monteCarlo/mergedGridSearchResultFinal.npy",
                    # 可能包含用于插值的参数。
                    "path_parameter_dict": "./monteCarlo/interp_parameters_dict.json",
                    # 该文件可能包含与上述.json文件中的参数对应的键。
                    "path_dict_keys": "./monteCarlo/interp_dict_keys.csv",
                    # 插值更新的周期，单位为秒。这表示每隔300秒，插值会基于提供的数据进行更新。
                    "interp_update_period": 300,  # Seconds
                    "interp_nb_agents": 100,  # Max number of agents over which the interpolation is run
                },
            },
            # 在训练期间，每个阶段随机乘以或除以的人工乘法因子的范围。例如：1不会改变信号。3将使信号介于计算值的 33% 和 300% 之间。
            "artificial_signal_ratio_range": 1,  # Scale of artificial multiplicative factor randomly multiplied (or divided) at each episode during training. Ex: 1 will not modify signal. 3 will have signal between 33% and 300% of what is computed.
            "artificial_ratio": 1.0,
            # 信号模式:平坦的、正弦、阶梯形、perlin及其变种
            "signal_mode": "perlin",  # Mode of the signal. Currently available: flat, sinusoidal, regular_steps, perlin
            "signal_parameters": {
                "flat": {},
                "sinusoidals": {
                    "periods": [400, 1200],  # In seconds
                    "amplitude_ratios": [0.1, 0.3],  # As a ratio of avg_power_per_hvac
                },
                "regular_steps": {
                    "amplitude_per_hvac": 6000,  # In watts
                    "period": 300,  # In seconds
                },
                "perlin": {
                    # Perlin噪声的振幅比例
                    "amplitude_ratios": 0.9,
                    # Perlin噪声的八度数
                    "nb_octaves": 5,
                    # 每个八度之间的步长
                    "octaves_step": 5,
                    # Perlin噪声的周期，单位为秒
                    "period": 400,
                },
                "amplitude+_perlin": {
                    "amplitude_ratios": 0.9*1.1,
                    "nb_octaves": 5,
                    "octaves_step": 5,
                    "period": 400,
                },
                "amplitude++_perlin": {
                    "amplitude_ratios": 0.9*1.3,
                    "nb_octaves": 5,
                    "octaves_step": 5,
                    "period": 400,
                },
                "fast+_perlin": {
                    "amplitude_ratios": 0.9,
                    "nb_octaves": 5,
                    "octaves_step": 5,
                    "period": 300,
                },
                "fast++_perlin": {
                    "amplitude_ratios": 0.9,
                    "nb_octaves": 5,
                    "octaves_step": 5,
                    "period": 200,
                },
            },
        },
        "reward_prop": {
            # 温度在损失函数中的权衡参数，用于在损失函数中调整温度的惩罚。具体来说，损失函数将是alpha_temp * 温度惩罚 + alpha_sig * 调节信号惩罚。
            "alpha_temp": 1,  # Tradeoff parameter for temperature in the loss function: alpha_temp * temperature penalty + alpha_sig * regulation signal penalty.
            "alpha_sig": 1,  # Tradeoff parameter for signal in the loss function: alpha_temp * temperature penalty + alpha_sig * regulation signal penalty.
            # 用于信号标准化的平均用电量
            "norm_reg_sig": 7500,  # Average power use, for signal normalization
            # 表示用于计算温度惩罚的模式。它可以是以下四种之一：
            # individual_L2--温度惩罚是基于单个房屋与其目标温度之间的L2范数差异来计算的
            # common_L2--温度惩罚是基于所有房屋与其目标温度之间的L2范数差异的平均值来计算的
            # common_max--温度惩罚是基于所有房屋与其目标温度之间的L2范数差异的最大值来计算的
            # mixture--温度惩罚是基于上述三种模式的混合来计算的。具体的混合权重由alpha_ind_L2、alpha_common_L2和alpha_common_max三个参数确定,见cli.py
            "temp_penalty_mode": "individual_L2",  # Mode of temperature penalty
            "temp_penalty_parameters": {
                "individual_L2": {},
                "common_L2": {},
                "common_max_error": {},
                "mixture": {
                    "alpha_ind_L2": 1,
                    "alpha_common_L2": 1,
                    "alpha_common_max": 0,
                },
            },
            # 信号惩罚的模式
            "sig_penalty_mode": "common_L2",  # Mode of signal penalty
        },
    },


    # Agent properties
    "PPO_prop": {
        # actor网络有两个隐藏层，每层都有100个神经元
        "actor_layers": [100, 100],
        "critic_layers": [100, 100],
        "gamma": 0.99,
        "lr_critic": 3e-3,
        "lr_actor": 1e-3,
        "clip_param": 0.2,
        # 梯度裁剪的最大范数。
        "max_grad_norm": 0.5,
        # 更新次数或更新频率。
        "ppo_update_time": 10,
        "batch_size": 256,
        # 在每个情节结束时将返回值设置为零
        "zero_eoepisode_return": False,
    },
    "MAPPO_prop": {
        "actor_layers": [100, 100],
        "critic_layers": [100, 100],
        "gamma": 0.99,
        "lr_critic": 3e-3,
        "lr_actor": 1e-3,
        "clip_param": 0.2,
        "max_grad_norm": 0.5,
        "ppo_update_time": 10,
        "batch_size": 256,
        "zero_eoepisode_return": False,
    },
    "DDPG_prop": {
        "actor_hidden_dim": 256,
        "critic_hidden_dim": 256,
        "gamma": 0.99,
        "lr_critic": 3e-3,
        "lr_actor": 1e-3,
        # 用于soft更新的参数
        "soft_tau": 0.01,
        "clip_param": 0.2,
        "max_grad_norm": 0.5,
        "ddpg_update_time": 10,
        "batch_size": 64,
        "buffer_capacity": 524288,
        "episode_num": 10000,
        # 学习的间隔
        "learn_interval": 100,
        # 在开始学习之前要采取的随机操作的数量
        "random_steps": 100,
        "gumbel_softmax_tau": 1,
        # 如果为True，则actor和critic共享一些层
        "DDPG_shared": True
    },
    
    "TarMAC_prop": {
        # 是否使用循环神经网络（RNN）作为策略。如果为True，策略将具有记忆性，可以处理序列数据?
	    "recurrent_policy": True, 	# Use RNN
	    "state_size": 128, 			# Size of the RNN state
	    "communication_size": 32, 	# Size of the communication message
        # TarMAC的通信模式。这不同于集群的communication_mode。例如，from_states_rec_att可能表示从状态中使用递归注意力进行通信。
        # 1.'no_comm', 没有通信;
        # 2.'from_states_rec_att', 基于它们的状态通信，并使用递归注意力机制,这允许智能体根据其他智能体的状态和它们之间的关系来加权和汇总信息;
        # 3.'from_states'直接基于它们的状态通信，不使用任何特定的注意力机制。
	    "tarmac_communication_mode": "from_states_rec_att",			# Mode of communication protocole (not the same as communication_mode of the cluster)
	    "comm_num_hops": 1,			# Number of hops during the communication
        #  在损失函数中的值损失和熵损失的系数。
	    "value_loss_coef": 0.5,	# Coefficient of the value loss in the loss function
	    "entropy_coef": 0.01,		# Coefficient of the entropy loss in the loss function
	    "tarmac_lr": 7e-4,					# Learning rate
        # RMSProp 或 Adam 优化器的 Epsilon 设置为 0.00001
	    "tarmac_eps": 1e-5,				# Epsilon for RMSProp or Adam optimizer
	    "tarmac_gamma": 0.99,				# Discount factor
        # RMSProp 优化器的 Alpha，设置为 0.99
	    "tarmac_alpha": 0.99,				# Alpha for RMSProp optimizer
        # 梯度的最大范数。如果为None，则不进行裁剪。
	    "tarmac_max_grad_norm": 0.5,		# Maximal norm of the gradient. If None, no clipping is done.
        # 如果为True，则使用分布式训练
	    "distributed": False,
        # TarMAC算法的更新次数
	    "nb_tarmac_updates": 10,
        # 每次更新使用的样本批次的大小?
	    "tarmac_batch_size": 128,
	},

    # 区别：
    # TarMAC agent和TarMAC PPO agent是两种不同的算法。TarMAC agent是基于RNN的多智能体通信算法，而TarMAC PPO agent结合了TarMAC的通信机制和PPO的更新策略。这意味着TarMAC PPO agent在基于TarMAC的通信机制的基础上，使用了PPO算法进行策略更新。TarMAC PPO代理是基于PPO的TarMAC代理的一个变种。
    # TarMAC PPO代理具有专门为PPO算法设计的参数，例如clip_param和ppo_update_time。
    # TarMAC PPO代理具有与通信相关的特定参数，例如with_gru、with_comm和tarmac_comm_mode。
    # TarMAC代理的配置参数更多地关注于通信和RNN的细节，而TarMAC PPO代理则更多地关注于PPO和通信的细节。
    # 这些差异表明，尽管两者都是基于TarMAC的，但TarMAC PPO代理是专门为PPO算法优化的版本，而TarMAC代理则更多地关注于通信和RNN(递归神经网络)的细节。
    
    # 从rl_controllers.py文件中，我们可以看到TarMAC代理的定义。以下是其主要特点：
    # 使用RNN（递归神经网络）。
    # 有状态大小、通信大小、通信模式等参数。
    # 使用RMSProp或Adam优化器。
    # 有学习率、epsilon、折扣因子等参数。
    
    # 从tarmac_ppo.py文件中，我们可以看到TarMAC PPO代理的定义。以下是其主要特点：
    # 定义了TarMACPPO类，该类继承自PPO类。
    # 使用了TarMAC的通信机制。有与TarMAC相似的参数，如通信大小、通信模式等。
    # 使用了PPO的更新策略。PPO是一种策略优化方法，它通过限制策略更新的大小来避免过大的策略更新，从而提高学习的稳定性。
    # 文章中提到，TarMAC PPO代理在实验中表现出了更好的性能，尤其是在系统规模较大时。
    "TarMAC_PPO_prop": {
        "actor_hidden_state_size": 64,   # Size of the hidden state of the actor
        "critic_hidden_layer_size": 64,         # Size of the hidden layers in the critic
	    "communication_size": 16, 	# Size of the communication message
        # 这可能与某种注意力机制或通信协议有关
	    "key_size": 8, 	# Size of the key/query
        # 通信的跳数。在某些多智能体系统中，消息可能需要通过多个中间智能体传递，这个参数定义了这些跳数。
	    "comm_num_hops": 1,			# Number of hops during the communication
        "lr_critic": 1e-3,
        "lr_actor": 1e-3,
        # 这是为了保持数值稳定性而添加到分母中的一个小常数。
	    "eps": 1e-5,				# Epsilon for RMSProp or Adam optimizer
	    "gamma": 0.99,				# Discount factor
        # 梯度的最大范数。如果设置了这个值，梯度裁剪将被应用，以防止梯度爆炸问题。
	    "max_grad_norm": 0.5,		# Maximal norm of the gradient. If None, no clipping is done.
        # PPO算法中的裁剪参数。这是一个防止策略更新过大的机制。
        "clip_param": 0.2,
        "ppo_update_time": 10,
        "batch_size": 256,
        # 是否在网络中使用GRU（门控循环单元）
        "with_gru": False,
        # 是否在智能体之间使用通信。
        "with_comm": True,
        # 使用TarMAC进行通信的智能体数量。
        "number_agents_comm_tarmac": 10,
        # TarMAC的通信模式。它可以是以下几种模式之一：
        # all: 所有智能体都进行通信。neighbours: 只与邻居智能体通信。none: 不与任何智能体通信。random_sample: 随机选择一些智能体进行通信。
        "tarmac_comm_mode": 'neighbours',
        "tarmac_comm_defect_prob": 0.0 # Probability of a TarMAC communication defect
    },
    
    "DQN_prop": {
        "network_layers": [100, 100],
        "gamma": 0.99,
        "tau": 0.01,
        "buffer_capacity": 524288,
        "lr": 1e-3,
        "batch_size": 256,
        "epsilon_decay": 0.99998,
        "min_epsilon": 0.01,
    },
    "MPC_prop": {
        "rolling_horizon": 15,
    },


    # Training process properties
    "training_prop": {
        # 在训练过程中actor模型保存的中间次数,会被cli中的替换掉,除非cli.py中的值设为-1
        "nb_inter_saving_actor": 50, # Number of intermediate saving of the actor,原来是9
        # 在训练过程中智能体被测试的次数
        "nb_test_logs": 200, # Number of times the agent is tested during the training
        # 每次测试将持续21600个时间步，相当于一个完整的天
        "nb_time_steps_test": 21600, # Number of time steps during the tests (1 full day)
        # 训练期间的环境重置（或训练回合）的次数
        "nb_tr_episodes": 200, # Number of training episodes (environment resets)
        # 训练期间的策略更新次数
        "nb_tr_epochs": 200, # Number of training epochs (policy updates)
        # 训练过程中性能被平均和记录的次数。
        "nb_tr_logs": 200, # Number of times the performances are averaged and logged during the training
        # 训练期间的总时间步数
        "nb_time_steps": 3276800, # Number of time steps during the training
    },
}
