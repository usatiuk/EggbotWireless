#ifndef STEPPER_H
#define STEPPER_H

class Stepper {
   private:
    unsigned int stepsPerRevolution;
    int pin1;
    int pin2;
    int pin3;
    int pin4;
    int speedDelay;
    void clockwise();
    void counterClockwise();

   public:
    Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution, int rpm);
    ~Stepper();
    void step(int steps);
    void move(float degrees);
};

#endif