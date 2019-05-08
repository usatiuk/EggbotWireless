#include <Servo.h>
#include "Pen.h"

Pen::Pen(int pin, int posEngaged, int posDisengaged)
    : posEngaged(posEngaged), posDisengaged(posDisengaged) {
    servo.attach(pin);
}

void Pen::engage() { servo.write(posEngaged); }

void Pen::disengage() { servo.write(posDisengaged); }

Pen::~Pen() {}
