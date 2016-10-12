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
Sheet 2 5
Title "Z80 Computer"
Date "13 feb 2016"
Rev ""
Comp "Canned Bytes"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Z80CPU IC5
U 1 1 567BF7D2
P 8150 3250
F 0 "IC5" H 7600 4650 50  0000 L CNN
F 1 "Z80CPU" H 8400 4650 50  0000 L CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_LongPads" H 8150 3650 50  0001 C CNN
F 3 "" H 8150 3650 50  0000 C CNN
	1    8150 3250
	1    0    0    -1  
$EndComp
$Comp
L UM61512A IC3
U 1 1 567BF7D8
P 4450 3350
F 0 "IC3" H 4550 5100 60  0000 C CNN
F 1 "UM61512A" H 4800 3300 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 4700 5350 60  0001 C CNN
F 3 "~" H 4700 5350 60  0000 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L UM61512A IC4
U 1 1 567BF7DE
P 4450 5400
F 0 "IC4" H 4550 7150 60  0000 C CNN
F 1 "UM61512A" H 4800 5350 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 4700 7400 60  0001 C CNN
F 3 "~" H 4700 7400 60  0000 C CNN
	1    4450 5400
	1    0    0    -1  
$EndComp
Entry Wire Line
	3800 1650 3900 1750
Entry Wire Line
	3800 1750 3900 1850
Entry Wire Line
	3800 1850 3900 1950
Entry Wire Line
	3800 1950 3900 2050
Entry Wire Line
	3800 2050 3900 2150
Entry Wire Line
	3800 2150 3900 2250
Entry Wire Line
	3800 2250 3900 2350
Entry Wire Line
	3800 2350 3900 2450
Entry Wire Line
	3800 2450 3900 2550
Entry Wire Line
	3800 2550 3900 2650
Entry Wire Line
	3800 2650 3900 2750
Entry Wire Line
	3800 2750 3900 2850
Entry Wire Line
	3800 3700 3900 3800
Entry Wire Line
	3800 3800 3900 3900
Entry Wire Line
	3800 3900 3900 4000
Entry Wire Line
	3800 4000 3900 4100
Entry Wire Line
	3800 4100 3900 4200
Entry Wire Line
	3800 4200 3900 4300
Entry Wire Line
	3800 4300 3900 4400
Entry Wire Line
	3800 4400 3900 4500
Entry Wire Line
	3800 4500 3900 4600
Entry Wire Line
	3800 4600 3900 4700
Entry Wire Line
	3800 4700 3900 4800
Entry Wire Line
	3800 4800 3900 4900
Entry Wire Line
	9350 2050 9450 1950
Entry Wire Line
	9350 2150 9450 2050
Entry Wire Line
	9350 2250 9450 2150
Entry Wire Line
	9350 2350 9450 2250
Entry Wire Line
	9350 2450 9450 2350
Entry Wire Line
	9350 2550 9450 2450
Entry Wire Line
	9350 2650 9450 2550
Entry Wire Line
	9350 2750 9450 2650
Entry Wire Line
	9350 2850 9450 2750
Entry Wire Line
	9350 2950 9450 2850
Entry Wire Line
	9350 3050 9450 2950
Entry Wire Line
	9350 3150 9450 3050
Entry Wire Line
	9350 3250 9450 3150
Entry Wire Line
	9350 3350 9450 3250
Entry Wire Line
	9350 3450 9450 3350
Entry Wire Line
	9350 3550 9450 3450
$Comp
L VCC #PWR209
U 1 1 567BF845
P 8150 1750
F 0 "#PWR209" H 8150 1600 50  0001 C CNN
F 1 "VCC" H 8150 1900 50  0000 C CNN
F 2 "" H 8150 1750 50  0000 C CNN
F 3 "" H 8150 1750 50  0000 C CNN
	1    8150 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR210
U 1 1 567BF854
P 8150 4750
F 0 "#PWR210" H 8150 4500 50  0001 C CNN
F 1 "GND" H 8150 4600 50  0000 C CNN
F 2 "" H 8150 4750 50  0000 C CNN
F 3 "" H 8150 4750 50  0000 C CNN
	1    8150 4750
	1    0    0    -1  
$EndComp
Text Label 9350 2050 2    60   ~ 0
A0
Text Label 9350 2150 2    60   ~ 0
A1
Text Label 9350 2250 2    60   ~ 0
A2
Text Label 9350 2350 2    60   ~ 0
A3
Text Label 9350 2450 2    60   ~ 0
A4
Text Label 9350 2550 2    60   ~ 0
A5
Text Label 9350 2650 2    60   ~ 0
A6
Text Label 9350 2750 2    60   ~ 0
A7
Text Label 9350 2850 2    60   ~ 0
A8
Text Label 9350 2950 2    60   ~ 0
A9
Text Label 9350 3050 2    60   ~ 0
A10
Text Label 9350 3150 2    60   ~ 0
A11
Text Label 9350 3250 2    60   ~ 0
A12
Text Label 9350 3350 2    60   ~ 0
A13
Text Label 9350 3450 2    60   ~ 0
A14
Text Label 9350 3550 2    60   ~ 0
A15
Text Label 3900 1750 0    60   ~ 0
A0
Text Label 3900 1850 0    60   ~ 0
A1
Text Label 3900 1950 0    60   ~ 0
A2
Text Label 3900 2050 0    60   ~ 0
A3
Text Label 3900 2150 0    60   ~ 0
A4
Text Label 3900 2250 0    60   ~ 0
A5
Text Label 3900 2350 0    60   ~ 0
A6
Text Label 3900 2450 0    60   ~ 0
A7
Text Label 3900 2550 0    60   ~ 0
A8
Text Label 3900 2650 0    60   ~ 0
A9
Text Label 3900 2750 0    60   ~ 0
A10
Text Label 3900 2850 0    60   ~ 0
A11
Text Label 3900 3800 0    60   ~ 0
A0
Text Label 3900 3900 0    60   ~ 0
A1
Text Label 3900 4000 0    60   ~ 0
A2
Text Label 3900 4100 0    60   ~ 0
A3
Text Label 3900 4200 0    60   ~ 0
A4
Text Label 3900 4300 0    60   ~ 0
A5
Text Label 3900 4400 0    60   ~ 0
A6
Text Label 3900 4500 0    60   ~ 0
A7
Text Label 3900 4600 0    60   ~ 0
A8
Text Label 3900 4700 0    60   ~ 0
A9
Text Label 3900 4800 0    60   ~ 0
A10
Text Label 3900 4900 0    60   ~ 0
A11
Entry Wire Line
	9350 3750 9450 3850
