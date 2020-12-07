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
Text GLabel 4250 1750 3    50   Input ~ 0
CHRG
Wire Wire Line
	6200 2950 6750 2950
Wire Wire Line
	6950 2950 6950 2900
Wire Wire Line
	6950 2900 6300 2900
Wire Wire Line
	6300 2900 6300 3050
Wire Wire Line
	6300 3050 6200 3050
Wire Wire Line
	6550 3150 6200 3150
Wire Wire Line
	6200 3150 6200 3250
Wire Wire Line
	6550 3350 6200 3350
Wire Wire Line
	6700 4800 6250 4800
Wire Wire Line
	6900 4800 6900 4700
Wire Wire Line
	6900 4700 6350 4700
Wire Wire Line
	6350 4700 6350 4900
Wire Wire Line
	6350 4900 6250 4900
Wire Wire Line
	6500 5000 6350 5000
Wire Wire Line
	6350 5000 6350 5100
Wire Wire Line
	6350 5100 6250 5100
Wire Wire Line
	6500 5200 6250 5200
$Comp
L EggbotWireless-rescue:+12V-power #PWR0142
U 1 1 5CF0714E
P 5850 4300
F 0 "#PWR0142" H 5850 4150 50  0001 C CNN
F 1 "+12V" V 5865 4428 50  0000 L CNN
F 2 "" H 5850 4300 50  0001 C CNN
F 3 "" H 5850 4300 50  0001 C CNN
	1    5850 4300
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:+12V-power #PWR0143
U 1 1 5CF093C7
P 5800 2450
F 0 "#PWR0143" H 5800 2300 50  0001 C CNN
F 1 "+12V" V 5815 2578 50  0000 L CNN
F 2 "" H 5800 2450 50  0001 C CNN
F 3 "" H 5800 2450 50  0001 C CNN
	1    5800 2450
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0144
U 1 1 5CF0A85A
P 5900 5700
F 0 "#PWR0144" H 5900 5450 50  0001 C CNN
F 1 "GND" H 5905 5527 50  0000 C CNN
F 2 "" H 5900 5700 50  0001 C CNN
F 3 "" H 5900 5700 50  0001 C CNN
	1    5900 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5700 5900 5700
Wire Wire Line
	5850 5700 5900 5700
Connection ~ 5900 5700
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0145
U 1 1 5CF20CA3
P 5850 3850
F 0 "#PWR0145" H 5850 3600 50  0001 C CNN
F 1 "GND" H 5855 3677 50  0000 C CNN
F 2 "" H 5850 3850 50  0001 C CNN
F 3 "" H 5850 3850 50  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3850 5850 3850
Wire Wire Line
	5800 3850 5850 3850
Connection ~ 5850 3850
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0148
U 1 1 5CF94114
P 5450 4600
F 0 "#PWR0148" H 5450 4450 50  0001 C CNN
F 1 "+3.3V" H 5465 4773 50  0000 C CNN
F 2 "" H 5450 4600 50  0001 C CNN
F 3 "" H 5450 4600 50  0001 C CNN
	1    5450 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 4600 5450 4700
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0149
U 1 1 5CFA006C
P 5400 2750
F 0 "#PWR0149" H 5400 2600 50  0001 C CNN
F 1 "+3.3V" H 5415 2923 50  0000 C CNN
F 2 "" H 5400 2750 50  0001 C CNN
F 3 "" H 5400 2750 50  0001 C CNN
	1    5400 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 2750 5400 2850
$Comp
L EggbotWireless-rescue:Motor_Servo-Motor M3
U 1 1 5CEA7A5C
P 3400 5100
F 0 "M3" H 3732 5165 50  0000 L CNN
F 1 "Motor_Servo" H 3732 5074 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3400 4910 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 3400 4910 50  0001 C CNN
	1    3400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5000 2500 5000
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0150
U 1 1 5CEB75C4
P 3100 5200
F 0 "#PWR0150" H 3100 4950 50  0001 C CNN
F 1 "GND" H 3105 5027 50  0000 C CNN
F 2 "" H 3100 5200 50  0001 C CNN
F 3 "" H 3100 5200 50  0001 C CNN
	1    3100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3450 5350 3450
Connection ~ 5450 4600
$Comp
L EggbotWireless-rescue:Pololu_Breakout_DRV8825-Driver_Motor A2
U 1 1 5CE8A6D5
P 5850 4900
F 0 "A2" H 5850 5681 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5850 5590 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 6050 4100 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5950 4600 50  0001 C CNN
	1    5850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3450 5350 5300
