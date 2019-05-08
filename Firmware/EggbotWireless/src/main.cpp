#include <Arduino.h>
#include "Stepper.h"
#include "Pen.h"

Stepper eggStepper(D1, D2, D3, D4, 4076, 6);
Stepper servoStepper(D5, D6, D7, D8, 4076, 6);
Pen pen(D0, 180, 80);

void setup() {
    Serial.begin(115200);
}

void loop() {
    Serial.print("Hello!\n");
    delay(1000);
}