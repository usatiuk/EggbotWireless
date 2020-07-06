EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:+5V #PWR0109
U 1 1 5E119508
P 3500 3900
F 0 "#PWR0109" H 3500 3750 50  0001 C CNN
F 1 "+5V" H 3515 4073 50  0000 C CNN
F 2 "" H 3500 3900 50  0001 C CNN
F 3 "" H 3500 3900 50  0001 C CNN
	1    3500 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 5E119E30
P 5150 4400
F 0 "#PWR0154" H 5150 4150 50  0001 C CNN
F 1 "GND" H 5155 4227 50  0000 C CNN
F 2 "" H 5150 4400 50  0001 C CNN
F 3 "" H 5150 4400 50  0001 C CNN
	1    5150 4400
	1    0    0    -1  
$EndComp
Text GLabel 5350 3250 1    50   Input ~ 0
SERVOPWR
$Comp
L EggbotWireless-rescue:L-Device L?
U 1 1 5E1F4797
P 4850 2800
AR Path="/5E1F4797" Ref="L?"  Part="1" 
AR Path="/5E1045DA/5E1F4797" Ref="L3"  Part="1" 
F 0 "L3" V 4800 2800 50  0000 C CNN
F 1 "1uH" V 4700 2800 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 4850 2800 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
F 4 "SPM5030T-1R0M" V 4850 2800 50  0001 C CNN "Part"
	1    4850 2800
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device R?
U 1 1 5E23A737
P 4650 3300
AR Path="/5E23A737" Ref="R?"  Part="1" 
AR Path="/5E1045DA/5E23A737" Ref="R28"  Part="1" 
F 0 "R28" H 4720 3346 50  0000 L CNN
F 1 "750K" H 4720 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4580 3300 50  0001 C CNN
F 3 "~" H 4650 3300 50  0001 C CNN
	1    4650 3300
	0    1    -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device R?
U 1 1 5E23AC93
P 4100 3500
AR Path="/5E23AC93" Ref="R?"  Part="1" 
AR Path="/5E1045DA/5E23AC93" Ref="R23"  Part="1" 
F 0 "R23" H 4170 3546 50  0000 L CNN
F 1 "100K" H 4170 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 3500 50  0001 C CNN
F 3 "~" H 4100 3500 50  0001 C CNN
	1    4100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 5E23D1E6
P 3500 4400
F 0 "#PWR0160" H 3500 4150 50  0001 C CNN
F 1 "GND" H 3505 4227 50  0000 C CNN
F 2 "" H 3500 4400 50  0001 C CNN
F 3 "" H 3500 4400 50  0001 C CNN
	1    3500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4300 3500 4400
Wire Wire Line
	3500 3900 3500 4000
$Comp
L power:GND #PWR0161
U 1 1 5E23F6D5
P 5750 3700
F 0 "#PWR0161" H 5750 3450 50  0001 C CNN
F 1 "GND" H 5755 3527 50  0000 C CNN
F 2 "" H 5750 3700 50  0001 C CNN
F 3 "" H 5750 3700 50  0001 C CNN
	1    5750 3700
	0    -1   -1   0   
$EndComp
$Comp
L tps61023:TPS61023 U9
U 1 1 5F047171
P 4800 3600
F 0 "U9" H 4825 3715 50  0000 C CNN
F 1 "TPS61023" H 4825 3624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-563" H 4800 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0001 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
Connection ~ 3500 4000
$Comp
L EggbotWireless-rescue:CP-Device C?
U 1 1 5E2063BC
P 3500 4150
AR Path="/5E2063BC" Ref="C?"  Part="1" 
AR Path="/5E1045DA/5E2063BC" Ref="C18"  Part="1" 
F 0 "C18" H 3618 4196 50  0000 L CNN
F 1 "68uF" H 3618 4105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 3538 4000 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4000 4350 4000
Wire Wire Line
	4500 3900 4350 3900
Wire Wire Line
	4350 3900 4350 4000
Wire Wire Line
	5150 4000 5150 4400
