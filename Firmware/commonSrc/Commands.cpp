#include <Arduino.h>

void bytesToFloat(float *target, byte *val) {
    memcpy(target, val, 4);
    return;
}

void floatToBytes(byte *target, float val) {
    memcpy(target, &val, 4);
    return;
}