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
L EggbotWireless-rescue:L-Device L2
U 1 1 5CE6FFE2
P 10150 2650
F 0 "L2" V 10340 2650 50  0000 C CNN
F 1 "10uH" V 10249 2650 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 10150 2650 50  0001 C CNN
F 3 "~" H 10150 2650 50  0001 C CNN
	1    10150 2650
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C5
U 1 1 5CE79D1A
P 10900 2800
F 0 "C5" H 11015 2846 50  0000 L CNN
F 1 "10uF" H 11015 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10938 2650 50  0001 C CNN
F 3 "~" H 10900 2800 50  0001 C CNN
	1    10900 2800
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C2
U 1 1 5CE7AF72
P 9100 2900
F 0 "C2" H 9215 2946 50  0000 L CNN
F 1 "4.7uF" H 9215 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9138 2750 50  0001 C CNN
F 3 "~" H 9100 2900 50  0001 C CNN
	1    9100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2750 9100 2650
Wire Wire Line
	9350 2650 9100 2650
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0103
U 1 1 5CE87F5F
P 9350 3150
F 0 "#PWR0103" H 9350 2900 50  0001 C CNN
F 1 "GND" H 9355 2977 50  0000 C CNN
F 2 "" H 9350 3150 50  0001 C CNN
F 3 "" H 9350 3150 50  0001 C CNN
	1    9350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3050 9350 3050
Wire Wire Line
	9350 3050 9350 3150
Connection ~ 9350 3050
Wire Wire Line
	9350 3050 9650 3050
$Comp
L EggbotWireless-rescue:TPS62203DBV-Regulator_Switching U1
U 1 1 5CE8E5BF
P 9650 2850
F 0 "U1" H 9650 3275 50  0000 C CNN
F 1 "TPS62203DBV" H 9650 3184 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9700 2700 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps62201.pdf" H 9650 2950 50  0001 C CNN
	1    9650 2850
	1    0    0    -1  
$EndComp
Connection ~ 9350 2650
Wire Wire Line
	9350 2650 9350 2850
Wire Wire Line
	10300 2650 10350 2650
Wire Wire Line
	10350 2650 10350 2850
Connection ~ 10350 2650
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0104
U 1 1 5CE9FC68
P 10900 2950
F 0 "#PWR0104" H 10900 2700 50  0001 C CNN
F 1 "GND" H 10905 2777 50  0000 C CNN
F 2 "" H 10900 2950 50  0001 C CNN
F 3 "" H 10900 2950 50  0001 C CNN
	1    10900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 2500 10900 2650
Connection ~ 10900 2650
Wire Wire Line
	10000 2650 9950 2650
Wire Wire Line
	9950 2850 10350 2850
$Comp
L EggbotWireless-rescue:D_Schottky-Device D1
U 1 1 5D005B12
P 9950 4450
F 0 "D1" H 9950 4234 50  0000 C CNN
F 1 "SSB43L" H 9950 4325 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 9950 4450 50  0001 C CNN
F 3 "~" H 9950 4450 50  0001 C CNN
	1    9950 4450
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R1
U 1 1 5CEB31EF
P 2500 2650
F 0 "R1" H 2570 2696 50  0000 L CNN
F 1 "10K" H 2570 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2430 2650 50  0001 C CNN
F 3 "~" H 2500 2650 50  0001 C CNN
	1    2500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 800  1650 800 
Connection ~ 1550 800 
Wire Wire Line
	1550 1050 1550 800 
Wire Wire Line
	1650 800  1650 1050
Wire Wire Line
	1550 750  1550 800 
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0107
U 1 1 5CEB7CB7
P 1550 750
F 0 "#PWR0107" H 1550 600 50  0001 C CNN
F 1 "+3.3V" H 1565 923 50  0000 C CNN
F 2 "" H 1550 750 50  0001 C CNN
F 3 "" H 1550 750 50  0001 C CNN
	1    1550 750 
	1    0    0    -1  
$EndComp
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
Wire Wire Line
	3300 6200 3400 6200
Wire Wire Line
	3300 6100 3300 6200
Wire Wire Line
	2900 6100 3300 6100
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R11
U 1 1 5B93047F
P 3400 6050
F 0 "R11" H 3470 6096 50  0000 L CNN
F 1 "10K" H 3470 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 6050 50  0001 C CNN
F 3 "~" H 3400 6050 50  0001 C CNN
	1    3400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5950 2200 5700
Wire Wire Line
	2050 5950 2200 5950
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
Text GLabel 3900 7350 0    50   Input ~ 0
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
Wire Wire Line
	1700 6300 1150 6300
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R8
U 1 1 5B8FD6B6
P 1150 6150
F 0 "R8" H 1220 6196 50  0000 L CNN
F 1 "10K" H 1220 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1080 6150 50  0001 C CNN
F 3 "~" H 1150 6150 50  0001 C CNN
	1    1150 6150
	-1   0    0    1   
$EndComp
Text GLabel 3900 6650 0    50   Input ~ 0
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
L EggbotWireless-rescue:Crystal-Device Y1
U 1 1 5CED63CD
P 2700 1500
F 0 "Y1" V 2746 1369 50  0000 R CNN
F 1 "16MHz" V 2655 1369 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2700 1500 50  0001 C CNN
F 3 "~" H 2700 1500 50  0001 C CNN
	1    2700 1500
	1    0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C3
