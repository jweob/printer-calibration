"""
Multi Setting Calibration Prints
Copyright John O'Brien 2016 jweob@cantab.net 2016-07-24

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public
License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.
If not, see http://www.gnu.org/licenses/


Takes a sliced test piece and replicates it in an array with some variables altered. Designed to dial in
parameters. More information here: http://jweoblog.com/?p=908#more-908

"""

import math

precision = 3  # Number of digits to round X and Y instructions to

def main():
    # The filename in the variable below should contain the gcode for the test piece to be repeated in the array
    # with the start and end gcode removed and the variables to be altered in each piece replaced with a number in the
    # format <#>
    piece_gcode_filename = "10x10x1-2.gcode"

    # Read the piece gcode
    with open(piece_gcode_filename, "r") as input_file:
        raw_data = input_file.readlines()

    template = Gcode(raw_data, "10mm x 10mm x 1.2mm cube")
    template.translate_xy_to_point([0,0])
    template.set_layerwise_extrusion()
    template.strip_comments()

    m92_values = float_range(920, 10, 25)
    iteration_list = [(x, y) for x in range(5) for y in range(5)]

    gcodes = []

    for index, coords in enumerate(iteration_list):
        print(coords)
        this_gcode = Gcode(template.raw, name="M92 E" + str(m92_values[index]))
        this_gcode.prepend_all_layers("M92 E" + str(m92_values[index]))
        this_gcode.translate_xy_to_point([coords[0] * 20, coords[1] * 20])
        gcodes.append(this_gcode)

    output_gcode = combine_list_layerwise(gcodes)
    output_gcode.translate_xy_to_point([10, 10])
    output_gcode.append_layer("G1 X5 Y5 Z10\nM25\nG1 X5 Y5 Z10\n", 4)

    print(output_gcode.bound_box)
    for layer in output_gcode.layers:
        print(layer)

    output_data = "".join(output_gcode.raw)

    # Write to output file
    if (piece_gcode_filename.index(".") > -1):
        fn_start = piece_gcode_filename[0:piece_gcode_filename.index(".")]
        fn_ending = piece_gcode_filename[piece_gcode_filename.index("."):]
    else:
        fn_start = piece_gcode_filename
        fn_ending = ".gcode"

    with open(fn_start + "_output" + fn_ending, "w") as text_file:
        text_file.write(output_data)


def combine_list_layerwise(gcode_list):

    raw_output = []
    layers = []
    gcode_count = len(gcode_list)

    for gcode in gcode_list:
        layers.append(len(gcode.layers))

    ref_layers = gcode_list[layers.index(max(layers))].layers

    for layer_num, layer in enumerate(ref_layers):
        for gcode_index, gcode in enumerate(gcode_list):
            for line_index, line_num in enumerate(range(gcode.layers[layer_num]["start_line_num"], gcode.layers[layer_num]["end_line_num"] + 1)):
                if line_index == 1:
                    raw_output.append(";LAYER " + str(layer_num) + " @ HEIGHT " + str(layer["height"])
                                  + " OBJECT " + str(gcode_index + 1) + "/" + str(gcode_count))
                raw_output.append(gcode.raw[line_num])

    return Gcode(raw_output)

