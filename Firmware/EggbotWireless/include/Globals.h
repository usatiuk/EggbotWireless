#include <Arduino.h>
#include "Stepper.h"
#include "Pen.h"
#include "EggConstants.h"
#include "StepperTimer.h"

#ifndef GLOBALS_H
#define GLOBALS_H

#define STEPS_PER_REVOLUTION 4076
#define DEF_RPM 2

Stepper eggStepper(D1, D2, D3, D4, STEPS_PER_REVOLUTION, 10, 0,
                   Y_DEGREES_PER_MM, typeBoth, false);
Stepper servoStepper(D5, D6, D7, D8, -STEPS_PER_REVOLUTION, 10, X_LIMIT,
                     X_DEGREES_PER_MM, typeClockwise, true);

StepperTimer eggStepperTimer(DEF_RPM, STEPS_PER_REVOLUTION);
StepperTimer servoStepperTimer(DEF_RPM, STEPS_PER_REVOLUTION);

Pen pen(D0, 100, 150);

String inString;

#endif