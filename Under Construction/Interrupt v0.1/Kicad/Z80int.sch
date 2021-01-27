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
L 74xx:74HCT574 U102
U 1 1 600E7D6C
P 3200 4950
F 0 "U102" H 3200 5931 50  0000 C CNN
F 1 "74HCT574" H 3200 5840 50  0000 C CNN
F 2 "" H 3200 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT574" H 3200 4950 50  0001 C CNN
	1    3200 4950
	1    0    0    -1  
$EndComp
Text GLabel 1450 3700 0    50   BiDi ~ 0
D[..7]
Wire Wire Line
	2700 4450 2300 4450
Wire Wire Line
	2700 4550 2300 4550
Wire Wire Line
	2700 4650 2300 4650
Wire Wire Line
	2700 4750 2300 4750
Wire Wire Line
	2700 4850 2300 4850
Wire Wire Line
	2700 4950 2300 4950
Wire Wire Line
	2700 5050 2300 5050
Wire Wire Line
	2700 5150 2300 5150
Wire Wire Line
	3700 4450 4100 4450
Wire Wire Line
	3700 4550 4100 4550
Wire Wire Line
	3700 4650 4100 4650
Wire Wire Line
	3700 4750 4100 4750
Wire Wire Line
	3700 4850 4100 4850
Wire Wire Line
	3700 4950 4100 4950
Wire Wire Line
	3700 5050 4100 5050
Wire Wire Line
	3700 5150 4100 5150
Text Label 2350 4450 0    50   ~ 0
D0
Text Label 2350 4550 0    50   ~ 0
D1
Text Label 2350 4650 0    50   ~ 0
D2
Text Label 2350 4750 0    50   ~ 0
D3
Text Label 2350 4850 0    50   ~ 0
D4
Text Label 2350 4950 0    50   ~ 0
D5
Text Label 2350 5050 0    50   ~ 0
D6
Text Label 2350 5150 0    50   ~ 0
D7
Text Label 3900 4450 0    50   ~ 0
D0
Text Label 3900 4550 0    50   ~ 0
D1
Text Label 3900 4650 0    50   ~ 0
D2
Text Label 3900 4750 0    50   ~ 0
D3
Text Label 3900 4850 0    50   ~ 0
D4
Text Label 3900 4950 0    50   ~ 0
D5
Text Label 3900 5050 0    50   ~ 0
D6
Text Label 3900 5150 0    50   ~ 0
D7
Text GLabel 1450 3900 0    50   Input ~ 0
~IOREQ
Text GLabel 1450 4100 0    50   Input ~ 0
~M1
Text GLabel 1450 4300 0    50   Input ~ 0
~WR
Text GLabel 1450 4500 0    50   3State ~ 0
~INT
Text GLabel 1450 3500 0    50   Input ~ 0
A[0..7]
Text GLabel 6000 4800 2    50   Input ~ 0
~IO_INT
Entry Wire Line
	2200 4350 2300 4450
Entry Wire Line
	2200 4450 2300 4550
Entry Wire Line
	2200 4550 2300 4650
Entry Wire Line
	2200 4650 2300 4750
Entry Wire Line
	2200 4750 2300 4850
Entry Wire Line
	2200 4850 2300 4950
Entry Wire Line
	2200 4950 2300 5050
Entry Wire Line
	2200 5050 2300 5150
Entry Wire Line
	4100 4450 4200 4350
Entry Wire Line
	4100 4550 4200 4450
Entry Wire Line
	4100 4650 4200 4550
Entry Wire Line
	4100 4750 4200 4650
Entry Wire Line
	4100 4850 4200 4750
Entry Wire Line
	4100 4950 4200 4850
Entry Wire Line
	4100 5050 4200 4950
Entry Wire Line
	4100 5150 4200 5050
Wire Bus Line
	2200 3500 4200 3500
$Comp
L Diode:1N4148 D101
U 1 1 600EDD8F
P 5350 2750
F 0 "D101" H 5350 2533 50  0000 C CNN
F 1 "1N4148" H 5350 2624 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5350 2575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5350 2750 50  0001 C CNN
	1    5350 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 4500 1750 4500
Wire Wire Line
	5550 4800 6000 4800
$Comp
L Logic_Programmable:GAL16V8 U101
U 1 1 600EF9E7
P 2650 2350
F 0 "U101" H 2650 3231 50  0000 C CNN
F 1 "GAL16V8" H 2650 3140 50  0000 C CNN
F 2 "" H 2650 2350 50  0001 C CNN
F 3 "" H 2650 2350 50  0001 C CNN
	1    2650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1850 3500 1850
Wire Wire Line
	3150 1950 3500 1950
Wire Wire Line
	3150 2050 3500 2050
Wire Wire Line
	3150 2150 3500 2150
Wire Wire Line
	3150 2250 3500 2250
Wire Wire Line
	3150 2450 3500 2450
Wire Wire Line
	3150 2550 3500 2550
Wire Wire Line
	2150 1850 1700 1850
