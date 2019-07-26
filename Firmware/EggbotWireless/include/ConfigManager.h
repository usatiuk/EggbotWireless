#ifndef CONFIG_MANAGER_H
#define CONFIG_MANAGER_H

#include <Arduino.h>
#include <string>
#include <unordered_map>

extern const std::unordered_map<std::string, std::string> defaults; 

class ConfigManager {
   private:
    bool saved = false;

   public:
    std::unordered_map<std::string, std::string> map;
    ConfigManager();
    std::string get(std::string &prop);
    void update(std::string &prop, std::string &val);
    void load();
    void write();
    void reset();
    bool isSaved();
};

extern ConfigManager configManager;

#endif  // CONFIG_MANAGER_H