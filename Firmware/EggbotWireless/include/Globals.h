#ifndef GLOBALS_H
#define GLOBALS_H

#include <Arduino.h>
#include <queue>

#include "LocalCommand.h"
#include "common/Commands.h"

extern std::queue<Command> commandQueue;
extern std::queue<LCommand> lCommandQueue;

#endif  // GLOBALS_H