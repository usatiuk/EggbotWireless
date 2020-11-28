#include "Stepper.h"

#include <Arduino.h>
#include <util/atomic.h>

Stepper::Stepper(int stepPin, int dirPin, int stepsPerRevolution, int limit,
                 float degreesPerMM)
    : dirPin(dirPin),
      stepPin(stepPin),
      stepsPerRevolution(stepsPerRevolution),
      limit(limit),
      degreesPerMM(degreesPerMM) {
    pinMode(dirPin, OUTPUT);
    pinMode(stepPin, OUTPUT);
}

void Stepper::doStep() {
    if (remainingSteps > 0) {
        digitalWrite(dirPin, direction);
        digitalWrite(stepPin, 1);
        delayMicroseconds(10);
        digitalWrite(stepPin, 0);
        remainingSteps--;
    }
}

void Stepper::step(int steps) {
    if (steps == 0) {
        return;
    }
    if (steps > 0) {
        direction = true;
        remainingSteps += steps;
    } else {
        direction = false;
        remainingSteps += abs(steps);
    }
}

int Stepper::degreesToSteps(float degrees) {
    return (degrees * stepsPerRevolution) / 360;
}

void Stepper::rotate(float degrees) {
    int steps = degreesToSteps(degrees);
    if (!limit) {
        pos = fmod((pos + degrees), 360);
        if (pos < 0) {
            pos = 360 + pos;
        }
        step(steps);
    } else {
        if (degrees + pos > limit) {
            step(degreesToSteps(limit - pos));
            pos = limit;
        } else if (degrees + pos < 0) {
            step(degreesToSteps(-pos));
            pos = 0;
        } else {
            step(steps);
            pos += degrees;
        }
    }
}

float Stepper::getDist(float degrees) {
    float mod = fmod(degrees, 360);
    return abs(mod - pos);
}

void Stepper::rotateTo(float degrees) {
    float mod = fmod(degrees, 360);
    rotate(mod - pos);
}

void Stepper::moveTo(float dist) { rotateTo(dist * degreesPerMM); }

int Stepper::mmToSteps(float dist) {
    return abs(degreesToSteps(dist * degreesPerMM));
}

float Stepper::getPosMm() { return pos / degreesPerMM; }

float Stepper::getDistMm(float pos) { return abs(getPosMm() - pos); }

void Stepper::setPos(float degrees) { pos = degrees; }

int Stepper::getRemainingSteps() { return remainingSteps; }

bool Stepper::finished() { return remainingSteps == 0; }
float Stepper::getPos() { return pos; }