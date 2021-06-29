#include "Pen.h"

#include <Arduino.h>
#include <Servo.h>

Pen::Pen(int pin, int posEngaged, int posDisengaged)
    : posEngaged(posEngaged), posDisengaged(posDisengaged), pin(pin) {}

void Pen::engage() {
    if (!engaged) {
        for (int i = posDisengaged; i > posEngaged; i--) {
            servo.write(i);
            delay(5);
        }
    }
    engaged = true;
}

void Pen::disengage() {
    if (engaged) {
        for (int i = posEngaged; i < posDisengaged; i++) {
            servo.write(i);
            delay(5);
        }
    }
    engaged = false;
}

void Pen::init() {
    servo.attach(pin);
    servo.write(posDisengaged);
    delay(1000);
    engaged = false;
}

bool Pen::getEngaged() { return engaged; }

Pen pen(7, 100, 175);
