#include "Executor.h"
#include "Config.h"
#include "common/Commands.h"

Executor executor;

Executor::Executor() {}

void Executor::execCommand(Command command) {
    if (command.type == CommandType::unk) {
        Serial.println("OK");
        return;
    }

    Wire.beginTransmission(8);
    byte buffer[i2cCmdBytes];
    command.toBytes(buffer);
    Wire.write(buffer, i2cCmdBytes);
    Wire.endTransmission();

    if (command.type == CommandType::G01 || command.type == CommandType::G00) {
        return;
    }

    if (command.type == CommandType::M99) {
        delay(10);
        Wire.requestFrom(8, 5 * i2cFloatSize);

        float resp[5];
        byte buffer[i2cFloatSize];

        for (int i = 0; i < 5; i++) {
            for (unsigned int j = 0; j < i2cFloatSize; j++) {
                while (!Wire.available()) {
                }
                buffer[j] = Wire.read();
            }
            bytesToFloat(&resp[i], buffer);
        }

        Serial.println("Status:");
        Serial.print("X: ");
        Serial.println(resp[servoRot]);

        Serial.print("Y: ");
        Serial.println(resp[eggRot]);

        Serial.print("Xmm: ");
        Serial.println(resp[servoPos]);

        Serial.print("Ymm: ");
        Serial.println(resp[eggPos]);

        Serial.print("PEN: ");
        Serial.println(resp[penPos]);

        return;
    }
}

I2CStatusMsg Executor::status() {
    unsigned long reqTime = millis();
    int tries = 0;

    if (reqTime - lastStsTime < lastStsTTL) {
        return lastSts;
    }

    Wire.requestFrom(8, 1);
    while (!Wire.available()) {
        if (millis() - reqTime > i2cTimeout && tries < i2cTimeoutTries) {
            Wire.requestFrom(8, 1);
            tries++;
            reqTime = millis();
        } else {
            return I2CStatusMsg::TIMEOUT;
        }
        delay(1);
    }
    int resp = Wire.read();

    lastStsTime = millis();
    lastSts = static_cast<I2CStatusMsg>(resp);

    return lastSts;
}