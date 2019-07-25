#include "LocalExecutor.h"

#include <string>
#include "ConfigManager.h"

LocalExecutor::LocalExecutor() {}

void LocalExecutor::execCommand(LCommand cmd) {
    if (cmd.type == LCommandType::ConfGet) {
        Serial.print(cmd.arg1);
        Serial.print(": ");
        std::string arg1 = std::string(cmd.arg1);
        Serial.println(configManager.get(arg1).c_str());

        return;
    }
    if (cmd.type == LCommandType::ConfPut) {
        Serial.print(cmd.arg1);
        Serial.print(": ");
        std::string arg1 = std::string(cmd.arg1);
        std::string arg2 = std::string(cmd.arg2);
        configManager.update(arg1, arg2);

        Serial.println(configManager.get(arg1).c_str());

        return;
    }

    if(cmd.type == LCommandType::ConfList) {
        for(auto &val : configManager.map) {
            Serial.print(val.first.c_str());
            Serial.print(": ");
            Serial.println(val.second.c_str());
        }
    }

    if(cmd.type == LCommandType::ConfLoad) {
        configManager.load();
        return;
    }

    if(cmd.type == LCommandType::ConfWrite) {
        configManager.write();
        return;
    }
}

LocalExecutor localExecutor;