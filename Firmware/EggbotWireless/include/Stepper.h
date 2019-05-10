#ifndef STEPPER_H
#define STEPPER_H

enum backlashCompType { typeClockwise, typeCounterClockwise, typeBoth };

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
    float pos = 0;
    int limit;
    bool compAlways;

    backlashCompType backlashComp;

   public:
    Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution,
            int backlashSteps, int limit, float degreesPerMM,
            backlashCompType backlashComp, bool compAlways);
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