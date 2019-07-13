#ifndef PARSER_H
#define PARSER_H

#include <Arduino.h>
#include "common/Commands.h"

Command parseGCode(String gcode);

#endif // PARSER_H