Entry Wire Line
	9350 3850 9450 3950
Entry Wire Line
	9350 3950 9450 4050
Entry Wire Line
	9350 4050 9450 4150
Entry Wire Line
	9350 4150 9450 4250
Entry Wire Line
	9350 4250 9450 4350
Entry Wire Line
	9350 4350 9450 4450
Entry Wire Line
	9350 4450 9450 4550
Text Label 9350 3750 2    60   ~ 0
D0
Text Label 9350 3850 2    60   ~ 0
D1
Text Label 9350 3950 2    60   ~ 0
D2
Text Label 9350 4050 2    60   ~ 0
D3
Text Label 9350 4150 2    60   ~ 0
D4
Text Label 9350 4250 2    60   ~ 0
D5
Text Label 9350 4350 2    60   ~ 0
D6
Text Label 9350 4450 2    60   ~ 0
D7
Entry Wire Line
	5550 1750 5650 1850
Entry Wire Line
	5550 1850 5650 1950
Entry Wire Line
	5550 1950 5650 2050
Entry Wire Line
	5550 2050 5650 2150
Entry Wire Line
	5550 2150 5650 2250
Entry Wire Line
	5550 2250 5650 2350
Entry Wire Line
	5550 2350 5650 2450
Entry Wire Line
	5550 2450 5650 2550
Entry Wire Line
	5550 3800 5650 3900
Entry Wire Line
	5550 3900 5650 4000
Entry Wire Line
	5550 4000 5650 4100
Entry Wire Line
	5550 4100 5650 4200
Entry Wire Line
	5550 4200 5650 4300
Entry Wire Line
	5550 4300 5650 4400
Entry Wire Line
	5550 4400 5650 4500
Entry Wire Line
	5550 4500 5650 4600
Text Label 5550 1750 2    60   ~ 0
D0
Text Label 5550 1850 2    60   ~ 0
D1
Text Label 5550 1950 2    60   ~ 0
D2
Text Label 5550 2050 2    60   ~ 0
D3
Text Label 5550 2150 2    60   ~ 0
D4
Text Label 5550 2250 2    60   ~ 0
D5
Text Label 5550 2350 2    60   ~ 0
D6
Text Label 5550 2450 2    60   ~ 0
D7
Text Label 5550 3800 2    60   ~ 0
D0
Text Label 5550 3900 2    60   ~ 0
D1
Text Label 5550 4000 2    60   ~ 0
D2
Text Label 5550 4100 2    60   ~ 0
D3
Text Label 5550 4200 2    60   ~ 0
D4
Text Label 5550 4300 2    60   ~ 0
D5
Text Label 5550 4400 2    60   ~ 0
D6
Text Label 5550 4500 2    60   ~ 0
D7
Text HLabel 10450 1400 2    60   BiDi ~ 0
A0
Text HLabel 10450 1500 2    60   BiDi ~ 0
A1
Text HLabel 10450 1600 2    60   BiDi ~ 0
A2
Text HLabel 10450 1700 2    60   BiDi ~ 0
A3
Text HLabel 10450 1800 2    60   BiDi ~ 0
A4
Text HLabel 10450 1900 2    60   BiDi ~ 0
A5
Text HLabel 10450 2000 2    60   BiDi ~ 0
A6
Text HLabel 10450 2100 2    60   BiDi ~ 0
A7
Text HLabel 10450 2200 2    60   BiDi ~ 0
A8
Text HLabel 10450 2300 2    60   BiDi ~ 0
A9
Text HLabel 10450 2400 2    60   BiDi ~ 0
A10
Text HLabel 10450 2500 2    60   BiDi ~ 0
A11
Text HLabel 10450 2600 2    60   BiDi ~ 0
A12
Text HLabel 10450 2700 2    60   BiDi ~ 0
A13
Text HLabel 10450 2800 2    60   BiDi ~ 0
A14
Text HLabel 10450 2900 2    60   BiDi ~ 0
A15
Text HLabel 10450 4500 2    60   BiDi ~ 0
D0
Text HLabel 10450 4600 2    60   BiDi ~ 0
D1
Text HLabel 10450 4700 2    60   BiDi ~ 0
D2
Text HLabel 10450 4800 2    60   BiDi ~ 0
D3
Text HLabel 10450 4900 2    60   BiDi ~ 0
D4
Text HLabel 10450 5000 2    60   BiDi ~ 0
D5
Text HLabel 10450 5100 2    60   BiDi ~ 0
D6
Text HLabel 10450 5200 2    60   BiDi ~ 0
D7
Entry Wire Line
	10000 1300 10100 1400
Entry Wire Line
	10000 1400 10100 1500
Entry Wire Line
	10000 1500 10100 1600
