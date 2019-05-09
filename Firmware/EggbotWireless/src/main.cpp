#include <Arduino.h>
#include "Pen.h"
#include "Stepper.h"
#include "StepperTimer.h"

#define STEPS_PER_REVOLUTION 4076

Stepper eggStepper(D1, D2, D3, D4, STEPS_PER_REVOLUTION);
Stepper servoStepper(D5, D6, D7, D8, STEPS_PER_REVOLUTION);

Pen pen(D0, 180, 80);

void setup() {
    Serial.begin(115200);
    stepperTimerSetStepper(0, &eggStepper);
    stepperTimerSetStepper(1, &servoStepper);
    stepperTimerInit(6, STEPS_PER_REVOLUTION);
}

void loop() {
}