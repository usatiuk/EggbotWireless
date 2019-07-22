#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>
#include <Wire.h>
#include "Executor.h"
#include "GCodeParser.h"
#include "Globals.h"
#include "Power.h"
#include "common/Commands.h"

String inString;
String commandBuf;
bool newCommand;
bool shouldPrintSts;

void setup() {
    Serial.begin(115200);
    Wire.begin(12, 13);
    power.enable12v();
}

void sendCommand(String command) {
    power.commandHook();
    executor.execCommand(parseGCode(command));
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
        inString += inChar;

        if (inChar == '\n') {
            inString.trim();
            commandBuf = inString;
            inString = "";
            newCommand = true;
        }
    }

    I2CStatusMsg status = executor.status();
    if (shouldPrintSts) {
        shouldPrintSts = false;
        printSts(status);
    }
    if (newCommand && status == I2CStatusMsg::NEXT) {
        newCommand = false;
        sendCommand(commandBuf);
    }
}
