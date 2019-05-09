#include <Arduino.h>
#include "Pen.h"
#include "Stepper.h"
#include "StepperTimer.h"

#define STEPS_PER_REVOLUTION 4076
#define BACKLASH_STEPS 40
#define RPM 6

Stepper eggStepper(D1, D2, D3, D4, STEPS_PER_REVOLUTION, BACKLASH_STEPS);
Stepper servoStepper(D5, D6, D7, D8, STEPS_PER_REVOLUTION, BACKLASH_STEPS);
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
        int inChar = Serial.read();
        Serial.write(inChar);
        
        if (inChar == '\n') {
            inString = "";
        }
    }
}