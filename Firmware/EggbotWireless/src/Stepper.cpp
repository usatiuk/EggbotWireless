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

Stepper::Stepper(int pin1, int pin2, int pin3, int pin4, int stepsPerRevolution)
    : pin1(pin1),
      pin2(pin2),
      pin3(pin3),
      pin4(pin4),
      stepsPerRevolution(stepsPerRevolution) {
    pinMode(pin1, OUTPUT);
    pinMode(pin2, OUTPUT);
    pinMode(pin3, OUTPUT);
    pinMode(pin4, OUTPUT);
}

void Stepper::doStep() {
    if(remainingSteps > 0) {
        if(direction){
            clockwise();
        } else {
            counterClockwise();
        }
        remainingSteps--;
    }
}

void Stepper::step(int steps) {
    if (steps > 0) {
        direction = true;
        remainingSteps = steps;
    } else {
        direction = false;
        remainingSteps = abs(steps);
    }
}

void Stepper::rotate(float degrees) {
    int steps = (degrees * stepsPerRevolution) / 360;
    step(steps);
}