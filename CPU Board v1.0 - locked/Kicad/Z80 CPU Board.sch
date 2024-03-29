EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Zalt Z80 Computer"
Date "5 mar 2016"
Rev ""
Comp "Canned Bytes"
Comment1 "CPU Board"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Z80-CPU-Board-rescue:Z80CPU IC105
U 1 1 567BF7D2
P 8200 2750
F 0 "IC105" H 7650 4150 50  0000 L CNN
F 1 "Z80CPU" H 8450 4150 50  0000 L CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_LongPads" H 8200 3150 50  0001 C CNN
F 3 "" H 8200 3150 50  0000 C CNN
	1    8200 2750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:UM61512A IC103
U 1 1 567BF7D8
P 4500 2850
F 0 "IC103" H 4600 4600 60  0000 C CNN
F 1 "UM61512A" H 4850 2800 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 4750 4850 60  0001 C CNN
F 3 "~" H 4750 4850 60  0000 C CNN
	1    4500 2850
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:UM61512A IC104
U 1 1 567BF7DE
P 4500 4900
F 0 "IC104" H 4600 6650 60  0000 C CNN
F 1 "UM61512A" H 4850 4850 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 4750 6900 60  0001 C CNN
F 3 "~" H 4750 6900 60  0000 C CNN
	1    4500 4900
	1    0    0    -1  
$EndComp
Entry Wire Line
	3850 1150 3950 1250
Entry Wire Line
	3850 1250 3950 1350
Entry Wire Line
	3850 1350 3950 1450
Entry Wire Line
	3850 1450 3950 1550
Entry Wire Line
	3850 1550 3950 1650
Entry Wire Line
	3850 1650 3950 1750
Entry Wire Line
	3850 1750 3950 1850
Entry Wire Line
	3850 1850 3950 1950
Entry Wire Line
	3850 1950 3950 2050
Entry Wire Line
	3850 2050 3950 2150
Entry Wire Line
	3850 2150 3950 2250
Entry Wire Line
	3850 2250 3950 2350
Entry Wire Line
	3850 3200 3950 3300
Entry Wire Line
	3850 3300 3950 3400
Entry Wire Line
	3850 3400 3950 3500
Entry Wire Line
	3850 3500 3950 3600
Entry Wire Line
	3850 3600 3950 3700
Entry Wire Line
	3850 3700 3950 3800
Entry Wire Line
	3850 3800 3950 3900
Entry Wire Line
	3850 3900 3950 4000
Entry Wire Line
	3850 4000 3950 4100
Entry Wire Line
	3850 4100 3950 4200
Entry Wire Line
	3850 4200 3950 4300
Entry Wire Line
	3850 4300 3950 4400
Entry Wire Line
	9400 1550 9500 1450
Entry Wire Line
	9400 1650 9500 1550
Entry Wire Line
	9400 1750 9500 1650
Entry Wire Line
	9400 1850 9500 1750
Entry Wire Line
	9400 1950 9500 1850
Entry Wire Line
	9400 2050 9500 1950
Entry Wire Line
	9400 2150 9500 2050
Entry Wire Line
	9400 2250 9500 2150
Entry Wire Line
	9400 2350 9500 2250
Entry Wire Line
	9400 2450 9500 2350
Entry Wire Line
	9400 2550 9500 2450
Entry Wire Line
	9400 2650 9500 2550
Entry Wire Line
	9400 2750 9500 2650
Entry Wire Line
	9400 2850 9500 2750
Entry Wire Line
	9400 2950 9500 2850
Entry Wire Line
	9400 3050 9500 2950
$Comp
L power:VCC #PWR01
U 1 1 567BF845
P 8200 1250
F 0 "#PWR01" H 8200 1100 50  0001 C CNN
F 1 "VCC" H 8200 1400 50  0000 C CNN
F 2 "" H 8200 1250 50  0000 C CNN
F 3 "" H 8200 1250 50  0000 C CNN
	1    8200 1250
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR02
U 1 1 567BF854
P 8200 4250
F 0 "#PWR02" H 8200 4000 50  0001 C CNN
F 1 "GND" H 8200 4100 50  0000 C CNN
F 2 "" H 8200 4250 50  0000 C CNN
F 3 "" H 8200 4250 50  0000 C CNN
	1    8200 4250
	1    0    0    -1  
$EndComp
Text Label 9400 1550 2    60   ~ 0
A0
Text Label 9400 1650 2    60   ~ 0
A1
Text Label 9400 1750 2    60   ~ 0
A2
Text Label 9400 1850 2    60   ~ 0
A3
Text Label 9400 1950 2    60   ~ 0
A4
Text Label 9400 2050 2    60   ~ 0
A5
Text Label 9400 2150 2    60   ~ 0
A6
Text Label 9400 2250 2    60   ~ 0
A7
Text Label 9400 2350 2    60   ~ 0
A8
Text Label 9400 2450 2    60   ~ 0
A9
Text Label 9400 2550 2    60   ~ 0
A10
Text Label 9400 2650 2    60   ~ 0
A11
Text Label 9400 2750 2    60   ~ 0
A12
Text Label 9400 2850 2    60   ~ 0
A13
Text Label 9400 2950 2    60   ~ 0
A14
Text Label 9400 3050 2    60   ~ 0
A15
Text Label 3950 1250 0    60   ~ 0
A0
Text Label 3950 1350 0    60   ~ 0
A1
Text Label 3950 1450 0    60   ~ 0
A2
Text Label 3950 1550 0    60   ~ 0
A3
Text Label 3950 1650 0    60   ~ 0
A4
Text Label 3950 1750 0    60   ~ 0
A5
Text Label 3950 1850 0    60   ~ 0
A6
Text Label 3950 1950 0    60   ~ 0
A7
Text Label 3950 2050 0    60   ~ 0
A8
Text Label 3950 2150 0    60   ~ 0
A9
Text Label 3950 2250 0    60   ~ 0
A10
Text Label 3950 2350 0    60   ~ 0
A11
Text Label 3950 3300 0    60   ~ 0
A0
Text Label 3950 3400 0    60   ~ 0
A1
Text Label 3950 3500 0    60   ~ 0
A2
Text Label 3950 3600 0    60   ~ 0
A3
Text Label 3950 3700 0    60   ~ 0
A4
Text Label 3950 3800 0    60   ~ 0
A5
Text Label 3950 3900 0    60   ~ 0
A6
Text Label 3950 4000 0    60   ~ 0
A7
Text Label 3950 4100 0    60   ~ 0
A8
Text Label 3950 4200 0    60   ~ 0
A9
Text Label 3950 4300 0    60   ~ 0
A10
Text Label 3950 4400 0    60   ~ 0
A11
Entry Wire Line
	9400 3250 9500 3350
Entry Wire Line
	9400 3350 9500 3450
Entry Wire Line
	9400 3450 9500 3550
Entry Wire Line
	9400 3550 9500 3650
Entry Wire Line
	9400 3650 9500 3750
Entry Wire Line
	9400 3750 9500 3850
Entry Wire Line
	9400 3850 9500 3950
Entry Wire Line
	9400 3950 9500 4050
Text Label 9400 3250 2    60   ~ 0
D0
Text Label 9400 3350 2    60   ~ 0
D1
Text Label 9400 3450 2    60   ~ 0
D2
Text Label 9400 3550 2    60   ~ 0
D3
Text Label 9400 3650 2    60   ~ 0
D4
Text Label 9400 3750 2    60   ~ 0
D5
Text Label 9400 3850 2    60   ~ 0
D6
Text Label 9400 3950 2    60   ~ 0
D7
Entry Wire Line
	5600 1250 5700 1350
Entry Wire Line
	5600 1350 5700 1450
Entry Wire Line
	5600 1450 5700 1550
Entry Wire Line
	5600 1550 5700 1650
Entry Wire Line
	5600 1650 5700 1750
Entry Wire Line
	5600 1750 5700 1850
Entry Wire Line
	5600 1850 5700 1950
Entry Wire Line
	5600 1950 5700 2050
Entry Wire Line
	5600 3300 5700 3400
Entry Wire Line
	5600 3400 5700 3500
Entry Wire Line
	5600 3500 5700 3600
Entry Wire Line
	5600 3600 5700 3700
Entry Wire Line
	5600 3700 5700 3800
Entry Wire Line
	5600 3800 5700 3900
Entry Wire Line
	5600 3900 5700 4000
Entry Wire Line
	5600 4000 5700 4100
Text Label 5600 1250 2    60   ~ 0
D0
Text Label 5600 1350 2    60   ~ 0
D1
Text Label 5600 1450 2    60   ~ 0
D2
Text Label 5600 1550 2    60   ~ 0
D3
Text Label 5600 1650 2    60   ~ 0
D4
Text Label 5600 1750 2    60   ~ 0
D5
Text Label 5600 1850 2    60   ~ 0
D6
Text Label 5600 1950 2    60   ~ 0
D7
Text Label 5600 3300 2    60   ~ 0
D0
Text Label 5600 3400 2    60   ~ 0
D1
Text Label 5600 3500 2    60   ~ 0
D2
Text Label 5600 3600 2    60   ~ 0
D3
Text Label 5600 3700 2    60   ~ 0
D4
Text Label 5600 3800 2    60   ~ 0
D5
Text Label 5600 3900 2    60   ~ 0
D6
Text Label 5600 4000 2    60   ~ 0
D7
Entry Wire Line
	6900 1650 7000 1550
Entry Wire Line
	6900 1950 7000 1850
Entry Wire Line
	6900 2250 7000 2150
Entry Wire Line
	6900 2350 7000 2250
Entry Wire Line
	6900 2650 7000 2550
Entry Wire Line
	6900 2750 7000 2650
Entry Wire Line
	6900 2850 7000 2750
Entry Wire Line
	6900 2950 7000 2850
Entry Wire Line
	6900 3350 7000 3250
Entry Wire Line
	6900 3450 7000 3350
Entry Wire Line
	6900 3550 7000 3450
Entry Wire Line
	6900 3650 7000 3550
Entry Wire Line
	6900 3950 7000 3850
Entry Wire Line
	6900 4050 7000 3950
