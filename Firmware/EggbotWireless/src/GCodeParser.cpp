#include <Arduino.h>
#include <unordered_map>

#include "ConfigManager.h"
#include "GCodeParser.h"

Command bufcmd;

Command parseGCode(std::string gcode) {
    char commandString[50];
    std::unordered_map<char, float> argsMap;

    strncpy(commandString, gcode.c_str(), 50);

    // Convert command to uppercase
    for (int i = 0; commandString[i] != '\0'; i++) {
        commandString[i] = toupper(commandString[i]);
    }

    char command[4];
    strncpy(command, commandString, 3);
    command[3] = '\0';

    char args[45];
    strncpy(args, &commandString[4], 45);

    char split_args[6][20];
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
        char axis;
        char value[10];

        axis = arg[0];

        strncpy(value, &arg[1], 10);

        float floatValue;
        floatValue = atof(value);

        argsMap.emplace(axis, floatValue);
    }

    if (strcmp(command, "G01") == 0 || strcmp(command, "G00") == 0) {
        auto xIter = argsMap.find('X');
        auto yIter = argsMap.find('Y');
        auto zIter = argsMap.find('Z');
        auto fIter = argsMap.find('F');
        auto endIter = argsMap.end();

        if (xIter != endIter) {
            bufcmd.arg1 = xIter->second;
        }
        if (yIter != endIter) {
            bufcmd.arg2 = yIter->second;
        }
        if (zIter != endIter) {
            bufcmd.arg3 = zIter->second;
        }
        if (fIter != endIter) {
            bufcmd.arg4 = fIter->second;
        } else {
            bufcmd.arg4 = atof(configManager.get("defRpm").c_str());
        }

        if (strcmp(command, "G00") == 0) {
            bufcmd.type = CommandType::G00;
            return bufcmd;
        }
        if (strcmp(command, "G01") == 0) {
            bufcmd.type = CommandType::G01;
            return bufcmd;
        }
    }

    if (strcmp(command, "M99") == 0) {
        bufcmd.type = CommandType::M99;
        return bufcmd;
    }

    bufcmd.type = CommandType::unk;
    return bufcmd;
}