U 1 1 5CFF6BFA
P 2550 1200
F 0 "C3" H 2450 1100 50  0000 R CNN
F 1 "22pF" H 2450 1200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2588 1050 50  0001 C CNN
F 3 "~" H 2550 1200 50  0001 C CNN
	1    2550 1200
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C1
U 1 1 5CFF6FC7
P 2850 1200
F 0 "C1" H 2750 1100 50  0000 R CNN
F 1 "22pF" H 2750 1200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2888 1050 50  0001 C CNN
F 3 "~" H 2850 1200 50  0001 C CNN
	1    2850 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 1350 2850 1500
Wire Wire Line
	2550 1350 2550 1500
Connection ~ 2850 1500
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0125
U 1 1 5D01A79F
P 1550 4050
F 0 "#PWR0125" H 1550 3800 50  0001 C CNN
F 1 "GND" H 1555 3877 50  0000 C CNN
F 2 "" H 1550 4050 50  0001 C CNN
F 3 "" H 1550 4050 50  0001 C CNN
	1    1550 4050
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0126
U 1 1 5D01B96B
P 2700 1050
F 0 "#PWR0126" H 2700 800 50  0001 C CNN
F 1 "GND" H 2705 877 50  0000 C CNN
F 2 "" H 2700 1050 50  0001 C CNN
F 3 "" H 2700 1050 50  0001 C CNN
	1    2700 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 1050 2700 1050
Wire Wire Line
	2550 1050 2700 1050
Connection ~ 2700 1050
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0129
U 1 1 5D0C7E91
P 2300 5700
F 0 "#PWR0129" H 2300 5550 50  0001 C CNN
F 1 "+3.3V" H 2315 5873 50  0000 C CNN
F 2 "" H 2300 5700 50  0001 C CNN
F 3 "" H 2300 5700 50  0001 C CNN
	1    2300 5700
	1    0    0    -1  
$EndComp
Text GLabel 2900 6600 2    50   Input ~ 0
PWR_SWITCH
Text GLabel 8200 5850 1    50   Input ~ 0
PWR_SWITCH
$Comp
L EggbotWireless-rescue:L-Device L1
U 1 1 5CEC224D
P 9450 4450
F 0 "L1" V 9400 4450 50  0000 C CNN
F 1 "6.8uH" V 9300 4450 50  0000 C CNN
F 2 "Inductor_SMD:L_7.3x7.3_H4.5" H 9450 4450 50  0001 C CNN
F 3 "~" H 9450 4450 50  0001 C CNN
	1    9450 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 4450 9300 4450
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
L EggbotWireless-rescue:R-Device R15
U 1 1 5CEF81B9
P 9700 5350
F 0 "R15" H 9770 5396 50  0000 L CNN
F 1 "0.008" H 9770 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9630 5350 50  0001 C CNN
F 3 "~" H 9700 5350 50  0001 C CNN
	1    9700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5200 9700 5100
$Comp
L EggbotWireless-rescue:R-Device R14
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
	8000 4450 8150 4450
Wire Wire Line
	9300 5100 9200 5100
Wire Wire Line
	9200 5100 9200 4100
Connection ~ 9300 5100
$Comp
L EggbotWireless-rescue:CP-Device C13
U 1 1 5CF5EC34
P 10400 4600
F 0 "C13" H 10518 4646 50  0000 L CNN
F 1 "220uF" H 10518 4555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 10438 4450 50  0001 C CNN
F 3 "~" H 10400 4600 50  0001 C CNN
	1    10400 4600
	1    0    0    -1  
$EndComp
Connection ~ 10400 4450
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
L EggbotWireless-rescue:R-Device R16
U 1 1 5CF6C873
P 10200 5400
F 0 "R16" H 10270 5446 50  0000 L CNN
F 1 "8.45K" H 10270 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10130 5400 50  0001 C CNN
F 3 "~" H 10200 5400 50  0001 C CNN
	1    10200 5400
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device R5
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
	10200 5550 10200 6300
Wire Wire Line
	8100 6300 8100 4750
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
L EggbotWireless-rescue:R-Device R4
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
	8100 6300 10200 6300
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
L EggbotWireless-rescue:R-Device R13
U 1 1 5D0DA168
P 9100 5350
F 0 "R13" H 9300 5300 50  0000 R CNN
F 1 "27K" H 9300 5400 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9030 5350 50  0001 C CNN
F 3 "~" H 9100 5350 50  0001 C CNN
	1    9100 5350
	-1   0    0    1   
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
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0136
U 1 1 5D0FBB70
P 9300 4200
F 0 "#PWR0136" H 9300 3950 50  0001 C CNN
F 1 "GND" H 9305 4027 50  0000 C CNN
F 2 "" H 9300 4200 50  0001 C CNN
F 3 "" H 9300 4200 50  0001 C CNN
	1    9300 4200
	1    0    0    -1  
$EndComp
Text GLabel 2900 6700 2    50   Input ~ 0
SDA
Text GLabel 2900 6800 2    50   Input ~ 0
SCL
Text GLabel 2150 2650 2    50   Input ~ 0
SDA
Text GLabel 2150 2750 2    50   Input ~ 0
SCL
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C15
U 1 1 5CEA3834
P 2650 5550
F 0 "C15" H 2850 5500 50  0000 R CNN
F 1 "100nf" H 3000 5600 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 5400 50  0001 C CNN
F 3 "~" H 2650 5550 50  0001 C CNN
	1    2650 5550
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0139
U 1 1 5CEA4C35
P 2650 5400
F 0 "#PWR0139" H 2650 5150 50  0001 C CNN
F 1 "GND" H 2655 5227 50  0000 C CNN
F 2 "" H 2650 5400 50  0001 C CNN
F 3 "" H 2650 5400 50  0001 C CNN
	1    2650 5400
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C14
U 1 1 5CEA5583
P 1850 800
F 0 "C14" H 2100 750 50  0000 R CNN
F 1 "100nf" H 2150 850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1888 650 50  0001 C CNN
F 3 "~" H 1850 800 50  0001 C CNN
	1    1850 800 
	0    1    1    0   
