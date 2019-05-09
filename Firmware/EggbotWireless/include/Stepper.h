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
    float degreesPerMM;
    bool direction;
    void clockwise();
    void counterClockwise();
    void step(int steps);
    int degreesToSteps(float degrees);
    float pos = 0;
    int limit;

   public:
    Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution, int backlashSteps, int limit, float degreesPerMM);
    void rotate(float degrees);
    void rotateTo(float degrees);
    void moveTo(float dist);
    void setPos(float degrees);
    float getDist(float degrees);
    void doStep();
    bool finished();
    float getPos();
};

#endif