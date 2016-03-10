EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:l293d
LIBS:drv8835
LIBS:tinybot-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "tinyDriver"
Date ""
Rev "0.3"
Comp "electronut Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 56DB9182
P 3600 4300
F 0 "D1" H 3600 4400 50  0000 C CNN
F 1 "RED LED" H 3600 4200 50  0000 C CNN
F 2 "LEDs:LED_1206" H 3600 4300 50  0001 C CNN
F 3 "" H 3600 4300 50  0000 C CNN
	1    3600 4300
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X03 P3
U 1 1 56DBB664
P 9150 2200
F 0 "P3" H 9150 2400 50  0000 C CNN
F 1 "ICSP" H 9150 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 9150 1000 50  0001 C CNN
F 3 "" H 9150 1000 50  0000 C CNN
	1    9150 2200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56DBB6F7
P 8750 3700
F 0 "R2" V 8830 3700 50  0000 C CNN
F 1 "200" V 8750 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8680 3700 50  0001 C CNN
F 3 "" H 8750 3700 50  0000 C CNN
	1    8750 3700
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 56DBB72A
P 8750 3900
F 0 "R3" V 8830 3900 50  0000 C CNN
F 1 "100" V 8750 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8680 3900 50  0001 C CNN
F 3 "" H 8750 3900 50  0000 C CNN
	1    8750 3900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR8
U 1 1 56DBB7D0
P 5700 6500
F 0 "#PWR8" H 5700 6250 50  0001 C CNN
F 1 "GND" H 5700 6350 50  0000 C CNN
F 2 "" H 5700 6500 50  0000 C CNN
F 3 "" H 5700 6500 50  0000 C CNN
	1    5700 6500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG3
U 1 1 56DBB7F9
P 5700 6300
F 0 "#FLG3" H 5700 6395 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 6480 50  0000 C CNN
F 2 "" H 5700 6300 50  0000 C CNN
F 3 "" H 5700 6300 50  0000 C CNN
	1    5700 6300
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33TR U1
U 1 1 56DBB8AC
P 2700 4050
F 0 "U1" H 2700 4300 50  0000 C CNN
F 1 "LD1117S33TR" H 2700 4250 50  0000 C CNN
F 2 "tinybot:SOT-223" H 2700 4150 50  0000 C CNN
F 3 "" H 2700 4050 50  0000 C CNN
	1    2700 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 56DBB972
P 1100 4050
F 0 "P1" H 1100 4200 50  0000 C CNN
F 1 "PWR" V 1200 4050 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 1100 4050 50  0001 C CNN
F 3 "" H 1100 4050 50  0000 C CNN
	1    1100 4050
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 56DBBA68
P 3600 4950
F 0 "R1" V 3680 4950 50  0000 C CNN
F 1 "330" V 3600 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3530 4950 50  0001 C CNN
F 3 "" H 3600 4950 50  0000 C CNN
	1    3600 4950
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP1
U 1 1 56DBBF78
P 3600 5600
F 0 "JP1" H 3600 5750 50  0000 C CNN
F 1 "JUMPER" H 3600 5520 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 3600 5600 50  0001 C CNN
F 3 "" H 3600 5600 50  0000 C CNN
	1    3600 5600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1
U 1 1 56DBBFEE
P 1400 4400
F 0 "#PWR1" H 1400 4150 50  0001 C CNN
F 1 "GND" H 1400 4250 50  0000 C CNN
F 2 "" H 1400 4400 50  0000 C CNN
F 3 "" H 1400 4400 50  0000 C CNN
	1    1400 4400
	1    0    0    -1  
$EndComp
Text GLabel 1100 3700 0    60   Input ~ 0
VIN
$Comp
L GND #PWR5
U 1 1 56DBC175
P 3600 6100
F 0 "#PWR5" H 3600 5850 50  0001 C CNN
F 1 "GND" H 3600 5950 50  0000 C CNN
F 2 "" H 3600 6100 50  0000 C CNN
F 3 "" H 3600 6100 50  0000 C CNN
	1    3600 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 56DBCAAD