Entry Wire Line
	10000 1600 10100 1700
Entry Wire Line
	10000 1700 10100 1800
Entry Wire Line
	10000 1800 10100 1900
Entry Wire Line
	10000 1900 10100 2000
Entry Wire Line
	10000 2000 10100 2100
Entry Wire Line
	10000 2100 10100 2200
Entry Wire Line
	10000 2200 10100 2300
Entry Wire Line
	10000 2300 10100 2400
Entry Wire Line
	10000 2400 10100 2500
Entry Wire Line
	10000 2500 10100 2600
Entry Wire Line
	10000 2600 10100 2700
Entry Wire Line
	10000 2700 10100 2800
Entry Wire Line
	10000 2800 10100 2900
Text Label 10100 1400 0    60   ~ 0
A0
Text Label 10100 1500 0    60   ~ 0
A1
Text Label 10100 1600 0    60   ~ 0
A2
Text Label 10100 1700 0    60   ~ 0
A3
Text Label 10100 1800 0    60   ~ 0
A4
Text Label 10100 1900 0    60   ~ 0
A5
Text Label 10100 2000 0    60   ~ 0
A6
Text Label 10100 2100 0    60   ~ 0
A7
Text Label 10100 2200 0    60   ~ 0
A8
Text Label 10100 2300 0    60   ~ 0
A9
Text Label 10100 2400 0    60   ~ 0
A10
Text Label 10100 2500 0    60   ~ 0
A11
Text Label 10100 2600 0    60   ~ 0
A12
Text Label 10100 2700 0    60   ~ 0
A13
Text Label 10100 2800 0    60   ~ 0
A14
Text Label 10100 2900 0    60   ~ 0
A15
Entry Wire Line
	10000 4400 10100 4500
Entry Wire Line
	10000 4500 10100 4600
Entry Wire Line
	10000 4600 10100 4700
Entry Wire Line
	10000 4700 10100 4800
Entry Wire Line
	10000 4800 10100 4900
Entry Wire Line
	10000 4900 10100 5000
Entry Wire Line
	10000 5000 10100 5100
Entry Wire Line
	10000 5100 10100 5200
Text Label 10100 4500 0    60   ~ 0
D0
Text Label 10100 4600 0    60   ~ 0
D1
Text Label 10100 4700 0    60   ~ 0
D2
Text Label 10100 4800 0    60   ~ 0
D3
Text Label 10100 4900 0    60   ~ 0
D4
Text Label 10100 5000 0    60   ~ 0
D5
Text Label 10100 5100 0    60   ~ 0
D6
Text Label 10100 5200 0    60   ~ 0
D7
Entry Wire Line
	6850 2150 6950 2050
Entry Wire Line
	6850 2450 6950 2350
Entry Wire Line
	6850 2750 6950 2650
Entry Wire Line
	6850 2850 6950 2750
Entry Wire Line
	6850 3150 6950 3050
Entry Wire Line
	6850 3250 6950 3150
Entry Wire Line
	6850 3350 6950 3250
Entry Wire Line
	6850 3450 6950 3350
Entry Wire Line
	6850 3850 6950 3750
Entry Wire Line
	6850 3950 6950 3850
Entry Wire Line
	6850 4050 6950 3950
Entry Wire Line
	6850 4150 6950 4050
Entry Wire Line
	6850 4450 6950 4350
Entry Wire Line
	6850 4550 6950 4450
Text Label 6950 2050 0    60   ~ 0
!CPU_RESET
Text Label 6950 2350 0    60   ~ 0
!CPU_CLK
Text Label 6950 2650 0    60   ~ 0
!NMI
Text Label 6950 2750 0    60   ~ 0
!CPU_INT
Text Label 6950 3050 0    60   ~ 0
!M1
Text Label 6950 3150 0    60   ~ 0
!REFRESH
Text Label 6950 3250 0    60   ~ 0
!CPU_WAIT
Text Label 6950 3350 0    60   ~ 0
!CPU_HALT
Text Label 6950 3750 0    60   ~ 0
!RD
Text Label 6950 3850 0    60   ~ 0
!WR
Text Label 6950 3950 0    60   ~ 0
!MEMREQ
Text Label 6950 4050 0    60   ~ 0
!IOREQ
Text Label 6950 4350 0    60   ~ 0
!BUSREQ
Text Label 6950 4450 0    60   ~ 0
!BUSACK
Text HLabel 2850 6450 3    60   Input ~ 0
!CPU_RESET
Text HLabel 2950 6450 3    60   Input ~ 0
!CPU_CLK
Text HLabel 3050 6450 3    60   Input ~ 0
!CPU_WAIT
Text HLabel 3150 6450 3    60   Input ~ 0
!CPU_HALT
Text HLabel 3350 6450 3    60   BiDi ~ 0
!RD
Text HLabel 3450 6450 3    60   BiDi ~ 0
!WR
Text HLabel 3550 6450 3    60   BiDi ~ 0
!MEMREQ
Text HLabel 3650 6450 3    60   Output ~ 0
!IOREQ
Text HLabel 3800 6450 3    60   Input ~ 0
!BUSREQ
Text HLabel 3900 6450 3    60   Output ~ 0
!BUSACK
Text HLabel 4100 6450 3    60   Input ~ 0
!CPU_INT
Text HLabel 4200 6450 3    60   Input ~ 0
!NMI
Entry Wire Line
	2850 6400 2950 6300
Entry Wire Line
	2950 6400 3050 6300
Entry Wire Line
	3050 6400 3150 6300
Entry Wire Line
	3150 6400 3250 6300
Entry Wire Line
	3350 6400 3450 6300
Entry Wire Line
	3450 6400 3550 6300
