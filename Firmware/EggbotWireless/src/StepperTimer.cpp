#include "StepperTimer.h"
#include "Stepper.h"

StepperTimer::StepperTimer(float rpm, int stepsPerRevolution)
    : stepsPerRevolution(stepsPerRevolution) {
    stepperTicker.detach();
    speedDelay = 60 * 1000 / (rpm * stepsPerRevolution);
    stepperTicker.attach_ms(speedDelay, std::bind(&StepperTimer::tick, this));
}

void StepperTimer::setStepper(Stepper *_stepper) { stepper = _stepper; }

void StepperTimer::tick() { stepper->doStep(); }

void StepperTimer::setRPM(float rpm) {
    stepperTicker.detach();
    speedDelay = 60 * 1000 / (rpm * stepsPerRevolution);
    stepperTicker.attach_ms(speedDelay, std::bind(&StepperTimer::tick, this));
}