Text Label 7000 1550 0    60   ~ 0
~CPU_RESET
Text Label 7000 1850 0    60   ~ 0
~CPU_CLK
Text Label 7000 2150 0    60   ~ 0
~NMI
Text Label 7000 2250 0    60   ~ 0
~CPU_INT
Text Label 7000 2550 0    60   ~ 0
~CPU_M1
Text Label 7000 2650 0    60   ~ 0
~REFRESH
Text Label 7000 2750 0    60   ~ 0
~CPU_WAIT
Text Label 7000 2850 0    60   ~ 0
~CPU_HALT
Text Label 7000 3250 0    60   ~ 0
~RD
Text Label 7000 3350 0    60   ~ 0
~WR
Text Label 7000 3450 0    60   ~ 0
~MEMREQ
Text Label 7000 3550 0    60   ~ 0
~IOREQ
Text Label 7000 3850 0    60   ~ 0
~BUSREQ
Text Label 7000 3950 0    60   ~ 0
~BUSACK
$Comp
L Z80-CPU-Board-rescue:UM61512A IC101
U 1 1 567D2CDC
P 1650 2850
F 0 "IC101" H 1750 4600 60  0000 C CNN
F 1 "UM61512A" H 2000 2800 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 1900 4850 60  0001 C CNN
F 3 "~" H 1900 4850 60  0000 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:UM61512A IC102
U 1 1 567D2CE2
P 1650 4900
F 0 "IC102" H 1750 6650 60  0000 C CNN
F 1 "UM61512A" H 2000 4850 60  0000 C CNN
F 2 "Footprints:DIP-32_0_ELL" H 1900 6900 60  0001 C CNN
F 3 "~" H 1900 6900 60  0000 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
Entry Wire Line
	1000 1150 1100 1250
Entry Wire Line
	1000 1250 1100 1350
Entry Wire Line
	1000 1350 1100 1450
Entry Wire Line
	1000 1450 1100 1550
Entry Wire Line
	1000 1550 1100 1650
Entry Wire Line
	1000 1650 1100 1750
Entry Wire Line
	1000 1750 1100 1850
Entry Wire Line
	1000 1850 1100 1950
Entry Wire Line
	1000 1950 1100 2050
Entry Wire Line
	1000 2050 1100 2150
Entry Wire Line
	1000 2150 1100 2250
Entry Wire Line
	1000 2250 1100 2350
Entry Wire Line
	1000 3200 1100 3300
Entry Wire Line
	1000 3300 1100 3400
Entry Wire Line
	1000 3400 1100 3500
Entry Wire Line
	1000 3500 1100 3600
Entry Wire Line
	1000 3600 1100 3700
Entry Wire Line
	1000 3700 1100 3800
Entry Wire Line
	1000 3800 1100 3900
Entry Wire Line
	1000 3900 1100 4000
Entry Wire Line
	1000 4000 1100 4100
Entry Wire Line
	1000 4100 1100 4200
Entry Wire Line
	1000 4200 1100 4300
Entry Wire Line
	1000 4300 1100 4400
Entry Wire Line
	2750 1250 2850 1350
Entry Wire Line
	2750 1350 2850 1450
Entry Wire Line
	2750 1450 2850 1550
Entry Wire Line
	2750 1550 2850 1650
Entry Wire Line
	2750 1650 2850 1750
Entry Wire Line
	2750 1750 2850 1850
Entry Wire Line
	2750 1850 2850 1950
Entry Wire Line
	2750 1950 2850 2050
Text Label 2750 1250 2    60   ~ 0
D0
Text Label 2750 1350 2    60   ~ 0
D1
Text Label 2750 1450 2    60   ~ 0
D2
Text Label 2750 1550 2    60   ~ 0
D3
Text Label 2750 1650 2    60   ~ 0
D4
Text Label 2750 1750 2    60   ~ 0
D5
Text Label 2750 1850 2    60   ~ 0
D6
Text Label 2750 1950 2    60   ~ 0
D7
Text Label 1100 1250 0    60   ~ 0
A0
Text Label 1100 1350 0    60   ~ 0
A1
Text Label 1100 1450 0    60   ~ 0
A2
Text Label 1100 1550 0    60   ~ 0
A3
Text Label 1100 1650 0    60   ~ 0
A4
Text Label 1100 1750 0    60   ~ 0
A5
Text Label 1100 1850 0    60   ~ 0
A6
Text Label 1100 1950 0    60   ~ 0
A7
Text Label 1100 2050 0    60   ~ 0
A8
Text Label 1100 2150 0    60   ~ 0
A9
Text Label 1100 2250 0    60   ~ 0
A10
Text Label 1100 2350 0    60   ~ 0
A11
Text Label 1100 3300 0    60   ~ 0
A0
Text Label 1100 3400 0    60   ~ 0
A1
Text Label 1100 3500 0    60   ~ 0
A2
Text Label 1100 3600 0    60   ~ 0
A3
Text Label 1100 3700 0    60   ~ 0
A4
Text Label 1100 3800 0    60   ~ 0
A5
Text Label 1100 3900 0    60   ~ 0
A6
Text Label 1100 4000 0    60   ~ 0
A7
Text Label 1100 4100 0    60   ~ 0
A8
Text Label 1100 4200 0    60   ~ 0
A9
Text Label 1100 4300 0    60   ~ 0
A10
Text Label 1100 4400 0    60   ~ 0
A11
Entry Wire Line
	2750 3300 2850 3400
Entry Wire Line
	2750 3400 2850 3500
Entry Wire Line
	2750 3500 2850 3600
Entry Wire Line
	2750 3600 2850 3700
Entry Wire Line
	2750 3700 2850 3800
Entry Wire Line
	2750 3800 2850 3900
Entry Wire Line
	2750 3900 2850 4000
Entry Wire Line
	2750 4000 2850 4100
Text Label 2750 3300 2    60   ~ 0
D0
Text Label 2750 3400 2    60   ~ 0
D1
Text Label 2750 3500 2    60   ~ 0
D2
Text Label 2750 3600 2    60   ~ 0
D3
Text Label 2750 3700 2    60   ~ 0
D4
Text Label 2750 3800 2    60   ~ 0
D5
Text Label 2750 3900 2    60   ~ 0
D6
Text Label 2750 4000 2    60   ~ 0
D7
Entry Wire Line
	3300 2150 3400 2250
Entry Wire Line
	3300 2250 3400 2350
Entry Wire Line
	3300 4200 3400 4300
Entry Wire Line
	3300 4300 3400 4400
Entry Wire Line
	6150 2150 6250 2250
Entry Wire Line
	6150 2250 6250 2350
Entry Wire Line
	6150 4200 6250 4300
Entry Wire Line
	6150 4300 6250 4400
Text Label 3300 2250 2    60   ~ 0
CPU_ME
Text Label 3300 4300 2    60   ~ 0
CPU_ME
Text Label 6150 2250 2    60   ~ 0
CPU_ME
Text Label 6150 4300 2    60   ~ 0
CPU_ME
Text Label 3300 2150 2    60   ~ 0
~MBE0
Text Label 3300 4200 2    60   ~ 0
~MBE1
Text Label 6150 2150 2    60   ~ 0
~MBE2
Text Label 6150 4200 2    60   ~ 0
~MBE3
Entry Wire Line
	3400 2750 3500 2650
Entry Wire Line
	3400 2850 3500 2750
Entry Wire Line
	3400 4800 3500 4700
Entry Wire Line
	3400 4900 3500 4800
Entry Wire Line
	3400 2550 3500 2450
Entry Wire Line
	3400 2650 3500 2550
Entry Wire Line
	3400 4600 3500 4500
Entry Wire Line
	3400 4700 3500 4600
Entry Wire Line
	600  2550 700  2450
Entry Wire Line
	600  2650 700  2550
Entry Wire Line
	600  2750 700  2650
Entry Wire Line
	600  2850 700  2750
Entry Wire Line
	600  4600 700  4500
Entry Wire Line
	600  4700 700  4600
Entry Wire Line
	600  4800 700  4700
Entry Wire Line
	600  4900 700  4800
Text Label 700  2450 0    60   ~ 0
MA12
Text Label 700  2550 0    60   ~ 0
MA13
Text Label 700  2650 0    60   ~ 0
MA14
Text Label 700  2750 0    60   ~ 0
MA15
Text Label 700  4500 0    60   ~ 0
MA12
Text Label 700  4600 0    60   ~ 0
MA13
Text Label 700  4700 0    60   ~ 0
MA14
Text Label 700  4800 0    60   ~ 0
MA15
Text Label 3500 2450 0    60   ~ 0
MA12
Text Label 3500 2550 0    60   ~ 0
MA13
Text Label 3500 2650 0    60   ~ 0
MA14
Text Label 3500 2750 0    60   ~ 0
MA15
Text Label 3500 4500 0    60   ~ 0
MA12
Text Label 3500 4600 0    60   ~ 0
MA13
Text Label 3500 4700 0    60   ~ 0
MA14
Text Label 3500 4800 0    60   ~ 0
MA15
Entry Wire Line
	2650 2350 2750 2450
Entry Wire Line
	2650 2450 2750 2550
Entry Wire Line
	2650 4400 2750 4500
Entry Wire Line
	2650 4500 2750 4600
Text Label 2650 2350 2    60   ~ 0
~RD
Text Label 2650 2450 2    60   ~ 0
~WR
Text Label 2650 4400 2    60   ~ 0
~RD
Text Label 2650 4500 2    60   ~ 0
~WR
Entry Wire Line
	6800 2350 6900 2450
Entry Wire Line
	6800 2450 6900 2550
Entry Wire Line
	6800 4400 6900 4500
Entry Wire Line
	6800 4500 6900 4600
Text Label 6800 2350 2    60   ~ 0
~RD
Text Label 6800 2450 2    60   ~ 0
~WR
Text Label 6800 4400 2    60   ~ 0
~RD
Text Label 6800 4500 2    60   ~ 0
~WR
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C101
U 1 1 567D7186
P 7200 4750
F 0 "C101" H 7225 4850 50  0000 L CNN
F 1 "100nF" H 7225 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7238 4600 50  0001 C CNN
F 3 "" H 7200 4750 50  0000 C CNN
	1    7200 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 567D7534
P 5350 2650
F 0 "#PWR03" H 5350 2500 50  0001 C CNN
F 1 "VCC" H 5350 2800 50  0000 C CNN
F 2 "" H 5350 2650 50  0000 C CNN
F 3 "" H 5350 2650 50  0000 C CNN
	1    5350 2650
	0    1    1    0   
$EndComp
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR04
U 1 1 567D753A
P 5350 2750
F 0 "#PWR04" H 5350 2500 50  0001 C CNN
F 1 "GND" H 5350 2600 50  0000 C CNN
F 2 "" H 5350 2750 50  0000 C CNN
F 3 "" H 5350 2750 50  0000 C CNN
	1    5350 2750
	0    -1   -1   0   
