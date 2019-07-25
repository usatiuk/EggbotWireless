#ifndef LOCAL_EXECUTOR_H
#define LOCAL_EXECUTOR_H

#include <Arduino.h>

#include "LocalCommand.h"

class LocalExecutor
{
private:
public:
    LocalExecutor();
    void execCommand(LCommand cmd);
};

extern LocalExecutor localExecutor;

#endif // LOCAL_EXECUTOR_H