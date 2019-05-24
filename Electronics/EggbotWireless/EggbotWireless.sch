EESchema Schematic File Version 4
LIBS:EggbotWireless-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L EggbotWireless-rescue:LTC4054ES5-4.2-Battery_Management-Catfi-rescue U6
U 1 1 5B8AD038
P 7950 1200
F 0 "U6" H 8300 1050 50  0000 L CNN
F 1 "LTC4054ES5-4.2" H 8300 950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 7950 700 50  0001 C CNN
F 3 "http://cds.linear.com/docs/en/datasheet/405442xf.pdf" H 7950 1100 50  0001 C CNN
	1    7950 1200
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:USB_B_Micro-Connector-Catfi-rescue J3
U 1 1 5B8AD2F1
P 6550 1000
F 0 "J3" H 6605 1467 50  0000 C CNN
F 1 "USB_B_Micro" H 6605 1376 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 6700 950 50  0001 C CNN
F 3 "~" H 6700 950 50  0001 C CNN
	1    6550 1000
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:DW01-DW01-Catfi-rescue U3
U 1 1 5B8ADE59
P 9950 800
F 0 "U3" H 9950 915 50  0000 C CNN
F 1 "DW01" H 9950 824 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 9900 1000 50  0001 C CNN
F 3 "" H 9950 800 50  0001 C CNN
	1    9950 800 
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:FS8205A-8205-Catfi-rescue U4
U 1 1 5B8B0568
P 10400 1600
F 0 "U4" H 10400 1715 50  0000 C CNN
F 1 "FS8205A" H 10400 1624 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 10290 1715 50  0001 C CNN
F 3 "" H 10290 1715 50  0001 C CNN
	1    10400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1950 9900 1350
$Comp
L EggbotWireless-rescue:Conn_01x02_Female-Connector-Catfi-rescue J1
U 1 1 5B8B09A7
P 8800 1050
F 0 "J1" H 8694 725 50  0000 C CNN
F 1 "BATT" H 8694 816 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8800 1050 50  0001 C CNN
F 3 "~" H 8800 1050 50  0001 C CNN
	1    8800 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 1950 10050 1950
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R2
U 1 1 5B8B0C86
P 9200 950
F 0 "R2" V 8993 950 50  0000 C CNN
F 1 "100" V 9084 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 950 50  0001 C CNN
F 3 "~" H 9200 950 50  0001 C CNN
	1    9200 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 950  9050 950 
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C4
U 1 1 5B8B0F0A
P 9400 1250
F 0 "C4" H 9600 1200 50  0000 R CNN
F 1 "100nf" H 9750 1300 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9438 1100 50  0001 C CNN
F 3 "~" H 9400 1250 50  0001 C CNN
	1    9400 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 1050 9000 1500
Wire Wire Line
	9000 1500 9400 1500
Wire Wire Line
	9400 950  9350 950 
Wire Wire Line
	9400 950  9400 1100
Wire Wire Line
	9400 950  9600 950 
Connection ~ 9400 950 
Wire Wire Line
	9400 1500 9400 1400
Wire Wire Line
	9400 1500 9550 1500
Wire Wire Line
	9550 1050 9600 1050
Connection ~ 9400 1500
Wire Wire Line
	10050 1350 11000 1350
Wire Wire Line
	11000 1350 11000 1900
Wire Wire Line
	11000 1900 10750 1900
Wire Wire Line
	9400 1850 9400 1500
Wire Wire Line
	9050 800  9050 950 
Connection ~ 9050 950 
Wire Wire Line
	9550 1050 9550 1500
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R3
U 1 1 5B8B26F4
P 10550 1050
F 0 "R3" V 10343 1050 50  0000 C CNN
F 1 "1K" V 10434 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1050 50  0001 C CNN
F 3 "~" H 10550 1050 50  0001 C CNN
	1    10550 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 1050 10750 1050
Wire Wire Line
	10400 1050 10300 1050
Wire Wire Line
	10750 1050 10750 1100
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R7
U 1 1 5B8B3636
P 7400 1500
F 0 "R7" H 7470 1546 50  0000 L CNN
F 1 "1K6" H 7470 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7330 1500 50  0001 C CNN
F 3 "~" H 7400 1500 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1300 7400 1300
Wire Wire Line
	8350 1200 8400 1200
Wire Wire Line
	8400 1200 8400 1100
Wire Wire Line
	7950 800  7950 900 
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C8
U 1 1 5B8B4740
P 7200 950
F 0 "C8" H 7100 850 50  0000 R CNN
F 1 "100nf" H 7100 950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7238 800 50  0001 C CNN
F 3 "~" H 7200 950 50  0001 C CNN
	1    7200 950 
	-1   0    0    1   
$EndComp
Connection ~ 7200 800 
Wire Wire Line
	7200 800  7950 800 
Wire Wire Line
	7400 1300 7400 1350
Wire Wire Line
	7400 1650 7400 1700
Wire Wire Line
	7400 1700 7700 1700
Wire Wire Line
	7700 1700 7700 1750
Wire Wire Line
	7700 1700 7950 1700
Connection ~ 7700 1700
Wire Wire Line
	6450 1400 6450 1450
Wire Wire Line
	6550 1450 6550 1400
Wire Wire Line
	7950 1600 7950 1700
Wire Wire Line
	9400 1850 10050 1850
Wire Wire Line
	10750 1800 10850 1800
Wire Wire Line
	6950 1100 6850 1100
