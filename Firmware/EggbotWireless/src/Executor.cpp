#include "Executor.h"

Executor executor;

Executor::Executor() {}

void Executor::execCommand(Command command) {
    if (command.type != CommandType::unk) {
        Wire.beginTransmission(8);
        byte buffer[7][sizeof(float)];
        command.toBytes(buffer[0]);
        for (int i = 0; i < 7; i++) {
            Wire.write(buffer[i], sizeof(float));
        }
        Wire.endTransmission();
    } else {
        Serial.println("OK");
        return;
    }

    if (command.type == CommandType::G01 || command.type == CommandType::G00) {
        return;
    }

    if (command.type == CommandType::M99) {
        delay(10);
        Wire.requestFrom(8, 5 * sizeof(float));

        float resp[5];
        byte buffer[sizeof(float)];

        for (int i = 0; i < 5; i++) {
            for (unsigned int j = 0; j < sizeof(float); j++) {
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
        if (millis() - reqTime > 10 && tries < 10) {
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