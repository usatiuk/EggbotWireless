#ifndef CONFIG_H
#define CONFIG_H

constexpr int pin12v{5};
constexpr int i2cTimeout{10}, i2cTimeoutTries{10};
constexpr int lastStsTTL{1};
constexpr unsigned long powerTimeout{20000}, powerStartupDelay{100};

constexpr const char *defSSID{"eggbot"}, *defPass{"eggbotwi"};

#endif  // CONFIG_H