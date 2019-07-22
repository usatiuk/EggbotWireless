#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>
#include <Wire.h>
#include "GCodeParser.h"
#include "Globals.h"
#include "Executor.h"
#include "Power.h"
#include "common/Commands.h"

String inString;

void setup() {
    Serial.begin(115200);
    Wire.begin(12, 13);
    power.enable12v();
}


void loop() {
    while (Serial.available() > 0) {
        char inChar = Serial.read();
        inString += inChar;

        if (inChar == '\n') {
            inString.trim();
            if (!power.isEnabled12v()) {
                power.enable12v();
                delay(100);
            }
            power.commandHook();
            executor.execCommand(parseGCode(inString));
            I2CStatusMsg response;
            do {
                response = executor.status();
                if (response == I2CStatusMsg::WAIT) {
                    delay(1);
                } else if (response == I2CStatusMsg::NEXT) {
                    Serial.println("OK");
                } else {
                    Serial.println("Error");
                }
            } while (response != I2CStatusMsg::NEXT);
            inString = "";
        }
    }
}