class Gcode:
    def __init__(self, gcode, name="Some Gcode"):
        self.raw = gcode
        self.name = name
        self.words = []
        self.bound_box = {}
        self.layers = []
        self.start_gcode = []
        self.end_gcode = []
        self.__parse_raw()

    def translate(self, x_y_z, ext=0):
        x_y_z.append(ext)
        self.words = self.__translate_words(x_y_z, self.words)
        self.__update_raw_from_words()
        self.__parse_raw()

    def translate_xy_to_point(self, x_y):
        current_neg_xy = [-self.bound_box["X"][0], -self.bound_box["Y"][0]]
        translations = [sum(x) for x in zip(x_y, current_neg_xy)]
        translations.extend((0, 0))
        self.words = self.__translate_words(translations, self.words)
        self.__update_raw_from_words()
        self.__parse_raw()

    def set_layerwise_extrusion(self):
        new_raw = self.start_gcode

        for layer in self.layers:
            for line_index, line_num in enumerate(range(layer["start_line_num"], layer["end_line_num"] + 1)):
                if line_index == 1:
                    new_raw.append("G92 E0\n")
                if self.__is_move(self.raw[line_num]):
                    line_in_words = [self.__get_words_from_line(self.raw[line_num])]
                    translated_words = self.__translate_words([0, 0, 0, -layer["start_extrude"]], line_in_words)
                    new_raw.append(self.__get_line_from_words(translated_words[0]))
                else:
                    new_raw.append(self.raw[line_num])

        self.raw = new_raw
        self.__parse_raw()

    def prepend_layer(self, command, prepend_layer_num):
        new_raw = self.start_gcode
        for layer_num, layer in enumerate(self.layers):
            for line_index, line_num in enumerate(range(layer["start_line_num"], layer["end_line_num"] + 1)):
                # The first line of the layer is the Z move. It will always be re-parsed as the first line, so need
                # to put anything that will stay in that layer just after this line
                if (layer_num == prepend_layer_num) & (line_index == 1):
                    new_raw.append(command)
                new_raw.append(self.raw[line_num])
        self.raw = new_raw
        self.__parse_raw()

    def append_layer(self, command, append_layer_num):
        new_raw = self.start_gcode
        for layer_num, layer in enumerate(self.layers):
            for line_index, line_num in enumerate(range(layer["start_line_num"], layer["end_line_num"] + 1)):
                new_raw.append(self.raw[line_num])
            if (layer_num == append_layer_num):
                new_raw.append(command)
        self.raw = new_raw
        self.__parse_raw()

    def prepend_all_layers(self, command):
        new_raw = self.start_gcode
        for layer_num, layer in enumerate(self.layers):
            for line_index, line_num in enumerate(range(layer["start_line_num"], layer["end_line_num"] + 1)):
                # The first line of the layer is the Z move. It will always be re-parsed as the first line, so need
                # to put anything that will stay in that layer just after this line
                if line_index == 1:
                    new_raw.append(command)
                new_raw.append(self.raw[line_num])
        self.raw = new_raw
        self.__parse_raw()

    def strip_comments(self):
        new_raw = []
        for line in self.raw:
            if line[:1] != ";":
                new_raw.append(line)
        self.raw = new_raw
        self.__parse_raw()

    def __translate_words(self, x_y_z_e, words, min_xyz=[0,0,0,-9999]):
        translations = {"X": x_y_z_e[0],
                        "Y": x_y_z_e[1],
                        "Z": x_y_z_e[2],
                        "E": x_y_z_e[3]}
        mins = {"X": min_xyz[0],
                "Y": min_xyz[1],
                "Z": min_xyz[2],
                "E": min_xyz[3]}

        for line_num, line in enumerate(words):

            if self.__is_move(line):
                for word_num, word in enumerate(line):
                    if (word[:1] in translations) & is_number(word[1:]):
                        words[line_num][word_num] = word[:1] + str(max(round(float(word[1:]) + translations[word[:1]], precision), mins[word[:1]]))
        return words


    def __get_words_from_line(self, line):
        words = [""]
        for char in line:
            if char == " ":
                words.append("")
            elif char == "\n":
                break
            else:
                words[-1] += char
        return words

    def __get_line_from_words(self, words):
        words.append("\n")
        return " ".join(words)

    def __parse_raw(self):
        words = []
        layers = [{
            "start_line_num": 0,
            "height": 0
                   }]
        bound_box = {"X": [None, None],
                     "Y": [None, None],
                     "Z": [None, None],
                     "E": [None, None]}
        last_extrusion_line_num = 0
        last_extrude = 0
        last_z_word = "Z0"
        last_z_line_num = 0
        last_z_extrude = 0
        current_extrude = 0
        extrusion_this_layer = False

        for line_num, line in enumerate(self.raw):
            words.append(self.__get_words_from_line(line))

            # If the line describes a move...
            if (self.__is_move(words[-1])):
                # Check whether any extrusion takes place
                extrusion = self.__is_extrude(words[-1])
                if extrusion:
                    last_extrusion_line_num = line_num
                    if extrusion_this_layer == False:
                        extrusion_this_layer = True
                        layers = self.__update_layers(layers, last_z_word, last_z_line_num, last_z_extrude)
                for word in words[-1]:
                    # If it is an extrusion or a Z move, update the bound box. If it is a Z move, update layers
                    if (word[:1] in bound_box) & is_number(word[1:]) & extrusion:
                        bound_box = self.__update_bound_box(bound_box, word)
                        bound_box = self.__update_bound_box(bound_box, last_z_word)
                        if word[:1] == "E":
                            last_extrude = current_extrude
                            current_extrude = float(word[1:])
                    if word[:1] == "Z":
                        last_z_word = word
                        last_z_line_num = line_num
                        last_z_extrude = last_extrude
                        extrusion_this_layer = False

        layers[-1]["end_line_num"] = line_num
        layers[-1]["end_extrude"] = current_extrude

        # Remove start and end gcode from layers
        self.start_gcode = []
        self.end_gcode = []
        new_layers = []
        for layer in layers:
            if layer["height"] == 0:
                for line_num in range(layer["start_line_num"], layer["end_line_num"] + 1):
                    self.start_gcode.append(self.raw[line_num])
            elif layer["end_line_num"] > last_extrusion_line_num:
                for line_num in range(max(last_extrusion_line_num +1,
                                          layer["start_line_num"]), layer["end_line_num"] + 1):
                    self.end_gcode.append(self.raw[line_num])
                if layer["start_line_num"] < last_extrusion_line_num:
                    new_layers.append(layer)
                    new_layers[-1]["end_line_num"] = last_extrusion_line_num
            else:
                new_layers.append(layer)

        self.words, self.layers, self.bound_box = words, new_layers, bound_box


    def __update_raw_from_words(self):
        self.raw = []
        for line in self.words:
            self.raw.append("")
            for word_num, word in enumerate(line):
                if word_num != 0:
                    self.raw[-1] += " "
                self.raw[-1] += word
            self.raw[-1] += "\n"

    def __is_move(self, line):
        if len(line) == 0:
            return False
        else:
            return (line[0] == "G1") | (line[0] == "G0")

    def __is_extrude(self, words):
        for word in words:
            if (word[:1] == "E") & is_number(word[1:]):
                if float(word[1:]) > 0:
                    return True
        return False

    def __update_bound_box(self, bound_box, word):
        for index, value in enumerate(bound_box[word[:1]]):
            if value is None:
                bound_box[word[:1]][index] = float(word[1:])
            elif index == 0:
                if float(word[1:]) < value:
                    bound_box[word[:1]][index] = float(word[1:])
            else:
                if float(word[1:]) > value:
                    bound_box[word[:1]][index] = float(word[1:])
        return bound_box

    def __update_layers(self, layers, word, line_num, last_extrude):
        if float(word[1:]) != layers[-1]["height"]:
            layers[-1]["end_line_num"] = line_num - 1
            layers[-1]["end_extrude"] = last_extrude
            layers.append({})
            layers[-1]["height"] = float(word[1:])
            layers[-1]["start_extrude"] = last_extrude
            layers[-1]["start_line_num"] = line_num
        return layers


def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False

def float_range(start, increment, iterations):
    """
    Range function for floats
    """
    output = []
    for i in range(0, iterations):
        output.append(start + increment * i)
    return output

if __name__ == '__main__':
    main()
