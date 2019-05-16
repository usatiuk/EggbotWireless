#ifndef COMMANDS_H
#define COMMANDS_H

enum command{
    unk,
    G00,
    G01,
    M99,
};

enum bcAxis{
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

void bytesToFloat(float *target, byte *val);
void floatToBytes(byte *target, float val);

#endif