P 4400 5300
F 0 "#PWR6" H 4400 5050 50  0001 C CNN
F 1 "GND" H 4400 5150 50  0000 C CNN
F 2 "" H 4400 5300 50  0000 C CNN
F 3 "" H 4400 5300 50  0000 C CNN
	1    4400 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 56DBCBAE
P 2700 4600
F 0 "#PWR3" H 2700 4350 50  0001 C CNN
F 1 "GND" H 2700 4450 50  0000 C CNN
F 2 "" H 2700 4600 50  0000 C CNN
F 3 "" H 2700 4600 50  0000 C CNN
	1    2700 4600
	1    0    0    -1  
$EndComp
Text GLabel 3800 1650 0    39   Input ~ 0
VCC
Text GLabel 7950 4400 2    39   Input ~ 0
SCK
Text GLabel 7950 4500 2    39   Input ~ 0
MISO
Text GLabel 7950 4600 2    39   Input ~ 0
MOSI
Text GLabel 8200 5200 2    39   Input ~ 0
RESET
Text GLabel 9550 2200 2    39   Input ~ 0
MOSI
Text GLabel 3800 3600 2    39   Input ~ 0
VCC
$Comp
L GND #PWR10
U 1 1 56DBDDBC
P 9600 2450
F 0 "#PWR10" H 9600 2200 50  0001 C CNN
F 1 "GND" H 9600 2300 50  0000 C CNN
F 2 "" H 9600 2450 50  0000 C CNN
F 3 "" H 9600 2450 50  0000 C CNN
	1    9600 2450
	1    0    0    -1  
$EndComp
Text GLabel 9550 2100 2    39   Input ~ 0
VCC
Text GLabel 8750 2100 0    39   Input ~ 0
MISO
Text GLabel 8750 2200 0    39   Input ~ 0
SCK
Text GLabel 8750 2300 0    39   Input ~ 0
RESET
Text Notes 3700 5850 0    60   ~ 0
Power LED disconnect jumper.
$Comp
L CONN_01X02 P4
U 1 1 56DBF2EA
P 6800 1600
F 0 "P4" H 6800 1750 50  0000 C CNN
F 1 "M1" V 6900 1600 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 6800 1600 50  0001 C CNN
F 3 "" H 6800 1600 50  0000 C CNN
	1    6800 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 56DBF569
P 6800 2000
F 0 "P5" H 6800 2150 50  0000 C CNN
F 1 "M2" V 6900 2000 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 6800 2000 50  0001 C CNN
F 3 "" H 6800 2000 50  0000 C CNN
	1    6800 2000
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP2
U 1 1 56DBF9E9
P 4300 1650
F 0 "JP2" H 4300 1800 50  0000 C CNN
F 1 "JUMPER" H 4300 1570 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4300 1650 50  0001 C CNN
F 3 "" H 4300 1650 50  0000 C CNN
	1    4300 1650
	1    0    0    -1  
$EndComp
Text Notes 3000 1950 0    60   ~ 0
DRV8835 disconnect jumper.
Text GLabel 6600 5800 0    39   Input ~ 0
PWM1
Text GLabel 6600 6000 0    39   Input ~ 0
PWM2
Text GLabel 7300 5400 2    39   Input ~ 0
PH1
Text GLabel 7300 5600 2    39   Input ~ 0
PH2
$Comp
L C C1
U 1 1 56DC0BCC
P 2200 4350
F 0 "C1" H 2225 4450 50  0000 L CNN
F 1 "0.1uF" H 2225 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2238 4200 50  0001 C CNN
F 3 "" H 2200 4350 50  0000 C CNN
	1    2200 4350
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 56DC0D30
P 3200 4350
F 0 "C2" H 3225 4450 50  0000 L CNN
F 1 "10uF" H 3225 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3238 4200 50  0001 C CNN
F 3 "" H 3200 4350 50  0000 C CNN
	1    3200 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 56DC0DFE
