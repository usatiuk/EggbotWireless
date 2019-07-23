#include "Power.h"
#include "Globals.h"
#include "Config.h"

Power power;

Power::Power() {
    pinMode(pin12v, OUTPUT);
    disable12v();
    ticker.attach(0.1, std::bind(&Power::tickerRoutine, this));
}

void Power::tickerRoutine() {
    if (millis() - lastCmdTime > powerTimeout) {
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

bool Power::isEnabled12v() { return enabled12v; }

void Power::commandHook() {
    lastCmdTime = millis();
    if (!isEnabled12v()) {
        enable12v();
        delay(powerStartupDelay);
    }
}