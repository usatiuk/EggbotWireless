#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>
#include <Wire.h>
#include "GCodeParser.h"
#include "common/Commands.h"

String inString;
bool waitingForNext = false;

void execCommand(Command command) {
    if (command.type != CommandType::unk) {
        Wire.beginTransmission(8);
        byte buffer[7][sizeof(float)];
        command.toBytes(buffer[0]);
        for (int i = 0; i < 7; i++) {
            /*
            float dbg;
            bytesToFloat(&dbg, buffer[i]);
            Serial.println(dbg);
             */
            Wire.write(buffer[i], sizeof(float));
        }
        Wire.endTransmission();
    } else {
        Serial.println("OK");
        return;
    }

    if (command.type == CommandType::G01 || command.type == CommandType::G00) {
        Wire.requestFrom(8, 1);
        waitingForNext = true;
        return;
    }

    if (command.type == CommandType::M99) {
        Wire.requestFrom(8, 5 * sizeof(float));

        float resp[5];
        byte buffer[sizeof(float)];

        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < sizeof(float); j++) {
                while (!Wire.available()) {
                }
                buffer[j] = Wire.read();
            }
            bytesToFloat(&resp[i], buffer);
        }

        Serial.println("Status:");
        Serial.println("X: " + String(resp[servoRot]));
        Serial.println("Y: " + String(resp[eggRot]));
        Serial.println("Xmm: " + String(resp[servoPos]));
        Serial.println("Ymm: " + String(resp[eggPos]));
        Serial.println("PEN: " + String(resp[penPos]));

        return;
    }
}

void setup() {
    Serial.begin(115200);
    Wire.begin(12, 13);
    pinMode(5, OUTPUT);
    digitalWrite(5, true);
}

void loop() {
    while (Serial.available() > 0) {
        char inChar = Serial.read();
        inString += inChar;

        if (inChar == '\n') {
            inString.trim();
            execCommand(parseGCode(inString));
            unsigned long reqTime = millis();
            while (waitingForNext) {
                while (!Wire.available()) {
                    if (millis() - reqTime > 100) {
                        Wire.requestFrom(8, 1);
                        reqTime = millis();
                    }
                }
                int response = Wire.read();
                if (response == WAIT) {
                    delay(1);
                    Wire.requestFrom(8, 1);
                    reqTime = millis();
                } else if (response == NEXT) {
                    Serial.println("OK");
                    waitingForNext = false;
                } else {
                    Serial.println("Error");
                }
            }
            inString = "";
        }
    }
}
