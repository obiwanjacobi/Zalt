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
Sheet 3 5
Title ""
Date "13 feb 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CY8CKIT-059 M301
U 1 1 56BF8BC1
P 4550 4050
F 0 "M301" H 4200 5700 60  0000 C CNN
F 1 "CY8CKIT-059" H 4500 2900 60  0000 C CNN
F 2 "~" H 4550 4050 60  0000 C CNN
F 3 "~" H 4550 4050 60  0000 C CNN
	1    4550 4050
	1    0    0    -1  
$EndComp
Text HLabel 950  900  0    60   BiDi ~ 0
A0
Text HLabel 950  1000 0    60   BiDi ~ 0
A1
Text HLabel 950  1100 0    60   BiDi ~ 0
A2
Text HLabel 950  1200 0    60   BiDi ~ 0
A3
Text HLabel 950  1300 0    60   BiDi ~ 0
A4
Text HLabel 950  1400 0    60   BiDi ~ 0
A5
Text HLabel 950  1500 0    60   BiDi ~ 0
A6
Text HLabel 950  1600 0    60   BiDi ~ 0
A7
Text HLabel 950  1700 0    60   BiDi ~ 0
A8
Text HLabel 950  1800 0    60   BiDi ~ 0
A9
Text HLabel 950  1900 0    60   BiDi ~ 0
A10
Text HLabel 950  2000 0    60   BiDi ~ 0
A11
Text HLabel 950  2100 0    60   BiDi ~ 0
A12
Text HLabel 950  2200 0    60   BiDi ~ 0
A13
Text HLabel 950  2300 0    60   BiDi ~ 0
A14
Text HLabel 950  2400 0    60   BiDi ~ 0
A15
Text HLabel 1700 900  0    60   BiDi ~ 0
D0
Text HLabel 1700 1000 0    60   BiDi ~ 0
D1
Text HLabel 1700 1100 0    60   BiDi ~ 0
D2
Text HLabel 1700 1200 0    60   BiDi ~ 0
D3
Text HLabel 1700 1300 0    60   BiDi ~ 0
D4
Text HLabel 1700 1400 0    60   BiDi ~ 0
D5
Text HLabel 1700 1500 0    60   BiDi ~ 0
D6
Text HLabel 1700 1600 0    60   BiDi ~ 0
D7
Text HLabel 2850 900  0    60   BiDi ~ 0
MEMREQ
Text HLabel 2850 1000 0    60   BiDi ~ 0
IOREQ
Text HLabel 2850 1100 0    60   BiDi ~ 0
RD
Text HLabel 2850 1200 0    60   BiDi ~ 0
WR
Text HLabel 2850 1300 0    60   Output ~ 0
BUSREQ
Text HLabel 2850 1400 0    60   Input ~ 0
BUSACK
Text HLabel 2850 1500 0    60   Output ~ 0
CPURST
Text HLabel 2850 1600 0    60   Output ~ 0
CPUCLK
Text HLabel 2850 1700 0    60   Output ~ 0
CPUWAIT
Text HLabel 2850 1800 0    60   Input ~ 0
CPUHALT
Text HLabel 2850 1900 0    60   Input ~ 0
CPUM1
Entry Wire Line
	3250 900  3350 1000
Entry Wire Line
	3250 1000 3350 1100
Entry Wire Line
	3250 1100 3350 1200
Entry Wire Line
	3250 1200 3350 1300
Entry Wire Line
	3250 1300 3350 1400
Entry Wire Line
	3250 1400 3350 1500
Entry Wire Line
	3250 1500 3350 1600
Entry Wire Line
	3250 1600 3350 1700
Entry Wire Line
	3250 1700 3350 1800
Entry Wire Line
	3250 1800 3350 1900
Entry Wire Line
	3250 1900 3350 2000
Entry Wire Line
	1350 900  1450 1000
Entry Wire Line
	1350 1000 1450 1100
Entry Wire Line
	1350 1100 1450 1200
Entry Wire Line
	1350 1200 1450 1300
Entry Wire Line
	1350 1300 1450 1400
Entry Wire Line
	1350 1400 1450 1500
Entry Wire Line
	1350 1500 1450 1600
Entry Wire Line
	1350 1600 1450 1700
Entry Wire Line
	1350 1700 1450 1800
Entry Wire Line
	1350 1800 1450 1900
Entry Wire Line
	1350 1900 1450 2000
Entry Wire Line
	1350 2000 1450 2100
Entry Wire Line
	1350 2100 1450 2200
Entry Wire Line
	1350 2200 1450 2300
Entry Wire Line
	1350 2300 1450 2400