Wire Wire Line
	2150 1950 1700 1950
Wire Wire Line
	2150 2050 1700 2050
Wire Wire Line
	2150 2150 1700 2150
Wire Wire Line
	2150 2250 1700 2250
Wire Wire Line
	2150 2350 1700 2350
Wire Wire Line
	2150 2450 1700 2450
Wire Wire Line
	2150 2550 1700 2550
Wire Wire Line
	2150 2650 1700 2650
Wire Wire Line
	2150 2750 1700 2750
Wire Wire Line
	2700 5350 2300 5350
Wire Wire Line
	2700 5450 2300 5450
Text Label 2350 5350 0    50   ~ 0
~LOAD
Text Label 2350 5450 0    50   ~ 0
~OE
Text Label 3250 1850 0    50   ~ 0
~LOAD
Text Label 3350 1950 0    50   ~ 0
~OE
Text Label 3200 2050 0    50   ~ 0
INT_ALT
Text Label 1800 1850 0    50   ~ 0
~IOREQ
Text Label 1800 1950 0    50   ~ 0
~M1
Text Label 1800 2050 0    50   ~ 0
~WR
Text Label 1800 2150 0    50   ~ 0
A0
Text Label 1800 2250 0    50   ~ 0
A1
Text Label 1800 2350 0    50   ~ 0
A2
Text Label 1800 2450 0    50   ~ 0
A3
Text Label 1800 2550 0    50   ~ 0
A4
Text Label 1800 2650 0    50   ~ 0
A5
Text Label 1800 2750 0    50   ~ 0
A6
Text Label 3350 2550 0    50   ~ 0
A7
Wire Wire Line
	1450 3900 1750 3900
Wire Wire Line
	1450 4100 1750 4100
Wire Wire Line
	1450 4300 1750 4300
Wire Wire Line
	1450 3500 1750 3500
Text Label 1500 3500 0    50   ~ 0
A[0..7]
Text Label 1500 3900 0    50   ~ 0
~IOREQ
Text Label 1600 4100 0    50   ~ 0
~M1
Text Label 1600 4300 0    50   ~ 0
~WR
Text Label 1600 4500 0    50   ~ 0
~INT
Text Notes 5500 4600 0    50   ~ 0
Interrupt from IO device
Text Notes 3600 5450 0    50   ~ 0
Stores IM0 RST instruction\nor IM2 vector
Wire Wire Line
	5200 2750 4950 2750
Text Label 6200 2750 0    50   ~ 0
~IO_INT
Text Label 5000 2750 0    50   ~ 0
~INT
Text Notes 4850 2450 0    50   ~ 0
When the interrupt from the \nIO device is also active low\nand open collector.
$Comp
L Transistor_BJT:BC547 Q101
U 1 1 6010DD71
P 5250 3450
F 0 "Q101" H 5441 3496 50  0000 L CNN
F 1 "BC547" H 5441 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5450 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5250 3450 50  0001 L CNN
	1    5250 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R102
U 1 1 6010F205
P 5700 3450
F 0 "R102" V 5493 3450 50  0000 C CNN
F 1 "3.3k" V 5584 3450 50  0000 C CNN
F 2 "" V 5630 3450 50  0001 C CNN
F 3 "~" H 5700 3450 50  0001 C CNN
	1    5700 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3450 5550 3450
Wire Wire Line
	5150 3650 5150 3750
Wire Wire Line
	5150 3250 5150 3100
Wire Wire Line
	5150 3100 4950 3100
Wire Wire Line
	5850 3450 6100 3450
$Comp
L power:GND #PWR0103
U 1 1 601152BD
P 3200 5750
F 0 "#PWR0103" H 3200 5500 50  0001 C CNN
F 1 "GND" H 3205 5577 50  0000 C CNN
F 2 "" H 3200 5750 50  0001 C CNN
F 3 "" H 3200 5750 50  0001 C CNN
	1    3200 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60115871
P 5150 3750
F 0 "#PWR0107" H 5150 3500 50  0001 C CNN
F 1 "GND" H 5155 3577 50  0000 C CNN
F 2 "" H 5150 3750 50  0001 C CNN
F 3 "" H 5150 3750 50  0001 C CNN
	1    5150 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60115BDC
P 2650 3050
F 0 "#PWR0101" H 2650 2800 50  0001 C CNN
F 1 "GND" H 2655 2877 50  0000 C CNN
F 2 "" H 2650 3050 50  0001 C CNN
F 3 "" H 2650 3050 50  0001 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
Text Label 5900 3450 0    50   ~ 0
INT_ALT
Text Label 5000 3100 0    50   ~ 0
~INT
Text Label 5650 4800 0    50   ~ 0
~IO_INT
Text Label 3250 2450 0    50   ~ 0
~IO_INT
NoConn ~ 3500 2250
NoConn ~ 3500 2150
Text Notes 5550 4050 0    50   ~ 0
When interrupt from the \nIO device is not active low \n(IO_INT) or taken from the \nGAL. (INT_ALT)
Wire Notes Line
	4700 4200 6750 4200
