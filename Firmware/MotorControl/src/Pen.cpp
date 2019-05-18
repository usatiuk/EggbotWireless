#include <Arduino.h>
#include <Servo.h>

#include "Pen.h"

#define DELAY 15

Pen::Pen(int pin, int posEngaged, int posDisengaged)
    : posEngaged(posEngaged), posDisengaged(posDisengaged), pin(pin) {}

void Pen::engage() {
    if (!engaged) {
        for (int i = posDisengaged; i > posEngaged; i--) {
            servo.write(i);
            delay(DELAY);
        }
    }
    engaged = true;
}

void Pen::disengage() {
    if (engaged) {
        for (int i = posEngaged; i < posDisengaged; i++) {
            servo.write(i);
            delay(DELAY);
        }
    }
    engaged = false;
}

void Pen::init() {
    servo.attach(pin);
    servo.write(posDisengaged);
    engaged = false;
}

bool Pen::getEngaged() { return engaged; }

Pen::~Pen() {}
