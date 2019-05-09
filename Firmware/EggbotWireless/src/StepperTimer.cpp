#include "StepperTimer.h"
#include "Stepper.h"

int speedDelay;
Ticker stepperTicker;
Stepper *steppers[2];

void stepperTimerInit(int rpm, int stepsPerRevolution)
{
    speedDelay = 60 * 1000 / (rpm * stepsPerRevolution);
    stepperTicker.attach_ms(speedDelay, stepperTimerTick);
}

void stepperTimerSetStepper(int num, Stepper *stepper) {
    steppers[num] = stepper;
}

void stepperTimerTick() {
    for (int i = 0; i < 2; i++) {
        steppers[i]->doStep();
    } 
}