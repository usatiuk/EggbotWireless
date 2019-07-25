#ifndef LOCAL_COMMAND_H
#define LOCAL_COMMAND_H

#include <Arduino.h>

enum class LCommandType {
    unk = 0,
    ConfGet,    // LCG
    ConfList,   // LCS
    ConfPut,    // LCP
    ConfLoad,   // LCL
    ConfWrite,  // LCW
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

    void fromChars(char *cmd);
};

#endif  // LOCAL_COMMAND_H