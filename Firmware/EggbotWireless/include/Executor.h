#ifndef EXECUTOR_H
#define EXECUTOR_H

#include <Arduino.h>
#include <Wire.h>

#include "common/Commands.h"
#include "common/Status.h"

class Executor
{
private:
public:
    Executor(/* args */);
    void execCommand(Command command);
    Status status();
};

extern Executor executor;

#endif 