Wire Wire Line
	5350 5300 5450 5300
Connection ~ 5350 3450
Wire Wire Line
	5350 3450 5400 3450
Wire Wire Line
	5250 3550 5400 3550
Wire Wire Line
	5250 5400 5450 5400
Wire Wire Line
	5200 3850 5200 5500
Wire Wire Line
	5200 5500 5450 5500
Connection ~ 5400 2750
$Comp
L EggbotWireless-rescue:Pololu_Breakout_DRV8825-Driver_Motor A1
U 1 1 5CE88FAE
P 5800 3050
F 0 "A1" H 5800 3831 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5800 3740 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 6000 2250 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5900 2750 50  0001 C CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3850 5300 3850
Wire Wire Line
	5300 3850 5300 3650
Wire Wire Line
	5300 3650 5400 3650
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0146
U 1 1 5D2FA0EE
P 5000 3450
F 0 "#PWR0146" H 5000 3300 50  0001 C CNN
F 1 "+3.3V" H 5015 3623 50  0000 C CNN
F 2 "" H 5000 3450 50  0001 C CNN
F 3 "" H 5000 3450 50  0001 C CNN
	1    5000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3450 4950 3450
Wire Wire Line
	4950 3450 4950 3650
Wire Wire Line
	4950 3650 4900 3650
Wire Wire Line
	4900 3650 4900 3850
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0138
U 1 1 5CEA2E4D
P 1000 4500
F 0 "#PWR0138" H 1000 4350 50  0001 C CNN
F 1 "+3.3V" H 1015 4673 50  0000 C CNN
F 2 "" H 1000 4500 50  0001 C CNN
F 3 "" H 1000 4500 50  0001 C CNN
	1    1000 4500
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0137
U 1 1 5CEA2524
P 700 4500
F 0 "#PWR0137" H 700 4350 50  0001 C CNN
F 1 "+3.3V" H 715 4673 50  0000 C CNN
F 2 "" H 700 4500 50  0001 C CNN
F 3 "" H 700 4500 50  0001 C CNN
	1    700  4500
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R18
U 1 1 5CE8A6EA
P 1000 4650
F 0 "R18" H 1070 4696 50  0000 L CNN
F 1 "10K" H 1070 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 930 4650 50  0001 C CNN
F 3 "~" H 1000 4650 50  0001 C CNN
	1    1000 4650
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R17
U 1 1 5CE89921
P 700 4650
F 0 "R17" H 770 4696 50  0000 L CNN
F 1 "10K" H 770 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 630 4650 50  0001 C CNN
F 3 "~" H 700 4650 50  0001 C CNN
	1    700  4650
	1    0    0    -1  
$EndComp
Text GLabel 700  4800 3    50   Input ~ 0
SCL
Text GLabel 1000 4800 3    50   Input ~ 0
SDA
Text GLabel 5450 5000 0    50   Input ~ 0
STEP2
Text GLabel 5450 5100 0    50   Input ~ 0
DIR2
Text GLabel 5400 3150 0    50   Input ~ 0
STEP1
Text GLabel 5400 3250 0    50   Input ~ 0
DIR1
Wire Wire Line
	2650 2050 2500 2050
Wire Wire Line
	2600 2150 2500 2150
Wire Wire Line
	2500 2250 2600 2250
$Comp
L EggbotWireless-rescue:+12V-power #PWR0101
U 1 1 5CEAFAB1
P 2600 2150
F 0 "#PWR0101" H 2600 2000 50  0001 C CNN
F 1 "+12V" V 2615 2278 50  0000 L CNN
F 2 "" H 2600 2150 50  0001 C CNN
F 3 "" H 2600 2150 50  0001 C CNN
	1    2600 2150
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0110
U 1 1 5CEB1C70
P 2600 2250
F 0 "#PWR0110" H 2600 2100 50  0001 C CNN
F 1 "+3.3V" V 2615 2378 50  0000 L CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0112
U 1 1 5CEB2B6C
P 2650 2050
F 0 "#PWR0112" H 2650 1800 50  0001 C CNN
F 1 "GND" H 2655 1877 50  0000 C CNN
F 2 "" H 2650 2050 50  0001 C CNN
F 3 "" H 2650 2050 50  0001 C CNN
	1    2650 2050
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:USB_B_Micro-Connector-Catfi-rescue J3
U 1 1 5B8AD2F1
P 7650 1800
F 0 "J3" H 7705 2267 50  0000 C CNN
F 1 "USB_B_Micro" H 7705 2176 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 7800 1750 50  0001 C CNN
F 3 "~" H 7800 1750 50  0001 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C8
U 1 1 5B8B4740
P 8300 1750
F 0 "C8" H 8200 1650 50  0000 R CNN
F 1 "100nf" H 8200 1750 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8338 1600 50  0001 C CNN
F 3 "~" H 8300 1750 50  0001 C CNN
	1    8300 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 2200 7550 2250
