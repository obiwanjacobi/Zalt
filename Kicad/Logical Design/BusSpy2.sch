EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:memory
LIBS:texas
LIBS:audio
LIBS:interface
LIBS:display
LIBS:atmel
LIBS:contrib
LIBS:Zilog
LIBS:memory-umc
LIBS:g-link
LIBS:syshdr
LIBS:cypressmicro
LIBS:CY8CKIT-059
LIBS:GAL16v8
LIBS:tex
LIBS:tex2
LIBS:texas-msp
LIBS:TIL311
LIBS:Z80 Computer-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Bus Spy 2"
Date ""
Rev ""
Comp "Canned Bytes"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TIL311 U503
U 1 1 57376E56
P 6650 1450
F 0 "U503" H 6300 1900 60  0000 C CNN
F 1 "TIL311" H 6700 1000 60  0000 C CNN
F 2 "" H 6650 1450 60  0000 C CNN
F 3 "" H 6650 1450 60  0000 C CNN
	1    6650 1450
	1    0    0    -1  
$EndComp
$Comp
L TIL311 U504
U 1 1 57376F1B
P 6650 2700
F 0 "U504" H 6300 3150 60  0000 C CNN
F 1 "TIL311" H 6700 2250 60  0000 C CNN
F 2 "" H 6650 2700 60  0000 C CNN
F 3 "" H 6650 2700 60  0000 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L TIL311 U505
U 1 1 57376F46
P 6650 3950
F 0 "U505" H 6300 4400 60  0000 C CNN
F 1 "TIL311" H 6700 3500 60  0000 C CNN
F 2 "" H 6650 3950 60  0000 C CNN
F 3 "" H 6650 3950 60  0000 C CNN
	1    6650 3950
	1    0    0    -1  
$EndComp
$Comp
L TIL311 U506
U 1 1 57376FBF
P 6650 5350
F 0 "U506" H 6300 5800 60  0000 C CNN
F 1 "TIL311" H 6700 4900 60  0000 C CNN
F 2 "" H 6650 5350 60  0000 C CNN
F 3 "" H 6650 5350 60  0000 C CNN
	1    6650 5350
	1    0    0    -1  
$EndComp
$Comp
L TIL311 U508
U 1 1 57376FF4
P 9100 1450
F 0 "U508" H 8750 1900 60  0000 C CNN
F 1 "TIL311" H 9150 1000 60  0000 C CNN
F 2 "" H 9100 1450 60  0000 C CNN
F 3 "" H 9100 1450 60  0000 C CNN
	1    9100 1450
	1    0    0    -1  
$EndComp
$Comp
L TIL311 U509
U 1 1 57377055
P 9100 2700
F 0 "U509" H 8750 3150 60  0000 C CNN
F 1 "TIL311" H 9150 2250 60  0000 C CNN
F 2 "" H 9100 2700 60  0000 C CNN
F 3 "" H 9100 2700 60  0000 C CNN
	1    9100 2700
	1    0    0    -1  
$EndComp
$Comp
L TIL311 U510
U 1 1 573770B4
P 9150 3950
F 0 "U510" H 8800 4400 60  0000 C CNN
F 1 "TIL311" H 9200 3500 60  0000 C CNN
F 2 "" H 9150 3950 60  0000 C CNN
F 3 "" H 9150 3950 60  0000 C CNN
	1    9150 3950
	1    0    0    -1  
$EndComp
$Comp
L TIL311 U507
U 1 1 573770E3
P 9050 5350
F 0 "U507" H 8700 5800 60  0000 C CNN
F 1 "TIL311" H 9100 4900 60  0000 C CNN
F 2 "" H 9050 5350 60  0000 C CNN
F 3 "" H 9050 5350 60  0000 C CNN
	1    9050 5350
	1    0    0    -1  
$EndComp
$Comp
L 74LS573 U501
U 1 1 57377128
P 2850 2150
F 0 "U501" H 3000 2750 50  0000 C CNN
F 1 "74LS573" H 3100 1550 50  0000 C CNN
F 2 "" H 2850 2150 50  0000 C CNN
F 3 "" H 2850 2150 50  0000 C CNN
	1    2850 2150
	1    0    0    -1  
$EndComp
$Comp
L 74LS573 U502
U 1 1 57377195
P 2850 3750
F 0 "U502" H 3000 4350 50  0000 C CNN
F 1 "74LS573" H 3100 3150 50  0000 C CNN
F 2 "" H 2850 3750 50  0000 C CNN
F 3 "" H 2850 3750 50  0000 C CNN
	1    2850 3750
	1    0    0    -1  
