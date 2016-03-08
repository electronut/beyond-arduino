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
LIBS:tinybot-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "tinyBot"
Date ""
Rev "0.3"
Comp "electronut Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY84-P IC1
U 1 1 56DB9101
P 5700 4600
F 0 "IC1" H 4850 5350 50  0000 C CNN
F 1 "ATTINY84-P" H 6400 3850 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 5700 4400 50  0000 C CIN
F 3 "" H 5700 4600 50  0000 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
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
L L293D U2
U 1 1 56DBB564
P 5750 2350
F 0 "U2" H 5750 1850 60  0000 C CNN
F 1 "L293D" H 5750 2850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_7.5x10.3mm_Pitch1.27mm" H 5850 2350 60  0001 C CNN
F 3 "" H 5850 2350 60  0000 C CNN
	1    5750 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P3
U 1 1 56DBB664
P 8750 2450
F 0 "P3" H 8750 2650 50  0000 C CNN
F 1 "ICSP" H 8750 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 8750 1250 50  0001 C CNN
F 3 "" H 8750 1250 50  0000 C CNN
	1    8750 2450
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
L GND #PWR01
U 1 1 56DBB7D0
P 5700 6500
F 0 "#PWR01" H 5700 6250 50  0001 C CNN
F 1 "GND" H 5700 6350 50  0000 C CNN
F 2 "" H 5700 6500 50  0000 C CNN
F 3 "" H 5700 6500 50  0000 C CNN
	1    5700 6500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 56DBB7F9
P 5700 6300
F 0 "#FLG02" H 5700 6395 50  0001 C CNN
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
L GND #PWR03
U 1 1 56DBBFEE
P 1400 4400
F 0 "#PWR03" H 1400 4150 50  0001 C CNN
F 1 "GND" H 1400 4250 50  0000 C CNN
F 2 "" H 1400 4400 50  0000 C CNN
F 3 "" H 1400 4400 50  0000 C CNN
	1    1400 4400
	1    0    0    -1  
$EndComp
Text GLabel 1100 3700 0    60   Input ~ 0
VIN
$Comp
L GND #PWR04
U 1 1 56DBC175
P 3600 6100
F 0 "#PWR04" H 3600 5850 50  0001 C CNN
F 1 "GND" H 3600 5950 50  0000 C CNN
F 2 "" H 3600 6100 50  0000 C CNN
F 3 "" H 3600 6100 50  0000 C CNN
	1    3600 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56DBCAAD
P 4400 5300
F 0 "#PWR05" H 4400 5050 50  0001 C CNN
F 1 "GND" H 4400 5150 50  0000 C CNN
F 2 "" H 4400 5300 50  0000 C CNN
F 3 "" H 4400 5300 50  0000 C CNN
	1    4400 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56DBCBAE
P 2700 4600
F 0 "#PWR06" H 2700 4350 50  0001 C CNN
F 1 "GND" H 2700 4450 50  0000 C CNN
F 2 "" H 2700 4600 50  0000 C CNN
F 3 "" H 2700 4600 50  0000 C CNN
	1    2700 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56DBCE29
P 4700 2800
F 0 "#PWR07" H 4700 2550 50  0001 C CNN
F 1 "GND" H 4700 2650 50  0000 C CNN
F 2 "" H 4700 2800 50  0000 C CNN
F 3 "" H 4700 2800 50  0000 C CNN
	1    4700 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 56DBCE58
P 6800 2800
F 0 "#PWR08" H 6800 2550 50  0001 C CNN
F 1 "GND" H 6800 2650 50  0000 C CNN
F 2 "" H 6800 2800 50  0000 C CNN
F 3 "" H 6800 2800 50  0000 C CNN
	1    6800 2800
	1    0    0    -1  
