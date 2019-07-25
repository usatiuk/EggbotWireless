#ifndef PARSER_H
#define PARSER_H

#include <Arduino.h>
#include "common/Commands.h"

Command parseGCode(std::string gcode);

#endif // PARSER_H