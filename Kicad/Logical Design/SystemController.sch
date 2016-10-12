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
LIBS:special
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
LIBS:Zilog
LIBS:memory-umc
LIBS:g-link
LIBS:Z80 Computer-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 5
Title "Z80 Computer"
Date "4 feb 2016"
Rev ""
Comp "Canned Bytes"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4100 6650 0    60   Output ~ 0
TX1
Text HLabel 6700 6850 2    60   Output ~ 0
TX2
Text HLabel 4100 6550 0    60   Input ~ 0
RX1
Text HLabel 6700 6750 2    60   Input ~ 0
RX2
Text HLabel 6700 6550 2    60   BiDi ~ 0
I2CCLK
Text HLabel 6700 6650 2    60   BiDi ~ 0
I2CDATA
$Comp
L ATMEGA128-A IC201
U 1 1 567BF64A
P 5400 5550
F 0 "IC201" H 4250 7450 40  0000 L BNN
F 1 "ATMEGA128-A" H 6150 3600 40  0000 L BNN
F 2 "TQFP64" H 5400 5550 30  0000 C CIN
F 3 "~" H 5400 5550 60  0000 C CNN
	1    5400 5550
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL Y?
U 1 1 567E4C61
P 3700 4450
F 0 "Y?" H 3700 4600 50  0000 C CNN
F 1 "16MHz" H 3700 4300 50  0000 C CNN
F 2 "" H 3700 4450 50  0000 C CNN
F 3 "" H 3700 4450 50  0000 C CNN
	1    3700 4450
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 567E4C74
P 3300 4250
F 0 "C?" H 3325 4350 50  0000 L CNN
F 1 "C" H 3325 4150 50  0000 L CNN
F 2 "" H 3338 4100 50  0000 C CNN
F 3 "" H 3300 4250 50  0000 C CNN
	1    3300 4250
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 567E4C81
P 3300 4650
F 0 "C?" H 3325 4750 50  0000 L CNN
F 1 "C" H 3325 4550 50  0000 L CNN
F 2 "" H 3338 4500 50  0000 C CNN
F 3 "" H 3300 4650 50  0000 C CNN
	1    3300 4650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR013
U 1 1 567E4CBB
P 3000 4450
F 0 "#PWR013" H 3000 4200 50  0001 C CNN
F 1 "GND" H 3000 4300 50  0000 C CNN
F 2 "" H 3000 4450 50  0000 C CNN
F 3 "" H 3000 4450 50  0000 C CNN
	1    3000 4450
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR014
U 1 1 567E4CCA
P 8250 4650
F 0 "#PWR014" H 8250 4500 50  0001 C CNN
F 1 "VCC" H 8250 4800 50  0000 C CNN
F 2 "" H 8250 4650 50  0000 C CNN
F 3 "" H 8250 4650 50  0000 C CNN
	1    8250 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 567E4CD9
P 8250 5250
F 0 "#PWR015" H 8250 5000 50  0001 C CNN
F 1 "GND" H 8250 5100 50  0000 C CNN
F 2 "" H 8250 5250 50  0000 C CNN
F 3 "" H 8250 5250 50  0000 C CNN
	1    8250 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 567E4CE8
P 5350 7750
F 0 "#PWR016" H 5350 7500 50  0001 C CNN
F 1 "GND" H 5350 7600 50  0000 C CNN
F 2 "" H 5350 7750 50  0000 C CNN
F 3 "" H 5350 7750 50  0000 C CNN
	1    5350 7750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 567E4CF7
P 5400 3350
F 0 "#PWR017" H 5400 3200 50  0001 C CNN
F 1 "VCC" H 5400 3500 50  0000 C CNN
F 2 "" H 5400 3350 50  0000 C CNN
F 3 "" H 5400 3350 50  0000 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 567E4E14
P 4100 4850
F 0 "#PWR018" H 4100 4700 50  0001 C CNN
F 1 "VCC" H 4100 5000 50  0000 C CNN
F 2 "" H 4100 4850 50  0000 C CNN
F 3 "" H 4100 4850 50  0000 C CNN
	1    4100 4850
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 567E4E23
P 950 5000
F 0 "C?" H 975 5100 50  0000 L CNN
F 1 "C" H 975 4900 50  0000 L CNN
F 2 "" H 988 4850 50  0000 C CNN
F 3 "" H 950 5000 50  0000 C CNN
	1    950  5000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 567E4E30
