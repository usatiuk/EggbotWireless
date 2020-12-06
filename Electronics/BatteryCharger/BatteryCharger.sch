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
L EggbotWireless-rescue:LTC4054ES5-4.2-Battery_Management-Catfi-rescue U?
U 1 1 5FF5AAA4
P 4300 3200
F 0 "U?" H 4650 3050 50  0000 L CNN
F 1 "LTC4054ES5-4.2" H 4650 2950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 4300 2700 50  0001 C CNN
F 3 "http://cds.linear.com/docs/en/datasheet/405442xf.pdf" H 4300 3100 50  0001 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF5AAAA
P 3750 3500
F 0 "R?" H 3820 3546 50  0000 L CNN
F 1 "2.2K" H 3820 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3680 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3300 3750 3300
Wire Wire Line
	4700 3200 4750 3200
Wire Wire Line
	4300 2800 4300 2900
Wire Wire Line
	3550 2800 4300 2800
Wire Wire Line
	3750 3300 3750 3350
Wire Wire Line
	3750 3650 3750 3700
Wire Wire Line
	4300 3600 4300 3700
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF5AAB7
P 4300 3700
F 0 "#PWR?" H 4300 3450 50  0001 C CNN
F 1 "GND" H 4305 3527 50  0000 C CNN
F 2 "" H 4300 3700 50  0001 C CNN
F 3 "" H 4300 3700 50  0001 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
Text GLabel 3900 3200 0    50   Input ~ 0
CHRG
Wire Wire Line
	4750 2600 4750 3200
Wire Wire Line
	5050 3050 5100 3050
$Comp
L EggbotWireless-rescue:Conn_01x02_Female-Connector-Catfi-rescue J?
U 1 1 5FF5AAC6
P 4850 3050
F 0 "J?" H 4744 2725 50  0000 C CNN
F 1 "BATT" H 4744 2816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4850 3050 50  0001 C CNN
F 3 "~" H 4850 3050 50  0001 C CNN
	1    4850 3050
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF5AACC
P 7150 3750
F 0 "#PWR?" H 7150 3500 50  0001 C CNN
F 1 "GND" H 7155 3577 50  0000 C CNN
F 2 "" H 7150 3750 50  0001 C CNN
F 3 "" H 7150 3750 50  0001 C CNN
	1    7150 3750
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF5AAD2
P 7050 3100
F 0 "#PWR?" H 7050 2850 50  0001 C CNN
F 1 "GND" H 7055 2927 50  0000 C CNN
F 2 "" H 7050 3100 50  0001 C CNN
F 3 "" H 7050 3100 50  0001 C CNN
	1    7050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3750 7150 3750
Wire Wire Line
	7050 3050 7050 3100
Wire Wire Line
	6700 3050 6600 3050
Wire Wire Line
	7000 3050 7050 3050
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF5AADC
P 6850 3050
F 0 "R?" V 6643 3050 50  0000 C CNN
F 1 "1K" V 6734 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6780 3050 50  0001 C CNN
F 3 "~" H 6850 3050 50  0001 C CNN
	1    6850 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3050 5850 3500
Wire Wire Line
	7300 3900 7050 3900
Wire Wire Line
	6350 3350 7300 3350
Wire Wire Line
	5850 3050 5900 3050
Wire Wire Line
	5700 3500 5850 3500
Wire Wire Line
	5700 3500 5700 3400
$Comp
L EggbotWireless-rescue:C-Device-Catfi-rescue C?
U 1 1 5FF5AAE8
P 5700 3250
F 0 "C?" H 5900 3200 50  0000 R CNN
F 1 "100nf" H 6050 3300 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5738 3100 50  0001 C CNN
F 3 "~" H 5700 3250 50  0001 C CNN
	1    5700 3250
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:DW01-DW01-Catfi-rescue U?
U 1 1 5FF5AAEE
P 6250 2800
F 0 "U?" H 6250 2915 50  0000 C CNN
F 1 "DW01" H 6250 2824 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 6200 3000 50  0001 C CNN
F 3 "" H 6250 2800 50  0001 C CNN
	1    6250 2800
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF5AAF4
P 5500 2950
F 0 "R?" V 5293 2950 50  0000 C CNN
F 1 "100" V 5384 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5430 2950 50  0001 C CNN
F 3 "~" H 5500 2950 50  0001 C CNN
	1    5500 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 2950 5650 2950
Wire Wire Line
	5700 2950 5700 3100
Wire Wire Line
	5700 2950 5900 2950
Connection ~ 5700 2950
Wire Wire Line
	5350 2950 5200 2950
Wire Wire Line
	7300 3350 7300 3900
Wire Wire Line
	5200 2600 5200 2950
Wire Wire Line
	4750 2600 5200 2600
Connection ~ 5200 2950
Wire Wire Line
	5200 2950 5050 2950
$Comp
L DMG4800LSD:DMG4800LSD U?
U 1 1 5FF5AB04
P 6700 3550
F 0 "U?" H 6700 3665 50  0000 C CNN
F 1 "FDS6898AZ" H 6700 3574 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 6590 3665 50  0001 C CNN
F 3 "" H 6590 3665 50  0001 C CNN
	1    6700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3050 5100 3750
