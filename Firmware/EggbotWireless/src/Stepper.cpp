#include "Stepper.h"
#include <Arduino.h>

void Stepper::clockwise() {
    switch (curStep) {
        case 1:
            digitalWrite(pin4, HIGH);
            digitalWrite(pin3, LOW);
            digitalWrite(pin2, LOW);
            digitalWrite(pin1, LOW);
            break;
        case 2:
            digitalWrite(pin4, HIGH);
            digitalWrite(pin3, HIGH);
            digitalWrite(pin2, LOW);
            digitalWrite(pin1, LOW);
            break;
        case 3:
            digitalWrite(pin4, LOW);
            digitalWrite(pin3, HIGH);
            digitalWrite(pin2, LOW);
            digitalWrite(pin1, LOW);
            break;
        case 4:
            digitalWrite(pin4, LOW);
            digitalWrite(pin3, HIGH);
            digitalWrite(pin2, HIGH);
            digitalWrite(pin1, LOW);
            break;
        case 5:
            digitalWrite(pin4, LOW);
            digitalWrite(pin3, LOW);
            digitalWrite(pin2, HIGH);
            digitalWrite(pin1, LOW);
            break;
        case 6:
            digitalWrite(pin4, LOW);
            digitalWrite(pin3, LOW);
            digitalWrite(pin2, HIGH);
            digitalWrite(pin1, HIGH);
            break;
        case 7:
            digitalWrite(pin4, LOW);
            digitalWrite(pin3, LOW);
            digitalWrite(pin2, LOW);
            digitalWrite(pin1, HIGH);
            break;
        case 8:
            digitalWrite(pin4, HIGH);
            digitalWrite(pin3, LOW);
            digitalWrite(pin2, LOW);
            digitalWrite(pin1, HIGH);
    }
    if (curStep == 8) {
        curStep = 1;
    } else {
        curStep++;
    }
}

void Stepper::counterClockwise() {
    switch (curStep) {
        case 1:
            digitalWrite(pin1, HIGH);
            digitalWrite(pin2, LOW);
            digitalWrite(pin3, LOW);
            digitalWrite(pin4, LOW);
            break;
        case 2:
            digitalWrite(pin1, HIGH);
            digitalWrite(pin2, HIGH);
            digitalWrite(pin3, LOW);
            digitalWrite(pin4, LOW);
            break;
        case 3:
            digitalWrite(pin1, LOW);
            digitalWrite(pin2, HIGH);
            digitalWrite(pin3, LOW);
            digitalWrite(pin4, LOW);
            break;
        case 4:
            digitalWrite(pin1, LOW);
            digitalWrite(pin2, HIGH);
            digitalWrite(pin3, HIGH);
            digitalWrite(pin4, LOW);
            break;
        case 5:
            digitalWrite(pin1, LOW);
            digitalWrite(pin2, LOW);
            digitalWrite(pin3, HIGH);
            digitalWrite(pin4, LOW);
            break;
        case 6:
            digitalWrite(pin1, LOW);
            digitalWrite(pin2, LOW);
            digitalWrite(pin3, HIGH);
            digitalWrite(pin4, HIGH);
            break;
        case 7:
            digitalWrite(pin1, LOW);
            digitalWrite(pin2, LOW);
            digitalWrite(pin3, LOW);
            digitalWrite(pin4, HIGH);
            break;
        case 8:
            digitalWrite(pin1, HIGH);
            digitalWrite(pin2, LOW);
            digitalWrite(pin3, LOW);
            digitalWrite(pin4, HIGH);
    }
    if (curStep == 8) {
        curStep = 1;
    } else {
        curStep++;
    }
}

Stepper::Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution,
                 int backlashSteps, int limit)
    : pin1(pin1),
      pin2(pin2),
      pin3(pin3),
      pin4(pin4),
      stepsPerRevolution(stepsPerRevolution),
      backlashSteps(backlashSteps),
      limit(limit) {
    pinMode(pin1, OUTPUT);
    pinMode(pin2, OUTPUT);
    pinMode(pin3, OUTPUT);
    pinMode(pin4, OUTPUT);
}

void Stepper::doStep() {
    if (remainingSteps > 0) {
        if (direction) {
            clockwise();
        } else {
            counterClockwise();
        }
        remainingSteps--;
    }
}

void Stepper::step(int steps) {
    if (steps == 0) {
        return;
    }
    if (steps > 0) {
        if (!direction) {
            remainingSteps += backlashSteps;
        }
        direction = true;
        remainingSteps += steps;
    } else {
        if (direction) {
            remainingSteps += backlashSteps;
        }
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

void Stepper::moveTo(float degrees) {
    float mod = fmod(degrees, 360);
    rotate(mod - pos);
}

void Stepper::setPos(float degrees) {
    pos = degrees;
}

bool Stepper::finished() { return remainingSteps == 0; }
float Stepper::getPos() { return pos; }