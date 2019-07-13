#ifndef COMMANDS_H
#define COMMANDS_H

enum bcAxis {
    X = 1,
    Y = 2,
    Z = 3,
};

enum I2CMessage {
    WAIT,
    NEXT,
};

enum StatusMSG {
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
            float arg5 = NAN, float arg6 = NAN)
        : type(type),
          arg1(arg1),
          arg2(arg2),
          arg3(arg3),
          arg4(arg4),
          arg5(arg5),
          arg6(arg6){};

    Command(float *floats);
    int fromFloats(float *floats);
    int toFloats(float *floats);

    Command(byte *bytes);
    int fromBytes(byte *bytes);
    int toBytes(byte *bytes);
};

void bytesToFloat(float *target, byte *val);
void floatToBytes(byte *target, float val);

#endif