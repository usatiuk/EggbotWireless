#include "GCodeParser.h"
#include <Arduino.h>

int bytecode[4] = {-1, -1, -1, -1};

int* parseGCode(String gcode) {
    char commandStringIn[30];
    char commandString[26];

    gcode.toCharArray(commandStringIn, 30);

    // Convert command to uppercase
    for (int i = 0; commandStringIn[i] != '\0'; i++) {
        commandString[i] = toupper(commandStringIn[i]);
        commandString[i + 1] = '\0';
    }

    char command[4];
    strncpy(command, commandString, 3);
    command[3] = '\0';

    char args[22];
    strncpy(args, &commandString[4], 22);

    if (strcmp(command, "G01") == 0) {
        bytecode[0] = G01;

        char split_args[3][22];
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
            char value[7];

            strncpy(axis, arg, 1);
            axis[1] = '\0';

            strncpy(value, &arg[1], 7);

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

        return bytecode;
    }

    if (strcmp(command, "M99") == 0) {
        bytecode[0] = M99;
        return bytecode;
    }

    bytecode[0] = unk;
    return bytecode;
}