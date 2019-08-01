#ifndef QUEUE_MANAGER_H
#define QUEUE_MANAGER_h

#include <Arduino.h>
#include <string>
#include <queue>

#include "common/Commands.h"
#include "LocalCommand.h"
#include "Executor.h"
#include "LocalExecutor.h"
#include "common/Status.h"
#include "Power.h"
#include "GCodeParser.h"

class QueueManager {
   private:
    std::queue<Command> commandQueue;
    std::queue<LCommand> lCommandQueue;

    bool shouldPrintSts;
    void printSts(Status status);

   public:
    QueueManager();
    void init();
    void loopRoutine();
    uint8_t execQueueSize();
    void putCommand(std::string cmd);
    void putCommand(char *cmd);
};

extern QueueManager queueManager;

#endif