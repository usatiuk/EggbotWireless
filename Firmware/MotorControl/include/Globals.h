#include <Arduino.h>
#include "Pen.h"
#include "Stepper.h"
#include "Config.h"

#ifndef GLOBALS_H
#define GLOBALS_H

#define STEPS_PER_REVOLUTION (360/1.8) * 32

Stepper eggStepper(6, 5, STEPS_PER_REVOLUTION, 0, defYDegPerMM);
Stepper servoStepper(4, 3, STEPS_PER_REVOLUTION, xLimit,
                     defXDegPerMM);

Pen pen(7, 120, 180);

unsigned int eggStepperDelay;
unsigned int servoStepperDelay;

unsigned int eggDia;
unsigned int eggLength;

float eggStepperRPM;
float servoStepperRPM;

#endif