Wire Wire Line
	7650 2250 7650 2200
Wire Wire Line
	8050 1900 7950 1900
Text GLabel 8050 1600 1    50   Input ~ 0
VBUS
Wire Wire Line
	7950 1600 8300 1600
Wire Wire Line
	7550 2250 7600 2250
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0116
U 1 1 5CEB52D8
P 8300 1900
F 0 "#PWR0116" H 8300 1650 50  0001 C CNN
F 1 "GND" H 8305 1727 50  0000 C CNN
F 2 "" H 8300 1900 50  0001 C CNN
F 3 "" H 8300 1900 50  0001 C CNN
	1    8300 1900
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0117
U 1 1 5CEB5818
P 7600 2250
F 0 "#PWR0117" H 7600 2000 50  0001 C CNN
F 1 "GND" H 7605 2077 50  0000 C CNN
F 2 "" H 7600 2250 50  0001 C CNN
F 3 "" H 7600 2250 50  0001 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
Connection ~ 7600 2250
Wire Wire Line
	7600 2250 7650 2250
Text GLabel 8150 1800 3    50   Input ~ 0
USBD+
Wire Wire Line
	7950 1800 8150 1800
Text GLabel 8050 1900 3    50   Input ~ 0
USBD-
$Comp
L EggbotWireless-rescue:Stepper_Motor_bipolar-Motor M1
U 1 1 5CF4B0D1
P 6850 3250
F 0 "M1" H 7038 3374 50  0000 L CNN
F 1 " " H 7038 3283 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6860 3240 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 6860 3240 50  0001 C CNN
	1    6850 3250
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:Stepper_Motor_bipolar-Motor M2
U 1 1 5CF4C34B
P 6800 5100
F 0 "M2" H 6988 5224 50  0000 L CNN
F 1 " " H 6988 5133 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6810 5090 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 6810 5090 50  0001 C CNN
	1    6800 5100
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:LED-Device D3
U 1 1 5D296C74
P 4250 1300
F 0 "D3" V 4289 1183 50  0000 R CNN
F 1 "LED" V 4198 1183 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 1300 50  0001 C CNN
F 3 "~" H 4250 1300 50  0001 C CNN
	1    4250 1300
	0    -1   -1   0   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R21
U 1 1 5D2AE9C7
P 4250 1600
F 0 "R21" V 4043 1600 50  0000 C CNN
F 1 "510" V 4134 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4180 1600 50  0001 C CNN
F 3 "~" H 4250 1600 50  0001 C CNN
	1    4250 1600
	-1   0    0    1   
$EndComp
Text GLabel 4250 1150 1    50   Input ~ 0
VBUS
$Comp
L EggbotWireless-rescue:Conn_01x03_Male-Connector J2
U 1 1 5D2FE20C
P 2300 2150
F 0 "J2" H 2408 2431 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2408 2340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2300 2150 50  0001 C CNN
F 3 "~" H 2300 2150 50  0001 C CNN
	1    2300 2150
	1    0    0    -1  
$EndComp
Text GLabel 2500 2600 2    50   Input ~ 0
TXD_USB
$Comp
L EggbotWireless-rescue:Conn_01x05_Male-Connector J6
U 1 1 5D0DB384
P 2300 2800
F 0 "J6" H 2408 3181 50  0000 C CNN
F 1 "Conn_01x05_Male" H 2408 3090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2300 2800 50  0001 C CNN
F 3 "~" H 2300 2800 50  0001 C CNN
	1    2300 2800
	1    0    0    -1  