Wire Wire Line
	6850 1000 7000 1000
Wire Wire Line
	7700 2400 7700 2450
Text GLabel 7950 800  1    50   Input ~ 0
VBUS
Text GLabel 8400 3150 2    50   Input ~ 0
TXD_USB
Text GLabel 8400 3250 2    50   Input ~ 0
RXD_USB
Text GLabel 8400 2950 2    50   Input ~ 0
DTR_USB
Text GLabel 8400 3350 2    50   Input ~ 0
RTS_USB
$Comp
L EggbotWireless-rescue:Conn_01x04_Female-Connector-Catfi-rescue J2
U 1 1 5BDF6356
P 5650 950
F 0 "J2" H 5677 926 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5677 835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5650 950 50  0001 C CNN
F 3 "~" H 5650 950 50  0001 C CNN
	1    5650 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 750  5850 750 
Wire Wire Line
	5950 850  5850 850 
Wire Wire Line
	5850 950  5950 950 
Wire Wire Line
	6000 1100 6000 1050
Wire Wire Line
	6000 1050 5850 1050
Wire Wire Line
	6850 800  7200 800 
$Comp
L power:+12V #PWR0101
U 1 1 5CEAFAB1
P 5950 850
F 0 "#PWR0101" H 5950 700 50  0001 C CNN
F 1 "+12V" V 5965 978 50  0000 L CNN
F 2 "" H 5950 850 50  0001 C CNN
F 3 "" H 5950 850 50  0001 C CNN
	1    5950 850 
	0    1    1    0   
$EndComp
$Comp
L Device:L L2
U 1 1 5CE6FFE2
P 10200 2550
F 0 "L2" V 10390 2550 50  0000 C CNN
F 1 "10uH" V 10299 2550 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 10200 2550 50  0001 C CNN
F 3 "~" H 10200 2550 50  0001 C CNN
	1    10200 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5CE79D1A
P 10750 2700
F 0 "C5" H 10865 2746 50  0000 L CNN
F 1 "10uF" H 10865 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10788 2550 50  0001 C CNN
F 3 "~" H 10750 2700 50  0001 C CNN
	1    10750 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5CE7AF72
P 9150 2800
F 0 "C2" H 9265 2846 50  0000 L CNN
F 1 "4.7uF" H 9265 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9188 2650 50  0001 C CNN
F 3 "~" H 9150 2800 50  0001 C CNN
	1    9150 2800
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+BATT-power-Catfi-rescue #PWR0102
U 1 1 5CE7B594
P 9150 2550
F 0 "#PWR0102" H 9150 2400 50  0001 C CNN
F 1 "+BATT" H 9165 2723 50  0000 C CNN
F 2 "" H 9150 2550 50  0001 C CNN
F 3 "" H 9150 2550 50  0001 C CNN
	1    9150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2650 9150 2550
Wire Wire Line
	9400 2550 9150 2550
Connection ~ 9150 2550
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0103
U 1 1 5CE87F5F
P 9400 3050
F 0 "#PWR0103" H 9400 2800 50  0001 C CNN
F 1 "GND" H 9405 2877 50  0000 C CNN
F 2 "" H 9400 3050 50  0001 C CNN
F 3 "" H 9400 3050 50  0001 C CNN
	1    9400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2950 9400 2950
Wire Wire Line
	9400 2950 9400 3050
Connection ~ 9400 2950
Wire Wire Line
	9400 2950 9700 2950
$Comp
L Regulator_Switching:TPS62203DBV U1
U 1 1 5CE8E5BF
P 9700 2750
F 0 "U1" H 9700 3175 50  0000 C CNN
F 1 "TPS62203DBV" H 9700 3084 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9750 2600 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps62201.pdf" H 9700 2850 50  0001 C CNN
	1    9700 2750
	1    0    0    -1  
$EndComp
Connection ~ 9400 2550
Wire Wire Line
	9400 2550 9400 2750
Wire Wire Line
	10350 2550 10500 2550
Wire Wire Line
	10500 2550 10500 2750
Wire Wire Line
	10500 2550 10750 2550
Connection ~ 10500 2550
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0104
U 1 1 5CE9FC68
P 10750 2850
F 0 "#PWR0104" H 10750 2600 50  0001 C CNN
F 1 "GND" H 10755 2677 50  0000 C CNN
F 2 "" H 10750 2850 50  0001 C CNN
F 3 "" H 10750 2850 50  0001 C CNN
	1    10750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0108
U 1 1 5CEAF5B3
P 9050 800
F 0 "#PWR0108" H 9050 650 50  0001 C CNN
F 1 "+BATT" H 9065 973 50  0000 C CNN
F 2 "" H 9050 800 50  0001 C CNN
F 3 "" H 9050 800 50  0001 C CNN
	1    9050 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0109
U 1 1 5CEAFD2D
P 8400 1100
F 0 "#PWR0109" H 8400 950 50  0001 C CNN
F 1 "+BATT" H 8415 1273 50  0000 C CNN
F 2 "" H 8400 1100 50  0001 C CNN
F 3 "" H 8400 1100 50  0001 C CNN
	1    8400 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5CEB1C70
