#include <Arduino.h>
#include <Servo.h>
#include <Wire.h>
#include <util/atomic.h>
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
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        eggStepperDelay = calculateDelay(eggStepperRPM, STEPS_PER_REVOLUTION);
        servoStepperDelay =
            calculateDelay(servoStepperRPM, STEPS_PER_REVOLUTION);
    }
}

Command command;

bool newCommand = false;
bool executing = false;

byte rxBuffer[7][sizeof(float)];
void receiveEvent(int howMany) {
    static int curByte = 0;
    static int curFloat = 0;
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
    if (command.type == CommandType::M99 && newCommand) {
        floatToBytes(txBuffer[0], servoStepper.getPos());
        floatToBytes(txBuffer[1], eggStepper.getPos());

        floatToBytes(txBuffer[2], servoStepper.getPosMm());
        floatToBytes(txBuffer[3], eggStepper.getPosMm());

        floatToBytes(txBuffer[4], (float)pen.getEngaged());
        Wire.write(txBuffer[0], 5 * sizeof(float));
        newCommand = false;
    } else if (executing || newCommand) {
        Wire.write(static_cast<int>(I2CStatusMsg::WAIT));
    } else {
        Wire.write(static_cast<int>(I2CStatusMsg::NEXT));
    }
}

void execCommand() {
    executing = true;

    if (command.type == CommandType::G01 || command.type == CommandType::G00) {
        newCommand = false;
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
    }

    return;
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
    OCR2A = 250;
    TCCR2A |= (1 << WGM20) | (1 << CS22);
    TIMSK2 |= (1 << OCIE2A);
    servoStepper.setPos(X_LIMIT);
    pen.init();
}

volatile unsigned int tick = 0;
volatile bool armed = false;

/*
We use our own timer for more precise timings
And it ticks only when armed, to ensure
that updateExecution() doesn't skip a single tick
 */
ISR(TIMER2_COMPA_vect) {
    if (armed) {
        tick++;
        armed = false;
    }
}

void updateExecution() {
    if (!armed) {
        if (tick % adjustDelay == 0) {
            adjustRPM();
        }
        if (tick % eggStepperDelay == 0) {
            eggStepper.doStep();
        }
        if (tick % servoStepperDelay == 0) {
            servoStepper.doStep();
        }
        armed = true;
    }
    if (eggStepper.getRemainingSteps() == 0 &&
        servoStepper.getRemainingSteps() == 0) {
        executing = false;
    }
}

void loop() {
    if (newCommand) {
        execCommand();
    }
    updateExecution();
}