$EndComp
Connection ~ 1650 800 
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0140
U 1 1 5CEA740F
P 2050 900
F 0 "#PWR0140" H 2050 650 50  0001 C CNN
F 1 "GND" H 2055 727 50  0000 C CNN
F 2 "" H 2050 900 50  0001 C CNN
F 3 "" H 2050 900 50  0001 C CNN
	1    2050 900 
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0128
U 1 1 5D03F937
P 3650 2250
F 0 "#PWR0128" H 3650 2000 50  0001 C CNN
F 1 "GND" H 3655 2077 50  0000 C CNN
F 2 "" H 3650 2250 50  0001 C CNN
F 3 "" H 3650 2250 50  0001 C CNN
	1    3650 2250
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0127
U 1 1 5D03EF52
P 3650 3150
F 0 "#PWR0127" H 3650 3000 50  0001 C CNN
F 1 "+3.3V" H 3665 3323 50  0000 C CNN
F 2 "" H 3650 3150 50  0001 C CNN
F 3 "" H 3650 3150 50  0001 C CNN
	1    3650 3150
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:AVR-ISP-6-Connector J4
U 1 1 5D029176
P 3550 2650
F 0 "J4" H 3271 2746 50  0000 R CNN
F 1 "AVR-ISP-6" H 3271 2655 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 3300 2700 50  0001 C CNN
F 3 " ~" H 2275 2100 50  0001 C CNN
	1    3550 2650
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:Conn_01x03_Female-Connector J5
U 1 1 5CF7E398
P 2850 3150
F 0 "J5" H 2878 3176 50  0000 L CNN
F 1 "Conn_01x03_Female" H 2878 3085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2850 3150 50  0001 C CNN
F 3 "~" H 2850 3150 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 2150 3050
Wire Wire Line
	2150 3150 2650 3150
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0141
U 1 1 5CFA1C15
P 2650 3250
F 0 "#PWR0141" H 2650 3000 50  0001 C CNN
F 1 "GND" H 2655 3077 50  0000 C CNN
F 2 "" H 2650 3250 50  0001 C CNN
F 3 "" H 2650 3250 50  0001 C CNN
	1    2650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3650 5900 3650
Wire Wire Line
	6100 3650 6100 3600
Wire Wire Line
	6100 3600 5450 3600
Wire Wire Line
	5450 3600 5450 3750
Wire Wire Line
	5450 3750 5350 3750
Wire Wire Line
	5700 3850 5350 3850
Wire Wire Line
	5350 3850 5350 3950
Wire Wire Line
	5700 4050 5350 4050
Wire Wire Line
	5850 5500 5400 5500
Wire Wire Line
	6050 5500 6050 5400
Wire Wire Line
	6050 5400 5500 5400
Wire Wire Line
	5500 5400 5500 5600
Wire Wire Line
	5500 5600 5400 5600
Wire Wire Line
	5650 5700 5500 5700
Wire Wire Line
	5500 5700 5500 5800
Wire Wire Line
	5500 5800 5400 5800
Wire Wire Line
	5650 5900 5400 5900
$Comp
L EggbotWireless-rescue:+12V-power #PWR0142
U 1 1 5CF0714E
P 5000 5000
F 0 "#PWR0142" H 5000 4850 50  0001 C CNN
F 1 "+12V" V 5015 5128 50  0000 L CNN
F 2 "" H 5000 5000 50  0001 C CNN
F 3 "" H 5000 5000 50  0001 C CNN
	1    5000 5000
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:+12V-power #PWR0143
U 1 1 5CF093C7
P 4950 3150
F 0 "#PWR0143" H 4950 3000 50  0001 C CNN
F 1 "+12V" V 4965 3278 50  0000 L CNN
F 2 "" H 4950 3150 50  0001 C CNN
F 3 "" H 4950 3150 50  0001 C CNN
	1    4950 3150
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0144
U 1 1 5CF0A85A
P 5050 6400
F 0 "#PWR0144" H 5050 6150 50  0001 C CNN
F 1 "GND" H 5055 6227 50  0000 C CNN
F 2 "" H 5050 6400 50  0001 C CNN
F 3 "" H 5050 6400 50  0001 C CNN
	1    5050 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6400 5050 6400
Wire Wire Line
	5000 6400 5050 6400
Connection ~ 5050 6400
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0145
U 1 1 5CF20CA3
P 5000 4550
F 0 "#PWR0145" H 5000 4300 50  0001 C CNN
F 1 "GND" H 5005 4377 50  0000 C CNN
F 2 "" H 5000 4550 50  0001 C CNN
F 3 "" H 5000 4550 50  0001 C CNN
	1    5000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4550 5000 4550
Wire Wire Line
	4950 4550 5000 4550
Connection ~ 5000 4550
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0148
U 1 1 5CF94114
P 4600 5300
F 0 "#PWR0148" H 4600 5150 50  0001 C CNN
F 1 "+3.3V" H 4615 5473 50  0000 C CNN
F 2 "" H 4600 5300 50  0001 C CNN
F 3 "" H 4600 5300 50  0001 C CNN
	1    4600 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 5300 4600 5400
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0149
U 1 1 5CFA006C
P 4550 3450
F 0 "#PWR0149" H 4550 3300 50  0001 C CNN
F 1 "+3.3V" H 4565 3623 50  0000 C CNN
F 2 "" H 4550 3450 50  0001 C CNN
F 3 "" H 4550 3450 50  0001 C CNN
	1    4550 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3450 4550 3550
