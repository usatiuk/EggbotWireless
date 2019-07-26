#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>
#include <Wire.h>
#include <queue>
#include <string>
#include "ConfigManager.h"
#include "Executor.h"
#include "GCodeParser.h"
#include "Globals.h"
#include "LocalExecutor.h"
#include "WiFiManager.h"
#include "Power.h"
#include "common/Commands.h"

std::queue<Command> commandQueue;
std::queue<LCommand> lCommandQueue;
bool shouldPrintSts;

void setup() {
    Serial.begin(115200);
    Wire.begin(12, 13);
    power.enable12v();
    configManager.load();
    wifiManager.init();
}

void printSts(I2CStatusMsg status) {
    if (status == I2CStatusMsg::WAIT) {
        shouldPrintSts = true;
    } else if (status == I2CStatusMsg::NEXT) {
        Serial.println("OK");
    } else {
        Serial.println("Error");
    }
}

void serialLoop() {
    static std::string inString;
    static bool localCmd = false;
    while (Serial.available() > 0) {
        char inChar = Serial.read();

        // CR breaks some things, so we completely ignore it
        if (inChar == '\r') {
            break;
        }

        if (inString.length() == 0 && toupper(inChar) == 'L') {
            localCmd = true;
        }

        if (inChar == '\n') {
            if (localCmd) {
                lCommandQueue.emplace(inString);
                localCmd = false;
            } else {
                commandQueue.push(parseGCode(inString));
            }
            inString = "";
        } else {
            inString += inChar;
        }
    }
}

void commandsLoop() {
    I2CStatusMsg status = executor.status();
    if (shouldPrintSts) {
        shouldPrintSts = false;
        printSts(status);
    }
    if (status == I2CStatusMsg::NEXT && !commandQueue.empty()) {
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

void loop() {
    serialLoop();
    commandsLoop();
}