$EndComp
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR05
U 1 1 567D7572
P 5350 4800
F 0 "#PWR05" H 5350 4550 50  0001 C CNN
F 1 "GND" H 5350 4650 50  0000 C CNN
F 2 "" H 5350 4800 50  0000 C CNN
F 3 "" H 5350 4800 50  0000 C CNN
	1    5350 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 567D7582
P 5350 4700
F 0 "#PWR06" H 5350 4550 50  0001 C CNN
F 1 "VCC" H 5350 4850 50  0000 C CNN
F 2 "" H 5350 4700 50  0000 C CNN
F 3 "" H 5350 4700 50  0000 C CNN
	1    5350 4700
	0    1    1    0   
$EndComp
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR07
U 1 1 567D7588
P 2500 4800
F 0 "#PWR07" H 2500 4550 50  0001 C CNN
F 1 "GND" H 2500 4650 50  0000 C CNN
F 2 "" H 2500 4800 50  0000 C CNN
F 3 "" H 2500 4800 50  0000 C CNN
	1    2500 4800
	0    -1   -1   0   
$EndComp
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR08
U 1 1 567D758E
P 2500 2750
F 0 "#PWR08" H 2500 2500 50  0001 C CNN
F 1 "GND" H 2500 2600 50  0000 C CNN
F 2 "" H 2500 2750 50  0000 C CNN
F 3 "" H 2500 2750 50  0000 C CNN
	1    2500 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 567D7594
P 2500 4700
F 0 "#PWR09" H 2500 4550 50  0001 C CNN
F 1 "VCC" H 2500 4850 50  0000 C CNN
F 2 "" H 2500 4700 50  0000 C CNN
F 3 "" H 2500 4700 50  0000 C CNN
	1    2500 4700
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 567D759A
P 2500 2650
F 0 "#PWR010" H 2500 2500 50  0001 C CNN
F 1 "VCC" H 2500 2800 50  0000 C CNN
F 2 "" H 2500 2650 50  0000 C CNN
F 3 "" H 2500 2650 50  0000 C CNN
	1    2500 2650
	0    1    1    0   
$EndComp
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C102
U 1 1 567D75AA
P 7450 4750
F 0 "C102" H 7475 4850 50  0000 L CNN
F 1 "100nF" H 7475 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7488 4600 50  0001 C CNN
F 3 "" H 7450 4750 50  0000 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C103
U 1 1 567D75B0
P 7700 4750
F 0 "C103" H 7725 4850 50  0000 L CNN
F 1 "100nF" H 7725 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7738 4600 50  0001 C CNN
F 3 "" H 7700 4750 50  0000 C CNN
	1    7700 4750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C104
U 1 1 567D75B6
P 7950 4750
F 0 "C104" H 7975 4850 50  0000 L CNN
F 1 "100nF" H 7975 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7988 4600 50  0001 C CNN
F 3 "" H 7950 4750 50  0000 C CNN
	1    7950 4750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C105
U 1 1 567D75BC
P 8200 4750
F 0 "C105" H 8225 4850 50  0000 L CNN
F 1 "100nF" H 8225 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8238 4600 50  0001 C CNN
F 3 "" H 8200 4750 50  0000 C CNN
	1    8200 4750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR011
U 1 1 567D7789
P 7800 5050
F 0 "#PWR011" H 7800 4800 50  0001 C CNN
F 1 "GND" H 7800 4900 50  0000 C CNN
F 2 "" H 7800 5050 50  0000 C CNN
F 3 "" H 7800 5050 50  0000 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 567D778F
P 7800 4450
F 0 "#PWR012" H 7800 4300 50  0001 C CNN
F 1 "VCC" H 7800 4600 50  0000 C CNN
F 2 "" H 7800 4450 50  0000 C CNN
F 3 "" H 7800 4450 50  0000 C CNN
	1    7800 4450
	1    0    0    -1  
$EndComp
Entry Bus Bus
	5600 5250 5700 5150
Entry Bus Bus
	3300 5500 3400 5400
Entry Bus Bus
	9400 700  9500 800 
Entry Bus Bus
	3850 800  3950 700 
$Comp
L syshdr:BUSHDR-A HDR101
U 1 1 56DAA35D
P 3000 7900
F 0 "HDR101" H 2800 9000 60  0000 C CNN
F 1 "BUSHDR-A" H 3050 6800 60  0000 C CNN
F 2 "Connect:IDC_Header_Straight_40pins" H 3000 6700 60  0000 C CNN
F 3 "~" H 3000 7250 60  0000 C CNN
	1    3000 7900
	1    0    0    -1  
$EndComp
$Comp
L syshdr:BUSHDR-B HDR102
U 1 1 56DAA36C
P 6100 7850
F 0 "HDR102" H 5900 8950 60  0000 C CNN
F 1 "BUSHDR-B" H 6150 6750 60  0000 C CNN
F 2 "Connect:IDC_Header_Straight_40pins" H 6100 6650 60  0000 C CNN
F 3 "~" H 6100 7200 60  0000 C CNN
	1    6100 7850
	1    0    0    -1  
$EndComp
Entry Wire Line
	7300 7000 7400 6900
Entry Wire Line
	7300 7100 7400 7000
Entry Wire Line
	7300 7200 7400 7100
Entry Wire Line
	7300 7300 7400 7200
Entry Wire Line
	7300 7400 7400 7300
Entry Wire Line
	7300 7500 7400 7400
Entry Wire Line
	7300 7800 7400 7700
Text Label 7250 7000 2    60   ~ 0
~BUSACK
Text Label 7250 7100 2    60   ~ 0
~CPU_WAIT
Text Label 7250 7200 2    60   ~ 0
~REFRESH
Text Label 7250 7300 2    60   ~ 0
~IOREQ
Text Label 7250 7400 2    60   ~ 0
~WR
Text Label 7250 7500 2    60   ~ 0
~NMI
Text Label 7250 7800 2    60   ~ 0
~CPU_CLK
Entry Wire Line
	4750 6900 4850 7000
Entry Wire Line
	4750 7000 4850 7100
Entry Wire Line
	4750 7100 4850 7200
Entry Wire Line
	4750 7200 4850 7300
Entry Wire Line
	4750 7300 4850 7400
Entry Wire Line
	4750 7400 4850 7500
Entry Wire Line
	4750 7700 4850 7800
Text Label 4900 7000 0    60   ~ 0
~BUSREQ
Text Label 4900 7100 0    60   ~ 0
~CPU_HALT
Text Label 4900 7200 0    60   ~ 0
~CPU_M1
Text Label 4900 7300 0    60   ~ 0
~MEMREQ
Text Label 4900 7400 0    60   ~ 0
~RD
Text Label 4900 7500 0    60   ~ 0
~CPU_INT
Text Label 4900 7800 0    60   ~ 0
~CPU_RESET
Entry Wire Line
	3850 7050 3950 6950
Entry Wire Line
	3850 7150 3950 7050
Entry Wire Line
	3850 7250 3950 7150
Entry Wire Line
	3850 7350 3950 7250
Entry Wire Line
	3850 7450 3950 7350
Entry Wire Line
	3850 7550 3950 7450
Text Label 3800 7050 2    60   ~ 0
A1
Text Label 3800 7150 2    60   ~ 0
A3
Text Label 3800 7250 2    60   ~ 0
A5
Text Label 3800 7350 2    60   ~ 0
A7
Text Label 3800 7450 2    60   ~ 0
A9
Text Label 3800 7550 2    60   ~ 0
A11
Entry Wire Line
	2000 6950 2100 7050
Entry Wire Line
	2000 7050 2100 7150
Entry Wire Line
	2000 7150 2100 7250
Entry Wire Line
	2000 7250 2100 7350
Entry Wire Line
	2000 7350 2100 7450
Entry Wire Line
	2000 7450 2100 7550
Text Label 2150 7050 0    60   ~ 0
A0
Text Label 2150 7150 0    60   ~ 0
A2
Text Label 2150 7250 0    60   ~ 0
A4
Text Label 2150 7350 0    60   ~ 0
A6
Text Label 2150 7450 0    60   ~ 0
A8
Text Label 2150 7550 0    60   ~ 0
A10
Entry Wire Line
	4600 7500 4700 7600
Entry Wire Line
	4600 7600 4700 7700
Entry Wire Line
	7550 7600 7650 7500
Entry Wire Line
	7550 7700 7650 7600
Text Label 7250 7600 2    60   ~ 0
A13
Text Label 7250 7700 2    60   ~ 0
A15
Text Label 4900 7600 0    60   ~ 0
A12
Text Label 4900 7700 0    60   ~ 0
A14
Entry Wire Line
	4000 7650 4100 7550
Entry Wire Line
	4000 7750 4100 7650
Entry Wire Line
	1850 7550 1950 7650
Entry Wire Line
	1850 7650 1950 7750
Text Label 2150 7650 0    60   ~ 0
MA12
Text Label 2150 7750 0    60   ~ 0
MA14
Text Label 3850 7650 2    60   ~ 0
MA13
Text Label 3850 7750 2    60   ~ 0
MA15
Entry Wire Line
	1800 7950 1900 8050
Entry Wire Line
	1800 8050 1900 8150
Entry Wire Line
	1800 8150 1900 8250
Entry Wire Line
	1800 8250 1900 8350
Entry Wire Line
	4050 8050 4150 7950
Entry Wire Line
	4050 8150 4150 8050
Entry Wire Line
	4050 8250 4150 8150
Entry Wire Line
	4050 8350 4150 8250
Text Label 2150 8050 0    60   ~ 0
D0
Text Label 2150 8150 0    60   ~ 0
D2
Text Label 2150 8250 0    60   ~ 0
D4
Text Label 2150 8350 0    60   ~ 0
D6
Text Label 3850 8050 2    60   ~ 0
D1
Text Label 3850 8150 2    60   ~ 0
D3
Text Label 3850 8250 2    60   ~ 0
D5
Text Label 3850 8350 2    60   ~ 0
D7
NoConn ~ 5500 8800
NoConn ~ 5500 8700
NoConn ~ 5500 8400
NoConn ~ 5500 8300
NoConn ~ 5500 8200
NoConn ~ 5500 8100
NoConn ~ 5500 8000
NoConn ~ 5500 7900
NoConn ~ 3600 8650
NoConn ~ 3600 8750
NoConn ~ 3600 8850
NoConn ~ 2400 8850
NoConn ~ 2400 8750
NoConn ~ 2400 8650
NoConn ~ 6700 7900
NoConn ~ 6700 8000
NoConn ~ 6700 8100
NoConn ~ 6700 8200
NoConn ~ 6700 8300
NoConn ~ 6700 8700
NoConn ~ 6700 8800
Entry Wire Line
	4100 8450 4200 8350
