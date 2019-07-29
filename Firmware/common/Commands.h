#ifndef COMMANDS_H
#define COMMANDS_H

#include "common/Util.h"

constexpr int i2cCmdFloats{7}, i2cCmdBytes{i2cFloatSize * i2cCmdFloats};

enum bcAxis {
    X = 1,
    Y = 2,
    Z = 3,
};

enum PosMsg {
    servoRot,
    eggRot,
    servoPos,
    eggPos,
    penPos,
};

enum class CommandType {
    unk = 0,
    G00,
    G01,
    M99,
};

struct Command {
    CommandType type = CommandType::unk;
    float arg1 = NAN;
    float arg2 = NAN;
    float arg3 = NAN;
    float arg4 = NAN;
    float arg5 = NAN;
    float arg6 = NAN;

    Command(CommandType type = CommandType::unk, float arg1 = NAN,
            float arg2 = NAN, float arg3 = NAN, float arg4 = NAN,
            float arg5 = NAN, float arg6 = NAN);

    Command(float *floats);
    void fromFloats(float *floats);
    void toFloats(float *floats);

    Command(byte *bytes);
    void fromBytes(byte *bytes);
    void toBytes(byte *bytes);
};

#endif