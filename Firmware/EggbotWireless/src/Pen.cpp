#include "Pen.h"
#include <Servo.h>

Pen::Pen(int pin, int posEngaged, int posDisengaged)
    : posEngaged(posEngaged), posDisengaged(posDisengaged) {
    servo.attach(pin);
}

void Pen::engage() {
    servo.write(posEngaged);
    engaged = true;
    delay(DELAY);
}

void Pen::disengage() {
    servo.write(posDisengaged);
    engaged = false;
    delay(DELAY);
}

bool Pen::getEngaged() {
    return engaged;
}

Pen::~Pen() {}