Entry Wire Line
	4100 8550 4200 8450
Entry Wire Line
	1850 8550 1950 8450
Entry Wire Line
	1850 8650 1950 8550
Text Label 2000 8450 0    60   ~ 0
~MEMREQ
Text Label 2000 8550 0    60   ~ 0
~RD
Text Label 4100 8550 2    60   ~ 0
~CPU_WAIT
Text Label 4050 8450 2    60   ~ 0
~WR
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR013
U 1 1 56DAEDC2
P 5500 6900
F 0 "#PWR013" H 5500 6650 50  0001 C CNN
F 1 "GND" H 5500 6750 50  0000 C CNN
F 2 "" H 5500 6900 50  0000 C CNN
F 3 "" H 5500 6900 50  0000 C CNN
	1    5500 6900
	0    1    1    0   
$EndComp
$Comp
L Z80-CPU-Board-rescue:GND-RESCUE-Z80_CPU_Board #PWR014
U 1 1 56DAEDC8
P 2400 6950
F 0 "#PWR014" H 2400 6700 50  0001 C CNN
F 1 "GND" H 2400 6800 50  0000 C CNN
F 2 "" H 2400 6950 50  0000 C CNN
F 3 "" H 2400 6950 50  0000 C CNN
	1    2400 6950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 56DAEDCE
P 3600 6950
F 0 "#PWR015" H 3600 6800 50  0001 C CNN
F 1 "VCC" H 3600 7100 50  0000 C CNN
F 2 "" H 3600 6950 50  0000 C CNN
F 3 "" H 3600 6950 50  0000 C CNN
	1    3600 6950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 56DAEDD4
P 6700 6900
F 0 "#PWR016" H 6700 6750 50  0001 C CNN
F 1 "VCC" H 6700 7050 50  0000 C CNN
F 2 "" H 6700 6900 50  0000 C CNN
F 3 "" H 6700 6900 50  0000 C CNN
	1    6700 6900
	0    1    1    0   
$EndComp
$Comp
L G-Link-GLT725608:GLT725608 IC106
U 1 1 56DF1903
P 12600 3850
F 0 "IC106" H 12600 4700 60  0000 C CNN
F 1 "GLT725608" H 12650 3000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-28_7.5x17.9mm_Pitch1.27mm" H 12700 2850 60  0001 C CNN
F 3 "" H 12700 2850 60  0000 C CNN
	1    12600 3850
	1    0    0    -1  
$EndComp
$Comp
L 74ls573:74F573 U102
U 1 1 56DF2630
P 10800 5500
F 0 "U102" H 10550 6100 50  0000 C CNN
F 1 "74F573" H 10800 4900 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_LongPads" H 10800 5500 50  0001 C CNN
F 3 "" H 10800 5500 50  0000 C CNN
	1    10800 5500
	1    0    0    -1  
$EndComp
$Comp
L My-74-Logic:74HC245 U103
U 1 1 56DF2DCA
P 14550 5000
F 0 "U103" H 14250 5600 50  0000 L BNN
F 1 "74HC245" H 14350 4400 50  0000 L TNN
F 2 "Housings_DIP:DIP-20_W7.62mm_LongPads" H 14550 5000 50  0001 C CNN
F 3 "" H 14550 5000 50  0000 C CNN
	1    14550 5000
	-1   0    0    -1  
$EndComp
Text Label 11150 3150 0    60   ~ 0
A12
Text Label 11150 3250 0    60   ~ 0
A13
Text Label 11150 3350 0    60   ~ 0
A14
Text Label 11150 3450 0    60   ~ 0
A15
Text Label 15450 3150 2    60   ~ 0
MA12
Text Label 15450 3250 2    60   ~ 0
MA13
Text Label 15450 3350 2    60   ~ 0
MA14
Text Label 15450 3450 2    60   ~ 0
MA15
Text Label 15450 3550 2    60   ~ 0
MA16
Text Label 15450 3650 2    60   ~ 0
MA17
Text Label 15450 3750 2    60   ~ 0
MA18
Text Label 15450 3850 2    60   ~ 0
MA19
Text Label 15350 4500 2    60   ~ 0
D0
Text Label 15350 4600 2    60   ~ 0
D1
Text Label 15350 4700 2    60   ~ 0
D2
Text Label 15350 4800 2    60   ~ 0
D3
Text Label 15350 4900 2    60   ~ 0
D4
Text Label 15350 5000 2    60   ~ 0
D5
Text Label 15350 5100 2    60   ~ 0
D6
Text Label 15350 5200 2    60   ~ 0
D7
$Comp
L power:GND #PWR017
U 1 1 56DF920A
P 13150 4550
F 0 "#PWR017" H 13150 4300 50  0001 C CNN
F 1 "GND" H 13150 4400 50  0000 C CNN
F 2 "" H 13150 4550 50  0000 C CNN
F 3 "" H 13150 4550 50  0000 C CNN
	1    13150 4550
	1    0    0    -1  
$EndComp
Text Notes 12800 2900 2    60   ~ 0
Addresses $0xxx - $Fxxx \nmapped to $00xxx - $FFxxx
Text Notes 11450 2550 0    60   ~ 0
Address Translation (AT) \n~AT-IO~ => AT in IO mode (Active Low)\n~AT-IO~ = ~IOREQ~ & A[11..0] = $FFF\n\n~AT-IO-1~ => Set Memory Map Table\n~AT-IO-2~ => Set IO Map Table\n~AT-IO-3~ => Read/Write IO Table Data
Text Notes 14250 5450 2    60   ~ 0
A->B = ~RD~
Text Notes 14250 5550 2    60   ~ 0
~CE~ = ~AT-IO-3~
Text Notes 13950 4250 0    60   ~ 0
~OE~ = !(~AT-IO-3~ & ~WR~) \n& !~RST~ (& 'boot release')
Text Notes 13950 4350 0    60   ~ 0
~WE~ = ~AT-IO-3~ & ~WR~
Entry Wire Line
	15400 4500 15500 4600
Entry Wire Line
	15400 4600 15500 4700
Entry Wire Line
	15400 4700 15500 4800
Entry Wire Line
	15400 4800 15500 4900
Entry Wire Line
	15400 4900 15500 5000
Entry Wire Line
	15400 5000 15500 5100
Entry Wire Line
	15400 5100 15500 5200
Entry Wire Line
	15400 5200 15500 5300
Entry Wire Line
	15500 3150 15600 3250
Entry Wire Line
	15500 3250 15600 3350
Entry Wire Line
	15500 3350 15600 3450
Entry Wire Line
	15500 3450 15600 3550
Entry Wire Line
	15500 3550 15600 3650
Entry Wire Line
	15500 3650 15600 3750
Entry Wire Line
	15500 3750 15600 3850
Entry Wire Line
	15500 3850 15600 3950
Entry Wire Line
	11000 3050 11100 3150
Entry Wire Line
	11000 3150 11100 3250
Entry Wire Line
	11000 3250 11100 3350
Entry Wire Line
	11000 3350 11100 3450
Entry Wire Line
	1850 7750 1950 7850
Entry Wire Line
	1850 7850 1950 7950
Entry Wire Line
	4000 7850 4100 7750
Entry Wire Line
	4000 7950 4100 7850
Text Label 3850 7850 2    60   ~ 0
MA17
Text Label 3850 7950 2    60   ~ 0
MA19
Entry Wire Line
	15250 5400 15350 5500
Text Label 15200 5400 0    60   ~ 0
!RD
$Comp
L 74ls573:74F573 U101
U 1 1 56E10762
P 10800 4050
F 0 "U101" H 10550 4650 50  0000 C CNN
F 1 "74F573" H 10800 3450 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_LongPads" H 10800 4050 50  0001 C CNN
F 3 "" H 10800 4050 50  0000 C CNN
	1    10800 4050
	1    0    0    -1  
$EndComp
Entry Wire Line
	9850 3650 9950 3550
Entry Wire Line
	9850 3750 9950 3650
Entry Wire Line
	9850 3850 9950 3750
Entry Wire Line
	9850 3950 9950 3850
Entry Wire Line
	9850 4050 9950 3950
Entry Wire Line
	9850 4150 9950 4050
Entry Wire Line
	9850 4250 9950 4150
Text Label 10000 3550 0    60   ~ 0
D0
Text Label 10000 3650 0    60   ~ 0
D1
Text Label 10000 3750 0    60   ~ 0
D2
Text Label 10000 3850 0    60   ~ 0
D3
Text Label 10000 3950 0    60   ~ 0
D4
Text Label 10000 4050 0    60   ~ 0
D5
Text Label 10000 4150 0    60   ~ 0
D6
Entry Wire Line
	9850 4900 9950 5000
Entry Wire Line
	9850 5000 9950 5100
Entry Wire Line
	9850 5100 9950 5200
Entry Wire Line
	9850 5200 9950 5300
Entry Wire Line
	9850 5300 9950 5400
Entry Wire Line
	9850 5400 9950 5500
Entry Wire Line
	9850 5500 9950 5600
Entry Wire Line
	9850 5600 9950 5700
Text Label 9950 5000 0    60   ~ 0
D0
Text Label 9950 5100 0    60   ~ 0
D1
Text Label 9950 5200 0    60   ~ 0
D2
Text Label 9950 5300 0    60   ~ 0
D3
Text Label 9950 5400 0    60   ~ 0
D4
Text Label 9950 5500 0    60   ~ 0
D5
Text Label 9950 5600 0    60   ~ 0
D6
Text Label 9950 5700 0    60   ~ 0
D7
Entry Wire Line
	9850 4350 9950 4250
Text Label 10000 4250 0    60   ~ 0
D7
Text Notes 12450 4400 0    60   ~ 0
~MEM-RD~
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C106
U 1 1 56E2F488
P 8450 4750
F 0 "C106" H 8475 4850 50  0000 L CNN
F 1 "100nF" H 8475 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8488 4600 50  0001 C CNN
F 3 "" H 8450 4750 50  0000 C CNN
	1    8450 4750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C107
U 1 1 56E2F4D9
P 8700 4750
F 0 "C107" H 8725 4850 50  0000 L CNN
F 1 "100nF" H 8725 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8738 4600 50  0001 C CNN
F 3 "" H 8700 4750 50  0000 C CNN
	1    8700 4750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C108
