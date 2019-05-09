#include <Arduino.h>
#include "Pen.h"
#include "Stepper.h"
#include "StepperTimer.h"

#define STEPS_PER_REVOLUTION 4076
#define BACKLASH_STEPS 20
#define RPM 10

Stepper eggStepper(D1, D2, D3, D4, STEPS_PER_REVOLUTION, BACKLASH_STEPS, 0);
Stepper servoStepper(D5, D6, D7, D8, STEPS_PER_REVOLUTION, BACKLASH_STEPS, 80);
Pen pen(D0, 180, 80);

String inString;

void setup() {
    Serial.begin(115200);
    stepperTimerSetStepper(0, &eggStepper);
    stepperTimerSetStepper(1, &servoStepper);
    stepperTimerInit(RPM, STEPS_PER_REVOLUTION);
}

void loop() {
    while (Serial.available() > 0) {
        char inChar = Serial.read();
        Serial.write(inChar);
        inString += inChar;

        if (inChar == '\n') {
            inString.trim();
            if (inString == "pos") {
                Serial.println("Pos: " + String(servoStepper.getPos()));
            } else {
                servoStepper.rotate(inString.toFloat());
            }
            inString = "";
        }
    }
}