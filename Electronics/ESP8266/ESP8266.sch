EESchema Schematic File Version 4
EELAYER 30 0
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
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF97116
P 5550 4250
F 0 "#PWR?" H 5550 4000 50  0001 C CNN
F 1 "GND" H 5555 4077 50  0000 C CNN
F 2 "" H 5550 4250 50  0001 C CNN
F 3 "" H 5550 4250 50  0001 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF9711C
P 6550 4150
F 0 "#PWR?" H 6550 3900 50  0001 C CNN
F 1 "GND" H 6555 3977 50  0000 C CNN
F 2 "" H 6550 4150 50  0001 C CNN
F 3 "" H 6550 4150 50  0001 C CNN
	1    6550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3850 6550 3850
Wire Wire Line
	6550 3050 6650 3050
Wire Wire Line
	6550 2950 6550 3050
Wire Wire Line
	6150 2950 6550 2950
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF97126
P 6650 2900
F 0 "R?" H 6720 2946 50  0000 L CNN
F 1 "10K" H 6720 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 2900 50  0001 C CNN
F 3 "~" H 6650 2900 50  0001 C CNN
	1    6650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2800 5450 2550
Wire Wire Line
	5300 2800 5450 2800
Wire Wire Line
	4950 2800 5000 2800
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF9712F
P 5150 2800
F 0 "R?" H 5220 2846 50  0000 L CNN
F 1 "10K" H 5220 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 2800 50  0001 C CNN
F 3 "~" H 5150 2800 50  0001 C CNN
	1    5150 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2800 4950 2950
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF97136
P 6550 4000
F 0 "R?" H 6620 4046 50  0000 L CNN
F 1 "10K" H 6620 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 4000 50  0001 C CNN
F 3 "~" H 6550 4000 50  0001 C CNN
	1    6550 4000
	-1   0    0    1   
$EndComp
Text GLabel 7150 4200 0    50   Input ~ 0
RTS_USB
Wire Wire Line
	6150 3150 7100 3150
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF9713E
P 7100 3000
F 0 "R?" H 7170 3046 50  0000 L CNN
F 1 "10K" H 7170 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 3000 50  0001 C CNN
F 3 "~" H 7100 3000 50  0001 C CNN
	1    7100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3150 4400 3150
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF97145
P 4400 3000
F 0 "R?" H 4470 3046 50  0000 L CNN
F 1 "10K" H 4470 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4330 3000 50  0001 C CNN
F 3 "~" H 4400 3000 50  0001 C CNN
	1    4400 3000
	-1   0    0    1   
$EndComp
Text GLabel 7150 3500 0    50   Input ~ 0
DTR_USB
Text GLabel 6150 3050 2    50   Input ~ 0
RXD_USB
Text GLabel 6150 3250 2    50   Input ~ 0
TXD_USB
$Comp
L EggbotWireless-rescue:ESP-12E-RF_Module-Catfi-rescue U?
U 1 1 5FF9714E
P 5550 3550
F 0 "U?" H 5750 4400 50  0000 C CNN
F 1 "ESP-12E" H 5850 4300 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 5550 3550 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 5200 3650 50  0001 C CNN
	1    5550 3550
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR?
U 1 1 5FF97154
P 5550 2550
F 0 "#PWR?" H 5550 2400 50  0001 C CNN
F 1 "+3.3V" H 5565 2723 50  0000 C CNN
F 2 "" H 5550 2550 50  0001 C CNN
F 3 "" H 5550 2550 50  0001 C CNN
	1    5550 2550
	1    0    0    -1  
$EndComp
Text GLabel 6150 3450 2    50   Input ~ 0
PWR_SWITCH
Text GLabel 6150 3550 2    50   Input ~ 0
SDA
Text GLabel 6150 3650 2    50   Input ~ 0
SCL
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C?
U 1 1 5FF9715D
P 5900 2400
F 0 "C?" H 6100 2350 50  0000 R CNN
F 1 "100nf" H 6250 2450 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5938 2250 50  0001 C CNN
F 3 "~" H 5900 2400 50  0001 C CNN
	1    5900 2400
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF97163
P 5900 2250
F 0 "#PWR?" H 5900 2000 50  0001 C CNN
F 1 "GND" H 5905 2077 50  0000 C CNN
F 2 "" H 5900 2250 50  0001 C CNN
F 3 "" H 5900 2250 50  0001 C CNN
	1    5900 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 2550 5550 2550
