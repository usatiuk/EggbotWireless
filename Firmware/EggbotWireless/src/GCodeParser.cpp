#include "GCodeParser.h"
#include <Arduino.h>

float bytecode[4] = {-1, -1, -1, -1};

float* parseGCode(String gcode) {
    for (int i = 0; i < 4; i++) {
        bytecode[i] = -1.0F;
    }

    char commandStringIn[50];
    char commandString[50];

    gcode.toCharArray(commandStringIn, 50);

    // Convert command to uppercase
    for (int i = 0; commandStringIn[i] != '\0'; i++) {
        commandString[i] = toupper(commandStringIn[i]);
        commandString[i + 1] = '\0';
    }

    char command[4];
    strncpy(command, commandString, 3);
    command[3] = '\0';

    char args[45];
    strncpy(args, &commandString[4], 45);

    if (strcmp(command, "G01") == 0 || strcmp(command, "G00") == 0) {
        char split_args[3][40];
        memset(split_args, 0, sizeof(split_args));
        char* arg;
        int argc = 0;
        arg = strtok(args, " ");

        // Put every command separated by spaces into the buffer and count them
        for (int i = 0; arg != NULL; i++) {
            strcpy(split_args[i], arg);
            arg = strtok(NULL, " ");
            argc++;
        }

        // Iterate through arguments
        for (int i = 0; i < argc; i++) {
            arg = split_args[i];
            char axis[2];
            char value[10];

            strncpy(axis, arg, 1);
            axis[1] = '\0';

            strncpy(value, &arg[1], 10);

            float floatValue;
            floatValue = atof(value);

            if (strcmp(axis, "X") == 0) {
                bytecode[X] = floatValue;
            } else if (strcmp(axis, "Y") == 0) {
                bytecode[Y] = floatValue;
            } else if (strcmp(axis, "Z") == 0) {
                bytecode[Z] = floatValue;
            }
        }
        if (strcmp(command, "G00") == 0) {
            bytecode[0] = G00;
            return bytecode;
        }
        if (strcmp(command, "G01") == 0) {
            bytecode[0] = G01;
            return bytecode;
        }
    }

    if (strcmp(command, "M99") == 0) {
        bytecode[0] = M99;
        return bytecode;
    }

    bytecode[0] = unk;
    return bytecode;
}