P 1200 5000
F 0 "C?" H 1225 5100 50  0000 L CNN
F 1 "C" H 1225 4900 50  0000 L CNN
F 2 "" H 1238 4850 50  0000 C CNN
F 3 "" H 1200 5000 50  0000 C CNN
	1    1200 5000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 567E4E36
P 1450 5000
F 0 "C?" H 1475 5100 50  0000 L CNN
F 1 "C" H 1475 4900 50  0000 L CNN
F 2 "" H 1488 4850 50  0000 C CNN
F 3 "" H 1450 5000 50  0000 C CNN
	1    1450 5000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 567E4E3C
P 1700 5000
F 0 "C?" H 1725 5100 50  0000 L CNN
F 1 "C" H 1725 4900 50  0000 L CNN
F 2 "" H 1738 4850 50  0000 C CNN
F 3 "" H 1700 5000 50  0000 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 567E4F37
P 1350 4650
F 0 "#PWR019" H 1350 4500 50  0001 C CNN
F 1 "VCC" H 1350 4800 50  0000 C CNN
F 2 "" H 1350 4650 50  0000 C CNN
F 3 "" H 1350 4650 50  0000 C CNN
	1    1350 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 567E4F50
P 1350 5350
F 0 "#PWR020" H 1350 5100 50  0001 C CNN
F 1 "GND" H 1350 5200 50  0000 C CNN
F 2 "" H 1350 5350 50  0000 C CNN
F 3 "" H 1350 5350 50  0000 C CNN
	1    1350 5350
	1    0    0    -1  
$EndComp
Text Notes 550  600  0    60   ~ 0
External Bus\nBy default PA, PC, PF6:7 and PG0:1 are all inputs (or hi-Z): D0:7, A8:11, MA12:15, !RD, !WR, !MEMREQ, !IOREQ.\nAll these pins are directly connected to the main bus and can only be active after a !BUSACK is active (CPU has released bus).\nWhen the external addressing mode is activated in the MCU causing these pins to become outputs and ALE to become active also. \nThe glue logic will take care of latching the lower address bits (A0-A7) from PA when the MCU performs its DMA operations.\n
Text Notes 550  1200 0    60   ~ 0
Reset sequence\nThe Z80 CPU is held in RESET until the MCU and the CPLD are both \nup and runnig. It is the MCU that releases the CPU.
$Sheet
S 10900 4550 1500 4000
U 56811419
F0 "SystemLogic" 50
F1 "SystemLogic.sch" 50
F2 "D0" B R 12400 4750 60 
F3 "D1" B R 12400 4850 60 
F4 "D2" B R 12400 4950 60 
F5 "D3" B R 12400 5050 60 
F6 "D4" B R 12400 5150 60 
F7 "D5" B R 12400 5250 60 
F8 "D6" B R 12400 5350 60 
F9 "D7" B R 12400 5450 60 
F10 "A0" B R 12400 5650 60 
F11 "A1" B R 12400 5750 60 
F12 "A2" B R 12400 5850 60 
F13 "A3" B R 12400 5950 60 
F14 "A4" B R 12400 6050 60 
F15 "A5" B R 12400 6150 60 
F16 "A6" B R 12400 6250 60 
F17 "A7" B R 12400 6350 60 
F18 "A8" B R 12400 6450 60 
F19 "A9" B R 12400 6550 60 
F20 "A10" B R 12400 6650 60 
F21 "A11" B R 12400 6750 60 
F22 "A12" B R 12400 6850 60 
F23 "A13" B R 12400 6950 60 
F24 "A14" B R 12400 7050 60 
F25 "A15" B R 12400 7150 60 
F26 "EALE" B L 10900 5250 60 
F27 "MA12" B R 12400 7350 60 
F28 "MA13" B R 12400 7450 60 
F29 "MA14" B R 12400 7550 60 
F30 "MA15" B R 12400 7650 60 
F31 "MA16" B R 12400 7750 60 
F32 "MA17" B R 12400 7850 60 
F33 "MA18" B R 12400 7950 60 
F34 "MA19" B R 12400 8050 60 
F35 "!MBE1" I L 10900 7600 60 
F36 "!MBE2" I L 10900 7700 60 
F37 "!MBE3" I L 10900 7800 60 
F38 "!MBE4" I L 10900 7900 60 
F39 "EA12" B L 10900 5400 60 
F40 "EA13" B L 10900 5500 60 
F41 "EA14" B L 10900 5600 60 
F42 "EA15" B L 10900 5700 60 
F43 "!MEMREQ" I L 10900 4750 60 
F44 "!IOREQ" I L 10900 4850 60 
$EndSheet
Entry Wire Line
	12950 4750 13050 4650
