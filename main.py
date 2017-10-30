
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

import gcode as gc



def main():
    # The filename in the variable below should contain the gcode for the test piece to be repeated in the array
    # with the start and end gcode removed and the variables to be altered in each piece replaced with a number in the
    # format <#>
    piece_gcode_filename = "10x10x1-2.gcode"


    template = gc.Gcode(file = "10x10x1-2.gcode", name="10mm x 10mm x 1.2mm cube")
    template.translate_xy_to_point([0,0])
    template.set_layerwise_extrusion()
    template.strip_comments()

    m92_values = float_range(920, 10, 25)
    iteration_list = [(x, y) for x in range(5) for y in range(5)]

    gcodes = []

    for index, coords in enumerate(iteration_list):
        print(coords)
        this_gcode = gc.Gcode(template.raw, name="M92 E" + str(m92_values[index]))
        this_gcode.prepend_all_layers("M92 E" + str(m92_values[index]))
        this_gcode.translate_xy_to_point([coords[0] * 20, coords[1] * 20])
        gcodes.append(this_gcode)

    output_gcode = gc.combine_list_layerwise(gcodes)
    output_gcode.translate_xy_to_point([10, 10])
    output_gcode.append_layer("G1 X5 Y5 Z10\nM25\nG1 X5 Y5 Z10\n", 4)

    print(output_gcode.bound_box)
    for layer in output_gcode.layers:
        print(layer)

    output_gcode.write_to_file("esteps_test")

    """
    # Write to output file
    if (piece_gcode_filename.index(".") > -1):
        fn_start = piece_gcode_filename[0:piece_gcode_filename.index(".")]
        fn_ending = piece_gcode_filename[piece_gcode_filename.index("."):]
    else:
        fn_start = piece_gcode_filename
        fn_ending = ".gcode"

    with open(fn_start + "_output" + fn_ending, "w") as text_file:
        text_file.write(output_data)
    """



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