U 1 1 56E2F525
P 8950 4750
F 0 "C108" H 8975 4850 50  0000 L CNN
F 1 "100nF" H 8975 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8988 4600 50  0001 C CNN
F 3 "" H 8950 4750 50  0000 C CNN
	1    8950 4750
	1    0    0    -1  
$EndComp
$Comp
L Z80-CPU-Board-rescue:C-RESCUE-Z80_CPU_Board C109
U 1 1 56E2F574
P 9200 4750
F 0 "C109" H 9225 4850 50  0000 L CNN
F 1 "100nF" H 9225 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9238 4600 50  0001 C CNN
F 3 "" H 9200 4750 50  0000 C CNN
	1    9200 4750
	1    0    0    -1  
$EndComp
Text Notes 12300 4650 0    60   ~ 0
SysCtrl
$Comp
L Device:R R110
U 1 1 56ED287E
P 14150 2850
F 0 "R110" V 14230 2850 50  0000 C CNN
F 1 "10k" V 14150 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14080 2850 50  0001 C CNN
F 3 "" H 14150 2850 50  0000 C CNN
	1    14150 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R111
U 1 1 56ED28FC
P 14300 2850
F 0 "R111" V 14380 2850 50  0000 C CNN
F 1 "10k" V 14300 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14230 2850 50  0001 C CNN
F 3 "" H 14300 2850 50  0000 C CNN
	1    14300 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R112
U 1 1 56ED2956
P 14450 2850
F 0 "R112" V 14530 2850 50  0000 C CNN
F 1 "10k" V 14450 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14380 2850 50  0001 C CNN
F 3 "" H 14450 2850 50  0000 C CNN
	1    14450 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R113
U 1 1 56ED29AD
P 14600 2850
F 0 "R113" V 14680 2850 50  0000 C CNN
F 1 "10k" V 14600 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14530 2850 50  0001 C CNN
F 3 "" H 14600 2850 50  0000 C CNN
	1    14600 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R114
U 1 1 56ED2A07
P 14750 2850
F 0 "R114" V 14830 2850 50  0000 C CNN
F 1 "10k" V 14750 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14680 2850 50  0001 C CNN
F 3 "" H 14750 2850 50  0000 C CNN
	1    14750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R115
U 1 1 56ED2A68
P 14900 2850
F 0 "R115" V 14980 2850 50  0000 C CNN
F 1 "10k" V 14900 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14830 2850 50  0001 C CNN
F 3 "" H 14900 2850 50  0000 C CNN
	1    14900 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R116
U 1 1 56ED2AC8
P 15050 2850
F 0 "R116" V 15130 2850 50  0000 C CNN
F 1 "10k" V 15050 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14980 2850 50  0001 C CNN
F 3 "" H 15050 2850 50  0000 C CNN
	1    15050 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R117
U 1 1 56ED2B33
P 15200 2850
F 0 "R117" V 15280 2850 50  0000 C CNN
F 1 "10k" V 15200 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 15130 2850 50  0001 C CNN
F 3 "" H 15200 2850 50  0000 C CNN
	1    15200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 56ED49BB
P 14150 2500
F 0 "#PWR018" H 14150 2350 50  0001 C CNN
F 1 "VCC" H 14150 2650 50  0000 C CNN
F 2 "" H 14150 2500 50  0000 C CNN
F 3 "" H 14150 2500 50  0000 C CNN
	1    14150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R109
U 1 1 56ED55AF
P 12050 4900
F 0 "R109" V 12130 4900 50  0000 C CNN
F 1 "10k" V 12050 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 11980 4900 50  0001 C CNN
F 3 "" H 12050 4900 50  0000 C CNN
	1    12050 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R108
U 1 1 56ED566E
P 11900 4900
F 0 "R108" V 11980 4900 50  0000 C CNN
F 1 "10k" V 11900 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 11830 4900 50  0001 C CNN
F 3 "" H 11900 4900 50  0000 C CNN
	1    11900 4900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 56ED605A
P 11950 5250
F 0 "#PWR019" H 11950 5100 50  0001 C CNN
F 1 "VCC" H 11950 5400 50  0000 C CNN
F 2 "" H 11950 5250 50  0000 C CNN
F 3 "" H 11950 5250 50  0000 C CNN
	1    11950 5250
	-1   0    0    1   
$EndComp
Text Notes 11150 5900 0    60   ~ 0
Load = ~AT-IO-2~
Text Notes 11150 6000 0    60   ~ 0
~OE~ = ~AT-IO-2~
Text Notes 14550 2450 0    60   ~ 0
Boolean equations are on \na logic level (not physical)
Text Notes 10200 4750 0    60   ~ 0
Load = ~AT-IO-1~
Text Notes 10200 4850 0    60   ~ 0
~OE~ = !~AT-IO-2~
NoConn ~ 5500 8500
NoConn ~ 5500 8600
NoConn ~ 6700 8600
NoConn ~ 6700 8500
NoConn ~ 6700 8400
Entry Wire Line
	13600 7350 13700 7250
Entry Wire Line
	13600 7450 13700 7350
Entry Wire Line
	13600 7550 13700 7450
Entry Wire Line
	10750 7350 10850 7450
Entry Wire Line
	10750 7450 10850 7550
Text Label 13050 7350 0    60   ~ 0
CPU_ME
Text Label 13050 7450 0    60   ~ 0
~MBE1
Text Label 13050 7550 0    60   ~ 0
~MBE3
Text Label 11100 7450 0    60   ~ 0
~MBE0
Text Label 11100 7550 0    60   ~ 0
~MBE2
$Comp
L Device:R R101
U 1 1 56EF9C98
P 8850 7450
F 0 "R101" V 8780 7450 50  0000 C CNN
F 1 "10k" V 8850 7450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 7450 50  0001 C CNN
F 3 "" H 8850 7450 50  0000 C CNN
	1    8850 7450
	0    1    1    0   
$EndComp
$Comp
L Device:R R102
U 1 1 56EF9D33
P 8850 7600
F 0 "R102" V 8780 7600 50  0000 C CNN
F 1 "10k" V 8850 7600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 7600 50  0001 C CNN
F 3 "" H 8850 7600 50  0000 C CNN
	1    8850 7600
	0    1    1    0   
$EndComp
$Comp
L Device:R R103
U 1 1 56EF9DAC
P 8850 7750
F 0 "R103" V 8930 7750 50  0000 C CNN
F 1 "10k" V 8850 7750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 7750 50  0001 C CNN
F 3 "" H 8850 7750 50  0000 C CNN
	1    8850 7750
	0    1    1    0   
$EndComp
$Comp
L Device:R R104
U 1 1 56EFA048
P 8850 7900
F 0 "R104" V 8930 7900 50  0000 C CNN
F 1 "10k" V 8850 7900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 7900 50  0001 C CNN
F 3 "" H 8850 7900 50  0000 C CNN
	1    8850 7900
	0    1    1    0   
$EndComp
$Comp
L Device:R R105
U 1 1 56EFA0C7
P 8850 8050
F 0 "R105" V 8930 8050 50  0000 C CNN
F 1 "10k" V 8850 8050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 8050 50  0001 C CNN
F 3 "" H 8850 8050 50  0000 C CNN
	1    8850 8050
	0    1    1    0   
$EndComp
$Comp
L Device:R R106
U 1 1 56EFA149
P 8850 8200
F 0 "R106" V 8930 8200 50  0000 C CNN
F 1 "10k" V 8850 8200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 8200 50  0001 C CNN
F 3 "" H 8850 8200 50  0000 C CNN
	1    8850 8200
	0    1    1    0   
$EndComp
Entry Wire Line
	8100 7350 8200 7450
Wire Wire Line
	7000 3950 7500 3950
Wire Wire Line
	7000 3850 7500 3850
Wire Wire Line
	7000 3550 7500 3550
Wire Wire Line
	7000 3450 7500 3450
Wire Wire Line
	7000 3350 7500 3350
Wire Wire Line
	7000 3250 7500 3250
Wire Wire Line
	7000 2850 7500 2850
Wire Wire Line
	7000 2750 7500 2750
Wire Wire Line
	7000 2650 7500 2650
Wire Wire Line
	7000 2550 7500 2550
Wire Wire Line
	7000 2250 7500 2250
Wire Wire Line
	7000 2150 7500 2150
Wire Wire Line
	7000 1850 7500 1850
Wire Wire Line
	7000 1550 7500 1550
Wire Wire Line
	5350 1950 5600 1950
Wire Wire Line
	5350 4000 5600 4000
Wire Wire Line
	5350 3900 5600 3900
Wire Wire Line
	5350 3800 5600 3800
Wire Wire Line
	5350 3700 5600 3700
Wire Wire Line
	5350 3600 5600 3600
Wire Wire Line
	5350 3500 5600 3500
Wire Wire Line
	5350 3400 5600 3400
Wire Wire Line
	5350 3300 5600 3300
Wire Wire Line
	5350 1850 5600 1850
Wire Wire Line
	5350 1750 5600 1750
Wire Wire Line
	5350 1650 5600 1650
Wire Wire Line
	5350 1550 5600 1550
Wire Wire Line
	5350 1450 5600 1450
Wire Wire Line
	5350 1350 5600 1350
Wire Wire Line
	5350 1250 5600 1250
Wire Wire Line
	8900 3950 9400 3950
Wire Wire Line
	8900 3850 9400 3850
Wire Wire Line
	8900 3750 9400 3750
Wire Wire Line
	8900 3650 9400 3650
Wire Wire Line
	8900 3550 9400 3550
Wire Wire Line
	8900 3450 9400 3450
Wire Wire Line
	8900 3350 9400 3350
Wire Wire Line
	8900 3250 9400 3250
Wire Wire Line
	8900 3050 9400 3050
Wire Wire Line
	8900 2950 9400 2950
Wire Wire Line
	8900 2850 9400 2850
Wire Wire Line
	8900 2750 9400 2750
Wire Wire Line
	8900 2650 9400 2650
Wire Wire Line
	8900 2550 9400 2550
Wire Wire Line
	8900 2450 9400 2450
Wire Wire Line
	8900 2350 9400 2350
Wire Wire Line
	8900 2250 9400 2250
Wire Wire Line
	8900 2150 9400 2150
Wire Wire Line
	8900 2050 9400 2050
Wire Wire Line
	8900 1950 9400 1950
Wire Wire Line
	8900 1850 9400 1850
Wire Wire Line
	8900 1750 9400 1750