P 5950 950
F 0 "#PWR0110" H 5950 800 50  0001 C CNN
F 1 "+3.3V" V 5965 1078 50  0000 L CNN
F 2 "" H 5950 950 50  0001 C CNN
F 3 "" H 5950 950 50  0001 C CNN
	1    5950 950 
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR0111
U 1 1 5CEB270B
P 6000 1100
F 0 "#PWR0111" H 6000 950 50  0001 C CNN
F 1 "+BATT" H 6015 1273 50  0000 C CNN
F 2 "" H 6000 1100 50  0001 C CNN
F 3 "" H 6000 1100 50  0001 C CNN
	1    6000 1100
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0112
U 1 1 5CEB2B6C
P 6000 750
F 0 "#PWR0112" H 6000 500 50  0001 C CNN
F 1 "GND" H 6005 577 50  0000 C CNN
F 2 "" H 6000 750 50  0001 C CNN
F 3 "" H 6000 750 50  0001 C CNN
	1    6000 750 
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0113
U 1 1 5CEB3E29
P 10750 1100
F 0 "#PWR0113" H 10750 850 50  0001 C CNN
F 1 "GND" H 10755 927 50  0000 C CNN
F 2 "" H 10750 1100 50  0001 C CNN
F 3 "" H 10750 1100 50  0001 C CNN
	1    10750 1100
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0114
U 1 1 5CEB412D
P 10850 1800
F 0 "#PWR0114" H 10850 1550 50  0001 C CNN
F 1 "GND" H 10855 1627 50  0000 C CNN
F 2 "" H 10850 1800 50  0001 C CNN
F 3 "" H 10850 1800 50  0001 C CNN
	1    10850 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 1450 6500 1450
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0115
U 1 1 5CEB4640
P 7700 1750
F 0 "#PWR0115" H 7700 1500 50  0001 C CNN
F 1 "GND" H 7705 1577 50  0000 C CNN
F 2 "" H 7700 1750 50  0001 C CNN
F 3 "" H 7700 1750 50  0001 C CNN
	1    7700 1750
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0116
U 1 1 5CEB52D8
P 7200 1100
F 0 "#PWR0116" H 7200 850 50  0001 C CNN
F 1 "GND" H 7205 927 50  0000 C CNN
F 2 "" H 7200 1100 50  0001 C CNN
F 3 "" H 7200 1100 50  0001 C CNN
	1    7200 1100
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0117
U 1 1 5CEB5818
P 6500 1450
F 0 "#PWR0117" H 6500 1200 50  0001 C CNN
F 1 "GND" H 6505 1277 50  0000 C CNN
F 2 "" H 6500 1450 50  0001 C CNN
F 3 "" H 6500 1450 50  0001 C CNN
	1    6500 1450
	1    0    0    -1  
$EndComp
Connection ~ 6500 1450
Wire Wire Line
	6500 1450 6550 1450
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0119
U 1 1 5CEB63A0
P 7700 2400
F 0 "#PWR0119" H 7700 2150 50  0001 C CNN
F 1 "GND" H 7705 2227 50  0000 C CNN
F 2 "" H 7700 2400 50  0001 C CNN
F 3 "" H 7700 2400 50  0001 C CNN
	1    7700 2400
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 5CEB99B1
P 10750 2400
F 0 "#PWR0122" H 10750 2250 50  0001 C CNN
F 1 "+3.3V" H 10765 2573 50  0000 C CNN
F 2 "" H 10750 2400 50  0001 C CNN
F 3 "" H 10750 2400 50  0001 C CNN
	1    10750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 2400 10750 2550
Connection ~ 10750 2550
Wire Wire Line
	10050 2550 10000 2550
Wire Wire Line
	10000 2750 10500 2750
$Comp
L power:+12V #PWR0124
U 1 1 5CF327F6
P 10550 4450
F 0 "#PWR0124" H 10550 4300 50  0001 C CNN
F 1 "+12V" V 10565 4578 50  0000 L CNN
F 2 "" H 10550 4450 50  0001 C CNN
F 3 "" H 10550 4450 50  0001 C CNN
	1    10550 4450
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5D005B12
P 9950 4450
F 0 "D1" H 9950 4234 50  0000 C CNN
F 1 "D_Schottky" H 9950 4325 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 9950 4450 50  0001 C CNN
F 3 "~" H 9950 4450 50  0001 C CNN
	1    9950 4450
	-1   0    0    1   
$EndComp
Text GLabel 7550 1200 0    50   Input ~ 0
CHRG
$Comp
L EggbotWireless-rescue:+BATT-power-Catfi-rescue #PWR0123
U 1 1 5CEE2D8C
P 9900 3850
F 0 "#PWR0123" H 9900 3700 50  0001 C CNN
F 1 "+BATT" H 9915 4023 50  0000 C CNN
F 2 "" H 9900 3850 50  0001 C CNN
F 3 "" H 9900 3850 50  0001 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1100 1550 950 
Wire Wire Line
	1550 1400 1550 1500
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R1
U 1 1 5CEB31EF
P 1550 1250
F 0 "R1" H 1620 1296 50  0000 L CNN
F 1 "10K" H 1620 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1480 1250 50  0001 C CNN
F 3 "~" H 1550 1250 50  0001 C CNN
	1    1550 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 950  2250 950 
Connection ~ 2150 950 
Wire Wire Line
	2150 1200 2150 950 
Connection ~ 1950 950 
Wire Wire Line
	2250 950  2250 1200
Wire Wire Line
	1950 950  2150 950 
Wire Wire Line
	1550 950  1950 950 
