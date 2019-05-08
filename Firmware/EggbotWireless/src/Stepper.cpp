#include "Stepper.h"
#include <Arduino.h>

void Stepper::clockwise() {
    digitalWrite(pin4, HIGH);
    digitalWrite(pin3, LOW);
    digitalWrite(pin2, LOW);
    digitalWrite(pin1, LOW);
    delay(speedDelay);

    digitalWrite(pin4, HIGH);
    digitalWrite(pin3, HIGH);
    digitalWrite(pin2, LOW);
    digitalWrite(pin1, LOW);
    delay(speedDelay);

    digitalWrite(pin4, LOW);
    digitalWrite(pin3, HIGH);
    digitalWrite(pin2, LOW);
    digitalWrite(pin1, LOW);
    delay(speedDelay);

    digitalWrite(pin4, LOW);
    digitalWrite(pin3, HIGH);
    digitalWrite(pin2, HIGH);
    digitalWrite(pin1, LOW);
    delay(speedDelay);

    digitalWrite(pin4, LOW);
    digitalWrite(pin3, LOW);
    digitalWrite(pin2, HIGH);
    digitalWrite(pin1, LOW);
    delay(speedDelay);

    digitalWrite(pin4, LOW);
    digitalWrite(pin3, LOW);
    digitalWrite(pin2, HIGH);
    digitalWrite(pin1, HIGH);
    delay(speedDelay);

    digitalWrite(pin4, LOW);
    digitalWrite(pin3, LOW);
    digitalWrite(pin2, LOW);
    digitalWrite(pin1, HIGH);
    delay(speedDelay);

    digitalWrite(pin4, HIGH);
    digitalWrite(pin3, LOW);
    digitalWrite(pin2, LOW);
    digitalWrite(pin1, HIGH);
    delay(speedDelay);
}

void Stepper::counterClockwise() {
    digitalWrite(pin1, HIGH);
    digitalWrite(pin2, LOW);
    digitalWrite(pin3, LOW);
    digitalWrite(pin4, LOW);
    delay(speedDelay);

    digitalWrite(pin1, HIGH);
    digitalWrite(pin2, HIGH);
    digitalWrite(pin3, LOW);
    digitalWrite(pin4, LOW);
    delay(speedDelay);

    digitalWrite(pin1, LOW);
    digitalWrite(pin2, HIGH);
    digitalWrite(pin3, LOW);
    digitalWrite(pin4, LOW);
    delay(speedDelay);

    digitalWrite(pin1, LOW);
    digitalWrite(pin2, HIGH);
    digitalWrite(pin3, HIGH);
    digitalWrite(pin4, LOW);
    delay(speedDelay);

    digitalWrite(pin1, LOW);
    digitalWrite(pin2, LOW);
    digitalWrite(pin3, HIGH);
    digitalWrite(pin4, LOW);
    delay(speedDelay);

    digitalWrite(pin1, LOW);
    digitalWrite(pin2, LOW);
    digitalWrite(pin3, HIGH);
    digitalWrite(pin4, HIGH);
    delay(speedDelay);

    digitalWrite(pin1, LOW);
    digitalWrite(pin2, LOW);
    digitalWrite(pin3, LOW);
    digitalWrite(pin4, HIGH);
    delay(speedDelay);

    digitalWrite(pin1, HIGH);
    digitalWrite(pin2, LOW);
    digitalWrite(pin3, LOW);
    digitalWrite(pin4, HIGH);
    delay(speedDelay);
}

Stepper::Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution,
                 int rpm)
    : pin1(pin1),
      pin2(pin2),
      pin3(pin3),
      pin4(pin4),
      stepsPerRevolution(stepsPerRevolution) {
    pinMode(pin1, OUTPUT);
    pinMode(pin2, OUTPUT);
    pinMode(pin3, OUTPUT);
    pinMode(pin4, OUTPUT);

    speedDelay = 60 * 1000 / (rpm * stepsPerRevolution);
}
Stepper::~Stepper() {}

void Stepper::step(int steps) {
    int halfsteps = steps / 8;
    if (halfsteps > 0) {
        for (int i = 0; i < halfsteps; i++) {
            clockwise();
        }
    } else if (halfsteps < 0) {
        halfsteps = abs(halfsteps);
        for (int i = 0; i < halfsteps; i++) {
            counterClockwise();
        }
    }
}

void Stepper::move(float degrees) {
    int steps = (degrees * stepsPerRevolution) / 360;
    step(steps);
}