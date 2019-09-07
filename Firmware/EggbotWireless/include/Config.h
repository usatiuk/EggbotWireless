#ifndef CONFIG_H
#define CONFIG_H

constexpr int pin12v{5};
constexpr int i2cTimeout{10}, i2cTimeoutTries{10};
constexpr int lastStsTTL{10};

constexpr float battR1{12}, battR2{2.2};

constexpr unsigned long powerTimeout{20000}, powerStartupDelay{100};

constexpr const char *defSSID{"eggbot"}, *defPass{"eggbotwi"},
    *defName{"eggbot"};

#endif  // CONFIG_H