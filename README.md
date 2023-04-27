# Multi-Agent Reinforcement Learning for Fast Timescale Demand Response of Flexible Loads

This is the original version of the code that was used to produce the results of the Multi-Agent Reinforcement Learning for Fast-Timescale Demand Response of Residential Loads  [paper](https://arxiv.org/abs/2301.02593).

The officially maintained version of the code is refactored and better documented, and available here: [https://github.com/ALLabMTL/marl-demandresponse](https://github.com/ALLabMTL/marl-demandresponse)


## To install the code
Dependencies:

  - ray-rllib
  - numpy
  - pandas
  - wandb
  - matplotlib
  - pytorch
  - noise
  - sympy
  - pyglet
  - cvxpy  (only needed by the MPC agent - you can disable it if necessary) 

## To run the code
You need to have logged in to wandb before (otherwise, you can simply remove all wandb calls from the code).

To train an agent:

```python main.py --exp [EXP NAME]```

See the `cli_train()` definition in `cli.py` to know the other arguments. See `config.py` to know the default arguments.


To deploy:

```python main-deploy.py --agent [AGENT NAME] --agent_type [AGENT TYPE]```

See the `cli_deploy()` definition in `cli.py` to know the other arguments. See `config.py` to know the default arguments.

