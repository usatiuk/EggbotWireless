#ifndef STEPPER_H
#define STEPPER_H

class Stepper {
   private:
    int stepsPerRevolution;
    unsigned int pin1;
    unsigned int pin2;
    unsigned int pin3;
    unsigned int pin4;
    unsigned int curStep = 1;
    unsigned int remainingSteps;
    float degreesPerMM;
    bool direction;
    void clockwise();
    void counterClockwise();
    float pos = 0;
    int limit;

   public:
    Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution,
            int limit, float degreesPerMM);
    void step(int steps);
    int getRemainingSteps();
    void rotate(float degrees);
    void rotateTo(float degrees);
    void moveTo(float dist);
    void setPos(float degrees);
    float getDist(float degrees);
    int degreesToSteps(float degrees);
    int mmToSteps(float dist);
    void doStep();
    bool finished();
    float getPos();
    float getPosMm();
    float getDistMm(float pos);
};

#endif