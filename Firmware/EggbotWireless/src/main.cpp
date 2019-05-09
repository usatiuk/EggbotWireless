#include <Arduino.h>
#include <ESP8266WiFi.h>
#include "GCodeParser.h"
#include "Pen.h"
#include "Stepper.h"
#include "StepperTimer.h"

#define STEPS_PER_REVOLUTION 4076
#define BACKLASH_STEPS 40
int RPM = 4;

Stepper eggStepper(D1, D2, D3, D4, STEPS_PER_REVOLUTION, BACKLASH_STEPS, 0);
Stepper servoStepper(D5, D6, D7, D8, -STEPS_PER_REVOLUTION, BACKLASH_STEPS, 70);
Pen pen(D0, 100, 170);

StepperTimer eggStepperTimer(RPM, STEPS_PER_REVOLUTION);
StepperTimer servoStepperTimer(RPM, STEPS_PER_REVOLUTION);

String inString;


void execCommand(int *command) {
    if (command[0] == G01) {
        if (command[X] != -1 && command[Y] != -1) {
            float distX = servoStepper.getDist(command[X]);
            float distY = eggStepper.getDist(command[Y]);
            if (distX != 0 && distY != 0) {
                if (distX > distY) {
                    eggStepperTimer.setRPM(RPM * distY / distX);
                } else if (distY > distX) {
                    servoStepperTimer.setRPM(RPM * distX / distY);
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
            }
            eggStepperTimer.setRPM(RPM);
            servoStepperTimer.setRPM(RPM);
            Serial.println("OK");
            inString = "";
        }
    }
}