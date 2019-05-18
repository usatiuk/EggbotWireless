#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>
#include <Wire.h>
#include "GCodeParser.h"
#include "common/Commands.h"

String inString;
bool waitingForNext;

void sendCommand(float *command) {
    if (command[0] != unk) {
        Wire.beginTransmission(8);
        byte txBuffer[4];
        for (int i = 0; i < 4; i++) {
            floatToBytes(txBuffer, command[i]);
            Wire.write(txBuffer, 4);
        }
        Wire.endTransmission();
    } else {
        Serial.println("UNK");
        return;
    }

    if (command[0] == G01 || command[0] == G00) {
        Wire.requestFrom(8, 1);
        waitingForNext = true;
        return;
    }

    if (command[0] == M99) {
        Wire.requestFrom(8, 5 * sizeof(float));

        float resp[5];
        byte buffer[4];

        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 4; j++) {
                while (!Wire.available()) {
                }
                char read = Wire.read();
                buffer[j] = read;
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
    Wire.begin(D1, D2);
}

void loop() {
    while (Serial.available() > 0) {
        char inChar = Serial.read();
        inString += inChar;

        if (inChar == '\n') {
            inString.trim();
            sendCommand(parseGCode(inString));
            while (waitingForNext) {
                while (!Wire.available()) {
                }
                int response = Wire.read();
                if (response == WAIT) {
                    delay(1);
                    Wire.requestFrom(8, 1);
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
