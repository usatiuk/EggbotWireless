#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Ticker.h>
#include <Wire.h>
#include <queue>
#include <string>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

#include "ConfigManager.h"
#include "Executor.h"
#include "GCodeParser.h"
#include "Globals.h"
#include "LocalExecutor.h"
#include "Power.h"
#include "WiFiManager.h"
#include "WebAPI.h"
#include "QueueManager.h"
#include "common/Commands.h"

void setup() {
    Serial.begin(115200);
    Wire.begin(12, 13);
    Wire.setClock(10000);
    power.enable12v();
    configManager.load();
    wifiManager.init();

    MDNS.begin(configManager.get("name").c_str());
    webApi.init();
}

void serialLoop() {
    static std::string inString;
    while (Serial.available() > 0) {
        char inChar = Serial.read();

        // CR breaks some things, so we completely ignore it
        if (inChar == '\r') {
            break;
        }

        if (inChar == '\n') {
            queueManager.putCommand(inString);
            inString = "";
        } else {
            inString += inChar;
        }
    }
}

void loop() {
    serialLoop();
    queueManager.loopRoutine();

    MDNS.update();
    webApi.loopRoutine();
}
