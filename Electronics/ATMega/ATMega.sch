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
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FD01521
P 5650 3650
F 0 "R?" H 5720 3696 50  0000 L CNN
F 1 "10K" H 5720 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 3650 50  0001 C CNN
F 3 "~" H 5650 3650 50  0001 C CNN
	1    5650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1800 4800 1800
Connection ~ 4700 1800
Wire Wire Line
	4700 2050 4700 1800
Wire Wire Line
	4800 1800 4800 2050
Wire Wire Line
	4700 1750 4700 1800
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR?
U 1 1 5FD0152C
P 4700 1750
F 0 "#PWR?" H 4700 1600 50  0001 C CNN
F 1 "+3.3V" H 4715 1923 50  0000 C CNN
F 2 "" H 4700 1750 50  0001 C CNN
F 3 "" H 4700 1750 50  0001 C CNN
	1    4700 1750
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:Crystal-Device Y?
U 1 1 5FD01532
P 5850 2500
F 0 "Y?" V 5896 2369 50  0000 R CNN
F 1 "16MHz" V 5805 2369 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 5850 2500 50  0001 C CNN
F 3 "~" H 5850 2500 50  0001 C CNN
	1    5850 2500
	1    0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C?
U 1 1 5FD01538
P 5700 2200
F 0 "C?" H 5600 2100 50  0000 R CNN
F 1 "22pF" H 5600 2200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5738 2050 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C?
U 1 1 5FD0153E
P 6000 2200
F 0 "C?" H 5900 2100 50  0000 R CNN
F 1 "22pF" H 5900 2200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 2050 50  0001 C CNN
F 3 "~" H 6000 2200 50  0001 C CNN
	1    6000 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 2350 6000 2500
Wire Wire Line
	5700 2350 5700 2500
Connection ~ 6000 2500
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FD01547
P 4700 5050
F 0 "#PWR?" H 4700 4800 50  0001 C CNN
F 1 "GND" H 4705 4877 50  0000 C CNN
F 2 "" H 4700 5050 50  0001 C CNN
F 3 "" H 4700 5050 50  0001 C CNN
	1    4700 5050
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FD0154D
P 5850 2050
F 0 "#PWR?" H 5850 1800 50  0001 C CNN
F 1 "GND" H 5855 1877 50  0000 C CNN
F 2 "" H 5850 2050 50  0001 C CNN
F 3 "" H 5850 2050 50  0001 C CNN
	1    5850 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 2050 5850 2050
Wire Wire Line
	5700 2050 5850 2050
Connection ~ 5850 2050
Text GLabel 5300 3650 2    50   Input ~ 0
SDA
Text GLabel 5300 3750 2    50   Input ~ 0
SCL
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C?
U 1 1 5FD01558
P 5000 1800
F 0 "C?" H 5250 1750 50  0000 R CNN
F 1 "100nf" H 5300 1850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 1650 50  0001 C CNN
F 3 "~" H 5000 1800 50  0001 C CNN
	1    5000 1800
	0    1    1    0   
$EndComp
Connection ~ 4800 1800
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FD0155F
P 5200 1900
F 0 "#PWR?" H 5200 1650 50  0001 C CNN
F 1 "GND" H 5205 1727 50  0000 C CNN
F 2 "" H 5200 1900 50  0001 C CNN
F 3 "" H 5200 1900 50  0001 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FD01565
P 6800 3250
F 0 "#PWR?" H 6800 3000 50  0001 C CNN
F 1 "GND" H 6805 3077 50  0000 C CNN
F 2 "" H 6800 3250 50  0001 C CNN
F 3 "" H 6800 3250 50  0001 C CNN
	1    6800 3250
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR?
U 1 1 5FD0156B
P 6800 4150
F 0 "#PWR?" H 6800 4000 50  0001 C CNN
F 1 "+3.3V" H 6815 4323 50  0000 C CNN
F 2 "" H 6800 4150 50  0001 C CNN
F 3 "" H 6800 4150 50  0001 C CNN
	1    6800 4150
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:AVR-ISP-6-Connector J?
U 1 1 5FD01571
P 6700 3650
F 0 "J?" H 6421 3746 50  0000 R CNN
F 1 "AVR-ISP-6" H 6421 3655 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 6450 3700 50  0001 C CNN
F 3 " ~" H 5425 3100 50  0001 C CNN
	1    6700 3650
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:Conn_01x03_Female-Connector J?
U 1 1 5FD01577
P 6000 4150
F 0 "J?" H 6028 4176 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6028 4085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6000 4150 50  0001 C CNN
F 3 "~" H 6000 4150 50  0001 C CNN
	1    6000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4050 5300 4050
