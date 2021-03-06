EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7200 2650 900  1050
U 5FEE70AA
F0 "IDE16 Interface" 50
F1 "IDE16 Interface.sch" 50
F2 "A[0..7]" I L 7200 2800 50 
F3 "D[0..7]" I L 7200 2900 50 
F4 "~IOREQ" I L 7200 3400 50 
F5 "~RD" I L 7200 3500 50 
F6 "~WR" I L 7200 3600 50 
F7 "CPUCLK" I L 7200 3200 50 
F8 "~RESET" I L 7200 3100 50 
F9 "~M1" I L 7200 3300 50 
F10 "~INT" O R 8100 3150 50 
F11 "~WAIT" O R 8100 3250 50 
$EndSheet
Wire Wire Line
	1550 2600 1150 2600
Wire Wire Line
	1550 2700 1150 2700
Wire Wire Line
	1550 2800 1150 2800
Wire Wire Line
	1550 2900 1150 2900
Wire Wire Line
	2750 2600 3200 2600
Wire Wire Line
	2750 2700 3200 2700
Wire Wire Line
	2750 2800 3200 2800
Wire Wire Line
	2750 2900 3200 2900
Wire Wire Line
	1550 3600 1150 3600
Wire Wire Line
	1550 3700 1150 3700
Wire Wire Line
	1550 3800 1150 3800
Wire Wire Line
	1550 3900 1150 3900
Wire Wire Line
	2750 3600 3200 3600
Wire Wire Line
	2750 3700 3200 3700
Wire Wire Line
	2750 3800 3200 3800
Wire Wire Line
	2750 3900 3200 3900
Wire Wire Line
	2750 4000 3200 4000
Wire Wire Line
	1550 4100 1150 4100
Wire Wire Line
	5300 2900 5700 2900
Wire Wire Line
	5300 3400 5700 3400
Wire Wire Line
	5300 2500 5450 2500
Wire Wire Line
	5450 2500 5450 2300
Wire Wire Line
	4100 2500 3900 2500
Wire Wire Line
	3900 2500 3900 2300
Wire Wire Line
	2750 2500 2950 2500
Wire Wire Line
	2950 2500 2950 2300
Wire Wire Line
	1550 2500 1400 2500
Wire Wire Line
	1400 2500 1400 2300
$Comp
L power:GND #PWR0101
U 1 1 60172A89
P 1400 2300
F 0 "#PWR0101" H 1400 2050 50  0001 C CNN
F 1 "GND" H 1405 2127 50  0000 C CNN
F 2 "" H 1400 2300 50  0001 C CNN
F 3 "" H 1400 2300 50  0001 C CNN
	1    1400 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60172DCB
P 3900 2300
F 0 "#PWR0103" H 3900 2050 50  0001 C CNN
F 1 "GND" H 3905 2127 50  0000 C CNN
F 2 "" H 3900 2300 50  0001 C CNN
F 3 "" H 3900 2300 50  0001 C CNN
	1    3900 2300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60173340
P 2950 2300
F 0 "#PWR0102" H 2950 2150 50  0001 C CNN
F 1 "+5V" H 2965 2473 50  0000 C CNN
F 2 "" H 2950 2300 50  0001 C CNN
F 3 "" H 2950 2300 50  0001 C CNN
	1    2950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 60173890
P 5450 2300
F 0 "#PWR0104" H 5450 2150 50  0001 C CNN
F 1 "+5V" H 5465 2473 50  0000 C CNN
F 2 "" H 5450 2300 50  0001 C CNN
F 3 "" H 5450 2300 50  0001 C CNN
	1    5450 2300
	1    0    0    -1  
$EndComp
NoConn ~ 5300 2600
NoConn ~ 5300 2800
NoConn ~ 5300 3000
NoConn ~ 5300 3100
NoConn ~ 5300 3200
NoConn ~ 5300 3300
NoConn ~ 5300 4000
NoConn ~ 5300 4100
NoConn ~ 5300 4200
NoConn ~ 5300 4300
NoConn ~ 5300 4400
NoConn ~ 5300 3900
NoConn ~ 5300 3800
NoConn ~ 5300 3700
NoConn ~ 5300 3600
NoConn ~ 5300 3500
NoConn ~ 4100 2600
NoConn ~ 4100 2700
NoConn ~ 4100 2900
NoConn ~ 4100 3000
NoConn ~ 4100 3200
NoConn ~ 4100 3300
NoConn ~ 4100 3500
NoConn ~ 4100 3600
NoConn ~ 4100 3700
NoConn ~ 4100 3800
NoConn ~ 4100 3900
NoConn ~ 4100 4000
NoConn ~ 4100 4100
NoConn ~ 4100 4200
NoConn ~ 4100 4300
NoConn ~ 4100 4400
NoConn ~ 2750 4400
NoConn ~ 2750 4300
NoConn ~ 2750 4200
NoConn ~ 2750 4100
NoConn ~ 2750 3500
NoConn ~ 2750 3400
NoConn ~ 2750 3300
NoConn ~ 2750 3200
NoConn ~ 2750 3100
NoConn ~ 2750 3000
NoConn ~ 1550 3000
NoConn ~ 1550 3100
NoConn ~ 1550 3200
NoConn ~ 1550 3300
NoConn ~ 1550 3400
NoConn ~ 1550 3500
NoConn ~ 1550 4000
NoConn ~ 1550 4200
NoConn ~ 1550 4300
NoConn ~ 1550 4400
Wire Wire Line
	4100 3400 3650 3400