Entry Wire Line
	12950 4850 13050 4750
Entry Wire Line
	12950 4950 13050 4850
Entry Wire Line
	12950 5050 13050 4950
Entry Wire Line
	12950 5150 13050 5050
Entry Wire Line
	12950 5250 13050 5150
Entry Wire Line
	12950 5350 13050 5250
Entry Wire Line
	12950 5450 13050 5350
Entry Wire Line
	12950 5650 13050 5550
Entry Wire Line
	12950 5750 13050 5650
Entry Wire Line
	12950 5850 13050 5750
Entry Wire Line
	12950 5950 13050 5850
Entry Wire Line
	12950 6050 13050 5950
Entry Wire Line
	12950 6150 13050 6050
Entry Wire Line
	12950 6250 13050 6150
Entry Wire Line
	12950 6350 13050 6250
Entry Wire Line
	12950 6450 13050 6350
Entry Wire Line
	12950 6550 13050 6450
Entry Wire Line
	12950 6650 13050 6550
Entry Wire Line
	12950 6750 13050 6650
Entry Wire Line
	12950 6850 13050 6750
Entry Wire Line
	12950 6950 13050 6850
Entry Wire Line
	12950 7050 13050 6950
Entry Wire Line
	12950 7150 13050 7050
Entry Wire Line
	12950 7350 13050 7250
Entry Wire Line
	12950 7450 13050 7350
Entry Wire Line
	12950 7550 13050 7450
Entry Wire Line
	12950 7650 13050 7550
Entry Wire Line
	12950 7750 13050 7650
Entry Wire Line
	12950 7850 13050 7750
Entry Wire Line
	12950 7950 13050 7850
Entry Wire Line
	12950 8050 13050 7950
Text Label 12950 4750 2    60   ~ 0
D0
Text Label 12950 4850 2    60   ~ 0
D1
Text Label 12950 4950 2    60   ~ 0
D2
Text Label 12950 5050 2    60   ~ 0
D3
Text Label 12950 5150 2    60   ~ 0
D4
Text Label 12950 5250 2    60   ~ 0
D5
Text Label 12950 5350 2    60   ~ 0
D6
Text Label 12950 5450 2    60   ~ 0
D7
Text Label 12950 5650 2    60   ~ 0
A0
Text Label 12950 5750 2    60   ~ 0
A1
Text Label 12950 5850 2    60   ~ 0
A2
Text Label 12950 5950 2    60   ~ 0
A3
Text Label 12950 6050 2    60   ~ 0
A4
Text Label 12950 6150 2    60   ~ 0
A5
Text Label 12950 6250 2    60   ~ 0
A6
Text Label 12950 6350 2    60   ~ 0
A7
Text Label 12950 6450 2    60   ~ 0
A8
Text Label 12950 6550 2    60   ~ 0
A9
Text Label 12950 6650 2    60   ~ 0
A10
Text Label 12950 6750 2    60   ~ 0
A11
Text Label 12950 6850 2    60   ~ 0
A12
Text Label 12950 6950 2    60   ~ 0
A13
Text Label 12950 7050 2    60   ~ 0
A14
Text Label 12950 7150 2    60   ~ 0
A15
Text Label 12950 7350 2    60   ~ 0
MA12
Text Label 12950 7450 2    60   ~ 0
MA13
Text Label 12950 7550 2    60   ~ 0
MA14
Text Label 12950 7650 2    60   ~ 0
MA15
Text Label 12950 7750 2    60   ~ 0
MA16
Text Label 12950 7850 2    60   ~ 0
MA17
Text Label 12950 7950 2    60   ~ 0
MA18
Text Label 12950 8050 2    60   ~ 0
MA19
$Comp
L R R?
U 1 1 5681BDB9
P 7050 3850
F 0 "R?" V 7130 3850 50  0000 C CNN
F 1 "R" V 7050 3850 50  0000 C CNN
F 2 "" V 6980 3850 50  0000 C CNN
F 3 "" H 7050 3850 50  0000 C CNN
	1    7050 3850
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5681BDC6
P 7050 4050
F 0 "R?" V 7130 4050 50  0000 C CNN
F 1 "R" V 7050 4050 50  0000 C CNN
F 2 "" V 6980 4050 50  0000 C CNN
F 3 "" H 7050 4050 50  0000 C CNN
	1    7050 4050
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5681BDCC
P 7350 3950
F 0 "R?" V 7430 3950 50  0000 C CNN
F 1 "R" V 7350 3950 50  0000 C CNN
F 2 "" V 7280 3950 50  0000 C CNN
F 3 "" H 7350 3950 50  0000 C CNN
	1    7350 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5681BDD2
