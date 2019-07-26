#include "LocalCommand.h"

void LCommand::fromChars(char *cmd) {
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
            } else if (strcmp("LCP", cmd) == 0) {
                type = LCommandType::ConfPut;
            } else if (strcmp("LCS", cmd) == 0) {
                type = LCommandType::ConfList;
            } else if (strcmp("LCL", cmd) == 0) {
                type = LCommandType::ConfLoad;
            } else if (strcmp("LCW", cmd) == 0) {
                type = LCommandType::ConfWrite;
            } else if (strcmp("LCR", cmd) == 0) {
                type = LCommandType::ConfReset;
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