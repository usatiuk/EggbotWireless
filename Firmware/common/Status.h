#ifndef STATUS_H
#define STATUS_H

#include "common/Util.h"

constexpr int i2cStsFloats{8}, i2cStsBytes{i2cFloatSize * i2cStsFloats};

enum class StatusType {
    unk = 0,
    WAIT,
    NEXT,
    TIMEOUT,
    ERR,
};

struct Status {
    StatusType type = StatusType::unk;
    float mmS = NAN;
    float mmE = NAN;
    float pEng = NAN;
    float feedrate = NAN;
    float eggDia = NAN;
    float eggLen = NAN;
    float xLim = NAN;

    Status(StatusType type = StatusType::unk, float mmS = NAN, float mmE = NAN,
           float pEng = NAN, float feedrate = NAN, float eggDia = NAN,
           float eggLen = NAN, float xLim = NAN);

    Status(float *floats);
    void fromFloats(float *floats);
    void toFloats(float *floats);

    Status(byte *bytes);
    void fromBytes(byte *bytes);
    void toBytes(byte *bytes);
};

#endif