$Comp
L power:+3.3V #PWR0107
U 1 1 5CEB7CB7
P 1950 950
F 0 "#PWR0107" H 1950 800 50  0001 C CNN
F 1 "+3.3V" H 1965 1123 50  0000 C CNN
F 2 "" H 1950 950 50  0001 C CNN
F 3 "" H 1950 950 50  0001 C CNN
	1    1950 950 
	1    0    0    -1  
$EndComp
Text GLabel 2900 6500 2    50   Input ~ 0
CHRG
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0121
U 1 1 5CEB8B9D
P 2300 7400
F 0 "#PWR0121" H 2300 7150 50  0001 C CNN
F 1 "GND" H 2305 7227 50  0000 C CNN
F 2 "" H 2300 7400 50  0001 C CNN
F 3 "" H 2300 7400 50  0001 C CNN
	1    2300 7400
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0120
U 1 1 5CEB8519
P 3300 7300
F 0 "#PWR0120" H 3300 7050 50  0001 C CNN
F 1 "GND" H 3305 7127 50  0000 C CNN
F 2 "" H 3300 7300 50  0001 C CNN
F 3 "" H 3300 7300 50  0001 C CNN
	1    3300 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7000 3300 7000
Connection ~ 3350 6200
Wire Wire Line
	3300 6200 3350 6200
Wire Wire Line
	3300 6100 3300 6200
Wire Wire Line
	2900 6100 3300 6100
Wire Wire Line
	3400 6200 3350 6200
Connection ~ 3350 5900
Wire Wire Line
	3350 5900 3850 5900
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R11
U 1 1 5B93047F
P 3350 6050
F 0 "R11" H 3420 6096 50  0000 L CNN
F 1 "10K" H 3420 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 6050 50  0001 C CNN
F 3 "~" H 3350 6050 50  0001 C CNN
	1    3350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5900 2650 5900
Wire Wire Line
	3850 5900 3850 6000
Connection ~ 2200 5900
Wire Wire Line
	2200 5900 2300 5900
Wire Wire Line
	2200 5950 2200 5900
Wire Wire Line
	2050 5950 2200 5950
Connection ~ 1700 5950
Wire Wire Line
	1700 5950 1750 5950
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R9
U 1 1 5B9161F8
P 1900 5950
F 0 "R9" H 1970 5996 50  0000 L CNN
F 1 "10K" H 1970 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1830 5950 50  0001 C CNN
F 3 "~" H 1900 5950 50  0001 C CNN
	1    1900 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 5950 1700 6100
Wire Wire Line
	1250 5950 1700 5950
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R10
U 1 1 5B90C394
P 3300 7150
F 0 "R10" H 3370 7196 50  0000 L CNN
F 1 "10K" H 3370 7105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 7150 50  0001 C CNN
F 3 "~" H 3300 7150 50  0001 C CNN
	1    3300 7150
	-1   0    0    1   
$EndComp
Text GLabel 1250 5950 0    50   Input ~ 0
RTS_USB
Wire Wire Line
	2900 6300 3850 6300
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R12
U 1 1 5B902F77
P 3850 6150
F 0 "R12" H 3920 6196 50  0000 L CNN
F 1 "10K" H 3920 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 6150 50  0001 C CNN
F 3 "~" H 3850 6150 50  0001 C CNN
	1    3850 6150
	1    0    0    -1  
$EndComp
Connection ~ 2300 5900
Wire Wire Line
	1400 5900 2200 5900
Wire Wire Line
	1400 6000 1400 5900
Wire Wire Line
	1700 6300 1400 6300
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R8
U 1 1 5B8FD6B6
P 1400 6150
F 0 "R8" H 1470 6196 50  0000 L CNN
F 1 "10K" H 1470 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 6150 50  0001 C CNN
F 3 "~" H 1400 6150 50  0001 C CNN
	1    1400 6150
	-1   0    0    1   
$EndComp
Text GLabel 3400 6200 2    50   Input ~ 0
DTR_USB
Text GLabel 2900 6200 2    50   Input ~ 0
RXD_USB
Text GLabel 2900 6400 2    50   Input ~ 0
TXD_USB
$Comp
L EggbotWireless-rescue:ESP-12E-RF_Module-Catfi-rescue U7
U 1 1 5B8CFF90
P 2300 6700
F 0 "U7" H 2500 7550 50  0000 C CNN
F 1 "ESP-12E" H 2600 7450 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 2300 6700 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 1950 6800 50  0001 C CNN
	1    2300 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5CED63CD
P 1150 1800
F 0 "Y1" V 1196 1669 50  0000 R CNN
F 1 "16MHz" V 1105 1669 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 1150 1800 50  0001 C CNN
F 3 "~" H 1150 1800 50  0001 C CNN
	1    1150 1800
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C3
U 1 1 5CFF6BFA
P 850 1950
F 0 "C3" H 750 1850 50  0000 R CNN
F 1 "22pF" H 750 1950 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 888 1800 50  0001 C CNN
F 3 "~" H 850 1950 50  0001 C CNN
	1    850  1950
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C1
U 1 1 5CFF6FC7
P 850 1650
F 0 "C1" H 750 1550 50  0000 R CNN
F 1 "22pF" H 750 1650 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 888 1500 50  0001 C CNN
F 3 "~" H 850 1650 50  0001 C CNN
	1    850  1650
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 1650 1150 1650
Wire Wire Line
	1000 1950 1150 1950
Wire Wire Line
	1550 1700 1400 1700
Wire Wire Line
	1400 1700 1400 1650
