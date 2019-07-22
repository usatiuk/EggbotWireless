#include "Power.h"
#include "Globals.h"

Power power;

constexpr unsigned long commandTimeout = 20000;

Power::Power() {
    pinMode(pin12v, OUTPUT);
    disable12v();
    ticker.attach(0.1, std::bind(&Power::tickerRoutine, this));
}

void Power::tickerRoutine() {
    if (millis() - lastCmdTime > commandTimeout) {
        disable12v();
    }
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

void Power::commandHook() {
    lastCmdTime = millis();
}