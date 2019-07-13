#include "Power.h"

Power::Power() {
    pinMode(pin12v, OUTPUT);
    enable12v();
}

void Power::disable12v() { digitalWrite(pin12v, false); }

void Power::enable12v() { digitalWrite(pin12v, true); }