Wire Wire Line
	1400 1650 1150 1650
Connection ~ 1150 1650
Wire Wire Line
	1150 1950 1400 1950
Wire Wire Line
	1400 1950 1400 1900
Wire Wire Line
	1400 1900 1550 1900
Connection ~ 1150 1950
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0125
U 1 1 5D01A79F
P 2150 5200
F 0 "#PWR0125" H 2150 4950 50  0001 C CNN
F 1 "GND" H 2155 5027 50  0000 C CNN
F 2 "" H 2150 5200 50  0001 C CNN
F 3 "" H 2150 5200 50  0001 C CNN
	1    2150 5200
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0126
U 1 1 5D01B96B
P 700 1800
F 0 "#PWR0126" H 700 1550 50  0001 C CNN
F 1 "GND" H 705 1627 50  0000 C CNN
F 2 "" H 700 1800 50  0001 C CNN
F 3 "" H 700 1800 50  0001 C CNN
	1    700  1800
	0    1    1    0   
$EndComp
Wire Wire Line
	700  1650 700  1800
Wire Wire Line
	700  1950 700  1800
Connection ~ 700  1800
Wire Wire Line
	3200 600  1200 600 
Wire Wire Line
	1200 600  1200 1500
Wire Wire Line
	1200 1500 1550 1500
$Comp
L power:+3.3V #PWR0129
U 1 1 5D0C7E91
P 2300 5900
F 0 "#PWR0129" H 2300 5750 50  0001 C CNN
F 1 "+3.3V" H 2315 6073 50  0000 C CNN
F 2 "" H 2300 5900 50  0001 C CNN
F 3 "" H 2300 5900 50  0001 C CNN
	1    2300 5900
	1    0    0    -1  
$EndComp
Text GLabel 2900 6600 2    50   Input ~ 0
12V_SWITCH
Text GLabel 8800 5150 3    50   Input ~ 0
12V_SWITCH
$Comp
L LM3478:LM3478 U8
U 1 1 5CEB0107
P 8600 4700
F 0 "U8" H 8600 5215 50  0000 C CNN
F 1 "LM3478" H 8600 5124 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 8450 5450 50  0001 C CNN
F 3 "" H 8700 4700 50  0001 C CNN
	1    8600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C12
U 1 1 5CEB5ACE
P 9650 4000
F 0 "C12" H 9768 4046 50  0000 L CNN
F 1 "220uF" H 9768 3955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10.5" H 9688 3850 50  0001 C CNN
F 3 "~" H 9650 4000 50  0001 C CNN
	1    9650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3850 9650 3850
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0130
U 1 1 5CEBC902
P 9650 4150
F 0 "#PWR0130" H 9650 3900 50  0001 C CNN
F 1 "GND" H 9655 3977 50  0000 C CNN
F 2 "" H 9650 4150 50  0001 C CNN
F 3 "" H 9650 4150 50  0001 C CNN
	1    9650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3850 9050 4450
Connection ~ 9650 3850
$Comp
L Device:L L1
U 1 1 5CEC224D
P 9450 4450
F 0 "L1" V 9400 4450 50  0000 C CNN
F 1 "3.3uH" V 9300 4450 50  0000 C CNN
F 2 "Inductor_SMD:L_7.3x7.3_H4.5" H 9450 4450 50  0001 C CNN
F 3 "~" H 9450 4450 50  0001 C CNN
	1    9450 4450
	0    -1   -1   0   
$EndComp
Connection ~ 9050 4450
Wire Wire Line
	9050 4450 9300 4450
Wire Wire Line
	9050 3850 9300 3850
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5CEE2D00
P 9600 4750
F 0 "Q1" H 9806 4796 50  0000 L CNN
F 1 "FDD8447L" H 9806 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 9800 4850 50  0001 C CNN
F 3 "~" H 9600 4750 50  0001 C CNN
	1    9600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4450 9700 4450
Wire Wire Line
	9700 4450 9700 4550
Connection ~ 9700 4450
Wire Wire Line
	9700 4450 9800 4450
Wire Wire Line
	9400 4750 9050 4750
$Comp
L Device:R R15
U 1 1 5CEF81B9
P 9700 5350
F 0 "R15" H 9770 5396 50  0000 L CNN
F 1 "0.006" H 9770 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9630 5350 50  0001 C CNN
F 3 "~" H 9700 5350 50  0001 C CNN
	1    9700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5200 9700 5100
$Comp
L Device:R R14
U 1 1 5CF00015
P 9500 5100
F 0 "R14" V 9707 5100 50  0000 C CNN
F 1 "100" V 9616 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9430 5100 50  0001 C CNN
F 3 "~" H 9500 5100 50  0001 C CNN
	1    9500 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 5100 9700 5100
Connection ~ 9700 5100
Wire Wire Line
	9700 5100 9700 4950
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C11
U 1 1 5CF0B9D2
P 9300 5350
F 0 "C11" H 9200 5250 50  0000 R CNN
F 1 "10pF" H 9200 5350 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9338 5200 50  0001 C CNN
F 3 "~" H 9300 5350 50  0001 C CNN
	1    9300 5350
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0131
U 1 1 5CF12A08
P 9500 5550
F 0 "#PWR0131" H 9500 5300 50  0001 C CNN
F 1 "GND" H 9505 5377 50  0000 C CNN
F 2 "" H 9500 5550 50  0001 C CNN
F 3 "" H 9500 5550 50  0001 C CNN
	1    9500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5550 9700 5550
