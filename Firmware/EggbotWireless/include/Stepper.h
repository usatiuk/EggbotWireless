#ifndef STEPPER_H
#define STEPPER_H

class Stepper {
   private:
    int stepsPerRevolution;
    int pin1;
    int pin2;
    int pin3;
    int pin4;
    int curStep = 1;
    int remainingSteps;
    bool direction;
    void clockwise();
    void counterClockwise();

   public:
    Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution);
    void step(int steps);
    void rotate(float degrees);
    void doStep();
};

#endif