P 7350 4150
F 0 "R?" V 7430 4150 50  0000 C CNN
F 1 "R" V 7350 4150 50  0000 C CNN
F 2 "" V 7280 4150 50  0000 C CNN
F 3 "" H 7350 4150 50  0000 C CNN
	1    7350 4150
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5681BDD8
P 7350 4350
F 0 "R?" V 7430 4350 50  0000 C CNN
F 1 "R" V 7350 4350 50  0000 C CNN
F 2 "" V 7280 4350 50  0000 C CNN
F 3 "" H 7350 4350 50  0000 C CNN
	1    7350 4350
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5681BDDE
P 7350 4550
F 0 "R?" V 7430 4550 50  0000 C CNN
F 1 "R" V 7350 4550 50  0000 C CNN
F 2 "" V 7280 4550 50  0000 C CNN
F 3 "" H 7350 4550 50  0000 C CNN
	1    7350 4550
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5681BDE4
P 7050 4250
F 0 "R?" V 7130 4250 50  0000 C CNN
F 1 "R" V 7050 4250 50  0000 C CNN
F 2 "" V 6980 4250 50  0000 C CNN
F 3 "" H 7050 4250 50  0000 C CNN
	1    7050 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5681BDEA
P 7050 4450
F 0 "R?" V 7130 4450 50  0000 C CNN
F 1 "R" V 7050 4450 50  0000 C CNN
F 2 "" V 6980 4450 50  0000 C CNN
F 3 "" H 7050 4450 50  0000 C CNN
	1    7050 4450
	0    -1   -1   0   
$EndComp
Entry Wire Line
	7850 3850 7950 3750
Entry Wire Line
	7850 3850 7950 3750
Entry Wire Line
	7850 3950 7950 3850
Entry Wire Line
	7850 4050 7950 3950
Entry Wire Line
	7850 4150 7950 4050
Entry Wire Line
	7850 4250 7950 4150
Entry Wire Line
	7850 4350 7950 4250
Entry Wire Line
	7850 4450 7950 4350
Entry Wire Line
	7850 4550 7950 4450
Text Label 7850 3850 2    60   ~ 0
D0
Text Label 7850 3950 2    60   ~ 0
D1
Text Label 7850 4050 2    60   ~ 0
D2
Text Label 7850 4150 2    60   ~ 0
D3
Text Label 7850 4250 2    60   ~ 0
D4
Text Label 7850 4350 2    60   ~ 0
D5
Text Label 7850 4450 2    60   ~ 0
D6
Text Label 7850 4550 2    60   ~ 0
D7
$Comp
L R R?
U 1 1 56820910
P 7050 5650
F 0 "R?" V 7130 5650 50  0000 C CNN
F 1 "R" V 7050 5650 50  0000 C CNN
F 2 "" V 6980 5650 50  0000 C CNN
F 3 "" H 7050 5650 50  0000 C CNN
	1    7050 5650
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56820A0C
P 7050 5850
F 0 "R?" V 7130 5850 50  0000 C CNN
F 1 "R" V 7050 5850 50  0000 C CNN
F 2 "" V 6980 5850 50  0000 C CNN
F 3 "" H 7050 5850 50  0000 C CNN
	1    7050 5850
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56820A12
P 7350 5750
F 0 "R?" V 7430 5750 50  0000 C CNN
F 1 "R" V 7350 5750 50  0000 C CNN
F 2 "" V 7280 5750 50  0000 C CNN
F 3 "" H 7350 5750 50  0000 C CNN
	1    7350 5750
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56820A18
P 7350 5950
F 0 "R?" V 7430 5950 50  0000 C CNN
F 1 "R" V 7350 5950 50  0000 C CNN
F 2 "" V 7280 5950 50  0000 C CNN
F 3 "" H 7350 5950 50  0000 C CNN
	1    7350 5950
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56825B08
P 3800 5050
F 0 "R?" V 3880 5050 50  0000 C CNN
F 1 "R" V 3800 5050 50  0000 C CNN
F 2 "" V 3730 5050 50  0000 C CNN
F 3 "" H 3800 5050 50  0000 C CNN
	1    3800 5050
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56825B0E
P 3500 5150
F 0 "R?" V 3580 5150 50  0000 C CNN
F 1 "R" V 3500 5150 50  0000 C CNN
F 2 "" V 3430 5150 50  0000 C CNN
F 3 "" H 3500 5150 50  0000 C CNN
	1    3500 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56825B14
