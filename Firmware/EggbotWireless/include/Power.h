#ifndef POWER_H
#define POWER_H

#include <Arduino.h>
#include <functional>
#include <Ticker.h>

#include "Config.h"

class Power {
   private:
    bool enabled12v = false;
    unsigned long lastCmdTime = 0;
    void tickerRoutine();
    Ticker ticker;

   public:
    Power();
    void disable12v();
    void enable12v();
    bool isEnabled12v();
    void commandHook();
};

extern Power power;

#endif  // POWER_H