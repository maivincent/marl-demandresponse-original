import env.rendering as rendering
import env.turbo as turbo
import math
import env.graph_renderer as graph_renderer
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

WIDTH = 1600
HEIGHT = 960
TEMPERATURE_SCALE = 10
GRAPH_MEMORY = 200


class Renderer(object):
    def __init__(self, nb_agents):
        self.i = 0
        self.house_poly = []
        self.data_messages = {}
        self.viewer = None
        self.time = 0
        self.screen_width = WIDTH
        self.screen_height = HEIGHT
        self.nb_house = nb_agents
        self.temperature = np.array([])
        self.signal = np.array([])
        print("-- Renderer ready --")

    def draw_grid(self, nb_horizontal, nb_vertical, max_x, max_y, min_x=0, min_y=0):
        horizontal_distance = (max_x - min_x) / nb_horizontal
        vertical_distance = (max_y - min_y) / nb_vertical

        for i in range(nb_horizontal):
            self.viewer.draw_polyline(
                ((i * horizontal_distance, min_y), (i * horizontal_distance, max_y))
            )

        for i in range(nb_vertical):
            self.viewer.draw_polyline(
                ((min_x, i * vertical_distance), (max_x, i * vertical_distance))
            )

        for i in range(nb_vertical):
            self.viewer.draw_polyline(
                ((min_x, i * vertical_distance), (max_x, i * vertical_distance))
            )

    def draw_house(self, obs):
        self.viewer.labels = []
        line_lenght = math.ceil(math.sqrt(self.nb_house))

        house_dimension = self.screen_height / line_lenght
        for i in range(self.nb_house):
            row = math.floor(i / line_lenght)
            column = i % line_lenght
            self.house_poly.append(
                rendering.FilledPolygon(
                    (
                        (
                            house_dimension * column,
                            self.screen_height
                            - house_dimension * row
                            - house_dimension,
                        ),
                        (
                            house_dimension * column + house_dimension / 2,
                            self.screen_height
                            - house_dimension * row
                            - house_dimension,
                        ),
                        (
                            house_dimension * column + house_dimension / 2,
                            self.screen_height
                            - house_dimension * row
                            - house_dimension / 2,
                        ),
                        (
                            house_dimension * column + house_dimension / 4,
                            self.screen_height
                            - house_dimension * row
                            - house_dimension / 2
                            + house_dimension / 4,
                        ),
                        (
                            house_dimension * column,
                            self.screen_height
                            - house_dimension * row
                            - house_dimension / 2,
                        ),
                    )
                )
            )
            self.viewer.add_geom(self.house_poly[i])

    def display_HVAC_status(self, obs):
        self.viewer.labels = []
        line_lenght = math.ceil(math.sqrt(self.nb_house))

        house_dimension = self.screen_height / line_lenght
        for i in range(self.nb_house):
            row = math.floor(i / line_lenght)
            column = i % line_lenght
            self.viewer.add_geom(self.house_poly[i])
            if obs[str(i) + "_1"]["hvac_turned_on"]:
                self.viewer.add_labels(
                    "HVAC on",
                    house_dimension * column + house_dimension,
                    self.screen_height - house_dimension * row,
                    (255, 50, 50, 255),
                    house_dimension / 7,
                )
            elif (
                obs[str(i) + "_1"]["hvac_seconds_since_off"]
                > obs[str(i) + "_1"]["hvac_lockout_duration"]
            ):
                self.viewer.add_labels(
                    "Lockout",
                    house_dimension * column + house_dimension,
                    self.screen_height - house_dimension * row,
                    (50, 255, 50, 255),
                    house_dimension / 7,
                )
            else:
                self.viewer.add_labels(
                    "HVAC off",
                    house_dimension * column + house_dimension,
                    self.screen_height - house_dimension * row,
                    (130, 130, 255, 255),
                    house_dimension / 7,
                )

    def display_house_temperature(self, obs):
        line_lenght = math.ceil(math.sqrt(self.nb_house))

        house_dimension = self.screen_height / line_lenght
        for i in range(self.nb_house):
            row = math.floor(i / line_lenght)
            column = i % line_lenght
            self.viewer.add_geom(self.house_poly[i])

            self.viewer.add_labels(
                str(
                    round(
                        obs[str(i) + "_1"]["house_temp"]
                        - obs[str(i) + "_1"]["house_target_temp"],
                        2,
                    )
                )
                + " °C",
                house_dimension * column + house_dimension,
                self.screen_height - house_dimension * (row + 0.5),
                (255, 255, 255, 255),
                house_dimension / 10,
            )

    def color_house(self, obs):
        for index, house in enumerate(self.house_poly):
            temperature = (
                obs[str(index) + "_1"]["house_temp"]
                - obs[str(index) + "_1"]["house_target_temp"]
            )  # house_temperature[index]
            temperature = min(TEMPERATURE_SCALE, temperature)
            temperature = max(-TEMPERATURE_SCALE, temperature)
            color_index = int(
                127 * (math.sin((temperature) / TEMPERATURE_SCALE * math.pi / 2)) + 128
            )

            t = turbo.colormap[color_index]
            house.set_color(t[0], t[1], t[2])

    def draw_graph(self):
        fig = graph_renderer.make_graph(
            self.temperature[max(-GRAPH_MEMORY, -len(self.temperature)) :],
            self.signal[max(-GRAPH_MEMORY, -len(self.signal)) :],
            self.time,
        )

        if fig != None:
            rendered_figure = rendering.render_figure(fig)
            plt.close(fig)
            self.graph_data = rendered_figure

        return

    def draw_legend(self):
        fig = graph_renderer.make_legend(TEMPERATURE_SCALE)
        rendered_figure = rendering.render_figure(fig)
        return rendered_figure

    def define_data_box(self):
        data_box = rendering.FilledPolygon(
            ((self.screen_height, 0), (self.screen_height, 300), (1300, 300), (1300, 0))
        )
        self.viewer.add_geom(data_box)
        data_box.set_color(0.145, 0.145, 0.145)
        self.data_box_y = 300
        self.data_box_x = self.screen_height

    def print_data(self):
        height = 14
        padding = 2
        for index, key in enumerate(self.data_messages):
            self.viewer.add_data_text(
                key + " : " + self.data_messages[key],
                self.data_box_x + padding,
                self.data_box_y - (height + padding) * index,
                (255, 255, 255, 255),
                height,
            )

    def edit_data(self, df):

        self.data_messages = {}
        self.data_messages["Number of HVAC"] = str(df.shape[0])
        self.data_messages["Number of HVAC Turned ON"] = str(df["hvac_turned_on"].sum())
        self.data_messages["Number of HVAC Turned OFF"] = str(
            df.shape[0] - df["hvac_turned_on"].sum()
        )
        self.data_messages["Number of locked HVAC"] = str(
            np.where(
                df["hvac_seconds_since_off"] > df["hvac_lockout_duration"], 1, 0
            ).sum()
        )
        self.data_messages["Outdoor temperature"] = (
            str(round(df["OD_temp"][0], 2)) + " °C"
        )
        self.data_messages["Average indoor temperature"] = (
            str(round(df["house_temp"].mean(), 2)) + " °C"
        )
        self.data_messages["Average temperature difference"] = (
            str(round(df["temperature_difference"].mean(), 2)) + " °C"
        )
        self.data_messages["Regulation signal"] = str(df["reg_signal"][0])

    def render(self, obs):

        df = pd.DataFrame(obs).transpose()
        df["temperature_difference"] = df["house_temp"] - df["house_target_temp"]
        self.temperature = np.append(
            self.temperature, df["temperature_difference"].mean()
        )
        self.signal = np.append(self.signal, df["reg_signal"][0])

        if self.viewer is None:

            self.legend_data = self.draw_legend()
            self.viewer = rendering.Viewer(self.screen_width, self.screen_height)
            self.viewer.draw_legend(self.screen_height, 0)
            self.draw_house(obs)
            self.define_data_box()
            self.viewer.define_legend(self.legend_data)

        self.viewer.draw_polyline(
            ((self.screen_height, 0), (self.screen_height, self.screen_height))
        )

        self.draw_grid(
            math.ceil(math.sqrt(self.nb_house)),
            math.ceil(math.sqrt(self.nb_house)),
            self.screen_height,
            self.screen_height,
        )
        self.viewer.clear_text()
        self.edit_data(df)
        self.print_data()
        self.color_house(obs)
        self.display_HVAC_status(obs)
        self.display_house_temperature(obs)
        self.draw_graph()
        self.viewer.define_graph(self.graph_data)
        self.time += 1
        complete_render = self.viewer.render()
        if complete_render != None:
            return complete_render

    def __del__(self):
        self.viewer.window.close()