Wire Wire Line
	8900 1650 9400 1650
Wire Wire Line
	8900 1550 9400 1550
Wire Wire Line
	4200 4400 3950 4400
Wire Wire Line
	4200 4300 3950 4300
Wire Wire Line
	4200 4200 3950 4200
Wire Wire Line
	4200 4100 3950 4100
Wire Wire Line
	4200 4000 3950 4000
Wire Wire Line
	4200 3900 3950 3900
Wire Wire Line
	4200 3800 3950 3800
Wire Wire Line
	4200 3700 3950 3700
Wire Wire Line
	4200 3600 3950 3600
Wire Wire Line
	4200 3500 3950 3500
Wire Wire Line
	4200 3400 3950 3400
Wire Wire Line
	4200 3300 3950 3300
Wire Wire Line
	4200 2350 3950 2350
Wire Wire Line
	4200 2250 3950 2250
Wire Wire Line
	4200 2150 3950 2150
Wire Wire Line
	4200 2050 3950 2050
Wire Wire Line
	4200 1950 3950 1950
Wire Wire Line
	4200 1850 3950 1850
Wire Wire Line
	4200 1750 3950 1750
Wire Wire Line
	4200 1650 3950 1650
Wire Wire Line
	3950 1550 4200 1550
Wire Wire Line
	4200 1450 3950 1450
Wire Wire Line
	4200 1350 3950 1350
Wire Wire Line
	4200 1250 3950 1250
Wire Wire Line
	1100 1250 1350 1250
Wire Wire Line
	1100 1350 1350 1350
Wire Wire Line
	1100 1450 1350 1450
Wire Wire Line
	1100 1550 1350 1550
Wire Wire Line
	1100 1650 1350 1650
Wire Wire Line
	1100 1750 1350 1750
Wire Wire Line
	1100 1850 1350 1850
Wire Wire Line
	1100 1950 1350 1950
Wire Wire Line
	1100 2050 1350 2050
Wire Wire Line
	1100 2150 1350 2150
Wire Wire Line
	1100 2250 1350 2250
Wire Wire Line
	1100 2350 1350 2350
Wire Wire Line
	1100 3300 1350 3300
Wire Wire Line
	1100 3400 1350 3400
Wire Wire Line
	1100 3500 1350 3500
Wire Wire Line
	1100 3600 1350 3600
Wire Wire Line
	1100 3700 1350 3700
Wire Wire Line
	1100 3800 1350 3800
Wire Wire Line
	1100 3900 1350 3900
Wire Wire Line
	1100 4000 1350 4000
Wire Wire Line
	1100 4100 1350 4100
Wire Wire Line
	1100 4200 1350 4200
Wire Wire Line
	1100 4300 1350 4300
Wire Wire Line
	1100 4400 1350 4400
Wire Wire Line
	2500 1250 2750 1250
Wire Wire Line
	2500 1350 2750 1350
Wire Wire Line
	2500 1450 2750 1450
Wire Wire Line
	2500 1550 2750 1550
Wire Wire Line
	2500 1650 2750 1650
Wire Wire Line
	2500 1750 2750 1750
Wire Wire Line
	2500 1850 2750 1850
Wire Wire Line
	2500 1950 2750 1950
Wire Wire Line
	2500 3300 2750 3300
Wire Wire Line
	2500 3400 2750 3400
Wire Wire Line
	2500 3500 2750 3500
Wire Wire Line
	2500 3600 2750 3600
Wire Wire Line
	2500 3700 2750 3700
Wire Wire Line
	2500 3800 2750 3800
Wire Wire Line
	2500 3900 2750 3900
Wire Wire Line
	2500 4000 2750 4000
Wire Wire Line
	2500 2150 3300 2150
Wire Wire Line
	2500 2250 3300 2250
Wire Wire Line
	2500 4200 3300 4200
Wire Wire Line
	2500 4300 3300 4300
Wire Wire Line
	5350 2150 6150 2150
Wire Wire Line
	5350 2250 6150 2250
Wire Wire Line
	5350 4200 6150 4200
Wire Wire Line
	5350 4300 6150 4300
Wire Wire Line
	4200 4700 3500 4700
Wire Wire Line
	4200 4800 3500 4800
Wire Wire Line
	4200 2650 3500 2650
Wire Wire Line
	4200 2750 3500 2750
Wire Wire Line
	3500 2450 4200 2450
Wire Wire Line
	3500 2550 4200 2550
Wire Wire Line
	3500 4500 4200 4500
Wire Wire Line
	3500 4600 4200 4600
Wire Wire Line
	700  2450 1350 2450
Wire Wire Line
	700  2550 1350 2550
Wire Wire Line
	700  2650 1350 2650
Wire Wire Line
	700  2750 1350 2750
Wire Wire Line
	700  4500 1350 4500
Wire Wire Line
	700  4600 1350 4600
Wire Wire Line
	700  4700 1350 4700
Wire Wire Line
	700  4800 1350 4800
Wire Bus Line
	2750 2450 2750 2550
Wire Bus Line
	2750 2550 2900 2550
Wire Bus Line
	2900 2550 2900 5800
Wire Bus Line
	2750 4500 2750 4600
Wire Bus Line
	2750 4600 2900 4600
Wire Wire Line
	2500 2350 2650 2350
Wire Wire Line
	2500 2450 2650 2450
Wire Wire Line
	2500 4400 2650 4400
Wire Wire Line
	2500 4500 2650 4500
Wire Wire Line
	5350 2450 6800 2450
Wire Wire Line
	5350 4500 6800 4500
Wire Wire Line
	6700 7000 7300 7000
Wire Wire Line
	6700 7100 7300 7100
Wire Wire Line
	6700 7200 7300 7200
Wire Wire Line
	6700 7300 7300 7300
Wire Wire Line
	6700 7400 7300 7400
Wire Wire Line
	6700 7500 7300 7500
Wire Wire Line
	6700 7800 7300 7800
Wire Wire Line
	4850 7000 5500 7000
Wire Wire Line
	4850 7100 5500 7100
Wire Wire Line
	4850 7200 5500 7200
Wire Wire Line
	4850 7300 5500 7300
Wire Wire Line
	4850 7400 5500 7400
Wire Wire Line
	4850 7500 5500 7500
Wire Wire Line
	4850 7800 5500 7800
Wire Wire Line
	3600 7050 3850 7050
Wire Wire Line
	3600 7150 3850 7150
Wire Wire Line
	3600 7250 3850 7250
Wire Wire Line
	3600 7350 3850 7350
Wire Wire Line
	3600 7450 3850 7450
Wire Wire Line
	3600 7550 3850 7550
Wire Wire Line
	2100 7050 2400 7050
Wire Wire Line
	2100 7150 2400 7150
Wire Wire Line
	2100 7250 2400 7250
Wire Wire Line
	2100 7350 2400 7350
Wire Wire Line
	2100 7450 2400 7450
Wire Wire Line
	2100 7550 2400 7550
Wire Bus Line
	1000 6450 7650 6450
Wire Wire Line
	4700 7600 5500 7600
Wire Wire Line
	6700 7600 7550 7600
Wire Wire Line
	1950 7650 2400 7650
Wire Wire Line
	1950 7750 2400 7750
Wire Wire Line
	3600 7650 4000 7650
Wire Wire Line
	3600 7750 4000 7750
Wire Wire Line
	1900 8050 2400 8050
Wire Wire Line
	1900 8150 2400 8150
Wire Wire Line
	1900 8250 2400 8250
Wire Wire Line
	1900 8350 2400 8350
Wire Wire Line
	3600 8050 4050 8050
Wire Wire Line
	3600 8150 4050 8150
Wire Wire Line
	3600 8250 4050 8250
Wire Wire Line
	3600 8350 4050 8350
Wire Bus Line
	4750 7900 4200 7900
Wire Bus Line
	4200 9250 1850 9250
Wire Wire Line
	1950 8450 2400 8450
Wire Wire Line
	1950 8550 2400 8550
Wire Wire Line
	3600 8450 4100 8450
Wire Wire Line
	3600 8550 4100 8550
Wire Wire Line
	7200 4550 7200 4500
Wire Wire Line
	7200 4500 7450 4500
Wire Wire Line
	8200 4500 8200 4550
Wire Wire Line
	7800 4450 7800 4500
Connection ~ 7800 4500
Wire Wire Line
	7700 4550 7700 4500
Connection ~ 7700 4500
Wire Wire Line
	7450 4550 7450 4500
Connection ~ 7450 4500
Wire Wire Line
	7950 4550 7950 4500
Connection ~ 7950 4500
Wire Wire Line
	7200 4950 7200 5000
Wire Wire Line
	7200 5000 7450 5000
Wire Wire Line
	8200 5000 8200 4950
Wire Wire Line
	7950 4950 7950 5000
Connection ~ 7950 5000
Wire Wire Line
	7700 4950 7700 5000
Connection ~ 7700 5000
Wire Wire Line
	7450 4950 7450 5000
Connection ~ 7450 5000
Wire Wire Line
	7800 5050 7800 5000
Connection ~ 7800 5000
Wire Wire Line
	13100 3150 13900 3150
Wire Wire Line
	13100 3250 13850 3250
Wire Wire Line
	13100 3350 13800 3350
Wire Wire Line
	13100 3450 13750 3450
Wire Wire Line
	13100 3550 13700 3550
Wire Wire Line
	13100 3650 13650 3650
Wire Wire Line
	13100 3750 13600 3750
Wire Wire Line
	13100 3850 13550 3850
Wire Wire Line
	13900 3150 13900 4500
Wire Wire Line
	13900 4500 14000 4500
Connection ~ 13900 3150
Wire Wire Line
	13850 3250 13850 4600
Wire Wire Line
	13850 4600 14000 4600
Connection ~ 13850 3250
Wire Wire Line
	13800 3350 13800 4700
Wire Wire Line
	13800 4700 14000 4700
Connection ~ 13800 3350
Wire Wire Line
	13750 3450 13750 4800
Wire Wire Line
	13750 4800 14000 4800
Connection ~ 13750 3450
Wire Wire Line
	13700 3550 13700 4900
Wire Wire Line
	13700 4900 14000 4900
Connection ~ 13700 3550
Wire Wire Line
	13650 3650 13650 5000
Wire Wire Line
	13650 5000 14000 5000
Connection ~ 13650 3650
Wire Wire Line
	13600 3750 13600 5100
Wire Wire Line
	13600 5100 14000 5100