Entry Wire Line
	3550 6400 3650 6300
Entry Wire Line
	3650 6400 3750 6300
Entry Wire Line
	3800 6400 3900 6300
Entry Wire Line
	3900 6400 4000 6300
Entry Wire Line
	4100 6400 4200 6300
Entry Wire Line
	4200 6400 4300 6300
$Comp
L UM61512A IC1
U 1 1 567D2CDC
P 1600 3350
F 0 "IC1" H 1700 5100 60  0000 C CNN
F 1 "UM61512A" H 1950 3300 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 1850 5350 60  0001 C CNN
F 3 "~" H 1850 5350 60  0000 C CNN
	1    1600 3350
	1    0    0    -1  
$EndComp
$Comp
L UM61512A IC2
U 1 1 567D2CE2
P 1600 5400
F 0 "IC2" H 1700 7150 60  0000 C CNN
F 1 "UM61512A" H 1950 5350 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 1850 7400 60  0001 C CNN
F 3 "~" H 1850 7400 60  0000 C CNN
	1    1600 5400
	1    0    0    -1  
$EndComp
Entry Wire Line
	950  1650 1050 1750
Entry Wire Line
	950  1750 1050 1850
Entry Wire Line
	950  1850 1050 1950
Entry Wire Line
	950  1950 1050 2050
Entry Wire Line
	950  2050 1050 2150
Entry Wire Line
	950  2150 1050 2250
Entry Wire Line
	950  2250 1050 2350
Entry Wire Line
	950  2350 1050 2450
Entry Wire Line
	950  2450 1050 2550
Entry Wire Line
	950  2550 1050 2650
Entry Wire Line
	950  2650 1050 2750
Entry Wire Line
	950  2750 1050 2850
Entry Wire Line
	950  3700 1050 3800
Entry Wire Line
	950  3800 1050 3900
Entry Wire Line
	950  3900 1050 4000
Entry Wire Line
	950  4000 1050 4100
Entry Wire Line
	950  4100 1050 4200
Entry Wire Line
	950  4200 1050 4300
Entry Wire Line
	950  4300 1050 4400
Entry Wire Line
	950  4400 1050 4500
Entry Wire Line
	950  4500 1050 4600
Entry Wire Line
	950  4600 1050 4700
Entry Wire Line
	950  4700 1050 4800
Entry Wire Line
	950  4800 1050 4900
Entry Wire Line
	2700 1750 2800 1850
Entry Wire Line
	2700 1850 2800 1950
Entry Wire Line
	2700 1950 2800 2050
Entry Wire Line
	2700 2050 2800 2150
Entry Wire Line
	2700 2150 2800 2250
Entry Wire Line
	2700 2250 2800 2350
Entry Wire Line
	2700 2350 2800 2450
Entry Wire Line
	2700 2450 2800 2550
Text Label 2700 1750 2    60   ~ 0
D0
Text Label 2700 1850 2    60   ~ 0
D1
Text Label 2700 1950 2    60   ~ 0
D2
Text Label 2700 2050 2    60   ~ 0
D3
Text Label 2700 2150 2    60   ~ 0
D4
Text Label 2700 2250 2    60   ~ 0
D5
Text Label 2700 2350 2    60   ~ 0
D6
Text Label 2700 2450 2    60   ~ 0
D7
Text Label 1050 1750 0    60   ~ 0
A0
Text Label 1050 1850 0    60   ~ 0
A1
Text Label 1050 1950 0    60   ~ 0
A2
Text Label 1050 2050 0    60   ~ 0
A3
Text Label 1050 2150 0    60   ~ 0
A4
Text Label 1050 2250 0    60   ~ 0
A5
Text Label 1050 2350 0    60   ~ 0
A6
Text Label 1050 2450 0    60   ~ 0
A7
Text Label 1050 2550 0    60   ~ 0
A8
Text Label 1050 2650 0    60   ~ 0
A9
Text Label 1050 2750 0    60   ~ 0
A10
Text Label 1050 2850 0    60   ~ 0
A11
Text Label 1050 3800 0    60   ~ 0
A0
Text Label 1050 3900 0    60   ~ 0
A1
Text Label 1050 4000 0    60   ~ 0
A2
Text Label 1050 4100 0    60   ~ 0
A3
Text Label 1050 4200 0    60   ~ 0
A4
Text Label 1050 4300 0    60   ~ 0
A5
Text Label 1050 4400 0    60   ~ 0
A6
Text Label 1050 4500 0    60   ~ 0
A7
Text Label 1050 4600 0    60   ~ 0
A8
Text Label 1050 4700 0    60   ~ 0
A9
Text Label 1050 4800 0    60   ~ 0
A10
Text Label 1050 4900 0    60   ~ 0
A11
Entry Wire Line
	2700 3800 2800 3900
Entry Wire Line
	2700 3900 2800 4000
Entry Wire Line
	2700 4000 2800 4100
Entry Wire Line
	2700 4100 2800 4200
Entry Wire Line
	2700 4200 2800 4300
Entry Wire Line
	2700 4300 2800 4400
Entry Wire Line
	2700 4400 2800 4500
Entry Wire Line
	2700 4500 2800 4600
Text Label 2700 3800 2    60   ~ 0
D0
Text Label 2700 3900 2    60   ~ 0
D1
Text Label 2700 4000 2    60   ~ 0
D2
Text Label 2700 4100 2    60   ~ 0
D3
Text Label 2700 4200 2    60   ~ 0
D4
Text Label 2700 4300 2    60   ~ 0
D5
Text Label 2700 4400 2    60   ~ 0
D6
Text Label 2700 4500 2    60   ~ 0
D7
Entry Wire Line
	3250 2650 3350 2750