$EndComp
Text HLabel 1000 1650 0    60   Input ~ 0
!RESET
Text HLabel 1000 1750 0    60   Input ~ 0
!MEMREQ
Text HLabel 1000 1850 0    60   Input ~ 0
!IOREQ
Text HLabel 1000 1950 0    60   Input ~ 0
!RD
Text HLabel 1000 2050 0    60   Input ~ 0
!WR
Text HLabel 1000 2150 0    60   Input ~ 0
!M1
Text HLabel 2300 6450 0    60   Input ~ 0
CLK
Text HLabel 6050 1450 0    60   Input ~ 0
A0
Text HLabel 6050 1550 0    60   Input ~ 0
A1
Text HLabel 6050 1650 0    60   Input ~ 0
A2
Text HLabel 6050 1750 0    60   Input ~ 0
A3
Text HLabel 8500 1450 0    60   Input ~ 0
A4
Text HLabel 8500 1550 0    60   Input ~ 0
A5
Text HLabel 8500 1650 0    60   Input ~ 0
A6
Text HLabel 8500 1750 0    60   Input ~ 0
A7
Text HLabel 6050 2700 0    60   Input ~ 0
A8
Text HLabel 6050 2800 0    60   Input ~ 0
A9
Text HLabel 6050 2900 0    60   Input ~ 0
A10
Text HLabel 6050 3000 0    60   Input ~ 0
A11
Text HLabel 8500 2700 0    60   Input ~ 0
A12
Text HLabel 8500 2800 0    60   Input ~ 0
A13
Text HLabel 8500 2900 0    60   Input ~ 0
A14
Text HLabel 8500 3000 0    60   Input ~ 0
A15
Text HLabel 6050 3950 0    60   Input ~ 0
MA12
Text HLabel 6050 4050 0    60   Input ~ 0
MA13
Text HLabel 6050 4150 0    60   Input ~ 0
MA14
Text HLabel 6050 4250 0    60   Input ~ 0
MA15
Text HLabel 8550 3950 0    60   Input ~ 0
MA16
Text HLabel 8550 4050 0    60   Input ~ 0
MA17
Text HLabel 8550 4150 0    60   Input ~ 0
MA18
Text HLabel 8550 4250 0    60   Input ~ 0
MA19
Text HLabel 6050 5350 0    60   Input ~ 0
D0
Text HLabel 6050 5450 0    60   Input ~ 0
D1
Text HLabel 6050 5550 0    60   Input ~ 0
D2
Text HLabel 6050 5650 0    60   Input ~ 0
D3
Text HLabel 8450 5350 0    60   Input ~ 0
D4
Text HLabel 8450 5450 0    60   Input ~ 0
D5
Text HLabel 8450 5550 0    60   Input ~ 0
D6
Text HLabel 8450 5650 0    60   Input ~ 0
D7
Wire Wire Line
	8500 1150 8150 1150
Wire Wire Line
	8150 800  8150 5050
Wire Wire Line
	8150 5050 8450 5050
Wire Wire Line
	8150 2400 8500 2400
Connection ~ 8150 2400
Wire Wire Line
	8550 3650 8150 3650
Connection ~ 8150 3650
Wire Wire Line
	6050 1150 5300 1150
Wire Wire Line
	5300 800  5300 5350
Wire Wire Line
	5300 5050 6050 5050
Wire Wire Line
	6050 2400 5300 2400
Connection ~ 5300 2400
Wire Wire Line
	6050 3650 5300 3650
Connection ~ 5300 3650
Wire Wire Line
	5300 800  8150 800 
Connection ~ 5300 1150
Connection ~ 8150 1150
$Comp
L R R506
U 1 1 5737C310
P 7200 1150
F 0 "R506" V 7150 1300 50  0000 C CNN
F 1 "1k" V 7200 1150 50  0000 C CNN
F 2 "" V 7130 1150 50  0000 C CNN
F 3 "" H 7200 1150 50  0000 C CNN
	1    7200 1150
	0    1    1    0   
$EndComp
$Comp
L R R507
U 1 1 5737C3BD
P 7200 1250
F 0 "R507" V 7150 1400 50  0000 C CNN
F 1 "1k" V 7200 1250 50  0000 C CNN
F 2 "" V 7130 1250 50  0000 C CNN
F 3 "" H 7200 1250 50  0000 C CNN
	1    7200 1250
	0    1    1    0   
$EndComp
$Comp
L R R508
U 1 1 5737C401
P 7200 2400
F 0 "R508" V 7150 2550 50  0000 C CNN
F 1 "1k" V 7200 2400 50  0000 C CNN
F 2 "" V 7130 2400 50  0000 C CNN
F 3 "" H 7200 2400 50  0000 C CNN
	1    7200 2400
	0    1    1    0   
$EndComp
$Comp
L R R509
U 1 1 5737C4A9
P 7200 2500
F 0 "R509" V 7150 2650 50  0000 C CNN
F 1 "1k" V 7200 2500 50  0000 C CNN
F 2 "" V 7130 2500 50  0000 C CNN
F 3 "" H 7200 2500 50  0000 C CNN
	1    7200 2500
	0    1    1    0   
$EndComp
$Comp
L R R510
U 1 1 5737C64E
P 7200 3650
F 0 "R510" V 7150 3800 50  0000 C CNN
F 1 "1k" V 7200 3650 50  0000 C CNN
F 2 "" V 7130 3650 50  0000 C CNN
F 3 "" H 7200 3650 50  0000 C CNN
	1    7200 3650
	0    1    1    0   
$EndComp
$Comp
L R R511
U 1 1 5737C910
P 7200 3750
F 0 "R511" V 7150 3900 50  0000 C CNN
F 1 "1k" V 7200 3750 50  0000 C CNN
F 2 "" V 7130 3750 50  0000 C CNN
F 3 "" H 7200 3750 50  0000 C CNN
	1    7200 3750
	0    1    1    0   
$EndComp
$Comp
L R R512
U 1 1 5737CAA7
P 7200 5050
F 0 "R512" V 7150 5200 50  0000 C CNN
F 1 "1k" V 7200 5050 50  0000 C CNN
F 2 "" V 7130 5050 50  0000 C CNN
F 3 "" H 7200 5050 50  0000 C CNN
	1    7200 5050
	0    1    1    0   
$EndComp
$Comp
L R R513
U 1 1 5737CC8D
P 7200 5150
F 0 "R513" V 7150 5300 50  0000 C CNN
F 1 "1k" V 7200 5150 50  0000 C CNN
F 2 "" V 7130 5150 50  0000 C CNN
F 3 "" H 7200 5150 50  0000 C CNN
	1    7200 5150
	0    1    1    0   
