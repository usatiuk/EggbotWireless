#include "EEPROM.h"

#include "Config.h"
#include "ConfigManager.h"

const std::unordered_map<std::string, std::string> defaults{
    {{"wifiMode", "ap"}, {"wifiSSID", defSSID}, {"wifiPass", defPass}}};

/*
    Max string length is 25
    Pairs are stored in EEPROM as 50 chars (25 chars for one string)
    First EEPROM pair is current status: "good", "reset"
    Last pair is "end"
*/

ConfigManager::ConfigManager() { map.reserve(20); }

void ConfigManager::update(std::string prop, std::string val) {
    if (prop == "good" || prop == "reset" || prop == "end") {
        return;
    }

    auto valp = map.find(prop);
    if (valp != map.end()) {
        map.erase(valp);
    }
    map.emplace(prop, val);

    saved = false;
}

std::string ConfigManager::get(std::string prop) {
    auto valp = map.find(prop);
    if (valp != map.end()) {
        return valp->second;
    } else {
        return "";
    }
}

void ConfigManager::load() {
    saved = true;
    unsigned int cur = 0;
    char curStr[25];
    bool val = false;
    memset(curStr, 0, 25);

    EEPROM.begin(2048);

    for (; cur < 25; cur++) {
        curStr[cur] = EEPROM.read(cur);
    }

    if (strcmp(curStr, "good") != 0) {
        map = defaults;
        EEPROM.end();
        configManager.write();
        return;
    }

    cur = 50;

    char prop[25];
    do {
        for (int i = 0; i < 25; cur++ && i++) {
            curStr[i] = EEPROM.read(cur);
        }

        if (strcmp(curStr, "end") == 0 && !val) {
            break;
        }

        if (!val) {
            strncpy(prop, curStr, 25);
            val = true;
        } else {
            map.emplace(prop, curStr);
            val = false;
        }
    } while (strcmp(curStr, "end") != 0 && cur < EEPROM.length());

    EEPROM.end();
}

void ConfigManager::write() {
    saved = true;

    int curPair = 0;
    char buffer[2048];
    memset(buffer, 0, 2048);

    strncpy(buffer, "good", 25);
    curPair++;

    EEPROM.begin(2048);

    for (auto &val : map) {
        strncpy(&buffer[curPair * 50], val.first.c_str(), 25);
        strncpy(&buffer[(curPair * 50) + 25], val.second.c_str(), 25);
        curPair++;
    }

    strncpy(&buffer[curPair * 50], "end", 25);
    curPair++;

    for (int i = 0; i < curPair * 50; i++) {
        EEPROM.write(i, buffer[i]);
    }
    EEPROM.commit();
    EEPROM.end();
}

void ConfigManager::reset() {
    char buffer[50];
    memset(buffer, 0, 50);
    strncpy(buffer, "reset", 50);
    EEPROM.begin(50);

    for (unsigned int i = 0; i < sizeof(buffer); i++) {
        EEPROM.write(i, buffer[i]);
    }

    EEPROM.commit();
    EEPROM.end();
}

bool ConfigManager::isSaved() { return saved; }

ConfigManager configManager;