#include <Arduino.h>
#include "Pen.h"
#include "Stepper.h"
#include "Config.h"

#ifndef GLOBALS_H
#define GLOBALS_H

#define STEPS_PER_REVOLUTION (360/1.8) * 32

extern Stepper eggStepper;
extern Stepper servoStepper;

extern unsigned int eggStepperDelay;
extern unsigned int servoStepperDelay;

extern unsigned int eggDia;
extern unsigned int eggLength;

extern float eggStepperRPM;
extern float servoStepperRPM;

#endif