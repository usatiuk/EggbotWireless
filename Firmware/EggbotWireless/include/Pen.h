#include <Servo.h>

#ifndef PEN_H
#define PEN_H

#define DELAY 300

class Pen {
   private:
    int posEngaged;
    int posDisengaged;
    bool engaged;
    Servo servo;

   public:
    Pen(int pin, int posEngaged, int posDisengaged);
    void engage();
    void disengage();
    bool getEngaged();
    ~Pen();
};

#endif