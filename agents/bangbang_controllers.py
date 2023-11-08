

class AlwaysOnController(object):
    """一直开 
    Bang bang controller taking deadband into account: turns on when too hot, turns off when too cold, sticks to current state otherwise"""

    def __init__(self, agent_properties, config_dict, num_state = None):
        self.agent_properties = agent_properties
        self.id = agent_properties["id"]

    def act(self, obs):
        return True


class DeadbandBangBangController(object):
    """ 考虑锁死的BangBang,太热时开启，太冷时关闭，否则保持当前状态。
    Bang bang controller taking deadband into account: turns on when too hot, turns off when too cold, sticks to current state otherwise"""

    def __init__(self, agent_properties, config_dict, num_state = None):
        self.agent_properties = agent_properties
        self.id = agent_properties["id"]

    def act(self, obs):
        obs = obs[self.id]
        house_temp = obs["house_temp"]
        house_target_temp = obs["house_target_temp"]
        house_deadband = obs["house_deadband"]
        hvac_turned_on = obs["hvac_turned_on"]

        if house_temp < house_target_temp-house_deadband/2:
            action = False
            # print("Too cold!")

        elif house_temp > house_target_temp+house_deadband/2:
            action = True
            # print("Too hot!")
        else:
            action = hvac_turned_on

        return action


class BangBangController(object):
    """
    不考虑锁死的BangBang,太热时开启，太冷时关闭，否则保持当前状态。
    Cools when temperature is hotter than target (no interest for deadband). Limited on the hardware side by lockout (but does not know about it)
    """

    def __init__(self, agent_properties, config_dict, num_state = None):
        self.agent_properties = agent_properties
        self.id = agent_properties["id"]

    def act(self, obs):
        obs = obs[self.id]
        house_temp = obs["house_temp"]
        house_target_temp = obs["house_target_temp"]

        if house_temp <= house_target_temp:
            action = False

        elif house_temp > house_target_temp:
            action = True

        return action


class BasicController(object):
    """ 并非真正的bang bang控制器，但：过热时开启，过冷时关闭，否则保持当前状态
    Not really a bang bang controller but: turns on when too hot, turns off when too cold, sticks to current state otherwise"""

    def __init__(self, agent_properties, config_dict, num_state = None):
        self.agent_properties = agent_properties
        self.id = agent_properties["id"]

    def act(self, obs):
        obs = obs[self.id]
        house_temp = obs["house_temp"]
        house_target_temp = obs["house_target_temp"]
        house_deadband = obs["house_deadband"]
        hvac_turned_on = obs["hvac_turned_on"]

        if house_temp < house_target_temp-house_deadband/2:
            action = False
            # print("Too cold!")

        elif house_temp > house_target_temp+house_deadband/2:
            action = True
            # print("Too hot!")
        else:
            action = hvac_turned_on

        return action
