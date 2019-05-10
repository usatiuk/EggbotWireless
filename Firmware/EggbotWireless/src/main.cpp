#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>

#include "EggConstants.h"
#include "GCodeParser.h"
#include "Globals.h"
#include "Pen.h"
#include "Stepper.h"
#include "StepperTimer.h"

int RPM = DEF_RPM;

bool needAdjust = false;

Ticker adjustTicker;

void execCommand(float *command) {
    if (command[0] == G01 || command[0] == G00) {
        if (command[0] == G01) {
            needAdjust = true;
            if (command[X] != -1 && command[Y] != -1) {
                float distX = servoStepper.getDistMm(command[X]);
                float distY = eggStepper.getDistMm(command[Y]);
                int stepsX = servoStepper.mmToSteps(distX);
                int stepsY = eggStepper.mmToSteps(distY);
                if (stepsX != 0 && stepsY != 0) {
                    if (stepsX > stepsY) {
                        float rpm = (float)RPM * (float)stepsY / (float)stepsX;
                        eggStepperTimer.setRPM(rpm);
                    } else if (stepsY > stepsX) {
                        float rpm = (float)RPM * (float)stepsX / (float)stepsY;
                        servoStepperTimer.setRPM(rpm);
                    }
                }
            }
        } else {
            needAdjust = false;
        }

        if (command[X] != -1) {
            servoStepper.moveTo(command[X]);
        }

        if (command[Y] != -1) {
            eggStepper.moveTo(command[Y]);
        }

        if (command[Z] < 0) {
            pen.engage();
        }
        if (command[Z] >= 0) {
            pen.disengage();
        }

        return;
    }

    if (command[0] == M99) {
        Serial.println("Status:");
        Serial.println("X: " + String(servoStepper.getPos()));
        Serial.println("Y: " + String(eggStepper.getPos()));
        Serial.println("Xmm: " + String(servoStepper.getPosMm()));
        Serial.println("Ymm: " + String(eggStepper.getPosMm()));
        Serial.println("PEN: " + String(pen.getEngaged()));

        return;
    }
}

void adjustRPM() {
    if (needAdjust) {
        cli();
        int stepsX = servoStepper.getRemainingSteps();
        int stepsY = eggStepper.getRemainingSteps();
        if (stepsX > stepsY) {
            float rpm = (float)RPM * (float)stepsY / (float)stepsX;
            eggStepperTimer.setRPM(rpm);
        } else if (stepsY > stepsX) {
            float rpm = (float)RPM * (float)stepsX / (float)stepsY;
            servoStepperTimer.setRPM(rpm);
        } else {
            eggStepperTimer.setRPM(RPM);
            servoStepperTimer.setRPM(RPM);
        }
        sei();
    }
}

void setup() {
    WiFi.mode(WIFI_OFF);
    Serial.begin(115200);
    eggStepperTimer.setStepper(&eggStepper);
    servoStepperTimer.setStepper(&servoStepper);
    pen.init();
    servoStepper.setPos(70);
    adjustTicker.attach_ms(50, adjustRPM);
}

void loop() {
    while (Serial.available() > 0) {
        char inChar = Serial.read();
        inString += inChar;

        if (inChar == '\n') {
            inString.trim();
            execCommand(parseGCode(inString));
            while (!eggStepper.finished() || !servoStepper.finished()) {
                delay(50);
            }
            eggStepperTimer.setRPM(RPM);
            servoStepperTimer.setRPM(RPM);
            Serial.println("OK");
            inString = "";
        }
    }
}
