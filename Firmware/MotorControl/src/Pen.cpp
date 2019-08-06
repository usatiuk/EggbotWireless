#include <Arduino.h>
#include <Servo.h>

#include "Pen.h"

Pen::Pen(int pin, int posEngaged, int posDisengaged)
    : posEngaged(posEngaged), posDisengaged(posDisengaged), pin(pin) {}

void Pen::engage() {
    if (!engaged) {
        servo.attach(pin);
        delay(5);
        servo.write(posEngaged);
        delay(200);
        servo.detach();
    }
    engaged = true;
}

void Pen::disengage() {
    if (engaged) {
        servo.attach(pin);
        delay(5);
        servo.write(posDisengaged);
        delay(200);
        servo.detach();
    }
    engaged = false;
}

void Pen::init() {
    servo.attach(pin);
    servo.write(posDisengaged);
    delay(200);
    engaged = false;
    servo.detach();
}

bool Pen::getEngaged() { return engaged; }

Pen pen(7, 100, 180);