$EndComp
$Comp
L R R516
U 1 1 5737CD6E
P 9650 1150
F 0 "R516" V 9600 1300 50  0000 C CNN
F 1 "1k" V 9650 1150 50  0000 C CNN
F 2 "" V 9580 1150 50  0000 C CNN
F 3 "" H 9650 1150 50  0000 C CNN
	1    9650 1150
	0    1    1    0   
$EndComp
$Comp
L R R517
U 1 1 5737D674
P 9650 1250
F 0 "R517" V 9600 1400 50  0000 C CNN
F 1 "1k" V 9650 1250 50  0000 C CNN
F 2 "" V 9580 1250 50  0000 C CNN
F 3 "" H 9650 1250 50  0000 C CNN
	1    9650 1250
	0    1    1    0   
$EndComp
$Comp
L R R518
U 1 1 5737D6C7
P 9650 2400
F 0 "R518" V 9600 2550 50  0000 C CNN
F 1 "1k" V 9650 2400 50  0000 C CNN
F 2 "" V 9580 2400 50  0000 C CNN
F 3 "" H 9650 2400 50  0000 C CNN
	1    9650 2400
	0    1    1    0   
$EndComp
$Comp
L R R519
U 1 1 5737D8B9
P 9650 2500
F 0 "R519" V 9600 2650 50  0000 C CNN
F 1 "1k" V 9650 2500 50  0000 C CNN
F 2 "" V 9580 2500 50  0000 C CNN
F 3 "" H 9650 2500 50  0000 C CNN
	1    9650 2500
	0    1    1    0   
$EndComp
$Comp
L R R520
U 1 1 5737D912
P 9700 3650
F 0 "R520" V 9650 3800 50  0000 C CNN
F 1 "1k" V 9700 3650 50  0000 C CNN
F 2 "" V 9630 3650 50  0000 C CNN
F 3 "" H 9700 3650 50  0000 C CNN
	1    9700 3650
	0    1    1    0   
$EndComp
$Comp
L R R521
U 1 1 5737DC58
P 9700 3750
F 0 "R521" V 9650 3900 50  0000 C CNN
F 1 "1k" V 9700 3750 50  0000 C CNN
F 2 "" V 9630 3750 50  0000 C CNN
F 3 "" H 9700 3750 50  0000 C CNN
	1    9700 3750
	0    1    1    0   
$EndComp
$Comp
L R R514
U 1 1 5737DD17
P 9600 5050
F 0 "R514" V 9550 5200 50  0000 C CNN
F 1 "1k" V 9600 5050 50  0000 C CNN
F 2 "" V 9530 5050 50  0000 C CNN
F 3 "" H 9600 5050 50  0000 C CNN
	1    9600 5050
	0    1    1    0   
$EndComp
$Comp
L R R515
U 1 1 5737DDAD
P 9600 5150
F 0 "R515" V 9550 5300 50  0000 C CNN
F 1 "1k" V 9600 5150 50  0000 C CNN
F 2 "" V 9530 5150 50  0000 C CNN
F 3 "" H 9600 5150 50  0000 C CNN
	1    9600 5150
	0    1    1    0   
$EndComp
Wire Bus Line
	8050 1250 8050 6250
Entry Wire Line
	7950 1150 8050 1250
Entry Wire Line
	7950 1250 8050 1350
Entry Wire Line
	7950 2400 8050 2500
Entry Wire Line
	7950 2500 8050 2600
Entry Wire Line
	7950 3650 8050 3750
Entry Wire Line
	7950 3750 8050 3850
Entry Wire Line
	7950 5050 8050 4950
Entry Wire Line
	7950 5150 8050 5050
Wire Wire Line
	7350 1150 7950 1150
Wire Wire Line
	7350 1250 7950 1250
Wire Wire Line
	7350 2400 7950 2400
Wire Wire Line
	7350 2500 7950 2500
Wire Wire Line
	7350 3650 7950 3650
Wire Wire Line
	7350 3750 7950 3750
Wire Wire Line
	7350 5050 7950 5050
Wire Wire Line
	7350 5150 7950 5150
Text Label 7800 1150 2    60   ~ 0
MEMREQ
Text Label 7800 1250 2    60   ~ 0
IOREQ
Wire Bus Line
	10300 1250 10300 6250
Entry Wire Line
	10200 5150 10300 5050
Entry Wire Line
	10200 5050 10300 4950
Entry Wire Line
	10200 1150 10300 1250
Entry Wire Line
	10200 1250 10300 1350
Entry Wire Line
	10200 2400 10300 2500
Entry Wire Line
	10200 2500 10300 2600
Entry Wire Line
	10200 3650 10300 3750
Entry Wire Line
	10200 3750 10300 3850
Wire Wire Line
	9800 1150 10200 1150
Wire Wire Line
	9800 1250 10200 1250
Wire Wire Line
	9800 2400 10200 2400
Wire Wire Line
	9800 2500 10200 2500
Wire Wire Line
	9850 3650 10200 3650
Wire Wire Line
	9850 3750 10200 3750
Wire Wire Line
	9750 5050 10200 5050
Wire Wire Line
	9750 5150 10200 5150
Text Label 10100 1150 2    60   ~ 0
RD
Text Label 10100 1250 2    60   ~ 0
WR
Text HLabel 1000 2250 0    60   Input ~ 0
!WAIT
Text HLabel 1000 2350 0    60   Input ~ 0
!HALT
$Comp
L +5V #PWR516
U 1 1 5738C6F6
P 7200 5400
F 0 "#PWR516" H 7200 5250 50  0001 C CNN
F 1 "+5V" H 7200 5540 50  0000 C CNN
F 2 "" H 7200 5400 50  0000 C CNN
F 3 "" H 7200 5400 50  0000 C CNN
	1    7200 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR517