P 3800 6050
F 0 "R?" V 3880 6050 50  0000 C CNN
F 1 "R" V 3800 6050 50  0000 C CNN
F 2 "" V 3730 6050 50  0000 C CNN
F 3 "" H 3800 6050 50  0000 C CNN
	1    3800 6050
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56825B1A
P 3800 6250
F 0 "R?" V 3880 6250 50  0000 C CNN
F 1 "R" V 3800 6250 50  0000 C CNN
F 2 "" V 3730 6250 50  0000 C CNN
F 3 "" H 3800 6250 50  0000 C CNN
	1    3800 6250
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56825B20
P 3500 6150
F 0 "R?" V 3580 6150 50  0000 C CNN
F 1 "R" V 3500 6150 50  0000 C CNN
F 2 "" V 3430 6150 50  0000 C CNN
F 3 "" H 3500 6150 50  0000 C CNN
	1    3500 6150
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56825B26
P 3500 6350
F 0 "R?" V 3580 6350 50  0000 C CNN
F 1 "R" V 3500 6350 50  0000 C CNN
F 2 "" V 3430 6350 50  0000 C CNN
F 3 "" H 3500 6350 50  0000 C CNN
	1    3500 6350
	0    -1   -1   0   
$EndComp
Entry Wire Line
	2900 5150 3000 5050
Entry Wire Line
	2900 5250 3000 5150
Entry Wire Line
	2900 6150 3000 6050
Entry Wire Line
	2900 6250 3000 6150
Entry Wire Line
	2900 6350 3000 6250
Entry Wire Line
	2900 6450 3000 6350
Text Label 3000 5050 0    60   ~ 0
!WR
Text Label 3000 5150 0    60   ~ 0
!RD
Text Label 3000 6050 0    60   ~ 0
!MEMREQ
Text Label 3000 6150 0    60   ~ 0
!IOREQ
Text Label 3000 6250 0    60   ~ 0
!BUSREQ
Text Label 3000 6350 0    60   ~ 0
!BUSACK
Wire Wire Line
	3800 2850 8850 2850
Wire Wire Line
	2650 5250 2650 8200
Wire Wire Line
	3000 5050 3650 5050
Wire Wire Line
	3000 5150 3350 5150
Wire Wire Line
	3000 6350 3350 6350
Wire Wire Line
	3000 6250 3650 6250
Wire Wire Line
	3000 6150 3350 6150
Wire Wire Line
	3000 6050 3650 6050
Wire Wire Line
	3650 6350 4100 6350
Wire Wire Line
	3950 6250 4100 6250
Wire Wire Line
	3650 6150 4100 6150
Wire Wire Line
	3950 6050 4100 6050
Wire Wire Line
	3650 5150 4100 5150
Wire Wire Line
	3950 5050 4100 5050
Wire Bus Line
	2900 5150 2900 5250
Wire Bus Line
	2900 5250 2900 5850
Wire Bus Line
	2900 5850 2900 5950
Wire Bus Line
	2900 5950 2900 6050
Wire Bus Line
	2900 6050 2900 6150
Wire Bus Line
	2900 6150 2900 6250
Wire Bus Line
	2900 6250 2900 6350
Wire Bus Line
	2900 6350 2900 6450
Wire Bus Line
	2900 6450 2900 8000
Wire Wire Line
	6700 5950 7200 5950
Wire Wire Line
	6700 5850 6900 5850
Wire Wire Line
	6700 5750 7200 5750
Wire Wire Line
	6700 5650 6900 5650
Wire Wire Line
	7500 4550 7850 4550
Wire Wire Line
	7200 4450 7850 4450
Wire Wire Line
	7500 4350 7850 4350
Wire Wire Line
	7200 4250 7850 4250
Wire Wire Line
	7500 4150 7850 4150
Wire Wire Line
	7200 4050 7850 4050
Wire Wire Line
	7500 3950 7850 3950
Wire Wire Line
	7200 3850 7850 3850
Wire Bus Line
	7950 3350 8750 3350
Wire Bus Line
	8750 3350 10500 3350
Wire Bus Line
	10500 3350 13050 3350
Wire Bus Line
	7950 3350 7950 3750
Wire Bus Line
	7950 3750 7950 3850
Wire Bus Line
	7950 3850 7950 3950
Wire Bus Line
	7950 3950 7950 4050
Wire Bus Line
	7950 4050 7950 4150
Wire Bus Line
	7950 4150 7950 4250
Wire Bus Line
	7950 4250 7950 4350
Wire Bus Line
	7950 4350 7950 4450