Connection ~ 13600 3750
Wire Wire Line
	13550 3850 13550 5200
Wire Wire Line
	13550 5200 14000 5200
Connection ~ 13550 3850
Wire Wire Line
	12100 3150 11100 3150
Wire Wire Line
	12100 3250 11100 3250
Wire Wire Line
	12100 3350 11100 3350
Wire Wire Line
	12100 3450 11100 3450
Wire Wire Line
	15150 4500 15400 4500
Wire Wire Line
	15150 4600 15400 4600
Wire Wire Line
	15150 4700 15400 4700
Wire Wire Line
	15150 4800 15400 4800
Wire Wire Line
	15150 4900 15400 4900
Wire Wire Line
	15150 5000 15400 5000
Wire Wire Line
	15150 5100 15400 5100
Wire Wire Line
	15150 5200 15400 5200
Wire Bus Line
	11000 1200 9500 1200
Wire Bus Line
	8650 5500 8650 6350
Wire Wire Line
	3600 7850 4000 7850
Wire Wire Line
	3600 7950 4000 7950
Wire Wire Line
	1950 7850 2400 7850
Wire Wire Line
	1950 7950 2400 7950
Wire Wire Line
	13100 4550 13150 4550
Wire Wire Line
	15150 5400 15250 5400
Wire Bus Line
	15350 5500 15350 6550
Wire Wire Line
	9950 3550 10200 3550
Wire Wire Line
	9950 3650 10200 3650
Wire Wire Line
	9950 3750 10200 3750
Wire Wire Line
	9950 3850 10200 3850
Wire Wire Line
	9950 3950 10200 3950
Wire Wire Line
	9950 4050 10200 4050
Wire Wire Line
	9950 4150 10200 4150
Wire Bus Line
	9850 4750 9500 4750
Wire Wire Line
	11350 3550 11400 3550
Wire Wire Line
	11350 3650 11450 3650
Wire Wire Line
	11350 3750 11500 3750
Wire Wire Line
	11350 3850 11550 3850
Wire Wire Line
	11350 3950 11600 3950
Wire Wire Line
	11350 4050 11650 4050
Wire Wire Line
	11350 4150 11700 4150
Wire Wire Line
	11350 4250 11750 4250
Wire Wire Line
	11350 5000 11400 5000
Wire Wire Line
	11400 5000 11400 3550
Connection ~ 11400 3550
Wire Wire Line
	11350 5100 11450 5100
Wire Wire Line
	11450 5100 11450 3650
Connection ~ 11450 3650
Wire Wire Line
	11350 5200 11500 5200
Wire Wire Line
	11500 5200 11500 3750
Connection ~ 11500 3750
Wire Wire Line
	11350 5300 11550 5300
Wire Wire Line
	11550 5300 11550 3850
Connection ~ 11550 3850
Wire Wire Line
	11350 5400 11600 5400
Wire Wire Line
	11600 5400 11600 3950
Connection ~ 11600 3950
Wire Wire Line
	11350 5500 11650 5500
Wire Wire Line
	11650 5500 11650 4050
Connection ~ 11650 4050
Wire Wire Line
	11350 5600 11700 5600
Wire Wire Line
	11700 5600 11700 4150
Connection ~ 11700 4150
Wire Wire Line
	11350 5700 11750 5700
Wire Wire Line
	11750 5700 11750 4250
Connection ~ 11750 4250
Wire Wire Line
	9950 5000 10200 5000
Wire Wire Line
	9950 5100 10200 5100
Wire Wire Line
	9950 5200 10200 5200
Wire Wire Line
	9950 5300 10200 5300
Wire Wire Line
	9950 5400 10200 5400
Wire Wire Line
	9950 5500 10200 5500
Wire Wire Line
	9950 5600 10200 5600
Wire Wire Line
	9950 5700 10200 5700
Wire Wire Line
	9950 4250 10200 4250
Wire Bus Line
	15500 6250 9500 6250
Wire Bus Line
	2900 5800 8100 5800
Wire Bus Line
	8650 6350 15600 6350
Wire Wire Line
	9200 4500 9200 4550
Connection ~ 8200 4500
Wire Wire Line
	9200 5000 9200 4950
Connection ~ 8200 5000
Wire Wire Line
	8950 4950 8950 5000
Connection ~ 8950 5000
Wire Wire Line
	8700 4950 8700 5000
Connection ~ 8700 5000
Wire Wire Line
	8450 4950 8450 5000
Connection ~ 8450 5000
Wire Wire Line
	8450 4550 8450 4500
Connection ~ 8450 4500
Wire Wire Line
	8700 4550 8700 4500
Connection ~ 8700 4500
Wire Wire Line
	8950 4550 8950 4500
Connection ~ 8950 4500
Wire Wire Line
	14150 3000 14150 3850
Connection ~ 14150 3850
Wire Wire Line
	14300 3000 14300 3750
Connection ~ 14300 3750
Wire Wire Line
	14450 3000 14450 3650
Connection ~ 14450 3650
Wire Wire Line
	14600 3000 14600 3550
Connection ~ 14600 3550
Wire Wire Line
	14750 3000 14750 3450
Connection ~ 14750 3450
Wire Wire Line
	14900 3000 14900 3350
Connection ~ 14900 3350
Wire Wire Line
	15050 3000 15050 3250
Connection ~ 15050 3250
Wire Wire Line
	15200 3000 15200 3150
Connection ~ 15200 3150
Wire Wire Line
	14150 2500 14150 2600
Wire Wire Line
	14150 2600 14300 2600
Wire Wire Line
	15200 2600 15200 2700
Wire Wire Line
	14300 2700 14300 2600
Connection ~ 14300 2600
Wire Wire Line
	14450 2700 14450 2600
Connection ~ 14450 2600
Wire Wire Line
	14600 2700 14600 2600
Connection ~ 14600 2600
Wire Wire Line
	14750 2700 14750 2600
Connection ~ 14750 2600
Wire Wire Line
	14900 2700 14900 2600
Connection ~ 14900 2600
Wire Wire Line
	15050 2700 15050 2600
Connection ~ 15050 2600
Connection ~ 14150 2600
Wire Wire Line
	12100 4550 12050 4550
Wire Wire Line
	12050 4550 12050 4700
Wire Wire Line
	12100 4450 11900 4450
Wire Wire Line
	11900 5050 11900 5150
Wire Wire Line
	11900 5150 11950 5150
Wire Wire Line
	12050 5150 12050 5050
Wire Wire Line
	11950 5250 11950 5150
Connection ~ 11950 5150
Wire Wire Line
	13100 4450 13300 4450
Wire Wire Line
	13300 4450 13300 5150
Connection ~ 12050 5150
Wire Bus Line
	15350 6550 8100 6550
Wire Wire Line
	13100 4250 13350 4250
Wire Wire Line
	13350 4250 13350 6800
Wire Wire Line
	13100 4150 13400 4150
Wire Wire Line
	13400 4150 13400 7650
Wire Wire Line
	13100 4050 13450 4050
Wire Wire Line
	13450 4050 13450 6750
Wire Wire Line
	10200 4550 9750 4550
Wire Wire Line
	9750 4550 9750 8450
Wire Wire Line
	10200 4450 9700 4450
Wire Wire Line
	9700 4450 9700 7850
Wire Wire Line
	10200 6000 10100 6000
Wire Wire Line
	10100 6000 10100 8400
Wire Wire Line
	10200 5900 10050 5900
Wire Wire Line
	10050 5900 10050 7950
Wire Wire Line
	15150 5500 15200 5500
Wire Wire Line
	15200 5500 15200 7750
Wire Wire Line
	15200 7750 12350 7750
Wire Wire Line
	13400 7650 12350 7650
Wire Wire Line
	13350 6800 11000 6800
Wire Wire Line
	11000 6800 11000 7650
Wire Wire Line
	11000 7650 11850 7650
Wire Wire Line
	13450 6750 10950 6750
Wire Wire Line
	10950 6750 10950 7750
Wire Wire Line
	10950 7750 11850 7750
Wire Wire Line
	9700 7850 11850 7850
Wire Wire Line
	10050 7950 11850 7950
Wire Wire Line
	10100 8400 13100 8400
Wire Wire Line
	13100 8400 13100 7950
Wire Wire Line
	13100 7950 12350 7950
Wire Wire Line
	9750 8450 13150 8450
Wire Wire Line
	13150 8450 13150 7850
Wire Wire Line
	13150 7850 12350 7850
Wire Wire Line
	10850 7450 11850 7450
Wire Wire Line
	10850 7550 11850 7550
Wire Wire Line
	12350 7450 13600 7450
Wire Wire Line
	12350 7550 13600 7550
Wire Wire Line
	12350 7350 13600 7350
Entry Wire Line
	8100 7500 8200 7600
Entry Wire Line
	8100 7650 8200 7750
Entry Wire Line
	8100 7800 8200 7900
Entry Wire Line
	8100 7950 8200 8050
Entry Wire Line
	8100 8100 8200 8200
Wire Wire Line
	8200 7450 8700 7450
Wire Wire Line
	8200 7600 8700 7600
Wire Wire Line
	8200 7750 8700 7750
Wire Wire Line
	8200 7900 8700 7900
Wire Wire Line
	8200 8050 8700 8050
Wire Wire Line
	8200 8200 8700 8200
Text Label 8250 7450 0    60   ~ 0
~NMI
Text Label 8250 7600 0    60   ~ 0
~CPU_INT
Text Label 8250 7750 0    60   ~ 0
~MEMREQ
Text Label 8250 7900 0    60   ~ 0
~IOREQ
Text Label 8250 8050 0    60   ~ 0
~RD
Text Label 8250 8200 0    60   ~ 0
~WR
$Comp
L Device:R R107
U 1 1 56EFE5DD
P 8850 8350
F 0 "R107" V 8930 8350 50  0000 C CNN
F 1 "10k" V 8850 8350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 8350 50  0001 C CNN
F 3 "" H 8850 8350 50  0000 C CNN
	1    8850 8350
	0    1    1    0   
$EndComp
Entry Wire Line
	8100 8250 8200 8350
Wire Wire Line
	8200 8350 8700 8350
Text Label 8250 8350 0    60   ~ 0
~CPU_WAIT
Wire Wire Line
	9000 7450 9100 7450
Wire Wire Line
	9100 7350 9100 7450
Wire Wire Line
	9100 8350 9000 8350
Wire Wire Line
	9000 8200 9100 8200
Connection ~ 9100 8200
Wire Wire Line
	9000 8050 9100 8050
