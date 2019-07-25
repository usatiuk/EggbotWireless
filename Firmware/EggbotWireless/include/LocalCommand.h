#ifndef LOCAL_COMMAND_H
#define LOCAL_COMMAND_H

#include <Arduino.h>

enum class LCommandType {
    unk = 0,
    ConfGet,   // LCG
    ConfList,  // LCL
    ConfSet,   // LCS
};

struct LCommand {
    LCommandType type = LCommandType::unk;
    char arg1[25];
    char arg2[25];
    char arg3[25];

    LCommand(LCommandType type) : type(type){};

    LCommand(char *cmd) { fromChars(cmd); }

    LCommand(std::string cmd) {
        char buf[50];
        strncpy(buf, cmd.c_str(), 50);
        fromChars(buf);
    }

    void fromChars(char *cmd) {
        char *token = strtok(cmd, " ");

        memset(arg1, 0, 25);
        memset(arg2, 0, 25);
        memset(arg3, 0, 25);

        for (int i = 0; token != NULL && i < 4; i++) {
            if (i == 0) {
                char cmd[4];
                strncpy(cmd, token, 4);
                for (int i = 0; cmd[i] != '\0'; i++) {
                    cmd[i] = toupper(cmd[i]);
                }

                if (strcmp("LCG", cmd) == 0) {
                    type = LCommandType::ConfGet;
                } else if (strcmp("LCS", cmd) == 0) {
                    type = LCommandType::ConfSet;
                } else if (strcmp("LCL", cmd) == 0) {
                    type = LCommandType::ConfList;
                }
            } else if (i == 1) {
                strncpy(arg1, token, 25);
            } else if (i == 2) {
                strncpy(arg2, token, 25);
            } else if (i == 3) {
                strncpy(arg3, token, 25);
            }
            token = strtok(NULL, " ");
        }
    }
};

#endif  // LOCAL_COMMAND_H