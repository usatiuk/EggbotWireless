#ifndef POWER_H
#define POWER_H

#include <Arduino.h>

#include "Config.h"

class Power {
    public:
    Power();
    void disable12v();
    void enable12v();
};

#endif // POWER_H