Connection ~ 9100 8050
Wire Wire Line
	9000 7900 9100 7900
Connection ~ 9100 7900
Wire Wire Line
	9000 7750 9100 7750
Connection ~ 9100 7750
Wire Wire Line
	9000 7600 9100 7600
Connection ~ 9100 7600
$Comp
L power:VCC #PWR020
U 1 1 56EFFD66
P 9100 7350
F 0 "#PWR020" H 9100 7200 50  0001 C CNN
F 1 "VCC" H 9100 7500 50  0000 C CNN
F 2 "" H 9100 7350 50  0000 C CNN
F 3 "" H 9100 7350 50  0000 C CNN
	1    9100 7350
	1    0    0    -1  
$EndComp
Connection ~ 9100 7450
$Comp
L power:GND #PWR021
U 1 1 56F028E3
P 11250 7150
F 0 "#PWR021" H 11250 6900 50  0001 C CNN
F 1 "GND" H 11250 7000 50  0000 C CNN
F 2 "" H 11250 7150 50  0000 C CNN
F 3 "" H 11250 7150 50  0000 C CNN
	1    11250 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 7150 11250 7100
Wire Wire Line
	11250 7100 11400 7100
Wire Wire Line
	11400 7100 11400 7350
Wire Wire Line
	11400 7350 11850 7350
Wire Wire Line
	12250 4650 12250 7000
Wire Wire Line
	12100 4350 11800 4350
Wire Wire Line
	11800 4350 11800 6700
Wire Wire Line
	11800 6700 10900 6700
Wire Wire Line
	10900 6700 10900 8050
Wire Wire Line
	10900 8050 11850 8050
Wire Wire Line
	12250 7000 13350 7000
Wire Wire Line
	13350 7000 13350 8050
Wire Wire Line
	13350 8050 12350 8050
Wire Wire Line
	12200 4700 12200 7000
Wire Wire Line
	11900 4450 11900 4650
Wire Wire Line
	12250 4650 11900 4650
Connection ~ 11900 4650
Wire Wire Line
	12200 4700 12050 4700
Connection ~ 12050 4700
Text Notes 8150 8550 0    60   ~ 0
These lines may float.
$Comp
L Z80-CPU-Board-rescue:CONN_01X02 P102
U 1 1 56F11421
P 13500 1200
F 0 "P102" H 13500 1350 50  0000 C CNN
F 1 "CONN_01X02" V 13600 1200 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 13500 1200 50  0001 C CNN
F 3 "" H 13500 1200 50  0000 C CNN
	1    13500 1200
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 56F119F6
P 13250 1000
F 0 "#PWR022" H 13250 750 50  0001 C CNN
F 1 "GND" H 13250 850 50  0000 C CNN
F 2 "" H 13250 1000 50  0000 C CNN
F 3 "" H 13250 1000 50  0000 C CNN
	1    13250 1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 56F11A58
P 13700 1000
F 0 "#PWR023" H 13700 850 50  0001 C CNN
F 1 "VCC" H 13700 1150 50  0000 C CNN
F 2 "" H 13700 1000 50  0000 C CNN
F 3 "" H 13700 1000 50  0000 C CNN
	1    13700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 1000 13700 1000
Wire Wire Line
	13450 1000 13250 1000
$Comp
L Z80-CPU-Board-rescue:CONN_02X10 P101
U 1 1 56EDB02C
P 12100 7800
F 0 "P101" H 12100 8350 50  0000 C CNN
F 1 "CONN_02X10" V 12100 7800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x10" H 12100 6600 50  0001 C CNN
F 3 "" H 12100 6600 50  0000 C CNN
	1    12100 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 7000 11050 7000
Wire Wire Line
	11050 7000 11050 8150
Wire Wire Line
	11050 8150 11850 8150
Text Label 11100 7650 0    60   ~ 0
~MemMapWE
Text Label 11100 7750 0    60   ~ 0
~MemMapEn
Text Label 11100 7850 0    60   ~ 0
MapTableLd
Text Label 11100 7950 0    60   ~ 0
IOMapTableLd
Text Label 11100 8050 0    60   ~ 0
MemRdTableSel
Text Label 11100 8150 0    60   ~ 0
SysCtrlTableSel
Text Label 13050 7650 2    60   ~ 0
~MemMapOE
Text Label 13050 7750 2    60   ~ 0
~MapTableData
Text Label 13050 7850 2    60   ~ 0
~MapTableOE
Text Label 13050 7950 2    60   ~ 0
~IOMapTableOE
Text Label 13050 8050 2    60   ~ 0
SpareTableSel
NoConn ~ 12350 8150
NoConn ~ 12350 8250
NoConn ~ 11850 8250
Text Label 2150 7850 0    60   ~ 0
MA16
Text Label 2150 7950 0    60   ~ 0
MA18
Text Notes 8150 7050 0    60   ~ 0
Missed ~BUSREQ~ :-(
Wire Wire Line
	7800 4500 7950 4500
Wire Wire Line
	7700 4500 7800 4500
Wire Wire Line
	7450 4500 7700 4500
Wire Wire Line
	7950 4500 8200 4500
Wire Wire Line
	7950 5000 8200 5000
Wire Wire Line
	7700 5000 7800 5000
Wire Wire Line
	7450 5000 7700 5000
Wire Wire Line
	7800 5000 7950 5000
Wire Wire Line
	13900 3150 15200 3150
Wire Wire Line
	13850 3250 15050 3250
Wire Wire Line
	13800 3350 14900 3350
Wire Wire Line
	13750 3450 14750 3450
Wire Wire Line
	13700 3550 14600 3550
Wire Wire Line
	13650 3650 14450 3650
Wire Wire Line
	13600 3750 14300 3750
Wire Wire Line
	13550 3850 14150 3850
Wire Wire Line
	11400 3550 12100 3550
Wire Wire Line
	11450 3650 12100 3650
Wire Wire Line
	11500 3750 12100 3750
Wire Wire Line
	11550 3850 12100 3850
Wire Wire Line
	11600 3950 12100 3950
Wire Wire Line
	11650 4050 12100 4050
Wire Wire Line
	11700 4150 12100 4150
Wire Wire Line
	11750 4250 12100 4250
Wire Wire Line
	8200 4500 8450 4500
Wire Wire Line
	8200 5000 8450 5000
Wire Wire Line
	8950 5000 9200 5000
Wire Wire Line
	8700 5000 8950 5000
Wire Wire Line
	8450 5000 8700 5000
Wire Wire Line
	8450 4500 8700 4500
Wire Wire Line
	8700 4500 8950 4500
Wire Wire Line
	8950 4500 9200 4500
Wire Wire Line
	14150 3850 15500 3850
Wire Wire Line
	14300 3750 15500 3750
Wire Wire Line
	14450 3650 15500 3650
Wire Wire Line
	14600 3550 15500 3550
Wire Wire Line
	14750 3450 15500 3450
Wire Wire Line
	14900 3350 15500 3350
Wire Wire Line
	15050 3250 15500 3250
Wire Wire Line
	15200 3150 15500 3150
Wire Wire Line
	14300 2600 14450 2600
Wire Wire Line
	14450 2600 14600 2600
Wire Wire Line
	14600 2600 14750 2600
Wire Wire Line
	14750 2600 14900 2600
Wire Wire Line
	14900 2600 15050 2600
Wire Wire Line
	15050 2600 15200 2600
Wire Wire Line
	14150 2600 14150 2700
Wire Wire Line
	11950 5150 12050 5150
Wire Wire Line
	12050 5150 13300 5150
Wire Wire Line
	9100 8200 9100 8350
Wire Wire Line
	9100 8050 9100 8200
Wire Wire Line
	9100 7900 9100 8050
Wire Wire Line
	9100 7750 9100 7900
Wire Wire Line
	9100 7600 9100 7750
Wire Wire Line
	9100 7450 9100 7600
Wire Wire Line
	11900 4650 11900 4750
Wire Wire Line
	12050 4700 12050 4750
Wire Notes Line
	9000 7650 8700 7650
Text Notes 9150 8150 0    60   ~ 0
R103-R106\nnot placed!
Text Notes 15400 2800 0    60   ~ 0
R110-R117\nnot placed!
Wire Notes Line
	14050 2700 14050 3000
Wire Notes Line
	14050 3000 15350 3000
Wire Notes Line
	15350 3000 15350 2700
Wire Notes Line
	15350 2700 14050 2700
Wire Notes Line
	8710 7660 8710 8250
Wire Notes Line
	8710 8250 9000 8250
Wire Notes Line
	9000 8250 9000 7650
Wire Wire Line
	5350 2350 6800 2350
Wire Wire Line
	5350 4400 6800 4400
Wire Bus Line
	1800 5250 9500 5250
Wire Bus Line
	600  5500 8650 5500
Wire Bus Line
	1000 700  9400 700 
Wire Wire Line
	4700 7700 5500 7700
Wire Wire Line
	6700 7700 7550 7700
Wire Bus Line
	7650 6450 7650 7600
Wire Bus Line
	4600 6450 4600 7600
Wire Bus Line
	1850 8550 1850 9250
Wire Bus Line
	10750 6350 10750 7450
Wire Bus Line
	4200 7900 4200 9250
Wire Bus Line
	13700 6350 13700 7450
Wire Bus Line
	6250 2250 6250 5500
Wire Bus Line
	1850 5500 1850 7850
Wire Bus Line
	4100 5500 4100 7850
Wire Bus Line
	4150 5250 4150 8250
Wire Bus Line
	1800 5250 1800 8250
Wire Bus Line
	11000 1200 11000 3350
Wire Bus Line
	7400 5800 7400 7700
Wire Bus Line
	3950 6450 3950 7450
Wire Bus Line
	2000 6450 2000 7450
Wire Bus Line
	8100 5800 8100 8250
Wire Bus Line
	9500 3350 9500 6250
Wire Bus Line
	600  2550 600  5500
Wire Bus Line
	4750 5800 4750 7900
Wire Bus Line
	15500 4600 15500 6250
Wire Bus Line
	15600 3250 15600 6350
Wire Bus Line
	3400 2250 3400 5400
Wire Bus Line
	6900 1650 6900 5800
Wire Bus Line
	9850 3650 9850 5600
Wire Bus Line
	5700 1300 5700 5150
Wire Bus Line
	2850 1350 2850 5250
Wire Bus Line
	9500 800  9500 2950
Wire Bus Line
	3850 800  3850 4300
Wire Bus Line
	1000 700  1000 6450
$EndSCHEMATC