Wire Wire Line
	6700 4550 7200 4550
Wire Wire Line
	6700 4450 6900 4450
Wire Wire Line
	6700 4350 7200 4350
Wire Wire Line
	6700 4250 6900 4250
Wire Wire Line
	6700 4150 7200 4150
Wire Wire Line
	6700 4050 6900 4050
Wire Wire Line
	6700 3950 7200 3950
Wire Wire Line
	6700 3850 6900 3850
Wire Wire Line
	12400 8050 12950 8050
Wire Wire Line
	12400 7950 12950 7950
Wire Wire Line
	12400 7850 12950 7850
Wire Wire Line
	12400 7750 12950 7750
Wire Wire Line
	12400 7650 12950 7650
Wire Wire Line
	12400 7550 12950 7550
Wire Wire Line
	12400 7450 12950 7450
Wire Wire Line
	12400 7350 12950 7350
Wire Wire Line
	12400 7150 12950 7150
Wire Wire Line
	12400 7050 12950 7050
Wire Wire Line
	12400 6950 12950 6950
Wire Wire Line
	12400 6850 12950 6850
Wire Wire Line
	12400 6750 12950 6750
Wire Wire Line
	12400 6650 12950 6650
Wire Wire Line
	12400 6550 12950 6550
Wire Wire Line
	12400 6450 12950 6450
Wire Wire Line
	12400 6350 12950 6350
Wire Wire Line
	12400 6250 12950 6250
Wire Wire Line
	12400 6150 12950 6150
Wire Wire Line
	12400 6050 12950 6050
Wire Wire Line
	12400 5950 12950 5950
Wire Wire Line
	12400 5850 12950 5850
Wire Wire Line
	12400 5750 12950 5750
Wire Wire Line
	12400 5650 12950 5650
Wire Wire Line
	12400 5450 12950 5450
Wire Wire Line
	12400 5350 12950 5350
Wire Wire Line
	12400 5250 12950 5250
Wire Wire Line
	12400 5150 12950 5150
Wire Wire Line
	12400 5050 12950 5050
Wire Wire Line
	12400 4950 12950 4950
Wire Wire Line
	12400 4850 12950 4850
Wire Wire Line
	12400 4750 12950 4750
Wire Bus Line
	13050 3350 13050 4650
Wire Bus Line
	13050 4650 13050 4750
Wire Bus Line
	13050 4750 13050 4850
Wire Bus Line
	13050 4850 13050 4950
Wire Bus Line
	13050 4950 13050 5050
Wire Bus Line
	13050 5050 13050 5150
Wire Bus Line
	13050 5150 13050 5250
Wire Bus Line
	13050 5250 13050 5350
Wire Bus Line
	13050 5350 13050 5550
Wire Bus Line
	13050 5550 13050 5650
Wire Bus Line
	13050 5650 13050 5750
Wire Bus Line
	13050 5750 13050 5850
Wire Bus Line
	13050 5850 13050 5950
Wire Bus Line
	13050 5950 13050 6050
Wire Bus Line
	13050 6050 13050 6150
Wire Bus Line
	13050 6150 13050 6250
Wire Bus Line
	13050 6250 13050 6350
Wire Bus Line
	13050 6350 13050 6450
Wire Bus Line
	13050 6450 13050 6550
Wire Bus Line
	13050 6550 13050 6650
Wire Bus Line
	13050 6650 13050 6750
Wire Bus Line
	13050 6750 13050 6850
Wire Bus Line
	13050 6850 13050 6950
Wire Bus Line
	13050 6950 13050 7050
Wire Bus Line
	13050 7050 13050 7250
Wire Bus Line
	13050 7250 13050 7350
Wire Bus Line
	13050 7350 13050 7450
Wire Bus Line
	13050 7450 13050 7550
Wire Bus Line
	13050 7550 13050 7650
Wire Bus Line
	13050 7650 13050 7750
Wire Bus Line
	13050 7750 13050 7850
Wire Bus Line
	13050 7850 13050 7950
Wire Wire Line
	2650 5250 2900 5250
Wire Wire Line
	2900 5250 4100 5250
Connection ~ 3050 4450
Wire Wire Line
	3000 4450 3050 4450
Wire Wire Line
	3050 4250 3150 4250
Wire Wire Line
	3050 4250 3050 4450
Wire Wire Line
	3050 4450 3050 4650
Wire Wire Line
	3050 4650 3150 4650
Connection ~ 3700 4650
Wire Wire Line
	3700 4600 3700 4650
Wire Wire Line
	3450 4650 3700 4650