Entry Wire Line
	3250 2750 3350 2850
Entry Wire Line
	3250 4700 3350 4800
Entry Wire Line
	3250 4800 3350 4900
Wire Wire Line
	4200 6400 4200 6450
Wire Wire Line
	4100 6400 4100 6450
Wire Wire Line
	3900 6400 3900 6450
Wire Wire Line
	3800 6400 3800 6450
Wire Wire Line
	3650 6400 3650 6450
Wire Wire Line
	3550 6400 3550 6450
Wire Wire Line
	3450 6400 3450 6450
Wire Wire Line
	3350 6400 3350 6450
Wire Wire Line
	3150 6400 3150 6450
Wire Wire Line
	3050 6400 3050 6450
Wire Wire Line
	2950 6400 2950 6450
Wire Wire Line
	2850 6400 2850 6450
Wire Wire Line
	6950 4450 7450 4450
Wire Wire Line
	6950 4350 7450 4350
Wire Wire Line
	6950 4050 7450 4050
Wire Wire Line
	6950 3950 7450 3950
Wire Wire Line
	6950 3850 7450 3850
Wire Wire Line
	6950 3750 7450 3750
Wire Wire Line
	6950 3350 7450 3350
Wire Wire Line
	6950 3250 7450 3250
Wire Wire Line
	6950 3150 7450 3150
Wire Wire Line
	6950 3050 7450 3050
Wire Wire Line
	6950 2750 7450 2750
Wire Wire Line
	6950 2650 7450 2650
Wire Wire Line
	6950 2350 7450 2350
Wire Wire Line
	6950 2050 7450 2050
Wire Bus Line
	6850 2150 6850 6300
Wire Wire Line
	10100 5200 10450 5200
Wire Wire Line
	10100 5100 10450 5100
Wire Wire Line
	10100 5000 10450 5000
Wire Wire Line
	10100 4900 10450 4900
Wire Wire Line
	10100 4800 10450 4800
Wire Wire Line
	10100 4700 10450 4700
Wire Wire Line
	10100 4600 10450 4600
Wire Wire Line
	10100 4500 10450 4500
Wire Bus Line
	10000 4400 10000 4650
Wire Bus Line
	10000 4500 10000 5600
Wire Wire Line
	10100 2900 10450 2900
Wire Wire Line
	10100 2800 10450 2800
Wire Wire Line
	10100 2700 10450 2700
Wire Wire Line
	10100 2600 10450 2600
Wire Wire Line
	10100 2500 10450 2500
Wire Wire Line
	10100 2400 10450 2400
Wire Wire Line
	10100 2300 10450 2300
Wire Wire Line
	10100 2200 10450 2200
Wire Wire Line
	10100 2100 10450 2100
Wire Wire Line
	10100 2000 10450 2000
Wire Wire Line
	10100 1900 10450 1900
Wire Wire Line
	10100 1800 10450 1800
Wire Wire Line
	10100 1700 10450 1700
Wire Wire Line
	10100 1600 10450 1600
Wire Wire Line
	10100 1500 10450 1500
Wire Wire Line
	10100 1400 10450 1400
Wire Bus Line
	10000 1200 10000 2800
Wire Wire Line
	5300 2450 5550 2450
Wire Wire Line
	5300 4500 5550 4500
Wire Wire Line
	5300 4400 5550 4400
Wire Wire Line
	5300 4300 5550 4300
Wire Wire Line
	5300 4200 5550 4200
Wire Wire Line
	5300 4100 5550 4100
Wire Wire Line
	5300 4000 5550 4000
Wire Wire Line
	5300 3900 5550 3900
Wire Wire Line
	5300 3800 5550 3800
Wire Wire Line
	5300 2350 5550 2350
Wire Wire Line
	5300 2250 5550 2250
Wire Wire Line
	5300 2150 5550 2150
Wire Wire Line
	5300 2050 5550 2050
Wire Wire Line
	5300 1950 5550 1950
Wire Wire Line
	5300 1850 5550 1850
Wire Wire Line
	5300 1750 5550 1750
Wire Wire Line
	8850 4450 9350 4450
Wire Wire Line
	8850 4350 9350 4350
Wire Wire Line
	8850 4250 9350 4250
Wire Wire Line
	8850 4150 9350 4150
Wire Wire Line
	8850 4050 9350 4050
Wire Wire Line
	8850 3950 9350 3950
Wire Wire Line
	8850 3850 9350 3850
Wire Wire Line
	8850 3750 9350 3750
Wire Bus Line
	9450 5750 9450 3850
Wire Bus Line
	5650 1800 5650 5650
Wire Wire Line
	8850 3550 9350 3550
Wire Wire Line
	8850 3450 9350 3450
Wire Wire Line
	8850 3350 9350 3350
Wire Wire Line
	8850 3250 9350 3250
Wire Wire Line
	8850 3150 9350 3150
Wire Wire Line
	8850 3050 9350 3050
Wire Wire Line
	8850 2950 9350 2950
Wire Wire Line
	8850 2850 9350 2850
Wire Wire Line
	8850 2750 9350 2750
Wire Wire Line
	8850 2650 9350 2650
Wire Wire Line
	8850 2550 9350 2550
Wire Wire Line
	8850 2450 9350 2450
Wire Wire Line
	8850 2350 9350 2350
Wire Wire Line
	8850 2250 9350 2250
Wire Wire Line
	8850 2150 9350 2150
Wire Wire Line
	8850 2050 9350 2050
Wire Wire Line
	4150 4900 3900 4900
Wire Wire Line
	4150 4800 3900 4800
Wire Wire Line
	4150 4700 3900 4700
