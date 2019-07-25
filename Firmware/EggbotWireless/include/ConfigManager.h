#ifndef CONFIG_MANAGER_H
#define CONFIG_MANAGER_H

#include <Arduino.h>
#include <string>
#include <unordered_map>

class ConfigManager {
   private:
   public:
    std::unordered_map<std::string, std::string> map;
    ConfigManager();
    std::string get(std::string &prop);
    void update(std::string &prop, std::string &val);
    void load();
};

extern ConfigManager configManager;

#endif  // CONFIG_MANAGER_H