$EndComp
Text GLabel 3800 1700 0    60   Input ~ 0
VIN
Text GLabel 7950 4400 2    39   Input ~ 0
SCK
Text GLabel 7950 4500 2    39   Input ~ 0
MISO
Text GLabel 7950 4600 2    39   Input ~ 0
MOSI
Text GLabel 7950 5200 2    39   Input ~ 0
RESET
Text GLabel 9150 2450 2    39   Input ~ 0
MOSI
Text GLabel 3800 3600 2    39   Input ~ 0
VCC
$Comp
L GND #PWR09
U 1 1 56DBDDBC
P 9200 2700
F 0 "#PWR09" H 9200 2450 50  0001 C CNN
F 1 "GND" H 9200 2550 50  0000 C CNN
F 2 "" H 9200 2700 50  0000 C CNN
F 3 "" H 9200 2700 50  0000 C CNN
	1    9200 2700
	1    0    0    -1  
$EndComp
Text GLabel 9150 2350 2    39   Input ~ 0
VCC
Text GLabel 8350 2350 0    39   Input ~ 0
MISO
Text GLabel 8350 2450 0    39   Input ~ 0
SCK
Text GLabel 8350 2550 0    39   Input ~ 0
RESET
Text Notes 2350 5650 0    60   ~ 0
Desolder to save power.
$Comp
L CONN_01X02 P4
U 1 1 56DBF2EA
P 3900 2250
F 0 "P4" H 3900 2400 50  0000 C CNN
F 1 "M1" V 4000 2250 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 3900 2250 50  0001 C CNN
F 3 "" H 3900 2250 50  0000 C CNN
	1    3900 2250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 56DBF569
P 7700 2250
F 0 "P5" H 7700 2400 50  0000 C CNN
F 1 "M2" V 7800 2250 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 7700 2250 50  0001 C CNN
F 3 "" H 7700 2250 50  0000 C CNN
	1    7700 2250
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP2
U 1 1 56DBF9E9
P 4300 1700
F 0 "JP2" H 4300 1850 50  0000 C CNN
F 1 "JUMPER" H 4300 1620 50  0000 C CNN
F 2 "tinybot:2P-1.27" H 4300 1700 50  0001 C CNN
F 3 "" H 4300 1700 50  0000 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
Text Notes 3750 1450 0    60   ~ 0
L293D disconnect jumper.
Text GLabel 6600 5800 0    60   Input ~ 0
PWM1
Text GLabel 6600 6000 0    60   Input ~ 0
PWM2
Text GLabel 4600 2000 0    60   Input ~ 0
PWM1
Text GLabel 6300 3000 0    60   Input ~ 0
PWM2
Text GLabel 7300 5400 2    60   Input ~ 0
DIR1A
Text GLabel 7300 5600 2    60   Input ~ 0
DIR1B
Text GLabel 8600 4900 2    60   Input ~ 0
DIR2A
Text GLabel 8600 5100 2    60   Input ~ 0
DIR2B
Text GLabel 4900 3100 0    60   Input ~ 0
DIR1A
Text GLabel 4900 3300 0    60   Input ~ 0
DIR1B
Text GLabel 7500 2800 2    60   Input ~ 0
DIR2A
Text GLabel 7500 3000 2    60   Input ~ 0
DIR2B
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
L GND #PWR010
U 1 1 56DC0DFE
P 2200 4600
F 0 "#PWR010" H 2200 4350 50  0001 C CNN
F 1 "GND" H 2200 4450 50  0000 C CNN
F 2 "" H 2200 4600 50  0000 C CNN
F 3 "" H 2200 4600 50  0000 C CNN
	1    2200 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56DC0E3F
P 3200 4600
F 0 "#PWR011" H 3200 4350 50  0001 C CNN
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
L GND #PWR012
U 1 1 56DD94E5
P 10000 4300
F 0 "#PWR012" H 10000 4050 50  0001 C CNN
F 1 "GND" H 10000 4150 50  0000 C CNN
F 2 "" H 10000 4300 50  0000 C CNN
F 3 "" H 10000 4300 50  0000 C CNN
	1    10000 4300
	1    0    0    -1  
$EndComp
Text GLabel 6800 3700 0    39   Input ~ 0
VCC
$Comp
L GND #PWR013
U 1 1 56DDA4AD
P 7000 3700
F 0 "#PWR013" H 7000 3450 50  0001 C CNN
F 1 "GND" H 7000 3550 50  0000 C CNN
F 2 "" H 7000 3700 50  0000 C CNN
F 3 "" H 7000 3700 50  0000 C CNN
	1    7000 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X11 P2