U 1 1 5738C740
P 7200 5700
F 0 "#PWR517" H 7200 5450 50  0001 C CNN
F 1 "GND" H 7200 5550 50  0000 C CNN
F 2 "" H 7200 5700 50  0000 C CNN
F 3 "" H 7200 5700 50  0000 C CNN
	1    7200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5450 7200 5450
Wire Wire Line
	7200 5400 7200 5550
Wire Wire Line
	7200 5550 7050 5550
Connection ~ 7200 5450
Wire Wire Line
	7050 5650 7200 5650
Wire Wire Line
	7200 5650 7200 5700
$Comp
L +5V #PWR518
U 1 1 5738D46F
P 9600 5400
F 0 "#PWR518" H 9600 5250 50  0001 C CNN
F 1 "+5V" H 9600 5540 50  0000 C CNN
F 2 "" H 9600 5400 50  0000 C CNN
F 3 "" H 9600 5400 50  0000 C CNN
	1    9600 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR519
U 1 1 5738D475
P 9600 5700
F 0 "#PWR519" H 9600 5450 50  0001 C CNN
F 1 "GND" H 9600 5550 50  0000 C CNN
F 2 "" H 9600 5700 50  0000 C CNN
F 3 "" H 9600 5700 50  0000 C CNN
	1    9600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5450 9600 5450
Wire Wire Line
	9600 5400 9600 5550
Wire Wire Line
	9600 5550 9450 5550
Connection ~ 9600 5450
Wire Wire Line
	9450 5650 9600 5650
Wire Wire Line
	9600 5650 9600 5700
$Comp
L +5V #PWR514
U 1 1 5738D591
P 7200 4000
F 0 "#PWR514" H 7200 3850 50  0001 C CNN
F 1 "+5V" H 7200 4140 50  0000 C CNN
F 2 "" H 7200 4000 50  0000 C CNN
F 3 "" H 7200 4000 50  0000 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR515
U 1 1 5738D597
P 7200 4300
F 0 "#PWR515" H 7200 4050 50  0001 C CNN
F 1 "GND" H 7200 4150 50  0000 C CNN
F 2 "" H 7200 4300 50  0000 C CNN
F 3 "" H 7200 4300 50  0000 C CNN
	1    7200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4050 7200 4050
Wire Wire Line
	7200 4000 7200 4150
Wire Wire Line
	7200 4150 7050 4150
Connection ~ 7200 4050
Wire Wire Line
	7050 4250 7200 4250
Wire Wire Line
	7200 4250 7200 4300
$Comp
L +5V #PWR524
U 1 1 5738D5C0
P 9700 4000
F 0 "#PWR524" H 9700 3850 50  0001 C CNN
F 1 "+5V" H 9700 4140 50  0000 C CNN
F 2 "" H 9700 4000 50  0000 C CNN
F 3 "" H 9700 4000 50  0000 C CNN
	1    9700 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR525
U 1 1 5738D5C6
P 9700 4300
F 0 "#PWR525" H 9700 4050 50  0001 C CNN
F 1 "GND" H 9700 4150 50  0000 C CNN
F 2 "" H 9700 4300 50  0000 C CNN
F 3 "" H 9700 4300 50  0000 C CNN
	1    9700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4050 9700 4050
Wire Wire Line
	9700 4000 9700 4150
Wire Wire Line
	9700 4150 9550 4150
Connection ~ 9700 4050
Wire Wire Line
	9550 4250 9700 4250
Wire Wire Line
	9700 4250 9700 4300
$Comp
L +5V #PWR512
U 1 1 5738D5EF
P 7200 2750
F 0 "#PWR512" H 7200 2600 50  0001 C CNN
F 1 "+5V" H 7200 2890 50  0000 C CNN
F 2 "" H 7200 2750 50  0000 C CNN
F 3 "" H 7200 2750 50  0000 C CNN
	1    7200 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR513
U 1 1 5738D5F5
P 7200 3050
F 0 "#PWR513" H 7200 2800 50  0001 C CNN
F 1 "GND" H 7200 2900 50  0000 C CNN
F 2 "" H 7200 3050 50  0000 C CNN
F 3 "" H 7200 3050 50  0000 C CNN
	1    7200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2800 7200 2800
Wire Wire Line
	7200 2750 7200 2900
Wire Wire Line
	7200 2900 7050 2900
Connection ~ 7200 2800
Wire Wire Line
	7050 3000 7200 3000
Wire Wire Line
	7200 3000 7200 3050
$Comp
L +5V #PWR522
U 1 1 5738D61E
P 9650 2750
F 0 "#PWR522" H 9650 2600 50  0001 C CNN
F 1 "+5V" H 9650 2890 50  0000 C CNN
F 2 "" H 9650 2750 50  0000 C CNN
F 3 "" H 9650 2750 50  0000 C CNN
	1    9650 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR523
U 1 1 5738D624
P 9650 3050
F 0 "#PWR523" H 9650 2800 50  0001 C CNN
F 1 "GND" H 9650 2900 50  0000 C CNN
F 2 "" H 9650 3050 50  0000 C CNN
F 3 "" H 9650 3050 50  0000 C CNN
	1    9650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2800 9650 2800
Wire Wire Line
	9650 2750 9650 2900
Wire Wire Line
	9650 2900 9500 2900
Connection ~ 9650 2800
Wire Wire Line
	9500 3000 9650 3000
Wire Wire Line
	9650 3000 9650 3050
$Comp
L +5V #PWR510
U 1 1 5738D75B
P 7200 1500
F 0 "#PWR510" H 7200 1350 50  0001 C CNN
F 1 "+5V" H 7200 1640 50  0000 C CNN
F 2 "" H 7200 1500 50  0000 C CNN
F 3 "" H 7200 1500 50  0000 C CNN
	1    7200 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR511
