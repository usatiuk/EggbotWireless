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
L EggbotWireless-rescue:L-Device L?
U 1 1 5FECC753
P 5200 3200
F 0 "L?" V 5390 3200 50  0000 C CNN
F 1 "10uH" V 5299 3200 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 5200 3200 50  0001 C CNN
F 3 "~" H 5200 3200 50  0001 C CNN
	1    5200 3200
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C?
U 1 1 5FECC759
P 5950 3350
F 0 "C?" H 6065 3396 50  0000 L CNN
F 1 "10uF" H 6065 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5988 3200 50  0001 C CNN
F 3 "~" H 5950 3350 50  0001 C CNN
	1    5950 3350
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C?
U 1 1 5FECC75F
P 4150 3450
F 0 "C?" H 4265 3496 50  0000 L CNN
F 1 "4.7uF" H 4265 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4188 3300 50  0001 C CNN
F 3 "~" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3300 4150 3200
Wire Wire Line
	4400 3200 4150 3200
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FECC767
P 4400 3700
F 0 "#PWR?" H 4400 3450 50  0001 C CNN
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
L EggbotWireless-rescue:TPS62203DBV-Regulator_Switching U?
U 1 1 5FECC771
P 4700 3400
F 0 "U?" H 4700 3825 50  0000 C CNN
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
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FECC77C
P 5950 3500
F 0 "#PWR?" H 5950 3250 50  0001 C CNN
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
L EggbotWireless-rescue:+5V-power #PWR?
U 1 1 5FECC786
P 4150 3200
F 0 "#PWR?" H 4150 3050 50  0001 C CNN
F 1 "+5V" H 4165 3373 50  0000 C CNN
F 2 "" H 4150 3200 50  0001 C CNN
F 3 "" H 4150 3200 50  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
Connection ~ 4150 3200
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR?
U 1 1 5FECC78D
P 5950 3050
F 0 "#PWR?" H 5950 2900 50  0001 C CNN
F 1 "+3.3V" H 5965 3223 50  0000 C CNN
F 2 "" H 5950 3050 50  0001 C CNN
F 3 "" H 5950 3050 50  0001 C CNN
	1    5950 3050
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:CP-Device C?
U 1 1 5FECC793
P 5550 3350
F 0 "C?" H 5668 3396 50  0000 L CNN
F 1 "220uF" H 5668 3305 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 5588 3200 50  0001 C CNN
F 3 "~" H 5550 3350 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3200 5950 3200
Wire Wire Line
	5400 3200 5550 3200
Connection ~ 5550 3200
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FECC79C
P 5550 3500
F 0 "#PWR?" H 5550 3250 50  0001 C CNN
F 1 "GND" H 5555 3327 50  0000 C CNN
F 2 "" H 5550 3500 50  0001 C CNN
F 3 "" H 5550 3500 50  0001 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
