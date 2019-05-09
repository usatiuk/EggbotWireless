#include <Ticker.h>
#include "Stepper.h"

#ifndef STEPPER_TIMER_H
#define STEPPER_TIMER_H
class StepperTimer {
   private:
    int speedDelay;
    int stepsPerRevolution;
    Ticker stepperTicker;
    Stepper *stepper;
   public:
    StepperTimer(float rpm, int stepsPerRevolution);
    void setStepper(Stepper *stepper);
    void setRPM(float rpm);
    void tick();
};

#endif
