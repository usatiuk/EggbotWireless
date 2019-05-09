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
    int backlashSteps;
    bool direction;
    void clockwise();
    void counterClockwise();

   public:
    Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution, int backlashSteps);
    void step(int steps);
    void rotate(float degrees);
    void doStep();
    bool finished();
};

#endif