Connection ~ 5450 2550
Wire Wire Line
	5550 2750 5550 2550
Connection ~ 5550 2550
Wire Wire Line
	5550 2550 5900 2550
Wire Wire Line
	5900 2550 6650 2550
Wire Wire Line
	6650 2550 6650 2750
Connection ~ 5900 2550
Wire Wire Line
	6650 2550 7100 2550
Wire Wire Line
	7100 2550 7100 2850
Connection ~ 6650 2550
Wire Wire Line
	4400 2550 4400 2850
Wire Wire Line
	4400 2550 5450 2550
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF97176
P 7300 4200
F 0 "R?" H 7370 4246 50  0000 L CNN
F 1 "12K" H 7370 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 4200 50  0001 C CNN
F 3 "~" H 7300 4200 50  0001 C CNN
	1    7300 4200
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF9717C
P 7300 3500
F 0 "R?" H 7370 3546 50  0000 L CNN
F 1 "12K" H 7370 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 3500 50  0001 C CNN
F 3 "~" H 7300 3500 50  0001 C CNN
	1    7300 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 4200 7450 4200
Wire Wire Line
	7450 3500 7550 3500
Wire Wire Line
	7150 3500 7150 3850
Wire Wire Line
	7150 3850 7850 3850
Wire Wire Line
	7850 3850 7850 4000
Wire Wire Line
	7150 4200 7150 3950
Wire Wire Line
	7150 3950 7700 3950
Wire Wire Line
	7700 3950 7700 3700
Wire Wire Line
	7700 3700 7850 3700
Text GLabel 7850 4400 2    50   Input ~ 0
GPIO0
Text GLabel 7850 3300 2    50   Input ~ 0
ESPRST
Text GLabel 4950 2800 0    50   Input ~ 0
ESPRST
Text GLabel 6650 3050 2    50   Input ~ 0
GPIO0
$Comp
L EggbotWireless-rescue:Q_NPN_BEC-Device Q?
U 1 1 5FF9718F
P 7750 3500
F 0 "Q?" H 7940 3546 50  0000 L CNN
F 1 "S8050" H 7940 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7950 3600 50  0001 C CNN
F 3 "~" H 7750 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:Q_NPN_BEC-Device Q?
U 1 1 5FF97195
P 7750 4200
F 0 "Q?" H 7940 4154 50  0000 L CNN
F 1 "S8050" H 7940 4245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7950 4300 50  0001 C CNN
F 3 "~" H 7750 4200 50  0001 C CNN
	1    7750 4200
	1    0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF9719B
P 4450 3350
F 0 "R?" H 4520 3396 50  0000 L CNN
F 1 "12K" H 4520 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 3350 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF971A1
P 4700 3600
F 0 "R?" H 4770 3646 50  0000 L CNN
F 1 "2.2K" H 4770 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4630 3600 50  0001 C CNN
F 3 "~" H 4700 3600 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3450 4700 3350
Wire Wire Line
	4700 3350 4950 3350
Wire Wire Line
	4600 3350 4700 3350
Connection ~ 4700 3350
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF971AB
P 4700 3750
F 0 "#PWR?" H 4700 3500 50  0001 C CNN
F 1 "GND" H 4705 3577 50  0000 C CNN
F 2 "" H 4700 3750 50  0001 C CNN
F 3 "" H 4700 3750 50  0001 C CNN
	1    4700 3750
	1    0    0    -1  
$EndComp
Text GLabel 4300 3350 0    50   Input ~ 0
BATT
Text GLabel 6150 3350 2    50   Input ~ 0
SLEEP
$EndSCHEMATC
