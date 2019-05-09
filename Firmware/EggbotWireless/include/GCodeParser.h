#include <Arduino.h>

#ifndef PARSER_H
#define PARSER_H

enum command {
    unk,
    G01,
    M99,
};

enum bcAxis {
    X = 1,
    Y = 2,
    Z = 3,
};

float *parseGCode(String gcode);

#endif