Wire Wire Line
	9700 5550 9700 5500
Connection ~ 9500 5550
Wire Wire Line
	9300 5550 9300 5500
Wire Wire Line
	9300 5550 9500 5550
Wire Wire Line
	9300 5200 9300 5100
Wire Wire Line
	9300 5100 9350 5100
Wire Wire Line
	8000 4100 8000 4450
Wire Wire Line
	8000 4450 8150 4450
Wire Wire Line
	9300 5100 9200 5100
Wire Wire Line
	9200 5100 9200 4100
Wire Wire Line
	9200 4100 8000 4100
Connection ~ 9300 5100
$Comp
L Device:CP C13
U 1 1 5CF5EC34
P 10400 4600
F 0 "C13" H 10518 4646 50  0000 L CNN
F 1 "220uF" H 10518 4555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10.5" H 10438 4450 50  0001 C CNN
F 3 "~" H 10400 4600 50  0001 C CNN
	1    10400 4600
	1    0    0    -1  
$EndComp
Connection ~ 10400 4450
Wire Wire Line
	10400 4450 10550 4450
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0132
U 1 1 5CF5F1C3
P 10400 4750
F 0 "#PWR0132" H 10400 4500 50  0001 C CNN
F 1 "GND" H 10405 4577 50  0000 C CNN
F 2 "" H 10400 4750 50  0001 C CNN
F 3 "" H 10400 4750 50  0001 C CNN
	1    10400 4750
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0133
U 1 1 5CF5F90A
P 8600 5050
F 0 "#PWR0133" H 8600 4800 50  0001 C CNN
F 1 "GND" H 8605 4877 50  0000 C CNN
F 2 "" H 8600 5050 50  0001 C CNN
F 3 "" H 8600 5050 50  0001 C CNN
	1    8600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5050 8600 5050
Wire Wire Line
	8650 5050 8600 5050
Connection ~ 8600 5050
$Comp
L Device:R R16
U 1 1 5CF6C873
P 10200 5400
F 0 "R16" H 10270 5446 50  0000 L CNN
F 1 "9.1K" H 10270 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10130 5400 50  0001 C CNN
F 3 "~" H 10200 5400 50  0001 C CNN
	1    10200 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CF6CC3B
P 7850 5150
F 0 "R5" H 7920 5196 50  0000 L CNN
F 1 "1K" H 7920 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 5150 50  0001 C CNN
F 3 "~" H 7850 5150 50  0001 C CNN
	1    7850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4450 10200 4450
Wire Wire Line
	10200 4450 10200 5250
Connection ~ 10200 4450
Wire Wire Line
	10200 4450 10400 4450
Wire Wire Line
	10200 5550 10200 5850
Wire Wire Line
	8100 5850 8100 4750
Wire Wire Line
	8150 4750 8100 4750
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0134
U 1 1 5CF9E0D7
P 7500 5450
F 0 "#PWR0134" H 7500 5200 50  0001 C CNN
F 1 "GND" H 7505 5277 50  0000 C CNN
F 2 "" H 7500 5450 50  0001 C CNN
F 3 "" H 7500 5450 50  0001 C CNN
	1    7500 5450
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C6
U 1 1 5CFEB412
P 7200 5150
F 0 "C6" H 7100 5050 50  0000 R CNN
F 1 "3300pF" H 7100 5150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7238 5000 50  0001 C CNN
F 3 "~" H 7200 5150 50  0001 C CNN
	1    7200 5150
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C9
U 1 1 5CFEC020
P 7500 4850
F 0 "C9" H 7400 4750 50  0000 R CNN
F 1 "68nF" H 7400 4850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7538 4700 50  0001 C CNN
F 3 "~" H 7500 4850 50  0001 C CNN
	1    7500 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5CFEC7EA
P 7500 5150
F 0 "R4" H 7570 5196 50  0000 L CNN
F 1 "1.8K" H 7570 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 5150 50  0001 C CNN
F 3 "~" H 7500 5150 50  0001 C CNN
	1    7500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5450 7500 5350
Wire Wire Line
	7500 5350 7200 5350
Wire Wire Line
	7200 5350 7200 5300
Wire Wire Line
	7500 5300 7500 5350
Connection ~ 7500 5350
Wire Wire Line
	8100 5850 10200 5850
Wire Wire Line
	7500 4700 7500 4600
Wire Wire Line
	7500 4600 8150 4600
Wire Wire Line
	7500 4600 7200 4600
Wire Wire Line
	7200 4600 7200 5000
Connection ~ 7500 4600
Wire Wire Line
	7850 5000 7850 4750
Wire Wire Line
	7850 4750 8100 4750
Connection ~ 8100 4750
Wire Wire Line
	7500 5350 7850 5350
Wire Wire Line
	7850 5350 7850 5300
$Comp
L Device:R R13
U 1 1 5D0DA168
P 9100 5400
F 0 "R13" H 9300 5350 50  0000 R CNN
F 1 "27K" H 9300 5450 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9030 5400 50  0001 C CNN
F 3 "~" H 9100 5400 50  0001 C CNN
	1    9100 5400
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0135
U 1 1 5D0DAD88
P 9100 5550
F 0 "#PWR0135" H 9100 5300 50  0001 C CNN
F 1 "GND" H 9105 5377 50  0000 C CNN
F 2 "" H 9100 5550 50  0001 C CNN
F 3 "" H 9100 5550 50  0001 C CNN
	1    9100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4600 9100 4600
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C10
U 1 1 5D0F9EDE
P 9300 4000
F 0 "C10" H 9550 4000 50  0000 R CNN
F 1 "100nf" H 9550 4100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9338 3850 50  0001 C CNN
F 3 "~" H 9300 4000 50  0001 C CNN
	1    9300 4000
	1    0    0    -1  
