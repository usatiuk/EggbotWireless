import serial
import os
import sys

if len(sys.argv) != 3:
    print("Not 2 arguments")
    exit()

gcode = sys.argv[1]
if not os.path.isfile(gcode):
    print("File doesn't exist!")
    exit()

ser = serial.Serial()
ser.baudrate = 115200
ser.port = sys.argv[2]
ser.open()

if not ser.is_open:
    print("Can't open port")
    exit()

gcodef = open(gcode, "r")
for line in gcodef:
    print(line)
    ser.write(line.encode())
    response = ser.readline().decode("utf-8").strip()
    if response != "OK":
        print("Error: " + response)
        exit()

ser.close()
gcodef.close()
