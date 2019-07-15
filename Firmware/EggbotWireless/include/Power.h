#ifndef POWER_H
#define POWER_H

#include <Arduino.h>

#include "Config.h"

class Power {
   private:
    bool enabled12v = false;

   public:
    Power();
    void disable12v();
    void enable12v();
    bool isEnabled12v();
};

#endif  // POWER_H