Wire Wire Line
	4150 4600 3900 4600
Wire Wire Line
	4150 4500 3900 4500
Wire Wire Line
	4150 4400 3900 4400
Wire Wire Line
	4150 4300 3900 4300
Wire Wire Line
	4150 4200 3900 4200
Wire Wire Line
	4150 4100 3900 4100
Wire Wire Line
	4150 4000 3900 4000
Wire Wire Line
	4150 3900 3900 3900
Wire Wire Line
	4150 3800 3900 3800
Wire Wire Line
	4150 2850 3900 2850
Wire Wire Line
	4150 2750 3900 2750
Wire Wire Line
	4150 2650 3900 2650
Wire Wire Line
	4150 2550 3900 2550
Wire Wire Line
	4150 2450 3900 2450
Wire Wire Line
	4150 2350 3900 2350
Wire Wire Line
	4150 2250 3900 2250
Wire Wire Line
	4150 2150 3900 2150
Wire Wire Line
	3900 2050 4150 2050
Wire Wire Line
	4150 1950 3900 1950
Wire Wire Line
	4150 1850 3900 1850
Wire Wire Line
	4150 1750 3900 1750
Wire Bus Line
	950  1200 10000 1200
Wire Wire Line
	1050 1750 1300 1750
Wire Wire Line
	1050 1850 1300 1850
Wire Wire Line
	1050 1950 1300 1950
Wire Wire Line
	1050 2050 1300 2050
Wire Wire Line
	1050 2150 1300 2150
Wire Wire Line
	1050 2250 1300 2250
Wire Wire Line
	1050 2350 1300 2350
Wire Wire Line
	1050 2450 1300 2450
Wire Wire Line
	1050 2550 1300 2550
Wire Wire Line
	1050 2650 1300 2650
Wire Wire Line
	1050 2750 1300 2750
Wire Wire Line
	1050 2850 1300 2850
Wire Wire Line
	1050 3800 1300 3800
Wire Wire Line
	1050 3900 1300 3900
Wire Wire Line
	1050 4000 1300 4000
Wire Wire Line
	1050 4100 1300 4100
Wire Wire Line
	1050 4200 1300 4200
Wire Wire Line
	1050 4300 1300 4300
Wire Wire Line
	1050 4400 1300 4400
Wire Wire Line
	1050 4500 1300 4500
Wire Wire Line
	1050 4600 1300 4600
Wire Wire Line
	1050 4700 1300 4700
Wire Wire Line
	1050 4800 1300 4800
Wire Wire Line
	1050 4900 1300 4900
Wire Bus Line
	2800 1850 2800 5750
Wire Wire Line
	2450 1750 2700 1750
Wire Wire Line
	2450 1850 2700 1850
Wire Wire Line
	2450 1950 2700 1950
Wire Wire Line
	2450 2050 2700 2050
Wire Wire Line
	2450 2150 2700 2150
Wire Wire Line
	2450 2250 2700 2250
Wire Wire Line
	2450 2350 2700 2350
Wire Wire Line
	2450 2450 2700 2450
Wire Wire Line
	2450 3800 2700 3800
Wire Wire Line
	2450 3900 2700 3900
Wire Wire Line
	2450 4000 2700 4000
Wire Wire Line
	2450 4100 2700 4100
Wire Wire Line
	2450 4200 2700 4200
Wire Wire Line
	2450 4300 2700 4300
Wire Wire Line
	2450 4400 2700 4400
Wire Wire Line
	2450 4500 2700 4500
Wire Bus Line
	6200 6000 6200 2750
Wire Wire Line
	2450 2650 3250 2650
Wire Wire Line
	2450 2750 3250 2750
Wire Wire Line
	2450 4700 3250 4700
Wire Wire Line
	2450 4800 3250 4800
Entry Wire Line
	6100 2650 6200 2750
Entry Wire Line
	6100 2750 6200 2850
Entry Wire Line
	6100 4700 6200 4800
Entry Wire Line
	6100 4800 6200 4900
Wire Wire Line
	5300 2650 6100 2650
Wire Wire Line
	5300 2750 6100 2750
Wire Wire Line
	5300 4700 6100 4700
Wire Wire Line
	5300 4800 6100 4800
Text Label 3250 2750 2    60   ~ 0
CPU_ME
Text Label 3250 4800 2    60   ~ 0
CPU_ME
Text Label 6100 2750 2    60   ~ 0
CPU_ME
Text Label 6100 4800 2    60   ~ 0
CPU_ME
Text Label 3250 2650 2    60   ~ 0
!MBE1
Text Label 3250 4700 2    60   ~ 0
!MBE2
Text Label 6100 2650 2    60   ~ 0
!MBE3
Text Label 6100 4700 2    60   ~ 0
!MBE4
Entry Wire Line
	3350 3250 3450 3150
Entry Wire Line
	3350 3350 3450 3250
Entry Wire Line
	3350 5300 3450 5200
Entry Wire Line
	3350 5400 3450 5300
Wire Wire Line
	4150 5200 3450 5200
Wire Wire Line
	4150 5300 3450 5300
Wire Wire Line
	4150 3150 3450 3150
Wire Wire Line
	4150 3250 3450 3250
Entry Wire Line
	3350 3050 3450 2950
Entry Wire Line
	3350 3150 3450 3050
Entry Wire Line
	3350 5100 3450 5000
Entry Wire Line
	3350 5200 3450 5100
Wire Wire Line
	3450 2950 4150 2950
Wire Wire Line
	3450 3050 4150 3050
Wire Wire Line
	3450 5000 4150 5000
Wire Wire Line
	3450 5100 4150 5100
Wire Bus Line
	950  1200 950  4800