Wire Wire Line
	5300 4150 5800 4150
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FD0157F
P 5800 4250
F 0 "#PWR?" H 5800 4000 50  0001 C CNN
F 1 "GND" H 5805 4077 50  0000 C CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:Motor_Servo-Motor M?
U 1 1 5FD01585
P 6650 4600
F 0 "M?" H 6982 4665 50  0000 L CNN
F 1 "Motor_Servo" H 6982 4574 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6650 4410 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 6650 4410 50  0001 C CNN
	1    6650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4500 5750 4500
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FD0158C
P 6350 4700
F 0 "#PWR?" H 6350 4450 50  0001 C CNN
F 1 "GND" H 6355 4527 50  0000 C CNN
F 2 "" H 6350 4700 50  0001 C CNN
F 3 "" H 6350 4700 50  0001 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:ATmega328P-AU-MCU_Microchip_ATmega U?
U 1 1 5FD01592
P 4700 3550
F 0 "U?" H 4700 1961 50  0000 C CNN
F 1 "ATmega328P-AU" H 4700 1870 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 4700 3550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2950 5300 2950
Wire Wire Line
	5300 3050 6000 3050
Wire Wire Line
	5300 3850 5650 3850
Wire Wire Line
	5650 3850 5650 3800
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR?
U 1 1 5FD0159C
P 5650 3500
F 0 "#PWR?" H 5650 3350 50  0001 C CNN
F 1 "+3.3V" H 5665 3673 50  0000 C CNN
F 2 "" H 5650 3500 50  0001 C CNN
F 3 "" H 5650 3500 50  0001 C CNN
	1    5650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3550 5900 3550
Wire Wire Line
	5900 3550 5900 3850
Wire Wire Line
	5900 3850 5650 3850
Connection ~ 5650 3850
Wire Wire Line
	5750 4500 5750 4750
Wire Wire Line
	6300 3850 6250 3850
Wire Wire Line
	6250 3850 6250 2750
Wire Wire Line
	6250 2750 5300 2750
Wire Wire Line
	6300 3750 6200 3750
Wire Wire Line
	6200 3750 6200 2650
Wire Wire Line
	6200 2650 5300 2650
Wire Wire Line
	6000 2500 6000 3050
Connection ~ 5700 2500
Wire Wire Line
	5700 2500 5700 2950
Wire Wire Line
	6300 3650 6150 3650
Wire Wire Line
	6150 3650 6150 2850
Wire Wire Line
	6150 2850 5300 2850
Wire Wire Line
	5300 4750 5750 4750
Text GLabel 5300 4650 2    50   Input ~ 0
STEP1
Text GLabel 5300 4550 2    50   Input ~ 0
DIR1
Text GLabel 5300 4450 2    50   Input ~ 0
STEP2
Text GLabel 5300 4350 2    50   Input ~ 0
DIR2
Wire Wire Line
	4800 1800 4850 1800
Wire Wire Line
	5150 1800 5200 1800
Wire Wire Line
	5200 1800 5200 1900
$Comp
L EggbotWireless-rescue:+5V-power #PWR?
U 1 1 5FD015BB
P 5650 5000
F 0 "#PWR?" H 5650 4850 50  0001 C CNN
F 1 "+5V" H 5665 5173 50  0000 C CNN
F 2 "" H 5650 5000 50  0001 C CNN
F 3 "" H 5650 5000 50  0001 C CNN
	1    5650 5000
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:CP-Device C?
U 1 1 5FD015C1
P 5850 5150
AR Path="/5FD015C1" Ref="C?"  Part="1" 
AR Path="/5E1045DA/5FD015C1" Ref="C?"  Part="1" 
AR Path="/5FB4B9D9/5FD015C1" Ref="C?"  Part="1" 
F 0 "C?" H 5968 5196 50  0000 L CNN
F 1 "68uF" H 5968 5105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 5888 5000 50  0001 C CNN
F 3 "~" H 5850 5150 50  0001 C CNN
	1    5850 5150
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device C?
U 1 1 5FD015C7
P 6300 5150
AR Path="/5FD015C7" Ref="C?"  Part="1" 
AR Path="/5E1045DA/5FD015C7" Ref="C?"  Part="1" 
AR Path="/5FB4B9D9/5FD015C7" Ref="C?"  Part="1" 
F 0 "C?" H 6415 5196 50  0000 L CNN
F 1 "10uF" H 6415 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6338 5000 50  0001 C CNN
F 3 "~" H 6300 5150 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5000 5850 5000
Wire Wire Line
	6300 5000 6000 5000
Connection ~ 5850 5000
Wire Wire Line
	6000 5000 6000 4600
Wire Wire Line
	6000 4600 6350 4600
Connection ~ 6000 5000
Wire Wire Line
	6000 5000 5850 5000
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FD015D4
P 6050 5350
F 0 "#PWR?" H 6050 5100 50  0001 C CNN
F 1 "GND" H 6055 5177 50  0000 C CNN
F 2 "" H 6050 5350 50  0001 C CNN
F 3 "" H 6050 5350 50  0001 C CNN
	1    6050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5350 5850 5350
Wire Wire Line
	5850 5350 5850 5300
Wire Wire Line
	6050 5350 6300 5350
Wire Wire Line
	6300 5350 6300 5300
Connection ~ 6050 5350
$EndSCHEMATC