$EndComp
Connection ~ 9300 3850
Wire Wire Line
	9300 3850 9650 3850
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0136
U 1 1 5D0FBB70
P 9300 4150
F 0 "#PWR0136" H 9300 3900 50  0001 C CNN
F 1 "GND" H 9305 3977 50  0000 C CNN
F 2 "" H 9300 4150 50  0001 C CNN
F 3 "" H 9300 4150 50  0001 C CNN
	1    9300 4150
	1    0    0    -1  
$EndComp
Text GLabel 2900 6700 2    50   Input ~ 0
SDA
Text GLabel 2900 6800 2    50   Input ~ 0
SCL
Text GLabel 2750 3400 2    50   Input ~ 0
SDA
Text GLabel 2750 3300 2    50   Input ~ 0
SCL
Text GLabel 1100 5250 3    50   Input ~ 0
SDA
Text GLabel 800  5250 3    50   Input ~ 0
SCL
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R17
U 1 1 5CE89921
P 800 5100
F 0 "R17" H 870 5146 50  0000 L CNN
F 1 "10K" H 870 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 730 5100 50  0001 C CNN
F 3 "~" H 800 5100 50  0001 C CNN
	1    800  5100
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R18
U 1 1 5CE8A6EA
P 1100 5100
F 0 "R18" H 1170 5146 50  0000 L CNN
F 1 "10K" H 1170 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1030 5100 50  0001 C CNN
F 3 "~" H 1100 5100 50  0001 C CNN
	1    1100 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0137
U 1 1 5CEA2524
P 800 4950
F 0 "#PWR0137" H 800 4800 50  0001 C CNN
F 1 "+3.3V" H 815 5123 50  0000 C CNN
F 2 "" H 800 4950 50  0001 C CNN
F 3 "" H 800 4950 50  0001 C CNN
	1    800  4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0138
U 1 1 5CEA2E4D
P 1100 4950
F 0 "#PWR0138" H 1100 4800 50  0001 C CNN
F 1 "+3.3V" H 1115 5123 50  0000 C CNN
F 2 "" H 1100 4950 50  0001 C CNN
F 3 "" H 1100 4950 50  0001 C CNN
	1    1100 4950
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C15
U 1 1 5CEA3834
P 2650 5750
F 0 "C15" H 2850 5700 50  0000 R CNN
F 1 "100nf" H 3000 5800 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 5600 50  0001 C CNN
F 3 "~" H 2650 5750 50  0001 C CNN
	1    2650 5750
	1    0    0    -1  
$EndComp
Connection ~ 2650 5900
Wire Wire Line
	2650 5900 3350 5900
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0139
U 1 1 5CEA4C35
P 2650 5600
F 0 "#PWR0139" H 2650 5350 50  0001 C CNN
F 1 "GND" H 2655 5427 50  0000 C CNN
F 2 "" H 2650 5600 50  0001 C CNN
F 3 "" H 2650 5600 50  0001 C CNN
	1    2650 5600
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C14
U 1 1 5CEA5583
P 2400 950
F 0 "C14" H 2600 900 50  0000 R CNN
F 1 "100nf" H 2750 1000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2438 800 50  0001 C CNN
F 3 "~" H 2400 950 50  0001 C CNN
	1    2400 950 
	0    1    1    0   
$EndComp
Connection ~ 2250 950 
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0140
U 1 1 5CEA740F
P 2550 950
F 0 "#PWR0140" H 2550 700 50  0001 C CNN
F 1 "GND" H 2555 777 50  0000 C CNN
F 2 "" H 2550 950 50  0001 C CNN
F 3 "" H 2550 950 50  0001 C CNN
	1    2550 950 
	0    -1   -1   0   
$EndComp
Connection ~ 1550 1500
$Comp
L MCU_Microchip_ATmega:ATmega16A-AU U2
U 1 1 5CE9956C
P 2150 3200
F 0 "U2" H 2450 1250 50  0000 C CNN
F 1 "ATmega16A-AU" H 2700 1150 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 2150 3200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8154-8-bit-AVR-ATmega16A_Datasheet.pdf" H 2150 3200 50  0001 C CNN
	1    2150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2800 3000 3100
Wire Wire Line
	3000 3100 2750 3100
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0128
U 1 1 5D03F937
P 3700 2400
F 0 "#PWR0128" H 3700 2150 50  0001 C CNN
F 1 "GND" H 3705 2227 50  0000 C CNN
F 2 "" H 3700 2400 50  0001 C CNN
F 3 "" H 3700 2400 50  0001 C CNN
	1    3700 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 600  3200 2700
Wire Wire Line
	3200 2900 2750 2900
Wire Wire Line
	3200 2800 3000 2800
$Comp
L power:+3.3V #PWR0127
U 1 1 5D03EF52
P 3700 3300
F 0 "#PWR0127" H 3700 3150 50  0001 C CNN
F 1 "+3.3V" H 3715 3473 50  0000 C CNN
F 2 "" H 3700 3300 50  0001 C CNN
F 3 "" H 3700 3300 50  0001 C CNN
	1    3700 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3000 2750 3000
