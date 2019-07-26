#ifndef WIFI_MANAGER_H
#define WIFI_MANAGER_H

#include <Arduino.h>
#include <ESP8266WiFi.h>

#include "ConfigManager.h"

class WiFiManager
{
private:
public:
    WiFiManager();
    void init();
};

extern WiFiManager wifiManager;

#endif // WIFI_MANAGER_H