Wire Notes Line
	6750 4200 6750 2100
Wire Notes Line
	6750 2100 4700 2100
Wire Notes Line
	4700 2100 4700 4200
Wire Notes Line
	4700 2900 6750 2900
Text Notes 4100 1150 0    50   ~ 0
~LOAD~ When Interrupt Register is written to (~IOREQ~ & ~WR~ & A[0..7])
Text Notes 4100 1400 0    50   ~ 0
~OE~ When Z80 interrupt acknowledge is detected (~IOREQ~ & ~M1~)\nand source of interrupt is ~IO_INT~
Text Notes 4100 1550 0    50   ~ 0
INT_ALT (Optional) When IO_INT needs to be altered (inverted)
Text Label 3250 2350 0    50   ~ 0
~Enable
Text Notes 4100 1850 0    50   ~ 0
~Enable~ (input) to enable/disable interrupt processing (~OE~ / INT_ALT).
Text Notes 4100 1000 0    50   ~ 0
Outputs:
$Comp
L power:+5V #PWR0102
U 1 1 6011FEE6
P 2950 1500
F 0 "#PWR0102" H 2950 1350 50  0001 C CNN
F 1 "+5V" H 2965 1673 50  0000 C CNN
F 2 "" H 2950 1500 50  0001 C CNN
F 3 "" H 2950 1500 50  0001 C CNN
	1    2950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1500 2950 1650
Wire Wire Line
	2950 1650 2650 1650
Wire Wire Line
	3200 4150 3500 4150
Wire Wire Line
	3500 4150 3500 4000
$Comp
L power:+5V #PWR0104
U 1 1 60123374
P 3500 4000
F 0 "#PWR0104" H 3500 3850 50  0001 C CNN
F 1 "+5V" H 3515 4173 50  0000 C CNN
F 2 "" H 3500 4000 50  0001 C CNN
F 3 "" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
Text Notes 950  3350 0    50   ~ 0
Z80 Bus
$Comp
L Device:Jumper_NC_Small JP101
U 1 1 60125BBE
P 4100 2700
F 0 "JP101" V 4054 2774 50  0000 L CNN
F 1 "Enable" V 4145 2774 50  0000 L CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "~" H 4100 2700 50  0001 C CNN
	1    4100 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6012959D
P 4100 2900
F 0 "#PWR0106" H 4100 2650 50  0001 C CNN
F 1 "GND" H 4105 2727 50  0000 C CNN
F 2 "" H 4100 2900 50  0001 C CNN
F 3 "" H 4100 2900 50  0001 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2900 4100 2800
$Comp
L Device:R R101
U 1 1 6012B463
P 4100 2350
F 0 "R101" H 4030 2304 50  0000 R CNN
F 1 "10k" H 4030 2395 50  0000 R CNN
F 2 "" V 4030 2350 50  0001 C CNN
F 3 "~" H 4100 2350 50  0001 C CNN
	1    4100 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 2350 3900 2550
Wire Wire Line
	3900 2550 4100 2550
Wire Wire Line
	3150 2350 3900 2350
Wire Wire Line
	4100 2600 4100 2550
Connection ~ 4100 2550
Wire Wire Line
	4100 2550 4100 2500
Wire Wire Line
	4100 2200 4100 2100
$Comp
L power:+5V #PWR0105
U 1 1 601338BA
P 4100 2100
F 0 "#PWR0105" H 4100 1950 50  0001 C CNN
F 1 "+5V" H 4115 2273 50  0000 C CNN
F 2 "" H 4100 2100 50  0001 C CNN
F 3 "" H 4100 2100 50  0001 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
Text Notes 1050 1150 0    50   ~ 0
Z80 interrupt provider for IO device.\nAlternative to priority chain interrupt handling.
Wire Bus Line
	1450 3700 2200 3700
Wire Bus Line
	2200 3500 2200 3700
Connection ~ 2200 3700
$Comp
L Device:R R103
U 1 1 601456FC
P 6150 2500
F 0 "R103" H 6080 2454 50  0000 R CNN
F 1 "10k" H 6080 2545 50  0000 R CNN
F 2 "" V 6080 2500 50  0001 C CNN
F 3 "~" H 6150 2500 50  0001 C CNN
	1    6150 2500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 60145CC7
P 6150 2350
F 0 "#PWR0108" H 6150 2200 50  0001 C CNN
F 1 "+5V" H 6165 2523 50  0000 C CNN
F 2 "" H 6150 2350 50  0001 C CNN
F 3 "" H 6150 2350 50  0001 C CNN
	1    6150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2750 6150 2750
Wire Wire Line
	6150 2650 6150 2750
Wire Bus Line
	4200 3500 4200 5050
Wire Bus Line
	2200 3700 2200 5050
Connection ~ 6150 2750
Wire Wire Line
	6150 2750 6400 2750
$EndSCHEMATC
