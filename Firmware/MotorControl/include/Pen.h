#include <Servo.h>

#ifndef PEN_H
#define PEN_H

class Pen {
   private:
    int posEngaged;
    int posDisengaged;
    int pin;
    bool engaged = true;
    Servo servo;

   public:
    Pen(int pin, int posEngaged, int posDisengaged);
    void engage();
    void disengage();
    void init();
    bool getEngaged();
};

extern Pen pen;

#endif