#ifndef EXECUTOR_H
#define EXECUTOR_H

#include <Arduino.h>
#include <Wire.h>

#include "common/Commands.h"


class Executor
{
private:
    /* data */
public:
    Executor(/* args */);
    void execCommand(Command command);
    I2CStatusMsg status();
};

extern Executor executor;

#endif 