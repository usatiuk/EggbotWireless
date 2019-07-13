#include <Arduino.h>
#include <Servo.h>
#include <Wire.h>
#include "Globals.h"
#include "common/Commands.h"

int curRPM = DEF_RPM;
int adjustDelay = 100;
bool needAdjust;

int calculateDelay(float rpm, int stepsPerRevolution) {
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
    cli();
    eggStepperDelay = calculateDelay(eggStepperRPM, STEPS_PER_REVOLUTION);
    servoStepperDelay = calculateDelay(servoStepperRPM, STEPS_PER_REVOLUTION);
    sei();
}

Command command;

bool newCommand = false;
bool executing = false;

int curByte = 0;
int curFloat = 0;
byte rxBuffer[7][sizeof(float)];
void receiveEvent(int howMany) {
    while (Wire.available() > 0) {
        if (!newCommand) {
            char c = Wire.read();
            rxBuffer[curFloat][curByte] = c;
            curByte++;
            if (curByte == 4) {
                curByte = 0;
                curFloat++;
            }
            if (curFloat == 7) {
                curFloat = 0;
                command.fromBytes(rxBuffer[0]);
                newCommand = true;
            }
        }
    }
}

byte txBuffer[5][sizeof(float)];
void requestEvent() {
    if (command.type == CommandType::M99) {
        floatToBytes(txBuffer[0], servoStepper.getPos());
        floatToBytes(txBuffer[1], eggStepper.getPos());

        floatToBytes(txBuffer[2], servoStepper.getPosMm());
        floatToBytes(txBuffer[3], eggStepper.getPosMm());

        floatToBytes(txBuffer[4], (float)pen.getEngaged());
        Wire.write(txBuffer[0], 5 * sizeof(float));
    } else if (executing || newCommand) {
        Wire.write(WAIT);
    } else {
        Wire.write(NEXT);
    }
}

void execCommand() {
    executing = true;

    if (command.type == CommandType::G01 || command.type == CommandType::G00) {
        if (command.type == CommandType::G01) {
            needAdjust = true;
        } else {
            needAdjust = false;
        }

        if (!isnan(command.arg1)) {
            servoStepper.moveTo(command.arg1);
        }

        if (!isnan(command.arg2)) {
            eggStepper.moveTo(command.arg2);
        }

        if (!isnan(command.arg3)) {
            if (command.arg3 < 0) {
                pen.engage();
            }
            if (command.arg3 >= 0) {
                pen.disengage();
            }
        }

        adjustRPM();

        return;
    }
}

void setup() {
    Serial.begin(115200);
    Wire.begin(8);
    Wire.onReceive(receiveEvent);
    Wire.onRequest(requestEvent);
    Serial.println("Hello!");
    eggStepperRPM = servoStepperRPM = curRPM;
    pinMode(A0, OUTPUT);
    digitalWrite(A0, true);
    OCR0A = 250;
    TCCR0A |= (1 << WGM20) | (1 << CS22);
    TIMSK0 |= (1 << OCIE0A);
    servoStepper.setPos(X_LIMIT);
    pen.init();
}

volatile unsigned int ms = 0;

ISR(TIMER0_COMPA_vect) {
    ms++;
    if (ms % adjustDelay == 0) {
        adjustRPM();
    }
    if (ms % eggStepperDelay == 0) {
        eggStepper.doStep();
    }
    if (ms % servoStepperDelay == 0) {
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
    if (newCommand) {
        newCommand = false;
        execCommand();
    }
    updateExecution();
}
