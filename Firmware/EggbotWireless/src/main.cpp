#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>
#include <Wire.h>
#include <string>
#include "ConfigManager.h"
#include "Executor.h"
#include "GCodeParser.h"
#include "Globals.h"
#include "LocalExecutor.h"
#include "Power.h"
#include "common/Commands.h"

std::string inString;
std::string commandBuf;
bool newCommand;
bool localCmd;
bool shouldPrintSts;

void setup() {
    Serial.begin(115200);
    Wire.begin(12, 13);
    power.enable12v();
    inString.reserve(50);
    commandBuf.reserve(50);
    configManager.load();
}

void sendCommand(std::string command) {
    power.commandHook();
    executor.execCommand(parseGCode(command));
    shouldPrintSts = true;
}

void execLocalCommand(std::string command) {
    localExecutor.execCommand(LCommand(command));
    shouldPrintSts = true;
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

void loop() {
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
            commandBuf = inString;
            inString = "";
            newCommand = true;
        } else {
            inString += inChar;
        }
    }

    I2CStatusMsg status = executor.status();
    if (shouldPrintSts) {
        shouldPrintSts = false;
        printSts(status);
    }
    if (!localCmd && newCommand && status == I2CStatusMsg::NEXT) {
        newCommand = false;
        sendCommand(commandBuf);
    }
    if (localCmd && newCommand) {
        localCmd = false;
        newCommand = false;
        execLocalCommand(commandBuf);
    }
}
