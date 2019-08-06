#include "Executor.h"
#include "Config.h"
#include "common/Commands.h"
#include "common/Util.h"

Executor executor;

Executor::Executor() {}

void Executor::execCommand(Command command) {
    if (command.type == CommandType::unk) {
        return;
    }

    byte buffer[i2cCmdBytes];
    command.toBytes(buffer);
    Wire.beginTransmission(8);
    Wire.write(buffer, i2cCmdBytes);
    Wire.endTransmission();

    if (command.type == CommandType::G01 || command.type == CommandType::G00) {
        return;
    }
}

Status Executor::status() {
    Status status;
    unsigned int curByte;
    byte rxBuffer[i2cStsBytes];

    Wire.requestFrom(8, i2cStsBytes);
    while (Wire.available() > 0) {
        char c = Wire.read();
        rxBuffer[curByte] = c;
        curByte++;
        if (curByte == i2cStsBytes) {
            curByte = 0;
            status.fromBytes(rxBuffer);
        }
    }

    return status;
}