Text Label 3750 3400 0    50   ~ 0
~RESET
Text Label 5400 3400 0    50   ~ 0
CPUCLK
Text Label 5450 2900 0    50   ~ 0
~IOREQ
Text Label 1250 2600 0    50   ~ 0
A0
Text Label 1250 2700 0    50   ~ 0
A2
Text Label 1250 2800 0    50   ~ 0
A4
Text Label 1250 2900 0    50   ~ 0
A6
Text Label 3000 2600 0    50   ~ 0
A1
Text Label 3000 2700 0    50   ~ 0
A3
Text Label 3000 2800 0    50   ~ 0
A5
Text Label 3000 2900 0    50   ~ 0
A7
Text Label 1250 3600 0    50   ~ 0
D0
Text Label 1250 3700 0    50   ~ 0
D2
Text Label 1250 3800 0    50   ~ 0
D4
Text Label 1250 3900 0    50   ~ 0
D6
Text Label 1250 4100 0    50   ~ 0
~RD
Text Label 3000 3600 0    50   ~ 0
D1
Text Label 3000 3700 0    50   ~ 0
D3
Text Label 3000 3800 0    50   ~ 0
D5
Text Label 3000 3900 0    50   ~ 0
D7
Text Label 3000 4000 0    50   ~ 0
~WR
Wire Bus Line
	7200 2800 6750 2800
Wire Bus Line
	7200 2900 6750 2900
Wire Wire Line
	7200 3100 6750 3100
Wire Wire Line
	7200 3200 6750 3200
Wire Wire Line
	7200 3400 6750 3400
Wire Wire Line
	7200 3500 6750 3500
Wire Wire Line
	7200 3600 6750 3600
Text Label 6800 3100 0    50   ~ 0
~RESET
Text Label 6800 3200 0    50   ~ 0
CPUCLK
Text Label 6800 3400 0    50   ~ 0
~IOREQ
Text Label 6800 3500 0    50   ~ 0
~RD
Text Label 6800 3600 0    50   ~ 0
~WR
Text Label 6800 2800 0    50   ~ 0
A[0..7]
Text Label 6800 2900 0    50   ~ 0
D[0..7]
$Comp
L SYSHDR:BUSHDR-A HDR101
U 1 1 5FEBB31E
P 2150 3450
F 0 "HDR101" H 2150 4687 60  0000 C CNN
F 1 "BUSHDR-A" H 2150 4581 60  0000 C CNN
F 2 "" H 2150 2800 60  0000 C CNN
F 3 "" H 2150 2800 60  0000 C CNN
	1    2150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 6750 3300
Wire Wire Line
	8100 3150 8400 3150
Text Label 8250 3150 0    50   ~ 0
~INT
Text Label 6800 3300 0    50   ~ 0
~M1
$Comp
L SYSHDR:BUSHDR-B HDR102
U 1 1 5FEBC6E9
P 4700 3450
F 0 "HDR102" H 4700 4687 60  0000 C CNN
F 1 "BUSHDR-B" H 4700 4581 60  0000 C CNN
F 2 "" H 4700 2800 60  0000 C CNN
F 3 "" H 4700 2800 60  0000 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2800 3650 2800
Wire Wire Line
	4100 3100 3650 3100
Text Label 3750 2800 0    50   ~ 0
~M1
Text Label 3750 3100 0    50   ~ 0
~INT
$Comp
L Connector:Screw_Terminal_01x02 J101
U 1 1 602A2E3A
P 7150 1300
F 0 "J101" H 7230 1292 50  0000 L CNN
F 1 "Power" H 7230 1201 50  0000 L CNN
F 2 "" H 7150 1300 50  0001 C CNN
F 3 "~" H 7150 1300 50  0001 C CNN
	1    7150 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 602A3004
P 6800 1150
F 0 "#PWR0105" H 6800 1000 50  0001 C CNN
F 1 "+5V" H 6815 1323 50  0000 C CNN
F 2 "" H 6800 1150 50  0001 C CNN
F 3 "" H 6800 1150 50  0001 C CNN
	1    6800 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 602A35BA
P 6800 1600
F 0 "#PWR0106" H 6800 1350 50  0001 C CNN
F 1 "GND" H 6805 1427 50  0000 C CNN
F 2 "" H 6800 1600 50  0001 C CNN
F 3 "" H 6800 1600 50  0001 C CNN
	1    6800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1300 6800 1300
Wire Wire Line
	6800 1300 6800 1200
Wire Wire Line
	6950 1400 6800 1400
Wire Wire Line
	6800 1400 6800 1550
$Comp
L Device:CP C101
U 1 1 602A5885
P 6250 1350
F 0 "C101" H 6368 1396 50  0000 L CNN
F 1 "10uF" H 6368 1305 50  0000 L CNN
F 2 "" H 6288 1200 50  0001 C CNN
F 3 "~" H 6250 1350 50  0001 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1500 6250 1550
Wire Wire Line
	6250 1550 6800 1550
Connection ~ 6800 1550
Wire Wire Line
	6800 1550 6800 1600
Wire Wire Line
	6250 1200 6800 1200
Connection ~ 6800 1200
Wire Wire Line
	6800 1200 6800 1150
Wire Wire Line
	8100 3250 8400 3250
Text Label 8200 3250 0    50   ~ 0
~WAIT
Wire Wire Line
	5300 2700 5700 2700
Text Label 5450 2700 0    50   ~ 0
~WAIT
Text Notes 7050 6900 0    50   ~ 0
Add\n- SD-card\n- PS2 keyboard / mouse (INT)\n- GamePort JoyStick (Dsub15)
$EndSCHEMATC
