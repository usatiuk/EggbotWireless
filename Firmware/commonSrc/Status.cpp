#include "common/Status.h"

Status::Status(StatusType type, float mmS, float mmE, float pEng,
               float feedrate, float eggDia, float eggLen, float xLim)
    : type(type),
      mmS(mmS),
      mmE(mmE),
      pEng(pEng),
      feedrate(feedrate),
      eggDia(eggDia),
      eggLen(eggLen),
      xLim(xLim){};

Status::Status(float *floats) { fromFloats(floats); }

void Status::fromFloats(float *floats) {
    type = static_cast<StatusType>(floats[0]);
    mmS = floats[1];
    mmE = floats[2];
    pEng = floats[3];
    feedrate = floats[4];
    eggDia = floats[5];
    eggLen = floats[6];
    xLim = floats[7];
}

void Status::toFloats(float *floats) {
    floats[0] = static_cast<float>(type);
    floats[1] = mmS;
    floats[2] = mmE;
    floats[3] = pEng;
    floats[4] = feedrate;
    floats[5] = eggDia;
    floats[6] = eggLen;
    floats[7] = xLim;
}

Status::Status(byte *bytes) { fromBytes(bytes); }

void Status::fromBytes(byte *bytes) {
    float floats[i2cStsFloats];
    for (int i = 0; i < i2cStsFloats; i++) {
        bytesToFloat(&floats[i], &bytes[i * i2cFloatSize]);
    }
    fromFloats(floats);
}

void Status::toBytes(byte *bytes) {
    float floats[i2cStsFloats];
    toFloats(floats);
    for (int i = 0; i < 7; i++) {
        floatToBytes(&bytes[i * i2cFloatSize], floats[i]);
    }
}