Entry Wire Line
	1350 2400 1450 2500
Wire Bus Line
	3350 1000 3350 4650
Wire Wire Line
	2850 900  3250 900 
Wire Wire Line
	2850 1000 3250 1000
Wire Wire Line
	2850 1100 3250 1100
Wire Wire Line
	2850 1200 3250 1200
Wire Wire Line
	2850 1300 3250 1300
Wire Wire Line
	2850 1400 3250 1400
Wire Wire Line
	2850 1500 3250 1500
Wire Wire Line
	2850 1600 3250 1600
Wire Wire Line
	2850 1700 3250 1700
Wire Wire Line
	2850 1800 3250 1800
Wire Wire Line
	2850 1900 3250 1900
Wire Bus Line
	2250 1000 2250 2600
Wire Bus Line
	1450 1000 1450 2600
Wire Wire Line
	950  900  1350 900 
Wire Wire Line
	950  1000 1350 1000
Wire Wire Line
	950  1100 1350 1100
Wire Wire Line
	950  1200 1350 1200
Wire Wire Line
	950  1300 1350 1300
Wire Wire Line
	950  1400 1350 1400
Wire Wire Line
	950  1500 1350 1500
Wire Wire Line
	950  1600 1350 1600
Wire Wire Line
	950  1700 1350 1700
Wire Wire Line
	950  1800 1350 1800
Wire Wire Line
	950  1900 1350 1900
Wire Wire Line
	950  2000 1350 2000
Wire Wire Line
	950  2100 1350 2100
Wire Wire Line
	950  2200 1350 2200
Wire Wire Line
	950  2300 1350 2300
Wire Wire Line
	950  2400 1350 2400
Entry Wire Line
	2150 900  2250 1000
Entry Wire Line
	2150 1000 2250 1100
Entry Wire Line
	2150 1100 2250 1200
Entry Wire Line
	2150 1200 2250 1300
Entry Wire Line
	2150 1300 2250 1400
Entry Wire Line
	2150 1400 2250 1500
Entry Wire Line
	2150 1500 2250 1600
Entry Wire Line
	2150 1600 2250 1700
Wire Wire Line
	1700 900  2150 900 
Wire Wire Line
	1700 1000 2150 1000
Wire Wire Line
	1700 1100 2150 1100
Wire Wire Line
	1700 1200 2150 1200
Wire Wire Line
	1700 1300 2150 1300
Wire Wire Line
	1700 1400 2150 1400
Wire Wire Line
	1700 1500 2150 1500
Wire Wire Line
	1700 1600 2150 1600
Text Label 1200 900  0    60   ~ 0
A0
Text Label 1200 1000 0    60   ~ 0
A1
Text Label 1200 1100 0    60   ~ 0
A2
Text Label 1200 1200 0    60   ~ 0
A3
Text Label 1200 1300 0    60   ~ 0
A4
Text Label 1200 1400 0    60   ~ 0
A5
Text Label 1200 1500 0    60   ~ 0
A6
Text Label 1200 1600 0    60   ~ 0
A7
Text Label 1200 1700 0    60   ~ 0
A8
Text Label 1200 1800 0    60   ~ 0
A9
Text Label 1200 1900 0    60   ~ 0
A10
Text Label 1200 2000 0    60   ~ 0
A11
Text Label 1200 2100 0    60   ~ 0
A12
Text Label 1200 2200 0    60   ~ 0
A13
Text Label 1200 2300 0    60   ~ 0
A14
Text Label 1200 2400 0    60   ~ 0
A15
Text Label 2050 900  0    60   ~ 0
D0
Text Label 2050 1000 0    60   ~ 0
D1
Text Label 2050 1100 0    60   ~ 0
D2
Text Label 2050 1200 0    60   ~ 0
D3
Text Label 2050 1300 0    60   ~ 0
D4
Text Label 2050 1400 0    60   ~ 0
D5
Text Label 2050 1500 0    60   ~ 0
D6
Text Label 2050 1600 0    60   ~ 0
D7
Wire Bus Line
	1450 2600 3350 2600
Entry Wire Line
	3350 2550 3450 2650
Entry Wire Line
	3350 2650 3450 2750
Entry Wire Line
	3350 2750 3450 2850
Entry Wire Line
	3350 2850 3450 2950
Entry Wire Line
	3350 2950 3450 3050
Entry Wire Line
	3350 3050 3450 3150
Entry Wire Line
	3350 3150 3450 3250
Entry Wire Line
	3350 3250 3450 3350
Entry Wire Line
	3350 3350 3450 3450
Entry Wire Line
	3350 3450 3450 3550
Entry Wire Line
	3350 3550 3450 3650
