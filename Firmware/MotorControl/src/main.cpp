#include <Arduino.h>
#include <Servo.h>
#include <Wire.h>
#include <avr/wdt.h>
#include <util/atomic.h>

#include "Config.h"
#include "Globals.h"
#include "common/Commands.h"
#include "common/Status.h"

int curRPM = defRPM;
bool needAdjust;

int calculateDelay(float rpm, int stepsPerRevolution) {
    // Delay between steps in a timer routine
    // Delay = (ticks/sec)/(rpm/60 * steps/rev)
    return ((float)ticksPerSecond * (float)60) /
           (rpm * (float)stepsPerRevolution);
}

void adjustRPM() {
    eggStepperDelay = calculateDelay(curRPM, STEPS_PER_REVOLUTION);
    servoStepperDelay = calculateDelay(curRPM, STEPS_PER_REVOLUTION);
    if (needAdjust) {
        unsigned int stepsX = servoStepper.getRemainingSteps();
        unsigned int stepsY = eggStepper.getRemainingSteps();
        if (stepsX != 0 && stepsY != 0) {
            if (stepsX > stepsY) {
                eggStepperDelay =
                    (float)servoStepperDelay * (float)stepsX / (float)stepsY;
            } else {
                servoStepperDelay =
                    (float)eggStepperDelay * (float)stepsY / (float)stepsX;
            }
        }
    }
}

Command command;

bool newCommand = false;
bool executing = false;

byte rxBuffer[i2cCmdBytes];
void receiveEvent(int howMany) {
    static int curByte = 0;
    while (Wire.available() > 0) {
        if (!newCommand) {
            char c = Wire.read();
            rxBuffer[curByte] = c;
            curByte++;
            if (curByte == i2cCmdBytes) {
                curByte = 0;
                command.fromBytes(rxBuffer);
                newCommand = true;
            }
        }
    }
}

byte txBuffer[i2cStsBytes];
Status sts;
void requestEvent() {
    if (executing || newCommand) {
        sts.type = StatusType::WAIT;
    } else {
        sts.type = StatusType::NEXT;
    }

    sts.mmS = servoStepper.getPosMm();
    sts.mmE = eggStepper.getPosMm();

    sts.feedrate = curRPM;

    sts.pEng = (float)pen.getEngaged();

    sts.toBytes(txBuffer);
    Wire.write(txBuffer, i2cStsBytes);
}

void execCommand(Command cmd) {
    executing = true;

    if (cmd.type == CommandType::G01 || cmd.type == CommandType::G00) {
        if (cmd.type == CommandType::G01) {
            needAdjust = true;
        } else {
            needAdjust = false;
        }

        if (!isnan(cmd.arg1)) {
            servoStepper.moveTo(cmd.arg1);
        }

        if (!isnan(cmd.arg2)) {
            eggStepper.moveTo(cmd.arg2);
        }

        if (!isnan(cmd.arg3)) {
            if (cmd.arg3 < 0) {
                pen.engage();
            } else {
                pen.disengage();
            }
        }

        if (!isnan(cmd.arg4)) {
            curRPM = cmd.arg4;
        }

        adjustRPM();
    }

    newCommand = false;
    return;
}

void setup() {
    Serial.begin(9600);
    servoStepper.setPos(xLimit);
    pen.init();
    Wire.begin(8);
    Wire.onReceive(receiveEvent);
    Wire.onRequest(requestEvent);
    Wire.setClock(10000);
    Serial.println("Hello!");
    eggStepperRPM = servoStepperRPM = curRPM;
    pinMode(A0, OUTPUT);
    digitalWrite(A0, true);
    OCR2A = 250;
    TCCR2A |= (1 << WGM20) | (1 << CS21);
    TIMSK2 |= (1 << OCIE2A);
    wdt_enable(WDTO_500MS);
}

volatile unsigned int tick = 0;
volatile bool newTick = false;
void steppersRoutine() {
    if (tick % eggStepperDelay == 0) {
        eggStepper.doStep();
    }
    if (tick % servoStepperDelay == 0) {
        servoStepper.doStep();
    }
    if (eggStepper.getRemainingSteps() == 0 &&
        servoStepper.getRemainingSteps() == 0) {
        executing = false;
    }
}

/*
We use our own timer for more precise timings
 */
ISR(TIMER2_COMPA_vect) {
    tick++;
    newTick = true;
}

volatile unsigned int tps = 0;
volatile unsigned long long oldmillis = 0;
void loop() {
    if (newCommand) {
        execCommand(command);
    }
    if (newTick) {
        steppersRoutine();
        tps++;
        newTick = false;
    }
    if (millis() - oldmillis > 1000) {
        oldmillis = millis();
        Serial.println(tps);
        Serial.print(eggStepper.getRemainingSteps());
        Serial.print(" ");
        Serial.println(servoStepper.getRemainingSteps());
        Serial.print(eggStepperDelay);
        Serial.print(" ");
        Serial.println(servoStepperDelay);

        tps = 0;
    }
    wdt_reset();
}
