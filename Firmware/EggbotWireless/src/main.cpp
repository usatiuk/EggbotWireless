#include <Arduino.h>
#include <ESP8266WiFi.h>
#include "EggConstants.h"
#include "GCodeParser.h"
#include "Pen.h"
#include "Stepper.h"
#include "StepperTimer.h"

#define STEPS_PER_REVOLUTION 4076

int RPM = 4;

Stepper eggStepper(D1, D2, D3, D4, STEPS_PER_REVOLUTION, 0, 0,
                   Y_DEGREES_PER_MM);
Stepper servoStepper(D5, D6, D7, D8, -STEPS_PER_REVOLUTION, 0, X_LIMIT,
                     X_DEGREES_PER_MM);
Pen pen(D0, 100, 170);

StepperTimer eggStepperTimer(RPM, STEPS_PER_REVOLUTION);
StepperTimer servoStepperTimer(RPM, STEPS_PER_REVOLUTION);

String inString;

void execCommand(float *command) {
    if (command[0] == G01) {
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

void setup() {
    Serial.begin(115200);
    eggStepperTimer.setStepper(&eggStepper);
    servoStepperTimer.setStepper(&servoStepper);
    pen.disengage();
    servoStepper.setPos(70);
    WiFi.mode(WIFI_OFF);
}

void loop() {
    while (Serial.available() > 0) {
        char inChar = Serial.read();
        inString += inChar;

        if (inChar == '\n') {
            inString.trim();
            execCommand(parseGCode(inString));
            while (!eggStepper.finished() || !servoStepper.finished()) {
                delay(100);
                cli();
                int stepsX = servoStepper.getRemainingSteps();
                int stepsY = eggStepper.getRemainingSteps();
                Serial.println(stepsX);
                Serial.println(stepsY);
                if (stepsX > stepsY) {
                    float rpm = (float)RPM * (float)stepsY / (float)stepsX;
                    eggStepperTimer.setRPM(rpm);
                } else if (stepsY > stepsX) {
                    float rpm = (float)RPM * (float)stepsX / (float)stepsY;
                    servoStepperTimer.setRPM(rpm);
                }
                sei();
            }
            eggStepperTimer.setRPM(RPM);
            servoStepperTimer.setRPM(RPM);
            Serial.println("OK");
            inString = "";
        }
    }
}