Entry Wire Line
	3350 3650 3450 3750
Entry Wire Line
	3350 3750 3450 3850
Entry Wire Line
	3350 3850 3450 3950
Entry Wire Line
	3350 3950 3450 4050
Entry Wire Line
	3350 4050 3450 4150
Entry Wire Line
	3350 4150 3450 4250
Entry Wire Line
	3350 4250 3450 4350
Entry Wire Line
	3350 4350 3450 4450
Entry Wire Line
	3350 4450 3450 4550
Entry Wire Line
	3350 4550 3450 4650
Entry Wire Line
	3350 4650 3450 4750
Wire Wire Line
	3450 2650 3800 2650
Wire Wire Line
	3450 2750 3800 2750
Wire Wire Line
	3450 2850 3800 2850
Wire Wire Line
	3450 2950 3800 2950
Wire Wire Line
	3450 3050 3800 3050
Wire Wire Line
	3450 3150 3800 3150
Wire Wire Line
	3450 3250 3800 3250
Wire Wire Line
	3450 3350 3800 3350
Wire Wire Line
	3450 3450 3800 3450
Wire Wire Line
	3450 3550 3800 3550
Wire Wire Line
	3450 3650 3800 3650
Wire Wire Line
	3450 3750 3800 3750
Wire Wire Line
	3450 3850 3800 3850
Wire Wire Line
	3450 3950 3800 3950
Wire Wire Line
	3450 4050 3800 4050
Wire Wire Line
	3450 4150 3800 4150
Wire Wire Line
	3450 4250 3800 4250
Wire Wire Line
	3450 4350 3800 4350
Wire Wire Line
	3450 4450 3800 4450
Wire Wire Line
	3450 4550 3800 4550
Wire Wire Line
	3450 4650 3800 4650
Wire Wire Line
	3450 4750 3800 4750
Text Label 3450 2650 0    60   ~ 0
A8
Text Label 3450 2750 0    60   ~ 0
A9
Text Label 3450 2850 0    60   ~ 0
A10
Text Label 3450 2950 0    60   ~ 0
A11
Text Label 3450 3050 0    60   ~ 0
A12
Text Label 3450 3150 0    60   ~ 0
A13
Text Label 3450 3250 0    60   ~ 0
A14
Text Label 3450 3350 0    60   ~ 0
A15
Text Label 3450 4050 0    60   ~ 0
D0
Text Label 3450 4150 0    60   ~ 0
D1
Text Label 3450 4250 0    60   ~ 0
D2
Text Label 3450 4350 0    60   ~ 0
D3
Text Label 3450 4450 0    60   ~ 0
D4
Text Label 3450 4550 0    60   ~ 0
D5
Text Label 3450 4650 0    60   ~ 0
D6
Text Label 3450 4750 0    60   ~ 0
D7
Text Label 2900 900  0    60   ~ 0
MEMREQ
Text Label 2950 1000 0    60   ~ 0
IOREQ
Text Label 3100 1100 0    60   ~ 0
RD
Text Label 3100 1200 0    60   ~ 0
WR
Text Label 2900 1300 0    60   ~ 0
BUSREQ
Text Label 2900 1400 0    60   ~ 0
BUSACK
Text Label 2900 1500 0    60   ~ 0
CPURST
Text Label 2900 1600 0    60   ~ 0
CPUCLK
Text Label 2900 1700 0    60   ~ 0
CPUWAIT
Text Label 2900 1800 0    60   ~ 0
CPUHALT
Text Label 2900 1900 0    60   ~ 0
CPUM1
Wire Bus Line
	5700 2200 5700 4950
Entry Wire Line
	5600 2750 5700 2650
Entry Wire Line
	5600 2850 5700 2750
Entry Wire Line
	5600 2950 5700 2850
Entry Wire Line
	5600 3050 5700 2950
Entry Wire Line
	5600 3150 5700 3050
Entry Wire Line
	5600 3250 5700 3150
Entry Wire Line
	5600 3350 5700 3250
Entry Wire Line
	5600 3450 5700 3350
Entry Wire Line
	5600 3550 5700 3450
Entry Wire Line
	5600 3650 5700 3550
Entry Wire Line
	5600 3750 5700 3650
Entry Wire Line
	5600 3850 5700 3750
Entry Wire Line
	5600 4150 5700 4050
Entry Wire Line
	5600 4250 5700 4150
Entry Wire Line
	5600 4350 5700 4250
Entry Wire Line
	5600 4450 5700 4350
Entry Wire Line
	5600 4550 5700 4450
Entry Wire Line
	5600 4650 5700 4550
