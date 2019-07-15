#include "Power.h"

Power::Power() {
    pinMode(pin12v, OUTPUT);
    disable12v();
}

void Power::disable12v() {
    digitalWrite(pin12v, false);
    enabled12v = false;
}

void Power::enable12v() {
    digitalWrite(pin12v, true);
    enabled12v = true;
}

bool Power::isEnabled12v() {
    return enabled12v;
}