Wire Wire Line
	3500 4000 3850 4000
Wire Wire Line
	3850 2800 3850 4000
Connection ~ 3850 4000
Wire Wire Line
	3850 4000 4000 4000
Wire Wire Line
	5150 3800 5250 3800
Wire Wire Line
	6050 3900 6050 2800
Wire Wire Line
	5150 3900 6050 3900
Wire Wire Line
	5000 2800 6050 2800
$Comp
L power:GND #PWR0159
U 1 1 5F057A38
P 4100 3750
F 0 "#PWR0159" H 4100 3500 50  0001 C CNN
F 1 "GND" H 4105 3577 50  0000 C CNN
F 2 "" H 4100 3750 50  0001 C CNN
F 3 "" H 4100 3750 50  0001 C CNN
	1    4100 3750
	1    0    0    -1  
$EndComp
Connection ~ 4350 4000
Wire Wire Line
	3850 2800 4700 2800
Wire Wire Line
	4100 3750 4100 3650
Wire Wire Line
	4100 3350 4100 3300
Wire Wire Line
	4100 3300 4400 3300
Wire Wire Line
	4400 3300 4400 3800
Wire Wire Line
	4400 3800 4500 3800
Connection ~ 4400 3300
Wire Wire Line
	4400 3300 4500 3300
Wire Wire Line
	4800 3300 5250 3300
Wire Wire Line
	5250 3300 5250 3800
Connection ~ 5250 3800
Wire Wire Line
	5250 3800 5350 3800
$Comp
L EggbotWireless-rescue:C-Device C?
U 1 1 5F074742
P 4000 4150
AR Path="/5F074742" Ref="C?"  Part="1" 
AR Path="/5E1045DA/5F074742" Ref="C19"  Part="1" 
F 0 "C19" H 4115 4196 50  0000 L CNN
F 1 "10uF" H 4115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4038 4000 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Connection ~ 4000 4000
Wire Wire Line
	4000 4000 4350 4000
$Comp
L power:GND #PWR0162
U 1 1 5F077512
P 4000 4400
F 0 "#PWR0162" H 4000 4150 50  0001 C CNN
F 1 "GND" H 4005 4227 50  0000 C CNN
F 2 "" H 4000 4400 50  0001 C CNN
F 3 "" H 4000 4400 50  0001 C CNN
	1    4000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4400 4000 4300
Wire Wire Line
	5350 3250 5350 3300
$Comp
L EggbotWireless-rescue:C-Device C?
U 1 1 5F078162
P 5600 3300
AR Path="/5F078162" Ref="C?"  Part="1" 
AR Path="/5E1045DA/5F078162" Ref="C20"  Part="1" 
F 0 "C20" H 5715 3346 50  0000 L CNN
F 1 "10uF" H 5715 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5638 3150 50  0001 C CNN
F 3 "~" H 5600 3300 50  0001 C CNN
	1    5600 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3300 5450 3300
Connection ~ 5350 3300
Wire Wire Line
	5350 3300 5350 3700
Wire Wire Line
	5350 3700 5450 3700
Connection ~ 5350 3700
Wire Wire Line
	5350 3700 5350 3800
$Comp
L power:GND #PWR0164
U 1 1 5F07A4BB
P 5750 3300
F 0 "#PWR0164" H 5750 3050 50  0001 C CNN
F 1 "GND" H 5755 3127 50  0000 C CNN
F 2 "" H 5750 3300 50  0001 C CNN
F 3 "" H 5750 3300 50  0001 C CNN
	1    5750 3300
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:CP-Device C?
U 1 1 5E217A35
P 5600 3700
AR Path="/5E217A35" Ref="C?"  Part="1" 
AR Path="/5E1045DA/5E217A35" Ref="C21"  Part="1" 
F 0 "C21" H 5718 3746 50  0000 L CNN
F 1 "220uF" H 5718 3655 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 5638 3550 50  0001 C CNN
F 3 "~" H 5600 3700 50  0001 C CNN
	1    5600 3700
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
