#include "WiFiManager.h"

#include "Config.h"

WiFiManager::WiFiManager(){};

void WiFiManager::init() {
    if (configManager.get("wifiMode") == "client") {
        WiFi.begin(configManager.get("wifiSSID").c_str(),
                   configManager.get("wifiPass").c_str());
        int status = WiFi.status();
        while (status != WL_CONNECTED && status != WL_NO_SSID_AVAIL &&
               status != WL_CONNECT_FAILED) {
            delay(500);
            status = WiFi.status();
        }
        if (status == WL_NO_SSID_AVAIL || status == WL_CONNECT_FAILED) {
            Serial.println("WiFi connection failed");
            configManager.update("wifiMode", "ap");
            configManager.update("wifiSSID", defSSID);
            configManager.update("wifiPass", defPass);
        }
    }

    if (configManager.get("wifiMode") == "ap") {
        WiFi.reconnect();
        Serial.println("Starting WiFi AP");
        WiFi.softAP(configManager.get("wifiSSID").c_str(),
                    configManager.get("wifiPass").c_str());
    }
}

WiFiManager wifiManager;