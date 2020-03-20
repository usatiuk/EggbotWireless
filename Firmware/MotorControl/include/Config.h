#ifndef CONFIG_H
#define CONFIG_H

constexpr unsigned int stsUpdDelay{10};

constexpr float defRPM{2}, defEggLength{60}, defEggDia{45}, xLimit{85};
constexpr float defYDegPerMM{360 / (PI * defEggDia)},
    defXDegPerMM{xLimit / defEggLength};

constexpr int timer2Div {8};
constexpr int ticksPerSecond{F_CPU / (timer2Div * 255)};

#endif