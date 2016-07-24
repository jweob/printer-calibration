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
parameters.

"""

import math

def main():
    # The filename in the variable below should contain the gcode for the test piece to be repeated in the array
    # with the start and end gcode removed and the variables to be altered in each piece replaced with a number in the
    # format <#>
    piece_gcode_filename = "example-test-piece.gcode"

    # Start and end gcode
    start_gcode = "M190 S70.000000\n" \
                  "M109 S200.000000\n" \
                  "M109 S200.000000\n" \
                  "G92 X0 Y0 Z0 E0\n" \
                  "G28\n" \
                  "G29\n" \
                  "G1 Z0.2 F200\n" \
                  "G1 X15 Y20 F12000\n"

    end_gcode = "\nM104 S0\n" \
                "M140 S0\n" \
                "G1 X0 Y130 F9000\n"

    # The following code will be inserted between each test piece (e.g. to zero the extruder positon)
    inbetween_gcode ="G92 E0\n"


    x_zero_adjust = 20  # Use to adjust the starting position of the original
    y_zero_adjust = -40  # Use to adjust the starting position of the original
    x_offset = 20  # How much to adjust the x position for each instance
    y_offset = 20  # How much to adjust the y position for each instance
    x_columns_max = 5  # Number of columns before it moves up a row
    precision = 3  # Number of digits to round X and Y instructions to

    # gcode_vars is the list of values that will replace variables in the piece gcode
    # e.g. anything with <0> will be replaced by values in the first array of gcode_vars
    gcode_vars = [
        my_range(0.00, 0.02, 20)
    ]

    print("List of vars")
    print(gcode_vars)

    num_iterations = len(gcode_vars[0])
    output_data = start_gcode + "\n\n;Iterations start here\n"

    # Read the piece gcode
    with open(piece_gcode_filename, "r") as input_file:
        raw_data = input_file.readlines()

    # Create array of test pieces
    for i in range(0, num_iterations):
        output_data += ";Iteration "+str(i)+"\n"
        x_mul = i % x_columns_max
        y_mul = math.floor(i / x_columns_max)

        for line in raw_data:
            last_char = " "
            reading = False
            read_type = ""
            read_string = ""
            for char in line:
                if reading:
                    if char == "\n" or char == " " or char == ">":
                        if read_type == "X":
                            output_data += read_type \
                                           + str(round(float(read_string) + x_zero_adjust + x_mul * x_offset, precision)) \
                                           + char
                        elif read_type == "Y":
                            output_data += read_type \
                                           + str(round(float(read_string) + y_zero_adjust + y_mul * y_offset, precision)) \
                                           + char
                        elif read_type == "var":
                            output_data += str(gcode_vars[int(read_string)][i])
                        reading = False
                        read_type = ""
                        read_string = ""
                    else:
                        assert char in ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "."]
                        read_string += char

                else:
                    if last_char == " ":
                        if char == "X":
                            reading = True
                            read_type = "X"
                        elif char == "Y":
                            reading = True
                            read_type = "Y"
                        else:
                            output_data += char
                    elif char == "<":
                        reading = True
                        read_type = "var"
                    else:
                        output_data += char
                last_char = char
        output_data += inbetween_gcode

    output_data += end_gcode

    # Write to output file
    if(piece_gcode_filename.index(".")>-1):
        fn_start = piece_gcode_filename[0:piece_gcode_filename.index(".")]
        fn_ending = piece_gcode_filename[piece_gcode_filename.index("."):]
    else:
        fn_start = piece_gcode_filename
        fn_ending = ".gcode"

    with open(fn_start + "_output" + fn_ending, "w") as text_file:
        text_file.write(output_data)


def my_range(start, increment, iterations):
    """
    Range function for floats
    """
    output = []
    for i in range(0, iterations):
        output.append(start + increment * i)
    return output

if __name__ == '__main__':
    main()