$Comp
L EggbotWireless-rescue:Motor_Servo-Motor M3
U 1 1 5CEA7A5C
P 3500 3600
F 0 "M3" H 3832 3665 50  0000 L CNN
F 1 "Motor_Servo" H 3832 3574 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3500 3410 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 3500 3410 50  0001 C CNN
	1    3500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3500 2600 3500
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0150
U 1 1 5CEB75C4
P 3200 3700
F 0 "#PWR0150" H 3200 3450 50  0001 C CNN
F 1 "GND" H 3205 3527 50  0000 C CNN
F 2 "" H 3200 3700 50  0001 C CNN
F 3 "" H 3200 3700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device R19
U 1 1 5CECA907
P 9100 5900
F 0 "R19" H 8950 5950 50  0000 C CNN
F 1 "10K" H 8950 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9030 5900 50  0001 C CNN
F 3 "~" H 9100 5900 50  0001 C CNN
	1    9100 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 4600 9100 5200
$Comp
L EggbotWireless-rescue:2N7002-Transistor_FET Q2
U 1 1 5CF2F5A0
P 8600 5850
F 0 "Q2" H 8806 5896 50  0000 L CNN
F 1 "2N7002" H 8806 5805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 8600 5850 50  0001 L CNN
	1    8600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5650 9100 5650
Wire Wire Line
	9100 5500 9100 5650
Connection ~ 9100 5650
Wire Wire Line
	9100 5650 9100 5750
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0152
U 1 1 5CFAA2C4
P 8700 6200
F 0 "#PWR0152" H 8700 5950 50  0001 C CNN
F 1 "GND" H 8705 6027 50  0000 C CNN
F 2 "" H 8700 6200 50  0001 C CNN
F 3 "" H 8700 6200 50  0001 C CNN
	1    8700 6200
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0135
U 1 1 5CEC8E18
P 9100 6050
F 0 "#PWR0135" H 9100 5900 50  0001 C CNN
F 1 "+3.3V" H 9115 6223 50  0000 C CNN
F 2 "" H 9100 6050 50  0001 C CNN
F 3 "" H 9100 6050 50  0001 C CNN
	1    9100 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 4150 4500 4150
Connection ~ 4600 5300
$Comp
L EggbotWireless-rescue:Pololu_Breakout_DRV8825-Driver_Motor A2
U 1 1 5CE8A6D5
P 5000 5600
F 0 "A2" H 5000 6381 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5000 6290 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5200 4800 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5100 5300 50  0001 C CNN
	1    5000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4150 4500 6000
Wire Wire Line
	4500 6000 4600 6000
Connection ~ 4500 4150
Wire Wire Line
	4500 4150 4550 4150
Wire Wire Line
	4400 4250 4550 4250
Wire Wire Line
	4400 6100 4600 6100
Wire Wire Line
	4350 4550 4350 6200
Wire Wire Line
	4350 6200 4600 6200
Connection ~ 4550 3450
$Comp
L EggbotWireless-rescue:Pololu_Breakout_DRV8825-Driver_Motor A1
U 1 1 5CE88FAE
P 4950 3750
F 0 "A1" H 4950 4531 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 4950 4440 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5150 2950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5050 3450 50  0001 C CNN
	1    4950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4550 4450 4550
Wire Wire Line
	4450 4550 4450 4350
Wire Wire Line
	4450 4350 4550 4350
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0146
U 1 1 5D2FA0EE
P 4150 4150
F 0 "#PWR0146" H 4150 4000 50  0001 C CNN
F 1 "+3.3V" H 4165 4323 50  0000 C CNN
F 2 "" H 4150 4150 50  0001 C CNN
F 3 "" H 4150 4150 50  0001 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4150 4100 4150
Wire Wire Line
	4100 4150 4100 4350
Wire Wire Line
	4100 4350 4050 4350
Wire Wire Line
	4050 4350 4050 4550
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0138
U 1 1 5CEA2E4D
P 1800 4900
F 0 "#PWR0138" H 1800 4750 50  0001 C CNN
F 1 "+3.3V" H 1815 5073 50  0000 C CNN
F 2 "" H 1800 4900 50  0001 C CNN
F 3 "" H 1800 4900 50  0001 C CNN
	1    1800 4900
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0137
U 1 1 5CEA2524
P 1500 4900
F 0 "#PWR0137" H 1500 4750 50  0001 C CNN
F 1 "+3.3V" H 1515 5073 50  0000 C CNN
F 2 "" H 1500 4900 50  0001 C CNN
F 3 "" H 1500 4900 50  0001 C CNN
	1    1500 4900
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R18
U 1 1 5CE8A6EA
P 1800 5050
F 0 "R18" H 1870 5096 50  0000 L CNN
F 1 "10K" H 1870 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 5050 50  0001 C CNN
F 3 "~" H 1800 5050 50  0001 C CNN
	1    1800 5050
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R17
U 1 1 5CE89921
P 1500 5050
F 0 "R17" H 1570 5096 50  0000 L CNN
F 1 "10K" H 1570 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 5050 50  0001 C CNN
F 3 "~" H 1500 5050 50  0001 C CNN
	1    1500 5050
	1    0    0    -1  
$EndComp
Text GLabel 1500 5200 3    50   Input ~ 0
SCL
Text GLabel 1800 5200 3    50   Input ~ 0
SDA
$Comp
L EggbotWireless-rescue:ATmega328P-AU-MCU_Microchip_ATmega U2
U 1 1 5D42120B
P 1550 2550
F 0 "U2" H 1550 961 50  0000 C CNN
F 1 "ATmega328P-AU" H 1550 870 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1550 2550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1950 2150 1950
Wire Wire Line
	2150 2050 2850 2050