Wire Wire Line
	3700 4650 3950 4650
Wire Wire Line
	3950 4650 3950 4600
Wire Wire Line
	3950 4600 4100 4600
Connection ~ 3700 4250
Wire Wire Line
	3700 4300 3700 4250
Wire Wire Line
	3450 4250 3700 4250
Wire Wire Line
	3700 4250 3950 4250
Wire Wire Line
	3950 4250 3950 4300
Wire Wire Line
	3950 4300 4100 4300
Connection ~ 5400 3450
Wire Wire Line
	5400 3450 5400 3350
Connection ~ 5250 3450
Wire Wire Line
	5250 3550 5250 3450
Wire Wire Line
	5550 3450 5550 3550
Wire Wire Line
	5150 3450 5250 3450
Wire Wire Line
	5250 3450 5400 3450
Wire Wire Line
	5400 3450 5550 3450
Wire Wire Line
	5150 3550 5150 3450
Connection ~ 1350 5250
Wire Wire Line
	1350 5250 1350 5350
Connection ~ 1350 4750
Wire Wire Line
	1350 4750 1350 4650
Connection ~ 1200 5250
Wire Wire Line
	1200 5150 1200 5250
Connection ~ 1450 5250
Wire Wire Line
	1450 5250 1450 5150
Wire Wire Line
	1700 5250 1700 5150
Wire Wire Line
	950  5250 1200 5250
Wire Wire Line
	1200 5250 1350 5250
Wire Wire Line
	1350 5250 1450 5250
Wire Wire Line
	1450 5250 1700 5250
Wire Wire Line
	950  5150 950  5250
Connection ~ 1200 4750
Wire Wire Line
	1200 4850 1200 4750
Connection ~ 1450 4750
Wire Wire Line
	1450 4750 1450 4850
Wire Wire Line
	1700 4750 1700 4850
Wire Wire Line
	950  4750 1200 4750
Wire Wire Line
	1200 4750 1350 4750
Wire Wire Line
	1350 4750 1450 4750
Wire Wire Line
	1450 4750 1700 4750
Wire Wire Line
	950  4850 950  4750
Wire Wire Line
	8250 5050 8250 5250
Wire Wire Line
	8000 4850 8250 4850
Wire Wire Line
	8000 5050 8250 5050
Connection ~ 5350 7650
Wire Wire Line
	5350 7650 5350 7750
Connection ~ 5250 7650
Wire Wire Line
	5250 7550 5250 7650
Wire Wire Line
	5550 7650 5550 7550
Wire Wire Line
	5150 7650 5250 7650
Wire Wire Line
	5250 7650 5350 7650
Wire Wire Line
	5350 7650 5550 7650
Wire Wire Line
	5150 7550 5150 7650
Wire Wire Line
	8850 4950 8000 4950
Wire Wire Line
	8850 2850 8850 4950
Wire Wire Line
	3800 2850 3800 3850
Wire Wire Line
	3800 3850 4100 3850
Wire Wire Line
	7350 5050 7600 5050
Wire Wire Line
	7350 5100 7350 5050
Wire Wire Line
	7150 5100 7350 5100
Wire Wire Line
	7150 4850 7150 5100
Wire Wire Line
	7250 4850 7600 4850
Wire Wire Line
	7250 5050 7250 4850
$Comp
L AVR-ISP-6 JP?
U 1 1 567E488D
P 7800 4950
F 0 "JP?" H 7550 5200 50  0000 L BNN
F 1 "AVR-ISP-6" H 7800 4950 50  0000 L BNN
F 2 "atmel-AVR-ISP-6" H 7800 5100 50  0001 C CNN
F 3 "" H 7800 4950 60  0000 C CNN
	1    7800 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 4850 8250 4650
Wire Bus Line
	8650 3450 8650 5550
Wire Bus Line
	8650 5550 8650 5650
Wire Bus Line
	8650 5650 8650 5750
Wire Bus Line
	8650 5750 8650 5850
Wire Bus Line
	8650 5850 8650 5950
Wire Bus Line
	8650 5950 8650 6050
Wire Bus Line
	8650 6050 8650 6150
Wire Bus Line
	8650 6150 8650 6250
Wire Bus Line
	8650 6250 8650 8000
Wire Wire Line
	6700 6050 8550 6050
Wire Wire Line
	6700 6150 8550 6150
Wire Wire Line
	6700 6250 8550 6250
Wire Wire Line
	6700 6350 8550 6350
Entry Wire Line
	8550 6050 8650 5950
Entry Wire Line
	8550 6150 8650 6050