U 1 1 5738D761
P 7200 1800
F 0 "#PWR511" H 7200 1550 50  0001 C CNN
F 1 "GND" H 7200 1650 50  0000 C CNN
F 2 "" H 7200 1800 50  0000 C CNN
F 3 "" H 7200 1800 50  0000 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1550 7200 1550
Wire Wire Line
	7200 1500 7200 1650
Wire Wire Line
	7200 1650 7050 1650
Connection ~ 7200 1550
Wire Wire Line
	7050 1750 7200 1750
Wire Wire Line
	7200 1750 7200 1800
$Comp
L +5V #PWR520
U 1 1 5738D78A
P 9650 1500
F 0 "#PWR520" H 9650 1350 50  0001 C CNN
F 1 "+5V" H 9650 1640 50  0000 C CNN
F 2 "" H 9650 1500 50  0000 C CNN
F 3 "" H 9650 1500 50  0000 C CNN
	1    9650 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR521
U 1 1 5738D790
P 9650 1800
F 0 "#PWR521" H 9650 1550 50  0001 C CNN
F 1 "GND" H 9650 1650 50  0000 C CNN
F 2 "" H 9650 1800 50  0000 C CNN
F 3 "" H 9650 1800 50  0000 C CNN
	1    9650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1550 9650 1550
Wire Wire Line
	9650 1500 9650 1650
Wire Wire Line
	9650 1650 9500 1650
Connection ~ 9650 1550
Wire Wire Line
	9500 1750 9650 1750
Wire Wire Line
	9650 1750 9650 1800
$Comp
L +5V #PWR505
U 1 1 5738DAFE
P 3350 6350
F 0 "#PWR505" H 3350 6200 50  0001 C CNN
F 1 "+5V" H 3350 6490 50  0000 C CNN
F 2 "" H 3350 6350 50  0000 C CNN
F 3 "" H 3350 6350 50  0000 C CNN
	1    3350 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR506
U 1 1 5738DB04
P 3350 6500
F 0 "#PWR506" H 3350 6250 50  0001 C CNN
F 1 "GND" H 3350 6350 50  0000 C CNN
F 2 "" H 3350 6500 50  0000 C CNN
F 3 "" H 3350 6500 50  0000 C CNN
	1    3350 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6350 3200 6350
Wire Wire Line
	3200 6450 3350 6450
Wire Wire Line
	3350 6450 3350 6500
Wire Wire Line
	6050 1250 4300 1250
Wire Wire Line
	4300 1250 4300 5850
Wire Wire Line
	6050 2500 4300 2500
Connection ~ 4300 2500
Wire Wire Line
	8500 1250 8250 1250
Wire Wire Line
	8250 1250 8250 2150
Wire Wire Line
	8250 2150 4300 2150
Connection ~ 4300 2150
Wire Wire Line
	8500 2500 8200 2500
Wire Wire Line
	8200 2500 8200 3400
Wire Wire Line
	8200 3400 4300 3400
Connection ~ 4300 3400
Wire Wire Line
	8550 3750 8200 3750
Wire Wire Line
	8200 3750 8200 4650
Wire Wire Line
	8200 4650 4300 4650
Connection ~ 4300 4650
Wire Wire Line
	4300 5150 6050 5150
Wire Wire Line
	6050 3750 4300 3750
Connection ~ 4300 3750
Wire Wire Line
	8450 5150 8200 5150
Wire Wire Line
	8200 5150 8200 4800
Wire Wire Line
	8200 4800 4300 4800
Connection ~ 4300 4800
Wire Wire Line
	2150 4250 2000 4250
Wire Wire Line
	2000 2650 2000 4400
Wire Wire Line
	2000 2650 2150 2650
Wire Wire Line
	2150 2550 1900 2550
Wire Wire Line
	1900 2550 1900 4150
Wire Wire Line
	1900 4150 2150 4150
Wire Bus Line
	10300 6250 4150 6250
Wire Bus Line
	4150 6250 4150 1750
$Comp
L GND #PWR504
U 1 1 57391B53
P 2000 4400
F 0 "#PWR504" H 2000 4150 50  0001 C CNN
F 1 "GND" H 2000 4250 50  0000 C CNN
F 2 "" H 2000 4400 50  0000 C CNN
F 3 "" H 2000 4400 50  0000 C CNN
	1    2000 4400
	1    0    0    -1  
$EndComp
Connection ~ 2000 4250
$Comp
L GAL16V8 IC501
U 1 1 57392132
P 2750 5950
F 0 "IC501" H 2550 6600 60  0000 C CNN
F 1 "GAL16V8" H 2800 5300 60  0000 C CNN
F 2 "" H 2700 5950 60  0000 C CNN
F 3 "" H 2700 5950 60  0000 C CNN
	1    2750 5950
	1    0    0    -1  
$EndComp
Text HLabel 1000 3250 0    60   Input ~ 0
!BUSREQ
Text HLabel 1000 3350 0    60   Input ~ 0
!BUSACK
Wire Wire Line
	4300 5850 3200 5850
Connection ~ 4300 5150
Wire Wire Line
	1900 3000 4000 3000
Wire Wire Line
	4000 3000 4000 5750
Wire Wire Line
	4000 5750 3200 5750
Connection ~ 1900 3000
Entry Wire Line
	4050 1650 4150 1750
Entry Wire Line
	4050 1750 4150 1850
Entry Wire Line
	4050 1850 4150 1950
Entry Wire Line
	4050 1950 4150 2050
Entry Wire Line
	4050 2050 4150 2150