Wire Wire Line
	2150 2850 2500 2850
Wire Wire Line
	2500 2850 2500 2800
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0151
U 1 1 5D6D37B2
P 2500 2500
F 0 "#PWR0151" H 2500 2350 50  0001 C CNN
F 1 "+3.3V" H 2515 2673 50  0000 C CNN
F 2 "" H 2500 2500 50  0001 C CNN
F 3 "" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2550 2750 2550
Wire Wire Line
	2750 2550 2750 2850
Wire Wire Line
	2750 2850 2500 2850
Connection ~ 2500 2850
Wire Wire Line
	2600 3500 2600 3750
Wire Wire Line
	3150 2850 3100 2850
Wire Wire Line
	3100 2850 3100 1750
Wire Wire Line
	3100 1750 2150 1750
Wire Wire Line
	3150 2750 3050 2750
Wire Wire Line
	3050 2750 3050 1650
Wire Wire Line
	3050 1650 2150 1650
Wire Wire Line
	2850 1500 2850 2050
Connection ~ 2550 1500
Wire Wire Line
	2550 1500 2550 1950
Wire Wire Line
	3150 2650 3000 2650
Wire Wire Line
	3000 2650 3000 1850
Wire Wire Line
	3000 1850 2150 1850
Text GLabel 4600 5700 0    50   Input ~ 0
STEP2
Text GLabel 4600 5800 0    50   Input ~ 0
DIR2
Text GLabel 4550 3850 0    50   Input ~ 0
STEP1
Text GLabel 4550 3950 0    50   Input ~ 0
DIR1
Wire Wire Line
	2150 3750 2600 3750
Text GLabel 2150 3650 2    50   Input ~ 0
STEP1
Text GLabel 2150 3550 2    50   Input ~ 0
DIR1
Text GLabel 2150 3450 2    50   Input ~ 0
STEP2
Text GLabel 2150 3350 2    50   Input ~ 0
DIR2
Wire Wire Line
	1650 800  1700 800 
Wire Wire Line
	2000 800  2050 800 
Wire Wire Line
	2050 800  2050 900 
Wire Wire Line
	2200 5700 2300 5700
Connection ~ 2200 5700
Wire Wire Line
	2300 5900 2300 5700
Connection ~ 2300 5700
Wire Wire Line
	2300 5700 2650 5700
Wire Wire Line
	2650 5700 3400 5700
Wire Wire Line
	3400 5700 3400 5900
Connection ~ 2650 5700
Wire Wire Line
	3400 5700 3850 5700
Wire Wire Line
	3850 5700 3850 6000
Connection ~ 3400 5700
Wire Wire Line
	1150 5700 1150 6000
Wire Wire Line
	1150 5700 2200 5700
$Comp
L EggbotWireless-rescue:Q_NMOS_GDS-Device Q1
U 1 1 5CEE2D00
P 9600 4750
F 0 "Q1" H 9806 4796 50  0000 L CNN
F 1 "FDD8800" H 9806 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 9800 4850 50  0001 C CNN
F 3 "~" H 9600 4750 50  0001 C CNN
	1    9600 4750
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+5V-power #PWR0102
U 1 1 5D136419
P 9100 2650
F 0 "#PWR0102" H 9100 2500 50  0001 C CNN
F 1 "+5V" H 9115 2823 50  0000 C CNN
F 2 "" H 9100 2650 50  0001 C CNN
F 3 "" H 9100 2650 50  0001 C CNN
	1    9100 2650
	1    0    0    -1  
$EndComp
Connection ~ 9100 2650
$Comp
L EggbotWireless-rescue:+5V-power #PWR0108
U 1 1 5D15A988
P 9300 3800
F 0 "#PWR0108" H 9300 3650 50  0001 C CNN
F 1 "+5V" H 9315 3973 50  0000 C CNN
F 2 "" H 9300 3800 50  0001 C CNN
F 3 "" H 9300 3800 50  0001 C CNN
	1    9300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1000 4200 1000
Wire Wire Line
	4300 1100 4200 1100
Wire Wire Line
	4200 1200 4300 1200
$Comp
L EggbotWireless-rescue:+12V-power #PWR0101
U 1 1 5CEAFAB1
P 4300 1100
F 0 "#PWR0101" H 4300 950 50  0001 C CNN
F 1 "+12V" V 4315 1228 50  0000 L CNN
F 2 "" H 4300 1100 50  0001 C CNN
F 3 "" H 4300 1100 50  0001 C CNN
	1    4300 1100
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0110
U 1 1 5CEB1C70
P 4300 1200
F 0 "#PWR0110" H 4300 1050 50  0001 C CNN
F 1 "+3.3V" V 4315 1328 50  0000 L CNN
F 2 "" H 4300 1200 50  0001 C CNN
F 3 "" H 4300 1200 50  0001 C CNN
	1    4300 1200
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0112
U 1 1 5CEB2B6C
P 4350 1000
F 0 "#PWR0112" H 4350 750 50  0001 C CNN
F 1 "GND" H 4355 827 50  0000 C CNN
F 2 "" H 4350 1000 50  0001 C CNN
F 3 "" H 4350 1000 50  0001 C CNN
	1    4350 1000
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:USB_B_Micro-Connector-Catfi-rescue J3
U 1 1 5B8AD2F1
P 5350 1050
F 0 "J3" H 5405 1517 50  0000 C CNN
F 1 "USB_B_Micro" H 5405 1426 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 5500 1000 50  0001 C CNN
F 3 "~" H 5500 1000 50  0001 C CNN
	1    5350 1050
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C8
U 1 1 5B8B4740
P 8850 2900
F 0 "C8" H 8750 2800 50  0000 R CNN
F 1 "100nf" H 8750 2900 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8888 2750 50  0001 C CNN
F 3 "~" H 8850 2900 50  0001 C CNN
	1    8850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1450 5250 1500
