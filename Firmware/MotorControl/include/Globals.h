#include <Arduino.h>
#include "Pen.h"
#include "Stepper.h"

#ifndef GLOBALS_H
#define GLOBALS_H

#define EGG_DIA 35.0
#define Y_DEGREES_PER_MM (360 / (PI * EGG_DIA))

#define X_LIMIT 70.0
#define EGG_LENGTH 50.0
#define X_DEGREES_PER_MM (X_LIMIT / EGG_LENGTH)

#define STEPS_PER_REVOLUTION 4076
#define DEF_RPM 2

Stepper eggStepper(28, 29, 30, 31, STEPS_PER_REVOLUTION, 0, Y_DEGREES_PER_MM);
Stepper servoStepper(24, 25, 26, 27, -STEPS_PER_REVOLUTION, X_LIMIT,
                     X_DEGREES_PER_MM);

Pen pen(23, 100, 150);

float eggStepperDelay;
float servoStepperDelay;

float eggStepperRPM;
float servoStepperRPM;

bool recalculateDelays;
bool needAdjust;

#endif