Wire Bus Line
	550  3050 550  6000
Entry Wire Line
	550  3050 650  2950
Entry Wire Line
	550  3150 650  3050
Entry Wire Line
	550  3250 650  3150
Entry Wire Line
	550  3350 650  3250
Entry Wire Line
	550  5100 650  5000
Entry Wire Line
	550  5200 650  5100
Entry Wire Line
	550  5300 650  5200
Entry Wire Line
	550  5400 650  5300
Wire Wire Line
	650  2950 1300 2950
Wire Wire Line
	650  3050 1300 3050
Wire Wire Line
	650  3150 1300 3150
Wire Wire Line
	650  3250 1300 3250
Wire Wire Line
	650  5000 1300 5000
Wire Wire Line
	650  5100 1300 5100
Wire Wire Line
	650  5200 1300 5200
Wire Wire Line
	650  5300 1300 5300
Text Label 650  2950 0    60   ~ 0
MA12
Text Label 650  3050 0    60   ~ 0
MA13
Text Label 650  3150 0    60   ~ 0
MA14
Text Label 650  3250 0    60   ~ 0
MA15
Text Label 650  5000 0    60   ~ 0
MA12
Text Label 650  5100 0    60   ~ 0
MA13
Text Label 650  5200 0    60   ~ 0
MA14
Text Label 650  5300 0    60   ~ 0
MA15
Text Label 3450 2950 0    60   ~ 0
MA12
Text Label 3450 3050 0    60   ~ 0
MA13
Text Label 3450 3150 0    60   ~ 0
MA14
Text Label 3450 3250 0    60   ~ 0
MA15
Text Label 3450 5000 0    60   ~ 0
MA12
Text Label 3450 5100 0    60   ~ 0
MA13
Text Label 3450 5200 0    60   ~ 0
MA14
Text Label 3450 5300 0    60   ~ 0
MA15
Wire Bus Line
	2700 2950 2700 3050
Wire Bus Line
	2700 3050 2850 3050
Wire Bus Line
	2850 3050 2850 6300
Wire Bus Line
	2700 5000 2700 5100
Wire Bus Line
	2700 5100 2850 5100
Entry Wire Line
	2600 2850 2700 2950
Entry Wire Line
	2600 2950 2700 3050
Entry Wire Line
	2600 4900 2700 5000
Entry Wire Line
	2600 5000 2700 5100
Wire Wire Line
	2450 2850 2600 2850
Wire Wire Line
	2450 2950 2600 2950
Wire Wire Line
	2450 4900 2600 4900
Wire Wire Line
	2450 5000 2600 5000
Text Label 2600 2850 2    60   ~ 0
!RD
Text Label 2600 2950 2    60   ~ 0
!WR
Text Label 2600 4900 2    60   ~ 0
!RD
Text Label 2600 5000 2    60   ~ 0
!WR
Text HLabel 2000 6550 0    60   Input ~ 0
MA12
Text HLabel 2000 6650 0    60   Input ~ 0
MA13
Text HLabel 2000 6750 0    60   Input ~ 0
MA14
Text HLabel 2000 6850 0    60   Input ~ 0
MA15
Text HLabel 2000 6950 0    60   Input ~ 0
CPU_ME
Entry Wire Line
	6750 2850 6850 2950
Entry Wire Line
	6750 2950 6850 3050
Entry Wire Line
	6750 4900 6850 5000
Entry Wire Line
	6750 5000 6850 5100
Wire Wire Line
	5300 2850 6750 2850
Wire Wire Line
	5300 2950 6750 2950
Wire Wire Line
	5300 4900 6750 4900
Wire Wire Line
	5300 5000 6750 5000
Text Label 6750 2850 2    60   ~ 0
!RD
Text Label 6750 2950 2    60   ~ 0
!WR
Text Label 6750 4900 2    60   ~ 0
!RD
Text Label 6750 5000 2    60   ~ 0
!WR
Text HLabel 2000 7050 0    60   Input ~ 0
!MBE1
Text HLabel 2000 7150 0    60   Input ~ 0
!MBE2
Text HLabel 2000 7250 0    60   Input ~ 0
!MBE3
Text HLabel 2000 7350 0    60   Input ~ 0
!MBE4
Entry Wire Line
	2100 7350 2200 7250
Entry Wire Line
	2100 7250 2200 7150
Entry Wire Line
	2100 7150 2200 7050
Entry Wire Line
	2100 7050 2200 6950
Entry Wire Line
	2100 6950 2200 6850
Entry Wire Line
	2100 6850 2200 6750
Entry Wire Line
	2100 6750 2200 6650
Entry Wire Line
	2100 6650 2200 6550
Entry Wire Line
	2100 6550 2200 6450
Wire Wire Line
	2000 6550 2100 6550
Wire Wire Line
	2000 6650 2100 6650
Wire Wire Line
	2000 6750 2100 6750
Wire Wire Line
	2000 6850 2100 6850
Wire Wire Line
	2000 6950 2100 6950
Wire Wire Line
	2000 7050 2100 7050
Wire Wire Line
	2000 7150 2100 7150
Wire Wire Line
	2000 7250 2100 7250
Wire Wire Line
	2000 7350 2100 7350
$Comp
L C C301
U 1 1 567D7186
P 8750 6450
F 0 "C301" H 8775 6550 50  0000 L CNN
F 1 "C" H 8775 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8788 6300 50  0001 C CNN
F 3 "" H 8750 6450 50  0000 C CNN
	1    8750 6450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR205
U 1 1 567D7534
P 5300 3150
F 0 "#PWR205" H 5300 3000 50  0001 C CNN
F 1 "VCC" H 5300 3300 50  0000 C CNN
F 2 "" H 5300 3150 50  0000 C CNN
F 3 "" H 5300 3150 50  0000 C CNN
	1    5300 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR206