Wire Wire Line
	5350 1500 5350 1450
Wire Wire Line
	5750 1150 5650 1150
Text GLabel 5650 850  2    50   Input ~ 0
VBUS
Wire Wire Line
	5250 1500 5300 1500
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0116
U 1 1 5CEB52D8
P 6000 1150
F 0 "#PWR0116" H 6000 900 50  0001 C CNN
F 1 "GND" H 6005 977 50  0000 C CNN
F 2 "" H 6000 1150 50  0001 C CNN
F 3 "" H 6000 1150 50  0001 C CNN
	1    6000 1150
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0117
U 1 1 5CEB5818
P 5300 1500
F 0 "#PWR0117" H 5300 1250 50  0001 C CNN
F 1 "GND" H 5305 1327 50  0000 C CNN
F 2 "" H 5300 1500 50  0001 C CNN
F 3 "" H 5300 1500 50  0001 C CNN
	1    5300 1500
	1    0    0    -1  
$EndComp
Connection ~ 5300 1500
Wire Wire Line
	5300 1500 5350 1500
Text GLabel 5850 1050 3    50   Input ~ 0
USBD+
Wire Wire Line
	5650 1050 5850 1050
Text GLabel 5750 1150 3    50   Input ~ 0
USBD-
$Comp
L EggbotWireless-rescue:Stepper_Motor_bipolar-Motor M1
U 1 1 5CF4B0D1
P 6000 3950
F 0 "M1" H 6188 4074 50  0000 L CNN
F 1 " " H 6188 3983 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6010 3940 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 6010 3940 50  0001 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:Stepper_Motor_bipolar-Motor M2
U 1 1 5CF4C34B
P 5950 5800
F 0 "M2" H 6138 5924 50  0000 L CNN
F 1 " " H 6138 5833 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5960 5790 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 5960 5790 50  0001 C CNN
	1    5950 5800
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0122
U 1 1 5CEB99B1
P 10900 2500
F 0 "#PWR0122" H 10900 2350 50  0001 C CNN
F 1 "+3.3V" H 10915 2673 50  0000 C CNN
F 2 "" H 10900 2500 50  0001 C CNN
F 3 "" H 10900 2500 50  0001 C CNN
	1    10900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5850 8300 5850
Wire Wire Line
	8300 5850 8400 5850
Connection ~ 8300 5850
Wire Wire Line
	8700 6200 8700 6050
Wire Wire Line
	8300 6150 8300 6200
Wire Wire Line
	8300 6200 8700 6200
Connection ~ 8700 6200
$Comp
L EggbotWireless-rescue:CP-Device C12
U 1 1 5D6221F0
P 10500 2800
F 0 "C12" H 10618 2846 50  0000 L CNN
F 1 "220uF" H 10618 2755 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 10538 2650 50  0001 C CNN
F 3 "~" H 10500 2800 50  0001 C CNN
	1    10500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2650 10900 2650
Wire Wire Line
	10350 2650 10500 2650
Connection ~ 10500 2650
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0157
U 1 1 5D6767D0
P 10500 2950
F 0 "#PWR0157" H 10500 2700 50  0001 C CNN
F 1 "GND" H 10505 2777 50  0000 C CNN
F 2 "" H 10500 2950 50  0001 C CNN
F 3 "" H 10500 2950 50  0001 C CNN
	1    10500 2950
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R25
U 1 1 5D11D950
P 4050 7350
F 0 "R25" H 4120 7396 50  0000 L CNN
F 1 "12K" H 4120 7305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 7350 50  0001 C CNN
F 3 "~" H 4050 7350 50  0001 C CNN
	1    4050 7350
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R24
U 1 1 5D11E6C0
P 4050 6650
F 0 "R24" H 4120 6696 50  0000 L CNN
F 1 "12K" H 4120 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 6650 50  0001 C CNN
F 3 "~" H 4050 6650 50  0001 C CNN
	1    4050 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 7350 4200 7350
Wire Wire Line
	4200 6650 4300 6650
Wire Wire Line
	3900 6650 3900 7000
Wire Wire Line
	3900 7000 4600 7000
Wire Wire Line
	4600 7000 4600 7150
Wire Wire Line
	3900 7350 3900 7100
Wire Wire Line
	3900 7100 4450 7100
Wire Wire Line
	4450 7100 4450 6850
Wire Wire Line
	4450 6850 4600 6850
Text GLabel 4600 7550 2    50   Input ~ 0
GPIO0
Text GLabel 4600 6450 2    50   Input ~ 0
ESPRST
Text GLabel 1700 5950 0    50   Input ~ 0
ESPRST
Text GLabel 3400 6200 2    50   Input ~ 0
GPIO0
$Comp
L EggbotWireless-rescue:Q_NPN_BEC-Device Q5
U 1 1 5D2B6423
P 4500 6650
F 0 "Q5" H 4690 6696 50  0000 L CNN
F 1 "S8050" H 4690 6605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4700 6750 50  0001 C CNN
F 3 "~" H 4500 6650 50  0001 C CNN
	1    4500 6650
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:Q_NPN_BEC-Device Q6
U 1 1 5D2BB966
P 4500 7350
F 0 "Q6" H 4690 7304 50  0000 L CNN
F 1 "S8050" H 4690 7395 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4700 7450 50  0001 C CNN
F 3 "~" H 4500 7350 50  0001 C CNN
	1    4500 7350
	1    0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:Conn_01x03_Male-Connector J2
