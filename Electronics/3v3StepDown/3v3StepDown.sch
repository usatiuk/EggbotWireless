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
L EggbotWireless-rescue:L-Device L1
U 1 1 5FECC753
P 5200 3200
F 0 "L1" V 5390 3200 50  0000 C CNN
F 1 "10uH" V 5299 3200 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 5200 3200 50  0001 C CNN
F 3 "~" H 5200 3200 50  0001 C CNN
	1    5200 3200
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C2
U 1 1 5FECC759
P 5950 3350
F 0 "C2" H 6065 3396 50  0000 L CNN
F 1 "10uF" H 6065 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5988 3200 50  0001 C CNN
F 3 "~" H 5950 3350 50  0001 C CNN
	1    5950 3350
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C1
U 1 1 5FECC75F
P 4150 3450
F 0 "C1" H 4265 3496 50  0000 L CNN
F 1 "4.7uF" H 4265 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4188 3300 50  0001 C CNN
F 3 "~" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3300 4150 3200
Wire Wire Line
	4400 3200 4150 3200
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0101
U 1 1 5FECC767
P 4400 3700
F 0 "#PWR0101" H 4400 3450 50  0001 C CNN
F 1 "GND" H 4405 3527 50  0000 C CNN
F 2 "" H 4400 3700 50  0001 C CNN
F 3 "" H 4400 3700 50  0001 C CNN
	1    4400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3600 4400 3600
Wire Wire Line
	4400 3600 4400 3700
Connection ~ 4400 3600
Wire Wire Line
	4400 3600 4700 3600
$Comp
L EggbotWireless-rescue:TPS62203DBV-Regulator_Switching U1
U 1 1 5FECC771
P 4700 3400
F 0 "U1" H 4700 3825 50  0000 C CNN
F 1 "TPS62203DBV" H 4700 3734 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4750 3250 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps62201.pdf" H 4700 3500 50  0001 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
Connection ~ 4400 3200
Wire Wire Line
	4400 3200 4400 3400
Wire Wire Line
	5350 3200 5400 3200
Wire Wire Line
	5400 3200 5400 3400
Connection ~ 5400 3200
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0102
U 1 1 5FECC77C
P 5950 3500
F 0 "#PWR0102" H 5950 3250 50  0001 C CNN
F 1 "GND" H 5955 3327 50  0000 C CNN
F 2 "" H 5950 3500 50  0001 C CNN
F 3 "" H 5950 3500 50  0001 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3050 5950 3200
Connection ~ 5950 3200
Wire Wire Line
	5050 3200 5000 3200
Wire Wire Line
	5000 3400 5400 3400
$Comp
L EggbotWireless-rescue:+5V-power #PWR0103
U 1 1 5FECC786
P 4150 3200
F 0 "#PWR0103" H 4150 3050 50  0001 C CNN
F 1 "+5V" H 4165 3373 50  0000 C CNN
F 2 "" H 4150 3200 50  0001 C CNN
F 3 "" H 4150 3200 50  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
Connection ~ 4150 3200
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0104
U 1 1 5FECC78D
P 5950 3050
F 0 "#PWR0104" H 5950 2900 50  0001 C CNN
F 1 "+3.3V" H 5965 3223 50  0000 C CNN
F 2 "" H 5950 3050 50  0001 C CNN
F 3 "" H 5950 3050 50  0001 C CNN
	1    5950 3050
	1    0    0    -1  
$EndComp
$Comp
L 3v3StepDown:3v3StepDownModule U2
U 1 1 5FCE3678
P 7050 3050
F 0 "U2" H 7050 3315 50  0000 C CNN
F 1 "3v3StepDownModule" H 7050 3224 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W10.16mm" H 7050 3050 50  0001 C CNN
F 3 "" H 7050 3050 50  0001 C CNN
	1    7050 3050
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+5V-power #PWR0105
U 1 1 5FCE3B7D
P 6700 3050
F 0 "#PWR0105" H 6700 2900 50  0001 C CNN
F 1 "+5V" H 6715 3223 50  0000 C CNN
F 2 "" H 6700 3050 50  0001 C CNN
F 3 "" H 6700 3050 50  0001 C CNN
	1    6700 3050
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0106
U 1 1 5FCE48F1
P 7400 3050
F 0 "#PWR0106" H 7400 2900 50  0001 C CNN
F 1 "+3.3V" H 7415 3223 50  0000 C CNN
F 2 "" H 7400 3050 50  0001 C CNN
F 3 "" H 7400 3050 50  0001 C CNN
	1    7400 3050
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0107
U 1 1 5FCE5458
P 7050 3400
F 0 "#PWR0107" H 7050 3150 50  0001 C CNN
F 1 "GND" H 7055 3227 50  0000 C CNN
F 2 "" H 7050 3400 50  0001 C CNN
F 3 "" H 7050 3400 50  0001 C CNN
	1    7050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3200 5950 3200
$EndSCHEMATC