Entry Wire Line
	4050 2150 4150 2250
Entry Wire Line
	4050 2250 4150 2350
Entry Wire Line
	4050 2350 4150 2450
Entry Wire Line
	4050 3250 4150 3350
Entry Wire Line
	4050 3350 4150 3450
Entry Wire Line
	4050 3450 4150 3550
Entry Wire Line
	4050 3550 4150 3650
Entry Wire Line
	4050 3650 4150 3750
Entry Wire Line
	4050 3750 4150 3850
Entry Wire Line
	4050 3850 4150 3950
Entry Wire Line
	4050 3950 4150 4050
Wire Wire Line
	3550 3250 4050 3250
Wire Wire Line
	3550 3350 4050 3350
Wire Wire Line
	3550 3450 4050 3450
Wire Wire Line
	3550 3550 4050 3550
Wire Wire Line
	3550 3650 4050 3650
Wire Wire Line
	3550 3750 4050 3750
Wire Wire Line
	3550 3850 4050 3850
Wire Wire Line
	3550 3950 4050 3950
Wire Wire Line
	3550 1650 4050 1650
Wire Wire Line
	3550 1750 4050 1750
Wire Wire Line
	3550 1850 4050 1850
Wire Wire Line
	3550 1950 4050 1950
Wire Wire Line
	3550 2050 4050 2050
Wire Wire Line
	3550 2150 4050 2150
Wire Wire Line
	3550 2250 4050 2250
Wire Wire Line
	3550 2350 4050 2350
$Comp
L GND #PWR503
U 1 1 5739EACB
P 1900 6450
F 0 "#PWR503" H 1900 6200 50  0001 C CNN
F 1 "GND" H 1900 6300 50  0000 C CNN
F 2 "" H 1900 6450 50  0000 C CNN
F 3 "" H 1900 6450 50  0000 C CNN
	1    1900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6450 1900 6350
Wire Wire Line
	1900 6350 2300 6350
Wire Wire Line
	1000 1650 2150 1650
Wire Wire Line
	1000 1750 2150 1750
Wire Wire Line
	1000 1850 2150 1850
Wire Wire Line
	1000 1950 2150 1950
Wire Wire Line
	1000 2050 2150 2050
Wire Wire Line
	1000 2150 2150 2150
Wire Wire Line
	1000 2250 2150 2250
Wire Wire Line
	1000 2350 2150 2350
Wire Wire Line
	1000 3250 2150 3250
Wire Wire Line
	1000 3350 2150 3350
Wire Wire Line
	2300 5450 1800 5450
Wire Wire Line
	1800 5450 1800 1650
Connection ~ 1800 1650
Wire Wire Line
	2300 5550 1750 5550
Wire Wire Line
	1750 5550 1750 1750
Connection ~ 1750 1750
Wire Wire Line
	2300 5650 1700 5650
Wire Wire Line
	1700 5650 1700 1850
Connection ~ 1700 1850
Wire Wire Line
	2300 5750 1650 5750
Wire Wire Line
	1650 5750 1650 1950
Connection ~ 1650 1950
Wire Wire Line
	2300 5850 1600 5850
Wire Wire Line
	1600 5850 1600 2050
Connection ~ 1600 2050
Wire Wire Line
	2300 5950 1550 5950
Wire Wire Line
	1550 5950 1550 2150
Connection ~ 1550 2150
Wire Wire Line
	2300 6050 1500 6050
Wire Wire Line
	1500 6050 1500 2250
Connection ~ 1500 2250
Wire Wire Line
	2300 6150 1450 6150
Wire Wire Line
	1450 6150 1450 2350
Connection ~ 1450 2350
Wire Wire Line
	1400 3350 1400 5200
Wire Wire Line
	1400 5200 3250 5200
Wire Wire Line
	3250 5200 3250 5450
Wire Wire Line
	3250 5450 3200 5450
Connection ~ 1400 3350
Wire Wire Line
	1350 3250 1350 5100
Wire Wire Line
	1350 5100 3350 5100
Wire Wire Line
	3350 5100 3350 5550
Wire Wire Line
	3350 5550 3200 5550
Connection ~ 1350 3250
$Comp
L CONN_02X04 P1
U 1 1 573A5158
P 5350 7050
F 0 "P1" H 5350 7300 50  0000 C CNN
F 1 "Mode" H 5350 6800 50  0000 C CNN
F 2 "" H 5350 5850 50  0000 C CNN
F 3 "" H 5350 5850 50  0000 C CNN
	1    5350 7050
	1    0    0    -1  
$EndComp
$Comp
L R R502
U 1 1 573A526D
P 4500 6650
F 0 "R502" V 4450 6800 50  0000 C CNN
F 1 "10k" V 4500 6650 50  0000 C CNN
F 2 "" V 4430 6650 50  0000 C CNN
F 3 "" H 4500 6650 50  0000 C CNN
	1    4500 6650
	1    0    0    -1  
$EndComp
$Comp
L R R503
U 1 1 573A55A8
P 4650 6650
F 0 "R503" V 4600 6800 50  0000 C CNN
F 1 "10k" V 4650 6650 50  0000 C CNN
F 2 "" V 4580 6650 50  0000 C CNN
F 3 "" H 4650 6650 50  0000 C CNN
	1    4650 6650
	1    0    0    -1  
$EndComp
$Comp
L R R504
U 1 1 573A5618
P 4800 6650
F 0 "R504" V 4750 6800 50  0000 C CNN
F 1 "10k" V 4800 6650 50  0000 C CNN
F 2 "" V 4730 6650 50  0000 C CNN
F 3 "" H 4800 6650 50  0000 C CNN
	1    4800 6650
	1    0    0    -1  