U 1 1 5D2FE20C
P 4000 1100
F 0 "J2" H 4108 1381 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4108 1290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4000 1100 50  0001 C CNN
F 3 "~" H 4000 1100 50  0001 C CNN
	1    4000 1100
	1    0    0    -1  
$EndComp
Text GLabel 4200 1550 2    50   Input ~ 0
TXD_USB
$Comp
L EggbotWireless-rescue:Conn_01x05_Male-Connector J6
U 1 1 5D0DB384
P 4000 1750
F 0 "J6" H 4108 2131 50  0000 C CNN
F 1 "Conn_01x05_Male" H 4108 2040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4000 1750 50  0001 C CNN
F 3 "~" H 4000 1750 50  0001 C CNN
	1    4000 1750
	1    0    0    -1  
$EndComp
Text GLabel 4200 1650 2    50   Input ~ 0
RXD_USB
Text GLabel 4200 1750 2    50   Input ~ 0
RTS_USB
Text GLabel 4200 1850 2    50   Input ~ 0
DTR_USB
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0147
U 1 1 5D0DD546
P 4200 1950
F 0 "#PWR0147" H 4200 1700 50  0001 C CNN
F 1 "GND" H 4205 1777 50  0000 C CNN
F 2 "" H 4200 1950 50  0001 C CNN
F 3 "" H 4200 1950 50  0001 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4450 10550 4450
$Comp
L EggbotWireless-rescue:+12V-power #PWR0124
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
L EggbotWireless-rescue:R-Device-Catfi-rescue R20
U 1 1 5D171129
P 8300 6000
F 0 "R20" V 8093 6000 50  0000 C CNN
F 1 "10K" V 8184 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 6000 50  0001 C CNN
F 3 "~" H 8300 6000 50  0001 C CNN
	1    8300 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 4200 9300 4150
Wire Wire Line
	9300 3850 9300 3800
Connection ~ 9300 3850
Wire Wire Line
	9050 3850 9300 3850
$Comp
L EggbotWireless-rescue:C-Device C17
U 1 1 5D338D3C
P 9700 4000
F 0 "C17" H 9815 4046 50  0000 L CNN
F 1 "10uF" H 9815 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9738 3850 50  0001 C CNN
F 3 "~" H 9700 4000 50  0001 C CNN
	1    9700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3850 9700 3850
Wire Wire Line
	9700 4150 9300 4150
Connection ~ 9300 4150
$Comp
L EggbotWireless-rescue:SolderJumper_2_Bridged-Jumper JP3
U 1 1 5D3CD55E
P 4300 4150
F 0 "JP3" H 4300 4355 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4300 4264 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4300 4150 50  0001 C CNN
F 3 "~" H 4300 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:SolderJumper_2_Bridged-Jumper JP2
U 1 1 5D3CED16
P 4250 4350
F 0 "JP2" H 4250 4555 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4250 4464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4250 4350 50  0001 C CNN
F 3 "~" H 4250 4350 50  0001 C CNN
	1    4250 4350
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:SolderJumper_2_Bridged-Jumper JP1
U 1 1 5D3CF16C
P 4200 4550
F 0 "JP1" H 4200 4755 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4200 4664 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 4200 4550 50  0001 C CNN
F 3 "~" H 4200 4550 50  0001 C CNN
	1    4200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4250 4400 4350
Connection ~ 4150 4150
Connection ~ 4100 4350
Connection ~ 4400 4350
Wire Wire Line
	4400 4350 4400 6100
Connection ~ 4350 4550
$Comp
L EggbotWireless-rescue:+5V-power #PWR0130
U 1 1 5D7ABED4
P 10750 1200
F 0 "#PWR0130" H 10750 1050 50  0001 C CNN
F 1 "+5V" H 10765 1373 50  0000 C CNN
F 2 "" H 10750 1200 50  0001 C CNN
F 3 "" H 10750 1200 50  0001 C CNN
	1    10750 1200
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:SW_SPDT-Switch SW1
U 1 1 5CEB7C0D
P 10550 1300
F 0 "SW1" H 10550 1450 50  0000 C CNN
F 1 " " H 10550 1494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 10550 1300 50  0001 C CNN
F 3 "~" H 10550 1300 50  0001 C CNN
	1    10550 1300
	1    0    0    -1  
$EndComp
Text GLabel 10350 1300 0    50   Input ~ 0
VBUS
$Comp
L EggbotWireless-rescue:+5V-power #PWR0109
U 1 1 5FB1D7BE
P 2500 4000
F 0 "#PWR0109" H 2500 3850 50  0001 C CNN
F 1 "+5V" H 2515 4173 50  0000 C CNN
F 2 "" H 2500 4000 50  0001 C CNN
F 3 "" H 2500 4000 50  0001 C CNN
	1    2500 4000
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:CP-Device C18
U 1 1 5FB522B1
P 2700 4150
AR Path="/5FB522B1" Ref="C18"  Part="1" 
AR Path="/5E1045DA/5FB522B1" Ref="C?"  Part="1" 
AR Path="/5FB4B9D9/5FB522B1" Ref="C?"  Part="1" 
F 0 "C18" H 2818 4196 50  0000 L CNN
F 1 "68uF" H 2818 4105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 2738 4000 50  0001 C CNN
F 3 "~" H 2700 4150 50  0001 C CNN
	1    2700 4150
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C19
U 1 1 5FB522B7
P 3150 4150
AR Path="/5FB522B7" Ref="C19"  Part="1" 
AR Path="/5E1045DA/5FB522B7" Ref="C?"  Part="1" 
AR Path="/5FB4B9D9/5FB522B7" Ref="C?"  Part="1" 
F 0 "C19" H 3265 4196 50  0000 L CNN
F 1 "10uF" H 3265 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3188 4000 50  0001 C CNN
F 3 "~" H 3150 4150 50  0001 C CNN
	1    3150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4000 2700 4000
