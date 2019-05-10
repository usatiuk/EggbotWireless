#include <Servo.h>

#ifndef PEN_H
#define PEN_H

#define DELAY 15

class Pen {
   private:
    int posEngaged;
    int posDisengaged;
    bool engaged = true;
    Servo servo;

   public:
    Pen(int pin, int posEngaged, int posDisengaged);
    void engage();
    void disengage();
    void init();
    bool getEngaged();
    ~Pen();
};

#endif