U 1 1 567D753A
P 5300 3250
F 0 "#PWR206" H 5300 3000 50  0001 C CNN
F 1 "GND" H 5300 3100 50  0000 C CNN
F 2 "" H 5300 3250 50  0000 C CNN
F 3 "" H 5300 3250 50  0000 C CNN
	1    5300 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR208
U 1 1 567D7572
P 5300 5300
F 0 "#PWR208" H 5300 5050 50  0001 C CNN
F 1 "GND" H 5300 5150 50  0000 C CNN
F 2 "" H 5300 5300 50  0000 C CNN
F 3 "" H 5300 5300 50  0000 C CNN
	1    5300 5300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR207
U 1 1 567D7582
P 5300 5200
F 0 "#PWR207" H 5300 5050 50  0001 C CNN
F 1 "VCC" H 5300 5350 50  0000 C CNN
F 2 "" H 5300 5200 50  0000 C CNN
F 3 "" H 5300 5200 50  0000 C CNN
	1    5300 5200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR204
U 1 1 567D7588
P 2450 5300
F 0 "#PWR204" H 2450 5050 50  0001 C CNN
F 1 "GND" H 2450 5150 50  0000 C CNN
F 2 "" H 2450 5300 50  0000 C CNN
F 3 "" H 2450 5300 50  0000 C CNN
	1    2450 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR202
U 1 1 567D758E
P 2450 3250
F 0 "#PWR202" H 2450 3000 50  0001 C CNN
F 1 "GND" H 2450 3100 50  0000 C CNN
F 2 "" H 2450 3250 50  0000 C CNN
F 3 "" H 2450 3250 50  0000 C CNN
	1    2450 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR203
U 1 1 567D7594
P 2450 5200
F 0 "#PWR203" H 2450 5050 50  0001 C CNN
F 1 "VCC" H 2450 5350 50  0000 C CNN
F 2 "" H 2450 5200 50  0000 C CNN
F 3 "" H 2450 5200 50  0000 C CNN
	1    2450 5200
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR201
U 1 1 567D759A
P 2450 3150
F 0 "#PWR201" H 2450 3000 50  0001 C CNN
F 1 "VCC" H 2450 3300 50  0000 C CNN
F 2 "" H 2450 3150 50  0000 C CNN
F 3 "" H 2450 3150 50  0000 C CNN
	1    2450 3150
	0    1    1    0   
$EndComp
$Comp
L C C302
U 1 1 567D75AA
P 9000 6450
F 0 "C302" H 9025 6550 50  0000 L CNN
F 1 "C" H 9025 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9038 6300 50  0001 C CNN
F 3 "" H 9000 6450 50  0000 C CNN
	1    9000 6450
	1    0    0    -1  
$EndComp
$Comp
L C C303
U 1 1 567D75B0
P 9250 6450
F 0 "C303" H 9275 6550 50  0000 L CNN
F 1 "C" H 9275 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9288 6300 50  0001 C CNN
F 3 "" H 9250 6450 50  0000 C CNN
	1    9250 6450
	1    0    0    -1  
$EndComp
$Comp
L C C304
U 1 1 567D75B6
P 9500 6450
F 0 "C304" H 9525 6550 50  0000 L CNN
F 1 "C" H 9525 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9538 6300 50  0001 C CNN
F 3 "" H 9500 6450 50  0000 C CNN
	1    9500 6450
	1    0    0    -1  
$EndComp
$Comp
L C C305
U 1 1 567D75BC
P 9750 6450
F 0 "C305" H 9775 6550 50  0000 L CNN
F 1 "C" H 9775 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9788 6300 50  0001 C CNN
F 3 "" H 9750 6450 50  0000 C CNN
	1    9750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6300 9750 6300
Wire Wire Line
	8750 6600 9750 6600
$Comp
L GND #PWR212
U 1 1 567D7789
P 9350 6600
F 0 "#PWR212" H 9350 6350 50  0001 C CNN
F 1 "GND" H 9350 6450 50  0000 C CNN
F 2 "" H 9350 6600 50  0000 C CNN
F 3 "" H 9350 6600 50  0000 C CNN
	1    9350 6600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR211
U 1 1 567D778F
P 9350 6300
F 0 "#PWR211" H 9350 6150 50  0001 C CNN
F 1 "VCC" H 9350 6450 50  0000 C CNN
F 2 "" H 9350 6300 50  0000 C CNN
F 3 "" H 9350 6300 50  0000 C CNN
	1    9350 6300
	1    0    0    -1  
$EndComp
Entry Bus Bus
	5550 5750 5650 5650
Wire Bus Line
	2800 5750 9450 5750
Entry Bus Bus
	9450 5700 9550 5600
Wire Bus Line
	10000 5600 9550 5600
Wire Bus Line
	3350 2750 3350 5900
Entry Bus Bus
	3250 6000 3350 5900
Wire Bus Line
	550  6000 6200 6000
Entry Bus Bus
	9350 1200 9450 1300
Wire Bus Line
	9450 1300 9450 3450
Entry Bus Bus
	3800 1300 3900 1200
Wire Bus Line
	3800 1300 3800 4800
Entry Bus Bus
	2200 6100 2300 6000
Wire Bus Line
	2200 6100 2200 7250
Wire Bus Line
	2850 6300 6850 6300
Text HLabel 4400 6450 3    60   Output ~ 0
!CPU_M1
Entry Wire Line
	4400 6400 4500 6300
Wire Wire Line
	4400 6400 4400 6450
$EndSCHEMATC
