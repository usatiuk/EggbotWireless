#include "QueueManager.h"

QueueManager::QueueManager() {}

void QueueManager::init() {}

void QueueManager::printSts(Status status) {
    if (status.type == StatusType::WAIT) {
        shouldPrintSts = true;
    } else if (status.type == StatusType::NEXT) {
        Serial.println("OK");
    } else if (status.type == StatusType::TIMEOUT) {
        Serial.println("Timeout");
    } else {
        Serial.print("Error: ");
        Serial.println(static_cast<int>(status.type));
    }
}

void QueueManager::loopRoutine() {
    Status status = executor.status();
    if (shouldPrintSts) {
        shouldPrintSts = false;
        printSts(status);
    }
    if (status.type == StatusType::NEXT && !commandQueue.empty()) {
        power.commandHook();
        executor.execCommand(commandQueue.front());
        commandQueue.pop();
        shouldPrintSts = true;
    }
    if (!lCommandQueue.empty()) {
        localExecutor.execCommand(lCommandQueue.front());
        lCommandQueue.pop();
        shouldPrintSts = true;
    }
}

void QueueManager::putCommand(std::string cmd) {
    if (!std::isalnum(cmd[0])) {
        Serial.println("OK");
        return;
    }

    if (toupper(cmd[0]) == 'L') {
        lCommandQueue.emplace(cmd);
    } else {
        Command cmdp = parseGCode(cmd);
        commandQueue.push(cmdp);
    }
}

uint8_t QueueManager::execQueueSize() { return commandQueue.size(); }

void QueueManager::putCommand(char *cmd) { putCommand(std::string(cmd)); }

QueueManager queueManager;