$EndComp
Text GLabel 2500 2700 2    50   Input ~ 0
RXD_USB
Text GLabel 2500 2800 2    50   Input ~ 0
RTS_USB
Text GLabel 2500 2900 2    50   Input ~ 0
DTR_USB
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0147
U 1 1 5D0DD546
P 2500 3000
F 0 "#PWR0147" H 2500 2750 50  0001 C CNN
F 1 "GND" H 2505 2827 50  0000 C CNN
F 2 "" H 2500 3000 50  0001 C CNN
F 3 "" H 2500 3000 50  0001 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:SolderJumper_2_Bridged-Jumper JP3
U 1 1 5D3CD55E
P 5150 3450
F 0 "JP3" H 5150 3655 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 5150 3564 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5150 3450 50  0001 C CNN
F 3 "~" H 5150 3450 50  0001 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:SolderJumper_2_Bridged-Jumper JP2
U 1 1 5D3CED16
P 5100 3650
F 0 "JP2" H 5100 3855 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 5100 3764 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5100 3650 50  0001 C CNN
F 3 "~" H 5100 3650 50  0001 C CNN
	1    5100 3650
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:SolderJumper_2_Bridged-Jumper JP1
U 1 1 5D3CF16C
P 5050 3850
F 0 "JP1" H 5050 4055 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 5050 3964 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5050 3850 50  0001 C CNN
F 3 "~" H 5050 3850 50  0001 C CNN
	1    5050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3550 5250 3650
Connection ~ 5000 3450
Connection ~ 4950 3650
Connection ~ 5250 3650
Wire Wire Line
	5250 3650 5250 5400
Connection ~ 5200 3850
Text GLabel 3100 5100 0    50   Input ~ 0
SERVOPWR
$Comp
L EggbotWireless-rescue:+5V-power #PWR0163
U 1 1 5F040FF3
P 2950 6600
F 0 "#PWR0163" H 2950 6450 50  0001 C CNN
F 1 "+5V" H 2965 6773 50  0000 C CNN
F 2 "" H 2950 6600 50  0001 C CNN
F 3 "" H 2950 6600 50  0001 C CNN
	1    2950 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP4
U 1 1 5F042E8B
P 3250 6600
F 0 "JP4" H 3250 6864 50  0000 C CNN
F 1 "Jumper" H 3250 6773 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3250 6600 50  0001 C CNN
F 3 "~" H 3250 6600 50  0001 C CNN
	1    3250 6600
	1    0    0    -1  
$EndComp
Text GLabel 3550 6600 3    50   Input ~ 0
SERVOPWR
$Comp
L Device:CP C1
U 1 1 5FCE453A
P 9450 4450
F 0 "C1" H 9568 4496 50  0000 L CNN
F 1 "220uF" H 9568 4405 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 9488 4300 50  0001 C CNN
F 3 "~" H 9450 4450 50  0001 C CNN
	1    9450 4450
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0102
U 1 1 5FCE514A
P 9450 4300
F 0 "#PWR0102" H 9450 4150 50  0001 C CNN
F 1 "+3.3V" H 9465 4473 50  0000 C CNN
F 2 "" H 9450 4300 50  0001 C CNN
F 3 "" H 9450 4300 50  0001 C CNN
	1    9450 4300
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0103
U 1 1 5FCE5DFF
P 9450 4600
F 0 "#PWR0103" H 9450 4350 50  0001 C CNN
F 1 "GND" H 9455 4427 50  0000 C CNN
F 2 "" H 9450 4600 50  0001 C CNN
F 3 "" H 9450 4600 50  0001 C CNN
	1    9450 4600
	1    0    0    -1  
$EndComp
$Comp
L 3v3StepDown:3v3StepDownModule U1
U 1 1 5FCE6F98
P 8750 4400
F 0 "U1" H 8750 4665 50  0000 C CNN
F 1 "3v3StepDownModule" H 8750 4574 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8750 4400 50  0001 C CNN
F 3 "" H 8750 4400 50  0001 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+3.3V-power #PWR0104
U 1 1 5FCE7CE9
P 9100 4400
F 0 "#PWR0104" H 9100 4250 50  0001 C CNN
F 1 "+3.3V" H 9115 4573 50  0000 C CNN
F 2 "" H 9100 4400 50  0001 C CNN
F 3 "" H 9100 4400 50  0001 C CNN
	1    9100 4400
	0    1    1    0   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR0105
U 1 1 5FCE86A4
P 8750 4750
F 0 "#PWR0105" H 8750 4500 50  0001 C CNN
F 1 "GND" H 8755 4577 50  0000 C CNN
F 2 "" H 8750 4750 50  0001 C CNN
F 3 "" H 8750 4750 50  0001 C CNN
	1    8750 4750
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:+5V-power #PWR0106
U 1 1 5FCE9732
P 8400 4400
F 0 "#PWR0106" H 8400 4250 50  0001 C CNN
F 1 "+5V" H 8415 4573 50  0000 C CNN
F 2 "" H 8400 4400 50  0001 C CNN
F 3 "" H 8400 4400 50  0001 C CNN
	1    8400 4400
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
