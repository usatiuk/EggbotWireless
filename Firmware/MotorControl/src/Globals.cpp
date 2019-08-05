#include "Globals.h"

Stepper eggStepper(6, 5, -STEPS_PER_REVOLUTION, 0, defYDegPerMM);
Stepper servoStepper(4, 3, STEPS_PER_REVOLUTION, xLimit, defXDegPerMM);

unsigned int eggStepperDelay;
unsigned int servoStepperDelay;

unsigned int eggDia;
unsigned int eggLength;

float eggStepperRPM;
float servoStepperRPM;