$EndComp
$Comp
L R R505
U 1 1 573A5687
P 4950 6650
F 0 "R505" V 4900 6800 50  0000 C CNN
F 1 "10k" V 4950 6650 50  0000 C CNN
F 2 "" V 4880 6650 50  0000 C CNN
F 3 "" H 4950 6650 50  0000 C CNN
	1    4950 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7200 5850 7200
Wire Wire Line
	5600 6900 5850 6900
Connection ~ 5850 6900
Connection ~ 5850 7000
Connection ~ 5850 7100
Wire Wire Line
	5600 7000 5850 7000
Wire Wire Line
	5600 7100 5850 7100
$Comp
L +5V #PWR508
U 1 1 573A60BF
P 4000 6350
F 0 "#PWR508" H 4000 6200 50  0001 C CNN
F 1 "+5V" H 4000 6490 50  0000 C CNN
F 2 "" H 4000 6350 50  0000 C CNN
F 3 "" H 4000 6350 50  0000 C CNN
	1    4000 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6900 3850 6900
Wire Wire Line
	3850 6900 3850 5650
Wire Wire Line
	3850 5650 3200 5650
Wire Wire Line
	3200 5950 3750 5950
Wire Wire Line
	3750 5950 3750 7000
Wire Wire Line
	3750 7000 5100 7000
Wire Wire Line
	5100 7100 3650 7100
Wire Wire Line
	3650 7100 3650 6050
Wire Wire Line
	3650 6050 3200 6050
Wire Wire Line
	3200 6150 3550 6150
Wire Wire Line
	3550 6150 3550 7200
Wire Wire Line
	3550 7200 5100 7200
Wire Wire Line
	4500 6800 4500 6900
Connection ~ 4500 6900
Wire Wire Line
	4650 6800 4650 7000
Connection ~ 4650 7000
Wire Wire Line
	4800 6800 4800 7100
Connection ~ 4800 7100
Wire Wire Line
	4950 6800 4950 7200
Wire Wire Line
	4950 7200 5000 7200
Connection ~ 5000 7200
Wire Wire Line
	4500 6500 4500 6400
Wire Wire Line
	4000 6400 4950 6400
Wire Wire Line
	4950 6400 4950 6500
Wire Wire Line
	4000 6400 4000 6350
Connection ~ 4500 6400
Wire Wire Line
	4650 6500 4650 6400
Connection ~ 4650 6400
Wire Wire Line
	4800 6500 4800 6400
Connection ~ 4800 6400
Wire Wire Line
	5850 6900 5850 7300
$Comp
L GND #PWR509
U 1 1 573A7634
P 5850 7300
F 0 "#PWR509" H 5850 7050 50  0001 C CNN
F 1 "GND" H 5850 7150 50  0000 C CNN
F 2 "" H 5850 7300 50  0000 C CNN
F 3 "" H 5850 7300 50  0000 C CNN
	1    5850 7300
	1    0    0    -1  
$EndComp
$Comp
L R R501
U 1 1 573A996B
P 750 3900
F 0 "R501" V 700 4050 50  0000 C CNN
F 1 "10k" V 750 3900 50  0000 C CNN
F 2 "" V 680 3900 50  0000 C CNN
F 3 "" H 750 3900 50  0000 C CNN
	1    750  3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  3450 2150 3450
Wire Wire Line
	2100 3450 2100 3950
Wire Wire Line
	2100 3950 2150 3950
Wire Wire Line
	2150 3850 2100 3850
Connection ~ 2100 3850
Wire Wire Line
	2150 3750 2100 3750
Connection ~ 2100 3750
Wire Wire Line
	2150 3650 2100 3650
Connection ~ 2100 3650
Wire Wire Line
	2150 3550 2100 3550
Connection ~ 2100 3550
Wire Wire Line
	750  3450 750  3750
Connection ~ 2100 3450
$Comp
L +5V #PWR502
U 1 1 573AA9FF
P 1000 4050
F 0 "#PWR502" H 1000 3900 50  0001 C CNN
F 1 "+5V" H 1000 4190 50  0000 C CNN
F 2 "" H 1000 4050 50  0000 C CNN
F 3 "" H 1000 4050 50  0000 C CNN
	1    1000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  4050 750  4150
Wire Wire Line
	750  4150 1000 4150
Wire Wire Line
	1000 4150 1000 4050
$Comp
L C C505
U 1 1 573AE923
P 2050 1000
F 0 "C505" H 2075 1100 50  0000 L CNN
F 1 "100n" H 2075 900 50  0000 L CNN
F 2 "" H 2088 850 50  0000 C CNN
F 3 "" H 2050 1000 50  0000 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
$Comp
L C C506
U 1 1 573AEB69
P 2350 1000
F 0 "C506" H 2375 1100 50  0000 L CNN
F 1 "100n" H 2375 900 50  0000 L CNN
F 2 "" H 2388 850 50  0000 C CNN
F 3 "" H 2350 1000 50  0000 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
$Comp
L C C507
U 1 1 573AEBEC
P 2650 1000
F 0 "C507" H 2675 1100 50  0000 L CNN
F 1 "100n" H 2675 900 50  0000 L CNN
F 2 "" H 2688 850 50  0000 C CNN
F 3 "" H 2650 1000 50  0000 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
$Comp
L C C508
U 1 1 573AEC80
P 2950 1000
F 0 "C508" H 2975 1100 50  0000 L CNN
F 1 "100n" H 2975 900 50  0000 L CNN
F 2 "" H 2988 850 50  0000 C CNN
F 3 "" H 2950 1000 50  0000 C CNN
	1    2950 1000
	1    0    0    -1  