Wire Wire Line
	6200 3350 6200 3900
Wire Wire Line
	6200 3900 6350 3900
Wire Wire Line
	6350 3750 5700 3750
Wire Wire Line
	5700 3500 5700 3750
Connection ~ 5700 3500
Connection ~ 5700 3750
Wire Wire Line
	5700 3750 5100 3750
Wire Wire Line
	7050 4050 7050 4250
Wire Wire Line
	7050 4250 6350 4250
Wire Wire Line
	6350 4250 6350 4050
Text GLabel 5200 2950 3    50   Input ~ 0
BATT
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF5AB16
P 3750 4100
F 0 "#PWR?" H 3750 3850 50  0001 C CNN
F 1 "GND" H 3755 3927 50  0000 C CNN
F 2 "" H 3750 4100 50  0001 C CNN
F 3 "" H 3750 4100 50  0001 C CNN
	1    3750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3900 3450 3900
Text GLabel 3350 3900 0    50   Input ~ 0
CHEN
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF5AB1E
P 3450 3600
F 0 "#PWR?" H 3450 3350 50  0001 C CNN
F 1 "GND" H 3455 3427 50  0000 C CNN
F 2 "" H 3450 3600 50  0001 C CNN
F 3 "" H 3450 3600 50  0001 C CNN
	1    3450 3600
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF5AB24
P 3450 3750
F 0 "R?" V 3243 3750 50  0000 C CNN
F 1 "10K" V 3334 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 3750 50  0001 C CNN
F 3 "~" H 3450 3750 50  0001 C CNN
	1    3450 3750
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:IRLML6402-Transistor_FET Q?
U 1 1 5FF5AB2A
P 3650 3900
F 0 "Q?" H 3856 3854 50  0000 L CNN
F 1 "IRLML6402" H 3856 3945 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3850 3825 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 3650 3900 50  0001 L CNN
	1    3650 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	8000 3350 8100 3350
Connection ~ 8000 3350
Wire Wire Line
	8000 3900 8000 3350
Wire Wire Line
	7850 3900 8000 3900
Connection ~ 7600 3050
$Comp
L EggbotWireless-rescue:IRLML6402-Transistor_FET Q?
U 1 1 5FF5AB35
P 7800 3050
F 0 "Q?" H 8006 3004 50  0000 L CNN
F 1 "IRLML6402" H 8006 3095 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8000 2975 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 7800 3050 50  0001 L CNN
	1    7800 3050
	1    0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:D_Schottky-Device D?
U 1 1 5FF5AB3B
P 7750 2600
F 0 "D?" H 7750 2384 50  0000 C CNN
F 1 "SSB43L" H 7750 2475 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 7750 2600 50  0001 C CNN
F 3 "~" H 7750 2600 50  0001 C CNN
	1    7750 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 3900 7450 3900
Wire Wire Line
	7900 2600 7900 2850
$Comp
L EggbotWireless-rescue:+5V-power #PWR?
U 1 1 5FF5AB43
P 8500 3250
F 0 "#PWR?" H 8500 3100 50  0001 C CNN
F 1 "+5V" H 8515 3423 50  0000 C CNN
F 2 "" H 8500 3250 50  0001 C CNN
F 3 "" H 8500 3250 50  0001 C CNN
	1    8500 3250
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:SW_SPDT-Switch SW?
U 1 1 5FF5AB49
P 8300 3350
F 0 "SW?" H 8300 3500 50  0000 C CNN
F 1 " " H 8300 3544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 8300 3350 50  0001 C CNN
F 3 "~" H 8300 3350 50  0001 C CNN
	1    8300 3350
	1    0    0    -1  
$EndComp
$Comp
L EggbotWireless-rescue:D_Schottky-Device D?
U 1 1 5FF5AB4F
P 7700 3900
F 0 "D?" H 7700 3684 50  0000 C CNN
F 1 "SSB43L" H 7700 3775 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 7700 3900 50  0001 C CNN
F 3 "~" H 7700 3900 50  0001 C CNN
	1    7700 3900
	-1   0    0    1   
$EndComp
$Comp
L EggbotWireless-rescue:R-Device-Catfi-rescue R?
U 1 1 5FF5AB55
P 7600 3250
F 0 "R?" V 7393 3250 50  0000 C CNN
F 1 "10K" V 7484 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7530 3250 50  0001 C CNN
F 3 "~" H 7600 3250 50  0001 C CNN
	1    7600 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 3250 7900 3350
Wire Wire Line
	7900 3350 8000 3350
Wire Wire Line
	7600 3050 7450 3050
Wire Wire Line
	7600 3100 7600 3050
$Comp
L EggbotWireless-rescue:GND-power-Catfi-rescue #PWR?
U 1 1 5FF5AB5F
P 7600 3400
F 0 "#PWR?" H 7600 3150 50  0001 C CNN
F 1 "GND" H 7605 3227 50  0000 C CNN
F 2 "" H 7600 3400 50  0001 C CNN
F 3 "" H 7600 3400 50  0001 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3050 7450 3900
Text GLabel 7450 3050 0    50   Input ~ 0
VBUS
Connection ~ 5200 2600
Wire Wire Line
	7600 2600 5200 2600
Connection ~ 3450 3900
$EndSCHEMATC