U 1 1 56DE540A
P 7400 3400
F 0 "P2" H 7400 4000 50  0000 C CNN
F 1 "Pins Breakout" V 7500 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x11" H 7400 3400 50  0001 C CNN
F 3 "" H 7400 3400 50  0000 C CNN
	1    7400 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 1700 4000 1700
Wire Wire Line
	7500 2500 7500 2300
Wire Wire Line
	6300 2500 7500 2500
Wire Wire Line
	6300 2200 7500 2200
Wire Wire Line
	4100 2500 4100 2300
Wire Wire Line
	5200 2500 4100 2500
Wire Wire Line
	5200 2200 4100 2200
Connection ~ 7900 5200
Wire Wire Line
	7900 3600 7900 5200
Wire Wire Line
	7800 5100 6750 5100
Wire Wire Line
	7800 3600 7800 5100
Wire Wire Line
	6750 5000 8500 5000
Wire Wire Line
	7700 3600 7700 5000
Wire Wire Line
	6750 4900 8600 4900
Wire Wire Line
	7600 3600 7600 4900
Wire Wire Line
	7500 4700 6750 4700
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
	7200 3600 7200 4400
Wire Wire Line
	7100 4300 6750 4300
Wire Wire Line
	7100 3600 7100 5400
Wire Wire Line
	6750 4200 8300 4200
Wire Wire Line
	8500 2550 8350 2550
Wire Wire Line
	8500 2450 8350 2450
Wire Wire Line
	8500 2350 8350 2350
Wire Wire Line
	9000 2450 9150 2450
Wire Wire Line
	9000 2350 9150 2350
Wire Wire Line
	9200 2550 9200 2700
Wire Wire Line
	9000 2550 9200 2550
Wire Wire Line
	3600 3600 3800 3600
Wire Wire Line
	6750 5200 7950 5200
Wire Wire Line
	6750 4400 7950 4400
Wire Wire Line
	6750 4600 7950 4600
Wire Wire Line
	6750 4500 7950 4500
Connection ~ 4900 1700
Wire Wire Line
	6600 2000 6300 2000
Wire Wire Line
	6600 1700 6600 2000
Wire Wire Line
	4600 1700 6600 1700
Wire Wire Line
	4900 2700 4900 1700
Wire Wire Line
	5200 2700 4900 2700
Connection ~ 4700 2400
Wire Wire Line
	5200 2400 4700 2400
Wire Wire Line
	4700 2300 4700 2800
Wire Wire Line
	5200 2300 4700 2300
Connection ~ 6800 2400
Wire Wire Line
	6300 2400 6800 2400
Wire Wire Line
	6800 2300 6800 2800
Wire Wire Line
	6300 2300 6800 2300
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
	5200 2000 4600 2000
Wire Wire Line
	6300 2700 6500 2700
Wire Wire Line
	6500 2700 6500 3000
Wire Wire Line
	6500 3000 6300 3000
Wire Wire Line
	7000 5600 7300 5600
Wire Wire Line
	7100 5400 7300 5400
Connection ~ 7100 4300
Connection ~ 7600 4900
Wire Wire Line
	8500 5000 8500 5100
Wire Wire Line
	8500 5100 8600 5100
Connection ~ 7700 5000
Wire Wire Line
	5200 2100 5100 2100
Wire Wire Line
	5100 2100 5100 3100
Wire Wire Line
	5100 3100 4900 3100
Wire Wire Line
	5200 2600 5200 3300
Wire Wire Line
	5200 3300 4900 3300
Wire Wire Line
	6300 2600 7300 2600
Wire Wire Line
	7300 2600 7300 2800
Wire Wire Line
	7300 2800 7500 2800
Wire Wire Line
	6300 2100 7200 2100
Wire Wire Line
	7200 2100 7200 3000
Wire Wire Line
	7200 3000 7500 3000
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
	7000 3600 7000 3700
Wire Wire Line
	6900 3600 6900 3700
Wire Wire Line
	6900 3700 6800 3700
Wire Wire Line
	7000 5600 7000 4400
Connection ~ 7000 4400
$EndSCHEMATC
