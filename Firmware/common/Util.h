#ifndef UTIL_H
#define UTIL_H

#include <Arduino.h>

constexpr int i2cFloatSize{4};

inline void bytesToFloat(float *target, byte *val) {
    memcpy(target, val, i2cFloatSize);
    return;
}

inline void floatToBytes(byte *target, float val) {
    memcpy(target, &val, i2cFloatSize);
    return;
}
#endif