Entry Wire Line
	8550 6250 8650 6150
Entry Wire Line
	8550 6350 8650 6250
Entry Wire Line
	8550 5650 8650 5550
Entry Wire Line
	8550 5750 8650 5650
Entry Wire Line
	8550 5850 8650 5750
Entry Wire Line
	8550 5950 8650 5850
Wire Wire Line
	7200 5650 8550 5650
Wire Wire Line
	7500 5750 8550 5750
Wire Wire Line
	7200 5850 8550 5850
Wire Wire Line
	7500 5950 8550 5950
Text Label 8550 5650 2    60   ~ 0
A8
Text Label 8550 5750 2    60   ~ 0
A9
Text Label 8550 5850 2    60   ~ 0
A10
Text Label 8550 5950 2    60   ~ 0
A11
Text Label 8550 6050 2    60   ~ 0
EA12
Text Label 8550 6150 2    60   ~ 0
EA13
Text Label 8550 6250 2    60   ~ 0
EA14
Text Label 8550 6350 2    60   ~ 0
EA15
Wire Wire Line
	6700 4850 7150 4850
Wire Wire Line
	7250 5050 6700 5050
Wire Wire Line
	7600 4950 6700 4950
Entry Bus Bus
	10400 3450 10500 3350
Wire Bus Line
	10400 3450 10400 4650
Wire Bus Line
	10400 4650 10400 4750
Wire Bus Line
	10400 4750 10400 5300
Wire Bus Line
	10400 5300 10400 5400
Wire Bus Line
	10400 5400 10400 5500
Wire Bus Line
	10400 5500 10400 5600
Entry Wire Line
	10400 5300 10500 5400
Entry Wire Line
	10400 5400 10500 5500
Entry Wire Line
	10400 5500 10500 5600
Entry Wire Line
	10400 5600 10500 5700
Wire Wire Line
	10500 5400 10900 5400
Wire Wire Line
	10500 5500 10900 5500
Wire Wire Line
	10500 5600 10900 5600
Wire Wire Line
	10500 5700 10900 5700
Text Label 10500 5400 0    60   ~ 0
EA12
Text Label 10500 5500 0    60   ~ 0
EA13
Text Label 10500 5600 0    60   ~ 0
EA14
Text Label 10500 5700 0    60   ~ 0
EA15
Wire Wire Line
	10900 5250 8850 5250
Wire Wire Line
	8850 5250 8850 8200
Connection ~ 8850 8200
Wire Wire Line
	8850 8200 2650 8200
Wire Bus Line
	8650 8000 2900 8000
Entry Bus Bus
	8650 3450 8750 3350
Entry Wire Line
	10400 4650 10500 4750
Entry Wire Line
	10400 4750 10500 4850
Wire Wire Line
	10500 4750 10900 4750
Wire Wire Line
	10500 4850 10900 4850
Text Label 10500 4750 0    60   ~ 0
!MEMREQ
Text Label 10500 4850 0    60   ~ 0
!IOREQ
Text Notes 550  1600 0    60   ~ 0
Series-Resistors in signals that are directly connected \nto the bus safeguard both the System Controller and \nthe CPU driving the signal to oposite values.
Entry Wire Line
	2900 6050 3000 5950
Entry Wire Line
	2900 5950 3000 5850
Wire Wire Line
	3000 5950 4100 5950
Text Label 3000 5850 0    60   ~ 0
!NMI
Text Label 3000 5950 0    60   ~ 0
!CPU_HALT
$Comp
L R R?
U 1 1 568B6677
P 3800 5850
F 0 "R?" V 3880 5850 50  0000 C CNN
F 1 "R" V 3800 5850 50  0000 C CNN
F 2 "" V 3730 5850 50  0000 C CNN
F 3 "" H 3800 5850 50  0000 C CNN
	1    3800 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 5850 4100 5850
Wire Wire Line
	3650 5850 3000 5850
$Comp
L R R?
U 1 1 568B9BA1
P 3500 5750
F 0 "R?" V 3580 5750 50  0000 C CNN
F 1 "R" V 3500 5750 50  0000 C CNN
F 2 "" V 3430 5750 50  0000 C CNN
F 3 "" H 3500 5750 50  0000 C CNN
	1    3500 5750
	0    -1   -1   0   
$EndComp
Entry Wire Line
	2900 5850 3000 5750
Wire Wire Line
	3000 5750 3350 5750
Wire Wire Line
	3650 5750 4100 5750
Text Label 3000 5750 0    60   ~ 0
!CPU_RST
$EndSCHEMATC