P 2200 4600
F 0 "#PWR2" H 2200 4350 50  0001 C CNN
F 1 "GND" H 2200 4450 50  0000 C CNN
F 2 "" H 2200 4600 50  0000 C CNN
F 3 "" H 2200 4600 50  0000 C CNN
	1    2200 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 56DC0E3F
P 3200 4600
F 0 "#PWR4" H 3200 4350 50  0001 C CNN
F 1 "GND" H 3200 4450 50  0000 C CNN
F 2 "" H 3200 4600 50  0000 C CNN
F 3 "" H 3200 4600 50  0000 C CNN
	1    3200 4600
	1    0    0    -1  
$EndComp
$Comp
L LED_RCBG D2
U 1 1 56DD7EEB
P 9500 3900
F 0 "D2" H 9500 4250 50  0000 C CNN
F 1 "LED_RCBG" H 9500 3550 50  0000 C CNN
F 2 "LEDs:LED-RGB-5MM_Common_Cathode" H 9500 3850 50  0001 C CNN
F 3 "" H 9500 3850 50  0000 C CNN
	1    9500 3900
	-1   0    0    1   
$EndComp
$Comp
L FUSE F1
U 1 1 56DD8044
P 1750 4000
F 0 "F1" H 1850 4050 50  0000 C CNN
F 1 "FUSE" H 1650 3950 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_Reflow" H 1750 4000 50  0001 C CNN
F 3 "" H 1750 4000 50  0000 C CNN
	1    1750 4000
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 56DD91F9
P 8750 4100
F 0 "R4" V 8830 4100 50  0000 C CNN
F 1 "100" V 8750 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8680 4100 50  0001 C CNN
F 3 "" H 8750 4100 50  0000 C CNN
	1    8750 4100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR11
U 1 1 56DD94E5
P 10000 5100
F 0 "#PWR11" H 10000 4850 50  0001 C CNN
F 1 "GND" H 10000 4950 50  0000 C CNN
F 2 "" H 10000 5100 50  0000 C CNN
F 3 "" H 10000 5100 50  0000 C CNN
	1    10000 5100
	1    0    0    -1  
$EndComp
Text GLabel 6500 3700 0    39   Input ~ 0
VCC
$Comp
L GND #PWR9
U 1 1 56DDA4AD
P 6700 3700
F 0 "#PWR9" H 6700 3450 50  0001 C CNN
F 1 "GND" H 6700 3550 50  0000 C CNN
F 2 "" H 6700 3700 50  0000 C CNN
F 3 "" H 6700 3700 50  0000 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP3
U 1 1 56DE6039
P 10000 4600
F 0 "JP3" H 10000 4750 50  0000 C CNN
F 1 "JUMPER" H 10000 4520 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 10000 4600 50  0001 C CNN
F 3 "" H 10000 4600 50  0000 C CNN
	1    10000 4600
	0    1    1    0   
$EndComp
Text Notes 10300 3950 3    60   ~ 0
RGB LED disconnet jumper.
$Comp
L CONN_01X14 P2
U 1 1 56DE6C96
P 7250 3400
F 0 "P2" H 7250 4150 50  0000 C CNN
F 1 "Pin Breakout" V 7350 3400 50  0000 C CNN
F 2 "tinybot:Pin_Header_Straight_1x14" H 7250 3400 50  0001 C CNN
F 3 "" H 7250 3400 50  0000 C CNN
	1    7250 3400
	0    -1   -1   0   
$EndComp
Text GLabel 5000 6500 2    60   Input ~ 0
VIN
$Comp
L PWR_FLAG #FLG2
U 1 1 56DE7431
P 4900 6300
F 0 "#FLG2" H 4900 6395 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 6480 50  0000 C CNN
F 2 "" H 4900 6300 50  0000 C CNN
F 3 "" H 4900 6300 50  0000 C CNN
	1    4900 6300
	1    0    0    -1  