$Comp
L Connector:AVR-ISP-6 J4
U 1 1 5D029176
P 3600 2800
F 0 "J4" H 3321 2896 50  0000 R CNN
F 1 "AVR-ISP-6" H 3321 2805 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 3350 2850 50  0001 C CNN
F 3 " ~" H 2325 2250 50  0001 C CNN
	1    3600 2800
	-1   0    0    1   
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar M1
U 1 1 5CF4B0D1
P 6100 4250
F 0 "M1" H 6288 4374 50  0000 L CNN
F 1 "Stepper_Motor_bipolar" H 6288 4283 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 6110 4240 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 6110 4240 50  0001 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar M2
U 1 1 5CF4C34B
P 6150 5400
F 0 "M2" H 6338 5524 50  0000 L CNN
F 1 "Stepper_Motor_bipolar" H 6338 5433 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 6160 5390 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 6160 5390 50  0001 C CNN
	1    6150 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 5CF7E398
P 3200 4300
F 0 "J5" H 3228 4326 50  0000 L CNN
F 1 "Conn_01x03_Female" H 3228 4235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3200 4300 50  0001 C CNN
F 3 "~" H 3200 4300 50  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4200 2750 4200
Wire Wire Line
	2750 4300 3000 4300
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0141
U 1 1 5CFA1C15
P 3000 4400
F 0 "#PWR0141" H 3000 4150 50  0001 C CNN
F 1 "GND" H 3005 4227 50  0000 C CNN
F 2 "" H 3000 4400 50  0001 C CNN
F 3 "" H 3000 4400 50  0001 C CNN
	1    3000 4400
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:INTERFACE-CP2102-GMR(QFN28)-CP2102-GMR-Catfi-rescue U5
U 1 1 5B8BF3CB
P 7600 3250
F 0 "U5" V 6700 3650 50  0000 C CNN
F 1 "CP2102-GMR" V 6800 3850 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_5x5mm_P0.5mm_EP3.35x3.35mm" H 7600 3250 50  0001 L BNN
F 3 "" H 7600 3250 50  0001 L BNN
F 4 "VFQFN-28 Vishay Siliconix" H 7600 3250 50  0001 L BNN "Field4"
F 5 "CP2102-GMR" H 7600 3250 50  0001 L BNN "Field5"
F 6 "None" H 7600 3250 50  0001 L BNN "Field6"
F 7 "Unavailable" H 7600 3250 50  0001 L BNN "Field7"
F 8 "Silicon" H 7600 3250 50  0001 L BNN "Field8"
	1    7600 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2250 7400 2450
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0118
U 1 1 5CEB5E0A
P 6650 2550
F 0 "#PWR0118" H 6650 2300 50  0001 C CNN
F 1 "GND" H 6655 2377 50  0000 C CNN
F 2 "" H 6650 2550 50  0001 C CNN
F 3 "" H 6650 2550 50  0001 C CNN
	1    6650 2550
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C7
U 1 1 5B940767
P 6650 2400
F 0 "C7" H 6850 2350 50  0000 R CNN
F 1 "100nf" H 7000 2450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6688 2250 50  0001 C CNN
F 3 "~" H 6650 2400 50  0001 C CNN
	1    6650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1100 6950 2150
Wire Wire Line
	7500 2450 7500 2150
Wire Wire Line
	7500 2150 6950 2150
Wire Wire Line
	7600 2100 7600 2450
Wire Wire Line
	7000 1000 7000 2100
Wire Wire Line
	7000 2100 7600 2100
Wire Wire Line
	7300 2450 7300 2250
Wire Wire Line
	7300 2250 7400 2250
Wire Wire Line
	6500 2250 6650 2250
Connection ~ 7300 2250
Connection ~ 6650 2250
Wire Wire Line
	6650 2250 7300 2250
Text GLabel 6800 2950 0    50   Input ~ 0
VBUS
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R6
U 1 1 5B8E01EC
P 6650 3050
F 0 "R6" H 6720 3096 50  0000 L CNN
F 1 "10K" H 6720 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 3050 50  0001 C CNN
F 3 "~" H 6650 3050 50  0001 C CNN
	1    6650 3050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5CEA1104
P 6500 3050
F 0 "#PWR0105" H 6500 2900 50  0001 C CNN
F 1 "+3.3V" V 6515 3178 50  0000 L CNN
F 2 "" H 6500 3050 50  0001 C CNN
F 3 "" H 6500 3050 50  0001 C CNN
	1    6500 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5CEAAF94
P 6500 2250
F 0 "#PWR0106" H 6500 2100 50  0001 C CNN
F 1 "+3.3V" V 6515 2378 50  0000 L CNN
F 2 "" H 6500 2250 50  0001 C CNN
F 3 "" H 6500 2250 50  0001 C CNN
	1    6500 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 5150 9100 5150
Wire Wire Line
	9100 4600 9100 5150
Connection ~ 9100 5150
Wire Wire Line
	9100 5150 9100 5250
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A1
U 1 1 5CE88FAE
P 5050 4150
F 0 "A1" H 5050 4931 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5050 4840 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5250 3350 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5150 3850 50  0001 C CNN
	1    5050 4150
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A2
U 1 1 5CE8A6D5
P 5050 5850
F 0 "A2" H 5050 6631 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5050 6540 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5250 5050 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5150 5550 50  0001 C CNN
	1    5050 5850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
