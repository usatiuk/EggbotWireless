#include <Arduino.h>
#include <Servo.h>
#include <Wire.h>
#include "Globals.h"
#include "common/Commands.h"

int curRPM = DEF_RPM;
int adjustDelay = 10;

float calculateDelay(float rpm, int stepsPerRevolution) {
    return ((float)1000 * (float)60) / (rpm * (float)stepsPerRevolution);
}

void adjustRPM() {
    eggStepperRPM = curRPM;
    servoStepperRPM = curRPM;
    if (needAdjust) {
        unsigned int stepsX = servoStepper.getRemainingSteps();
        unsigned int stepsY = eggStepper.getRemainingSteps();
        if (stepsX != 0 && stepsY != 0) {
            if (stepsX > stepsY) {
                float rpm = (float)curRPM * (float)stepsY / (float)stepsX;
                eggStepperRPM = rpm;
            } else if (stepsY > stepsX) {
                float rpm = (float)curRPM * (float)stepsX / (float)stepsY;
                servoStepperRPM = rpm;
            }
        }
    }
    eggStepperDelay = calculateDelay(eggStepperRPM, STEPS_PER_REVOLUTION);
    servoStepperDelay = calculateDelay(servoStepperRPM, STEPS_PER_REVOLUTION);
}

int curFloat = 0;
float command[4];

bool newCommand = false;
bool executing = false;

int curByte = 0;
byte rxBuffer[4];
void receiveEvent(int howMany) {
    while (Wire.available() > 0) {
        if (!newCommand) {
            char c = Wire.read();
            rxBuffer[curByte] = c;
            curByte++;
            if (curByte == 4) {
                curByte = 0;
                bytesToFloat(&command[curFloat], rxBuffer);
                curFloat++;
            }
            if (curFloat == 4) {
                curFloat = 0;
                newCommand = true;
            }
        }
    }
}

byte txBuffer[5 * sizeof(float)];
void requestEvent() {
    if (command[0] == M99) {
        floatToBytes(&txBuffer[0], servoStepper.getPos());
        floatToBytes(&txBuffer[sizeof(float)], eggStepper.getPos());

        floatToBytes(&txBuffer[sizeof(float) * 2], servoStepper.getPosMm());
        floatToBytes(&txBuffer[sizeof(float) * 3], eggStepper.getPosMm());

        floatToBytes(&txBuffer[sizeof(float) * 4], (float)pen.getEngaged());
        Wire.write(txBuffer, 5 * sizeof(float));
    } else if (executing || newCommand) {
        Wire.write(WAIT);
    } else {
        Wire.write(NEXT);
    }
}

void execCommand(float *command) {
    executing = true;
    if (command[0] == G01 || command[0] == G00) {
        if (command[0] == G01) {
            needAdjust = true;
        } else {
            needAdjust = false;
        }

        if (!isnan(command[X])) {
            servoStepper.moveTo(command[X]);
        }

        if (!isnan(command[Y])) {
            eggStepper.moveTo(command[Y]);
        }

        if (!isnan(command[Z])) {
            if (command[Z] < 0) {
                pen.engage();
            }
            if (command[Z] >= 0) {
                pen.disengage();
            }
        }
        
        adjustRPM();

        return;
    }
}

void setup() {
    cli();
    Serial.begin(115200);
    Wire.begin(8);
    Wire.onReceive(receiveEvent);
    Wire.onRequest(requestEvent);
    Serial.println("Hello!");
    eggStepperRPM = servoStepperRPM = curRPM;
    OCR2 = 250;
    TCCR2 |= (1 << WGM12) | (1 << CS22);
    TIMSK |= (1 << OCIE2);
    sei();
    servoStepper.setPos(X_LIMIT);
    pen.init();
}

ISR(TIMER2_COMP_vect) {
    unsigned long ms = millis();
    if (fmod(ms, eggStepperDelay) < 1) {
        eggStepper.doStep();
    }
    if (fmod(ms, servoStepperDelay) < 1) {
        servoStepper.doStep();
    }
}

void updateExecution() {
    if (eggStepper.getRemainingSteps() == 0 &&
        servoStepper.getRemainingSteps() == 0) {
        executing = false;
    }
}

void loop() {
    unsigned long ms = millis();
    if (ms % adjustDelay < 2) {
        adjustRPM();
    }
    if (newCommand) {
        newCommand = false;
        execCommand(command);
    }
    updateExecution();
}
