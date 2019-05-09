#include <Ticker.h>
#include "Stepper.h"

#ifndef STEPPER_TIMER_H
#define STEPPER_TIMER_H

void stepperTimerInit(int rpm, int stepsPerRevolution);
void stepperTimerSetStepper(int num, Stepper *stepper);
void stepperTimerTick();

#endif
