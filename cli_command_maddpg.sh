# 粘贴自v0,复制到终端或者命令行:bash cli_command.sh,记得先删掉没用的
# --agent_type=dqn, ppo
python main.py --agent_type=maddpg \
            --exp=MADDPG \
            --save_actor_name=MADDPG \

--DDPG_shared=1或0

发生异常: TypeError
update() takes 5 positional arguments but 6 were given
  File "/home/ef/Documents/code/ubuntu/marl-demandresponse-original/train_ddpg.py", line 119, in train_ddpg
    metrics.update(k, obs, next_obs, reward, env)
  File "/home/ef/Documents/code/ubuntu/marl-demandresponse-original/main.py", line 49, in main
    train[opt.agent_type](env, agent, opt, config_dict, render, log_wandb, wandb_run)
  File "/home/ef/Documents/code/ubuntu/marl-demandresponse-original/main.py", line 54, in <module>
    main()
TypeError: update() takes 5 positional arguments but 6 were given