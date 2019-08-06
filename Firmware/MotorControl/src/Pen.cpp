#include <Arduino.h>
#include <Servo.h>

#include "Pen.h"

Pen::Pen(int pin, int posEngaged, int posDisengaged)
    : posEngaged(posEngaged), posDisengaged(posDisengaged), pin(pin) {}

void Pen::engage() {
    if (!engaged) {
        servo.write(posEngaged);
        delay(5);
    }
    engaged = true;
}

void Pen::disengage() {
    if (engaged) {
        servo.write(posDisengaged);
        delay(5);
    }
    engaged = false;
}

void Pen::init() {
    servo.attach(pin);
    servo.write(posDisengaged);
    delay(5);
    engaged = false;
}

bool Pen::getEngaged() { return engaged; }

Pen pen(7, 100, 180);
