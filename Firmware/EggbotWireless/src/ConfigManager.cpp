#include "EEPROM.h"

#include "ConfigManager.h"

ConfigManager::ConfigManager() { map.reserve(20); }

void ConfigManager::update(std::string &prop, std::string &val) {
    auto valp = map.find(prop);
    if (valp != map.end()) {
        map.erase(valp);
    }
    map.emplace(prop, val);
}

std::string ConfigManager::get(std::string &prop) {
    auto valp = map.find(prop);
    if (valp != map.end()) {
        return valp->second;
    } else {
        return "";
    }
}

void ConfigManager::load() {}

ConfigManager configManager;