Wire Wire Line
	3150 4000 2850 4000
Connection ~ 2700 4000
Wire Wire Line
	2850 4000 2850 3600
Wire Wire Line
	2850 3600 3200 3600
Connection ~ 2850 4000
Wire Wire Line
	2850 4000 2700 4000
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0154
U 1 1 5FB95FEE
P 2900 4350
F 0 "#PWR0154" H 2900 4100 50  0001 C CNN
F 1 "GND" H 2905 4177 50  0000 C CNN
F 2 "" H 2900 4350 50  0001 C CNN
F 3 "" H 2900 4350 50  0001 C CNN
	1    2900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4350 2700 4350
Wire Wire Line
	2700 4350 2700 4300
Wire Wire Line
	2900 4350 3150 4350
Wire Wire Line
	3150 4350 3150 4300
Connection ~ 2900 4350
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0118
U 1 1 5CEB5E0A
P 6300 1700
F 0 "#PWR0118" H 6300 1450 50  0001 C CNN
F 1 "GND" H 6305 1527 50  0000 C CNN
F 2 "" H 6300 1700 50  0001 C CNN
F 3 "" H 6300 1700 50  0001 C CNN
	1    6300 1700
	0    1    1    0   
$EndComp
Connection ~ 9050 4450
Wire Wire Line
	9050 3850 9050 4450
Connection ~ 7500 1400
$Comp
L EggbotWireless-rescue:+5V-power #PWR0111
U 1 1 5D283EF7
P 7500 1400
F 0 "#PWR0111" H 7500 1250 50  0001 C CNN
F 1 "+5V" H 7515 1573 50  0000 C CNN
F 2 "" H 7500 1400 50  0001 C CNN
F 3 "" H 7500 1400 50  0001 C CNN
	1    7500 1400
	0    1    1    0   
$EndComp
Text GLabel 8200 3100 2    50   Input ~ 0
SLEEP
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0153
U 1 1 5D0D61D4
P 7300 1400
F 0 "#PWR0153" H 7300 1250 50  0001 C CNN
F 1 "+3.3V" H 7250 1550 50  0000 C CNN
F 2 "" H 7300 1400 50  0001 C CNN
F 3 "" H 7300 1400 50  0001 C CNN
	1    7300 1400
	1    0    0    -1  
$EndComp
Text GLabel 8200 2100 2    50   Input ~ 0
DTR_USB
Text GLabel 8200 1700 2    50   Input ~ 0
TXD_USB
Text GLabel 8200 1800 2    50   Input ~ 0
RXD_USB
Text GLabel 8200 1900 2    50   Input ~ 0
RTS_USB
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0119
U 1 1 5D1CA085
P 7500 1100
F 0 "#PWR0119" H 7500 850 50  0001 C CNN
F 1 "GND" H 7505 927 50  0000 C CNN
F 2 "" H 7500 1100 50  0001 C CNN
F 3 "" H 7500 1100 50  0001 C CNN
	1    7500 1100
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C16
U 1 1 5D1C8C09
P 7500 1250
F 0 "C16" H 7750 1200 50  0000 R CNN
F 1 "100nf" H 7850 1300 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7538 1100 50  0001 C CNN
F 3 "~" H 7500 1250 50  0001 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0106
U 1 1 5D1C22B0
P 6600 3100
F 0 "#PWR0106" H 6600 2850 50  0001 C CNN
F 1 "GND" H 6605 2927 50  0000 C CNN
F 2 "" H 6600 3100 50  0001 C CNN
F 3 "" H 6600 3100 50  0001 C CNN
	1    6600 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3400 7500 3400
Connection ~ 7400 3400
Wire Wire Line
	7200 3400 7400 3400
Connection ~ 7500 3400
Wire Wire Line
	7600 3400 7500 3400
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0105
U 1 1 5D19A02C
P 7500 3400
F 0 "#PWR0105" H 7500 3150 50  0001 C CNN
F 1 "GND" H 7505 3227 50  0000 C CNN
F 2 "" H 7500 3400 50  0001 C CNN
F 3 "" H 7500 3400 50  0001 C CNN
	1    7500 3400
	1    0    0    -1  
$EndComp
Text GLabel 6600 2100 0    50   Input ~ 0
USBD-
Text GLabel 6600 2000 0    50   Input ~ 0
USBD+
$Comp
L EggbotWireless-rescue:FT232RL-Interface_USB U5
U 1 1 5D0B79CF
P 7400 2400
F 0 "U5" H 7950 3400 50  0000 C CNN
F 1 "FT232RL" H 7900 3300 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 7400 2400 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 7400 2400 50  0001 C CNN
	1    7400 2400
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C7
U 1 1 5B940767
P 6450 1700
F 0 "C7" H 6650 1650 50  0000 R CNN
F 1 "100nf" H 6800 1750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6488 1550 50  0001 C CNN
F 3 "~" H 6450 1700 50  0001 C CNN
	1    6450 1700
	0    -1   -1   0   
$EndComp
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
Wire Wire Line
	8000 4450 8000 4100
Wire Wire Line
	8000 4100 9200 4100
Wire Wire Line
	9100 3050 8850 3050
Connection ~ 9100 3050
Wire Wire Line
	8850 2750 8850 2650
Wire Wire Line
	8850 2650 9100 2650
$EndSCHEMATC
