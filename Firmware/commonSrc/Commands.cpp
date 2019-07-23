#include <Arduino.h>

#include "common/Commands.h"

Command::Command(float *floats) { fromFloats(floats); }

void Command::fromFloats(float *floats) {
    type = static_cast<CommandType>(floats[0]);
    arg1 = floats[1];
    arg2 = floats[2];
    arg3 = floats[3];
    arg4 = floats[4];
    arg5 = floats[5];
    arg6 = floats[6];
}

void Command::toFloats(float *floats) {
    floats[0] = static_cast<float>(type);
    floats[1] = arg1;
    floats[2] = arg2;
    floats[3] = arg3;
    floats[4] = arg4;
    floats[5] = arg5;
    floats[6] = arg6;
}

Command::Command(byte *bytes) { fromBytes(bytes); }

void Command::fromBytes(byte *bytes) {
    float floats[i2cCmdFloats];
    for (int i = 0; i < i2cCmdFloats; i++) {
        bytesToFloat(&floats[i], &bytes[i * i2cFloatSize]);
    }
    fromFloats(floats);
}

void Command::toBytes(byte *bytes) {
    float floats[i2cCmdFloats];
    toFloats(floats);
    for (int i = 0; i < 7; i++) {
        floatToBytes(&bytes[i * i2cFloatSize], floats[i]);
    }
}

void bytesToFloat(float *target, byte *val) {
    memcpy(target, val, i2cFloatSize);
    return;
}

void floatToBytes(byte *target, float val) {
    memcpy(target, &val, i2cFloatSize);
    return;
}