$EndComp
$Comp
L DRV8835 U2
U 1 1 56E103E7
P 5700 1800
F 0 "U2" H 5850 1000 60  0000 C CNN
F 1 "DRV8835" H 5700 2200 60  0000 C CNN
F 2 "tinybot:DRV8835" H 5700 1800 60  0001 C CNN
F 3 "" H 5700 1800 60  0000 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
Text GLabel 4800 2000 0    39   Input ~ 0
PWM1
Wire Wire Line
	3800 1650 4000 1650
Connection ~ 7900 5200
Wire Wire Line
	7900 3600 7900 5200
Wire Wire Line
	7800 5100 6750 5100
Wire Wire Line
	7800 3600 7800 5100
Wire Wire Line
	6750 5000 7700 5000
Wire Wire Line
	7700 5000 7700 3600
Wire Wire Line
	6750 4900 7600 4900
Wire Wire Line
	7600 4900 7600 3600
Wire Wire Line
	6750 4700 8200 4700
Wire Wire Line
	7500 3600 7500 4700
Connection ~ 7400 4600
Wire Wire Line
	7400 4600 7400 3600
Connection ~ 7300 4500
Wire Wire Line
	7300 4500 7300 3600
Connection ~ 7200 4400
Wire Wire Line
	7200 4400 7200 3600
Wire Wire Line
	7100 4300 6750 4300
Wire Wire Line
	7100 3600 7100 5400
Wire Wire Line
	6750 4200 8300 4200
Wire Wire Line
	8900 2300 8750 2300
Wire Wire Line
	8900 2200 8750 2200
Wire Wire Line
	8900 2100 8750 2100
Wire Wire Line
	9400 2200 9550 2200
Wire Wire Line
	9400 2100 9550 2100
Wire Wire Line
	9600 2300 9600 2450
Wire Wire Line
	9400 2300 9600 2300
Wire Wire Line
	3600 3600 3800 3600
Wire Wire Line
	6750 5200 8200 5200
Wire Wire Line
	6750 4400 7950 4400
Wire Wire Line
	6750 4600 7950 4600
Wire Wire Line
	6750 4500 7950 4500
Wire Wire Line
	2700 4300 2700 4600
Wire Wire Line
	4400 5200 4400 5300
Wire Wire Line
	4650 5200 4400 5200
Wire Wire Line
	6750 4000 8300 4000
Wire Wire Line
	5700 6300 5700 6500
Wire Wire Line
	3600 5900 3600 6100
Wire Wire Line
	3600 5100 3600 5300
Wire Wire Line
	3600 4500 3600 4800
Connection ~ 3600 4000
Wire Wire Line
	3600 3600 3600 4100
Wire Wire Line
	3100 4000 4650 4000
Wire Wire Line
	1300 3700 1100 3700
Wire Wire Line
	1300 4000 1300 3700
Wire Wire Line
	1400 4100 1400 4400
Wire Wire Line
	1300 4100 1400 4100
Wire Wire Line
	6800 4600 6800 5800
Wire Wire Line
	6800 5800 6600 5800
Connection ~ 6800 4600
Wire Wire Line
	6900 4500 6900 6000
Wire Wire Line
	6900 6000 6600 6000
Connection ~ 6900 4500
Wire Wire Line
	7000 5600 7300 5600
Wire Wire Line
	7100 5400 7300 5400
Connection ~ 7100 4300
Wire Wire Line
	3200 4000 3200 4200
Connection ~ 3200 4000
Wire Wire Line
	2200 4000 2200 4200
Connection ~ 2200 4000
Wire Wire Line
	2200 4500 2200 4600
Wire Wire Line
	3200 4500 3200 4600
Wire Wire Line
	8900 3700 9200 3700
Wire Wire Line
	8900 3900 9200 3900