Entry Wire Line
	5600 4750 5700 4650
Entry Wire Line
	5600 4850 5700 4750
Entry Wire Line
	5600 4950 5700 4850
Entry Wire Line
	5600 5050 5700 4950
Wire Wire Line
	5100 2750 5600 2750
Wire Wire Line
	5100 2850 5600 2850
Wire Wire Line
	5100 2950 5600 2950
Wire Wire Line
	5100 3050 5600 3050
Wire Wire Line
	5100 3150 5600 3150
Wire Wire Line
	5100 3250 5600 3250
Wire Wire Line
	5100 3350 5600 3350
Wire Wire Line
	5100 3450 5600 3450
Wire Wire Line
	5100 3550 5600 3550
Wire Wire Line
	5100 3650 5600 3650
Wire Wire Line
	5100 3750 5600 3750
Wire Wire Line
	5100 3850 5600 3850
Wire Wire Line
	5100 3950 5600 3950
Wire Wire Line
	5100 4050 5600 4050
Wire Wire Line
	5100 4150 5600 4150
Wire Wire Line
	5100 4250 5600 4250
Wire Wire Line
	5100 4350 5600 4350
Wire Wire Line
	5100 4450 5600 4450
Wire Wire Line
	5100 4550 5600 4550
Wire Wire Line
	5100 4650 5600 4650
Wire Wire Line
	5100 4750 5600 4750
Wire Wire Line
	5100 4850 5600 4850
Wire Wire Line
	5100 4950 5600 4950
Wire Wire Line
	5100 5050 5600 5050
Text Label 5200 2750 0    60   ~ 0
MEMREQ
Text Label 5200 2850 0    60   ~ 0
IOREQ
Text Label 5200 2950 0    60   ~ 0
RD
Text Label 5200 3050 0    60   ~ 0
WR
Text Label 5100 3950 0    60   ~ 0
SYSTERMRX
Text Label 5100 4050 0    60   ~ 0
SYSTERMTX
Text Label 5200 3550 0    60   ~ 0
BUSREQ
Text Label 5200 3650 0    60   ~ 0
BUSACK
Text Label 5200 3250 0    60   ~ 0
CPUHALT
Text Label 5200 3750 0    60   ~ 0
CPUCLK
Text Label 5200 3850 0    60   ~ 0
CPURST
Text Label 5450 5050 0    60   ~ 0
A0
Text Label 5450 4950 0    60   ~ 0
A1
Text Label 5450 4850 0    60   ~ 0
A2
Text Label 5450 4750 0    60   ~ 0
A3
Text Label 5450 4650 0    60   ~ 0
A4
Text Label 5450 4550 0    60   ~ 0
A5
Text Label 5450 4450 0    60   ~ 0
A6
Text Label 5450 4350 0    60   ~ 0
A7
$Comp
L GND #PWR305
U 1 1 56BF027B
P 5100 2650
F 0 "#PWR305" H 5100 2400 50  0001 C CNN
F 1 "GND" H 5100 2500 50  0000 C CNN
F 2 "" H 5100 2650 50  0000 C CNN
F 3 "" H 5100 2650 50  0000 C CNN
	1    5100 2650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR301
U 1 1 56BF028A
P 3800 2550
F 0 "#PWR301" H 3800 2300 50  0001 C CNN
F 1 "GND" H 3800 2400 50  0000 C CNN
F 2 "" H 3800 2550 50  0000 C CNN
F 3 "" H 3800 2550 50  0000 C CNN
	1    3800 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR302
U 1 1 56BF0299
P 3800 4950
F 0 "#PWR302" H 3800 4700 50  0001 C CNN
F 1 "GND" H 3800 4800 50  0000 C CNN
F 2 "" H 3800 4950 50  0000 C CNN
F 3 "" H 3800 4950 50  0000 C CNN
	1    3800 4950
	0    1    1    0   
$EndComp
Wire Bus Line
	5700 2200 3350 2200
$Comp
L +5V #PWR304
U 1 1 56BF04BD
P 5100 2550
F 0 "#PWR304" H 5100 2400 50  0001 C CNN
F 1 "+5V" H 5100 2690 50  0000 C CNN
F 2 "" H 5100 2550 50  0000 C CNN
F 3 "" H 5100 2550 50  0000 C CNN
	1    5100 2550
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR303
U 1 1 56BF04DB
P 3800 5050
F 0 "#PWR303" H 3800 4900 50  0001 C CNN
F 1 "+5V" H 3800 5190 50  0000 C CNN
F 2 "" H 3800 5050 50  0000 C CNN
F 3 "" H 3800 5050 50  0000 C CNN
	1    3800 5050
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
