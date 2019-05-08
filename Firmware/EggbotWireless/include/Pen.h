#include <Servo.h>

#ifndef PEN_H
#define PEN_H

class Pen {
   private:
    int posEngaged;
    int posDisengaged;
    Servo servo;

   public:
    Pen(int pin, int posEngaged, int posDisengaged);
    void engage();
    void disengage();
    ~Pen();
};

#endif