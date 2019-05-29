#include <Arduino.h>
#include "Pen.h"
#include "Stepper.h"

#ifndef GLOBALS_H
#define GLOBALS_H

#define EGG_DIA 45.0
#define Y_DEGREES_PER_MM (360 / (PI * EGG_DIA))

#define X_LIMIT 90.0
#define EGG_LENGTH 60.0
#define X_DEGREES_PER_MM (X_LIMIT / EGG_LENGTH)

#define STEPS_PER_REVOLUTION (360/1.8) * 32
#define DEF_RPM 2

Stepper eggStepper(24, 25, STEPS_PER_REVOLUTION, 0, Y_DEGREES_PER_MM);
Stepper servoStepper(28, 29, -STEPS_PER_REVOLUTION, X_LIMIT,
                     X_DEGREES_PER_MM);

Pen pen(23, 100, 180);

unsigned int eggStepperDelay;
unsigned int servoStepperDelay;

float eggStepperRPM;
float servoStepperRPM;

#endif