Wire Wire Line
	8900 4100 9200 4100
Wire Wire Line
	9800 3900 10000 3900
Wire Wire Line
	10000 3900 10000 4300
Wire Wire Line
	8300 4000 8300 3900
Wire Wire Line
	8300 3900 8600 3900
Wire Wire Line
	8300 4200 8300 4100
Wire Wire Line
	8300 4100 8600 4100
Wire Wire Line
	1300 4000 1500 4000
Wire Wire Line
	2000 4000 2300 4000
Wire Wire Line
	8200 3700 8600 3700
Wire Wire Line
	8200 4100 8200 3700
Wire Wire Line
	6750 4100 8200 4100
Wire Wire Line
	6700 3600 6700 3700
Wire Wire Line
	6600 3600 6600 3700
Wire Wire Line
	6600 3700 6500 3700
Wire Wire Line
	7000 5600 7000 4400
Connection ~ 7000 4400
Wire Wire Line
	10000 4900 10000 5100
Wire Wire Line
	6800 3600 6800 4000
Connection ~ 6800 4000
Wire Wire Line
	6900 3600 6900 4100
Connection ~ 6900 4100
Wire Wire Line
	7000 3600 7000 4200
Connection ~ 7000 4200
Wire Wire Line
	4900 6300 4900 6500
Wire Wire Line
	4900 6500 5000 6500
Wire Wire Line
	4800 2000 5100 2000
Text GLabel 4800 1900 0    39   Input ~ 0
PH1
Wire Wire Line
	4800 1900 5100 1900
Text GLabel 4800 2300 0    39   Input ~ 0
PWM2
Wire Wire Line
	4800 2300 5100 2300
Text GLabel 4800 2200 0    39   Input ~ 0
PH2
Wire Wire Line
	4800 2200 5100 2200
Text GLabel 4800 2450 0    39   Input ~ 0
MODE
Wire Wire Line
	4800 2450 5100 2450
$Comp
L GND #PWR7
U 1 1 56E11C7E
P 5700 2950
F 0 "#PWR7" H 5700 2700 50  0001 C CNN
F 1 "GND" H 5700 2800 50  0000 C CNN
F 2 "" H 5700 2950 50  0000 C CNN
F 3 "" H 5700 2950 50  0000 C CNN
	1    5700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2800 5700 2950
Wire Wire Line
	6300 1550 6600 1550
Wire Wire Line
	6300 1650 6600 1650
Wire Wire Line
	6300 1950 6600 1950
Wire Wire Line
	6300 2050 6600 2050
Wire Wire Line
	4600 1650 5100 1650
Text GLabel 4800 1150 0    39   Input ~ 0
VIN
Wire Wire Line
	4800 1150 4950 1150
Wire Wire Line
	4950 1150 4950 1550
Wire Wire Line
	4950 1550 5100 1550
Connection ~ 7500 4700
Text GLabel 8200 4700 2    39   Input ~ 0
MODE
$Comp
L PWR_FLAG #FLG1
U 1 1 56E1399D
P 4450 6300
F 0 "#FLG1" H 4450 6395 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 6480 50  0000 C CNN
F 2 "" H 4450 6300 50  0000 C CNN
F 3 "" H 4450 6300 50  0000 C CNN
	1    4450 6300
	1    0    0    -1  
$EndComp
Text GLabel 4400 6500 0    39   Input ~ 0
VCC
Wire Wire Line
	4450 6300 4450 6500
Wire Wire Line
	4450 6500 4400 6500
$Comp
L ATTINY84-M IC1
U 1 1 56E154DB
P 5700 4600
F 0 "IC1" H 4850 5350 50  0000 C CNN
F 1 "ATTINY84-M" H 6400 3850 50  0000 C CNN
F 2 "QFN/MLF20" H 5700 4400 50  0000 C CIN
F 3 "" H 5700 4600 50  0000 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
$EndSCHEMATC