$EndComp
$Comp
L C C509
U 1 1 573AED09
P 3250 1000
F 0 "C509" H 3275 1100 50  0000 L CNN
F 1 "100n" H 3275 900 50  0000 L CNN
F 2 "" H 3288 850 50  0000 C CNN
F 3 "" H 3250 1000 50  0000 C CNN
	1    3250 1000
	1    0    0    -1  
$EndComp
$Comp
L C C504
U 1 1 573AED99
P 1750 1000
F 0 "C504" H 1775 1100 50  0000 L CNN
F 1 "100n" H 1775 900 50  0000 L CNN
F 2 "" H 1788 850 50  0000 C CNN
F 3 "" H 1750 1000 50  0000 C CNN
	1    1750 1000
	1    0    0    -1  
$EndComp
$Comp
L C C503
U 1 1 573AEE3E
P 1450 1000
F 0 "C503" H 1475 1100 50  0000 L CNN
F 1 "100n" H 1475 900 50  0000 L CNN
F 2 "" H 1488 850 50  0000 C CNN
F 3 "" H 1450 1000 50  0000 C CNN
	1    1450 1000
	1    0    0    -1  
$EndComp
$Comp
L C C502
U 1 1 573AEF50
P 1150 1000
F 0 "C502" H 1175 1100 50  0000 L CNN
F 1 "100n" H 1175 900 50  0000 L CNN
F 2 "" H 1188 850 50  0000 C CNN
F 3 "" H 1150 1000 50  0000 C CNN
	1    1150 1000
	1    0    0    -1  
$EndComp
$Comp
L C C510
U 1 1 573AF20F
P 3550 1000
F 0 "C510" H 3575 1100 50  0000 L CNN
F 1 "100n" H 3575 900 50  0000 L CNN
F 2 "" H 3588 850 50  0000 C CNN
F 3 "" H 3550 1000 50  0000 C CNN
	1    3550 1000
	1    0    0    -1  
$EndComp
$Comp
L C C511
U 1 1 573AF2A5
P 3850 1000
F 0 "C511" H 3875 1100 50  0000 L CNN
F 1 "100n" H 3875 900 50  0000 L CNN
F 2 "" H 3888 850 50  0000 C CNN
F 3 "" H 3850 1000 50  0000 C CNN
	1    3850 1000
	1    0    0    -1  
$EndComp
$Comp
L C C501
U 1 1 573AF33E
P 850 1000
F 0 "C501" H 875 1100 50  0000 L CNN
F 1 "100n" H 875 900 50  0000 L CNN
F 2 "" H 888 850 50  0000 C CNN
F 3 "" H 850 1000 50  0000 C CNN
	1    850  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  700  850  850 
Wire Wire Line
	850  750  3850 750 
Wire Wire Line
	3850 750  3850 850 
Wire Wire Line
	1150 850  1150 750 
Connection ~ 1150 750 
Wire Wire Line
	1450 850  1450 750 
Connection ~ 1450 750 
Wire Wire Line
	1750 850  1750 750 
Connection ~ 1750 750 
Wire Wire Line
	2050 850  2050 750 
Connection ~ 2050 750 
Wire Wire Line
	2350 850  2350 750 
Connection ~ 2350 750 
Wire Wire Line
	2650 850  2650 750 
Connection ~ 2650 750 
Wire Wire Line
	2950 850  2950 750 
Connection ~ 2950 750 
Wire Wire Line
	3250 850  3250 750 
Connection ~ 3250 750 
Wire Wire Line
	3550 850  3550 750 
Connection ~ 3550 750 
Wire Wire Line
	850  1150 850  1250
Wire Wire Line
	850  1250 3850 1250
Wire Wire Line
	3850 1150 3850 1350
Wire Wire Line
	3550 1150 3550 1250
Connection ~ 3550 1250
Wire Wire Line
	3250 1150 3250 1250
Connection ~ 3250 1250
Wire Wire Line
	2950 1150 2950 1250
Connection ~ 2950 1250
Wire Wire Line
	2650 1150 2650 1250
Connection ~ 2650 1250
Wire Wire Line
	2350 1150 2350 1250
Connection ~ 2350 1250
Wire Wire Line
	2050 1150 2050 1250
Connection ~ 2050 1250
Wire Wire Line
	1750 1150 1750 1250
Connection ~ 1750 1250
Wire Wire Line
	1450 1150 1450 1250
Connection ~ 1450 1250
Wire Wire Line
	1150 1150 1150 1250
Connection ~ 1150 1250
$Comp
L GND #PWR507
U 1 1 573B17AC
P 3850 1350
F 0 "#PWR507" H 3850 1100 50  0001 C CNN
F 1 "GND" H 3850 1200 50  0000 C CNN
F 2 "" H 3850 1350 50  0000 C CNN
F 3 "" H 3850 1350 50  0000 C CNN
	1    3850 1350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR501
U 1 1 573B204F
P 850 700
F 0 "#PWR501" H 850 550 50  0001 C CNN
F 1 "+5V" H 850 840 50  0000 C CNN
F 2 "" H 850 700 50  0000 C CNN
F 3 "" H 850 700 50  0000 C CNN
	1    850  700 
	1    0    0    -1  
$EndComp
Connection ~ 850  750 
Connection ~ 3850 1250
$Comp
L GND #PWR?
U 1 1 5748F039
P 5300 5350
F 0 "#PWR?" H 5300 5100 50  0001 C CNN
F 1 "GND" H 5300 5200 50  0000 C CNN
F 2 "" H 5300 5350 50  0000 C CNN
F 3 "" H 5300 5350 50  0000 C CNN
	1    5300 5350
	1    0    0    -1  
$EndComp
Connection ~ 5300 5050
$EndSCHEMATC
