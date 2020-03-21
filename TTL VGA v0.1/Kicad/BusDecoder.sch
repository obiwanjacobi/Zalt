EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Zalt TTL VGA"
Date "2020-02-09"
Rev "0.1"
Comp "Canned Bytes"
Comment1 "640x480 @60Hz"
Comment2 "512x384 + border"
Comment3 "Video Memory"
Comment4 ""
$EndDescr
Text HLabel 1350 1500 0    50   Input ~ 0
BusAddress
Text HLabel 1350 2400 0    50   Input ~ 0
BusControl
$Comp
L 74xx:74LS139 U8
U 2 1 5E5EF2AC
P 4150 2450
F 0 "U8" H 4150 2817 50  0000 C CNN
F 1 "74LS139" H 4150 2726 50  0000 C CNN
F 2 "" H 4150 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 4150 2450 50  0001 C CNN
	2    4150 2450
	1    0    0    -1  
$EndComp
Text HLabel 9300 4550 2    50   Output ~ 0
~ControlRegisterEnable
Text HLabel 9900 1200 2    50   Output ~ 0
~BusDriverEnable
Text HLabel 7250 850  0    50   Input ~ 0
~AddressEnable
Text Notes 850  5550 0    50   ~ 0
Z80 Bus Interface\n\n~MEMREQ~ & ~WR~ & MA19..MA12 & !~AddressEnable~\n    => Write to VRAM\n~IOREQ~ & ~WR~ & MA7..MA0 \n    => Write to Control Register\n\nControl Register:\n    A17..A12 (6 bits)\n    Options (2 bits)\n
Text Notes 3150 2050 0    50   ~ 0
VRAM Memory Address Window is in the upper region of the 1MB address space. \nThe last two address bits make up a selection option using the 74x139.\n3F000-3FFFF\n7F000-7FFFF\nBF000-BFFFF\nFF000-FFFFF\n\nA12 = 1\nA13 = 1\nA14 = 1\nA15 = 1\nA16 = 1\nA17 = 1\nA18  - A0-139\nA19  - A1-139
Text Notes 3150 800  0    50   ~ 0
~AddressEnable~ = 1\n~MEMRQ~ = 0\n~WR~ = 0
Text Notes 2850 3450 0    50   ~ 0
~IOREQ~ = 0\n~WR~ = 0
Text Notes 2850 4350 0    50   ~ 0
The IO address for the Control Register is hardwired.\nE0-E3\n\nA0 = X\nA1 = X\nA2 = 0\nA3 = 0\nA4 = 0\nA5 = 1\nA6 = 1\nA7 = 1
$Comp
L 74xx:74LS10 U17
U 1 1 5E729378
P 6150 4150
F 0 "U17" H 6150 4475 50  0000 C CNN
F 1 "74LS10" H 6150 4384 50  0000 C CNN
F 2 "" H 6150 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6150 4150 50  0001 C CNN
	1    6150 4150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U17
U 2 1 5E7295F8
P 6150 2950
F 0 "U17" H 6150 3275 50  0000 C CNN
F 1 "74LS10" H 6150 3184 50  0000 C CNN
F 2 "" H 6150 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6150 2950 50  0001 C CNN
	2    6150 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U17
U 3 1 5E72A784
P 6150 3550
F 0 "U17" H 6150 3875 50  0000 C CNN
F 1 "74LS10" H 6150 3784 50  0000 C CNN
F 2 "" H 6150 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6150 3550 50  0001 C CNN
	3    6150 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U17
U 4 1 5E72B9D2
P 1750 6650
F 0 "U17" H 1980 6696 50  0000 L CNN
F 1 "74LS10" H 1980 6605 50  0000 L CNN
F 2 "" H 1750 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 1750 6650 50  0001 C CNN
	4    1750 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U16
U 1 1 5E72DE74
P 7600 2600
F 0 "U16" H 7600 2925 50  0000 C CNN
F 1 "74LS32" H 7600 2834 50  0000 C CNN
F 2 "" H 7600 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7600 2600 50  0001 C CNN
	1    7600 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U16
U 2 1 5E72E692
P 6150 2250
F 0 "U16" H 6150 2575 50  0000 C CNN
F 1 "74LS32" H 6150 2484 50  0000 C CNN
F 2 "" H 6150 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6150 2250 50  0001 C CNN
	2    6150 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U16
U 3 1 5E72F764
P 6900 3250
F 0 "U16" H 6900 3575 50  0000 C CNN
F 1 "74LS32" H 6900 3484 50  0000 C CNN
F 2 "" H 6900 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6900 3250 50  0001 C CNN
	3    6900 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U16
U 4 1 5E730954
P 7800 4550
F 0 "U16" H 7800 4875 50  0000 C CNN
F 1 "74LS32" H 7800 4784 50  0000 C CNN
F 2 "" H 7800 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7800 4550 50  0001 C CNN
	4    7800 4550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U16
U 5 1 5E7317BD
P 2600 6650
F 0 "U16" H 2830 6696 50  0000 L CNN
F 1 "74LS32" H 2830 6605 50  0000 L CNN
F 2 "" H 2600 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2600 6650 50  0001 C CNN
	5    2600 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2850 5400 2850
Wire Wire Line
	5850 2950 5400 2950
Wire Wire Line
	5850 3050 5400 3050
Wire Wire Line
	5850 3450 5400 3450
Wire Wire Line
	5850 3550 5400 3550
Wire Wire Line
	5850 3650 5400 3650
Wire Wire Line
	5850 4050 5400 4050
Wire Wire Line
	5850 4150 5400 4150
Text Label 5500 2950 0    50   ~ 0
MA13
Text Label 5500 3050 0    50   ~ 0
MA14
Text Label 5500 3450 0    50   ~ 0
MA15
Text Label 5500 3550 0    50   ~ 0
MA16
Text Label 5500 3650 0    50   ~ 0
MA17
Wire Wire Line
	6450 2950 6500 2950
Wire Wire Line
	6500 2950 6500 3150
Wire Wire Line
	6500 3150 6600 3150
Wire Wire Line
	6450 3550 6500 3550
Wire Wire Line
	6500 3550 6500 3350
Wire Wire Line
	6500 3350 6600 3350
Wire Wire Line
	5850 2150 5400 2150
Text Label 5500 2150 0    50   ~ 0
~WR
Wire Wire Line
	3650 2350 3200 2350
Wire Wire Line
	3650 2450 3200 2450
Wire Wire Line
	3650 2650 3200 2650
Text Label 3300 2450 0    50   ~ 0
MA18
Text Label 3300 2350 0    50   ~ 0
MA19
Text Label 3300 2650 0    50   ~ 0
~MEMRQ
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5E73F012
P 4850 2350
F 0 "JP1" H 4850 2535 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4850 2444 50  0000 C CNN
F 2 "" H 4850 2350 50  0001 C CNN
F 3 "~" H 4850 2350 50  0001 C CNN
	1    4850 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 5E73FE6D
P 4850 2450
F 0 "JP2" H 4850 2635 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4850 2544 50  0000 C CNN
F 2 "" H 4850 2450 50  0001 C CNN
F 3 "~" H 4850 2450 50  0001 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP3
U 1 1 5E7405F6
P 4850 2550
F 0 "JP3" H 4850 2735 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4850 2644 50  0000 C CNN
F 2 "" H 4850 2550 50  0001 C CNN
F 3 "~" H 4850 2550 50  0001 C CNN
	1    4850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP4
U 1 1 5E740C9C
P 4850 2650
F 0 "JP4" H 4850 2835 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4850 2744 50  0000 C CNN
F 2 "" H 4850 2650 50  0001 C CNN
F 3 "~" H 4850 2650 50  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2350 4750 2350
Wire Wire Line
	4650 2450 4750 2450
Wire Wire Line
	4650 2550 4750 2550
Wire Wire Line
	4650 2650 4750 2650
Wire Wire Line
	4950 2650 5000 2650
Wire Wire Line
	5000 2650 5000 2550
Wire Wire Line
	5000 2350 4950 2350
Wire Wire Line
	4950 2450 5000 2450
Connection ~ 5000 2450
Wire Wire Line
	5000 2450 5000 2350
Wire Wire Line
	4950 2550 5000 2550
Connection ~ 5000 2550
Wire Wire Line
	5000 2550 5000 2450
Wire Wire Line
	5000 2350 5850 2350
Connection ~ 5000 2350
Wire Wire Line
	7300 2700 7250 2700
Wire Wire Line
	7250 2700 7250 3250
Wire Wire Line
	7250 3250 7200 3250
Wire Wire Line
	7900 2600 8200 2600
Wire Wire Line
	5850 4250 5400 4250
Text Label 5500 4050 0    50   ~ 0
MA5
Text Label 5500 4150 0    50   ~ 0
MA6
Text Label 5500 4250 0    50   ~ 0
MA7
$Comp
L 74xx:74LS32 U18
U 1 1 5E74F207
P 5400 4700
F 0 "U18" H 5400 5025 50  0000 C CNN
F 1 "74LS32" H 5400 4934 50  0000 C CNN
F 2 "" H 5400 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5400 4700 50  0001 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U18
U 2 1 5E751B18
P 5400 5250
F 0 "U18" H 5400 5575 50  0000 C CNN
F 1 "74LS32" H 5400 5484 50  0000 C CNN
F 2 "" H 5400 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5400 5250 50  0001 C CNN
	2    5400 5250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U18
U 4 1 5E753738
P 6150 5000
F 0 "U18" H 6150 5325 50  0000 C CNN
F 1 "74LS32" H 6150 5234 50  0000 C CNN
F 2 "" H 6150 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6150 5000 50  0001 C CNN
	4    6150 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U18
U 3 1 5E7560E1
P 6950 4450
F 0 "U18" H 6950 4775 50  0000 C CNN
F 1 "74LS32" H 6950 4684 50  0000 C CNN
F 2 "" H 6950 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6950 4450 50  0001 C CNN
	3    6950 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U18
U 5 1 5E75841D
P 3400 6650
F 0 "U18" H 3630 6696 50  0000 L CNN
F 1 "74LS32" H 3630 6605 50  0000 L CNN
F 2 "" H 3400 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3400 6650 50  0001 C CNN
	5    3400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4600 4650 4600
Wire Wire Line
	5100 4800 4650 4800
Wire Wire Line
	5100 5150 4650 5150
Wire Wire Line
	4650 5350 5100 5350
Text Label 4750 4800 0    50   ~ 0
MA3
Text Label 4750 5150 0    50   ~ 0
MA4
Text Label 4750 5350 0    50   ~ 0
~IOREQ
Text Label 6400 4550 0    50   ~ 0
~WR
Wire Wire Line
	6450 4150 6500 4150
Wire Wire Line
	6500 4150 6500 4350
Wire Wire Line
	6500 4350 6650 4350
Wire Wire Line
	5700 4700 5750 4700
Wire Wire Line
	5750 4700 5750 4900
Wire Wire Line
	5750 4900 5850 4900
Wire Wire Line
	5850 5100 5750 5100
Wire Wire Line
	5750 5100 5750 5250
Wire Wire Line
	5750 5250 5700 5250
Wire Wire Line
	7250 2500 7300 2500
Text Label 5500 2850 0    50   ~ 0
MA12
Wire Bus Line
	1350 2400 1450 2400
Entry Wire Line
	1450 2600 1550 2700
Entry Wire Line
	1450 2700 1550 2800
Entry Wire Line
	1450 2800 1550 2900
Wire Wire Line
	1550 2700 1850 2700
Wire Wire Line
	1550 2800 1850 2800
Wire Wire Line
	1550 2900 1850 2900
Text Label 1600 2700 0    50   ~ 0
~MEMRQ
Text Label 1600 2800 0    50   ~ 0
~IOREQ
Text Label 1600 2900 0    50   ~ 0
~WR
Wire Bus Line
	1350 1500 2000 1500
Entry Wire Line
	2000 1650 2100 1750
Entry Wire Line
	2000 1750 2100 1850
Entry Wire Line
	2000 1850 2100 1950
Entry Wire Line
	2000 1950 2100 2050
Entry Wire Line
	2000 2050 2100 2150
Entry Wire Line
	2000 2150 2100 2250
Entry Wire Line
	2000 2250 2100 2350
Entry Wire Line
	2000 2350 2100 2450
Entry Wire Line
	2000 2450 2100 2550
Entry Wire Line
	2000 2550 2100 2650
Entry Wire Line
	2000 2650 2100 2750
Wire Wire Line
	2100 1750 2500 1750
Wire Wire Line
	2100 1850 2500 1850
Wire Wire Line
	2100 1950 2500 1950
Wire Wire Line
	2100 2050 2500 2050
Wire Wire Line
	2100 2150 2500 2150
Wire Wire Line
	2100 2250 2500 2250
Wire Wire Line
	2100 2350 2500 2350
Wire Wire Line
	2100 2450 2500 2450
Wire Wire Line
	2100 2550 2500 2550
Wire Wire Line
	2100 2650 2500 2650
Wire Wire Line
	2100 2750 2500 2750
Text Label 2200 1750 0    50   ~ 0
MA3
Text Label 2200 1850 0    50   ~ 0
MA4
Text Label 2200 1950 0    50   ~ 0
MA5
Text Label 2200 2050 0    50   ~ 0
MA6
Text Label 2200 2150 0    50   ~ 0
MA7
Text Label 2200 2250 0    50   ~ 0
MA12
Text Label 2200 2350 0    50   ~ 0
MA13
Text Label 2200 2450 0    50   ~ 0
MA14
Text Label 2200 2550 0    50   ~ 0
MA15
Text Label 2200 2650 0    50   ~ 0
MA16
Text Label 2200 2750 0    50   ~ 0
MA17
Wire Wire Line
	1750 6150 1750 5950
Wire Wire Line
	1750 5950 2200 5950
Wire Wire Line
	3400 5950 3400 6150
Wire Wire Line
	2600 6150 2600 5950
Connection ~ 2600 5950
Wire Wire Line
	2600 5950 3000 5950
Wire Wire Line
	1750 7150 1750 7300
Wire Wire Line
	3400 7300 3400 7150
Wire Wire Line
	2600 7150 2600 7300
Connection ~ 2600 7300
$Comp
L power:+5V #PWR035
U 1 1 5E7AF347
P 3000 5950
F 0 "#PWR035" H 3000 5800 50  0001 C CNN
F 1 "+5V" H 3015 6123 50  0000 C CNN
F 2 "" H 3000 5950 50  0001 C CNN
F 3 "" H 3000 5950 50  0001 C CNN
	1    3000 5950
	1    0    0    -1  
$EndComp
Connection ~ 3000 5950
Wire Wire Line
	3000 5950 3400 5950
$Comp
L power:GND #PWR036
U 1 1 5E7B0259
P 3000 7300
F 0 "#PWR036" H 3000 7050 50  0001 C CNN
F 1 "GND" H 3005 7127 50  0000 C CNN
F 2 "" H 3000 7300 50  0001 C CNN
F 3 "" H 3000 7300 50  0001 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
Connection ~ 3000 7300
Wire Wire Line
	3000 7300 3400 7300
$Comp
L Device:C C9
U 1 1 5E7B85F7
P 1400 6200
F 0 "C9" H 1515 6246 50  0000 L CNN
F 1 "C" H 1515 6155 50  0000 L CNN
F 2 "" H 1438 6050 50  0001 C CNN
F 3 "~" H 1400 6200 50  0001 C CNN
	1    1400 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5E7B914A
P 2200 6200
F 0 "C10" H 2315 6246 50  0000 L CNN
F 1 "C" H 2315 6155 50  0000 L CNN
F 2 "" H 2238 6050 50  0001 C CNN
F 3 "~" H 2200 6200 50  0001 C CNN
	1    2200 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E7B947A
P 3000 6200
F 0 "C11" H 3115 6246 50  0000 L CNN
F 1 "C" H 3115 6155 50  0000 L CNN
F 2 "" H 3038 6050 50  0001 C CNN
F 3 "~" H 3000 6200 50  0001 C CNN
	1    3000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6050 1400 5950
Wire Wire Line
	1400 5950 1750 5950
Connection ~ 1750 5950
Wire Wire Line
	1750 7300 1400 7300
Wire Wire Line
	1400 7300 1400 6350
Connection ~ 1750 7300
Wire Wire Line
	2200 6350 2200 7300
Wire Wire Line
	1750 7300 2200 7300
Connection ~ 2200 7300
Wire Wire Line
	2200 7300 2600 7300
Wire Wire Line
	2200 6050 2200 5950
Connection ~ 2200 5950
Wire Wire Line
	2200 5950 2600 5950
Wire Wire Line
	2600 7300 3000 7300
Wire Wire Line
	3000 6350 3000 7300
Wire Wire Line
	3000 5950 3000 6050
Entry Wire Line
	1450 2900 1550 3000
Text Label 1600 3000 0    50   ~ 0
~WAIT
Wire Wire Line
	1550 3000 1850 3000
Wire Wire Line
	6450 2250 7250 2250
Wire Wire Line
	7250 2250 7250 2500
Entry Wire Line
	1450 3000 1550 3100
Wire Wire Line
	1550 3100 1850 3100
Text Label 1600 3100 0    50   ~ 0
BusCLK
Text Label 9900 1750 0    50   ~ 0
~WAIT
Text Notes 5700 650  0    50   ~ 0
TODO: Temporary solution is to stall the CPU when it wants to write to VRAM while the GA is using it...
Wire Wire Line
	6300 4550 6650 4550
Wire Wire Line
	7250 4450 7500 4450
Wire Wire Line
	7500 4650 7300 4650
Wire Wire Line
	6450 5000 7300 5000
Wire Wire Line
	7300 4650 7300 5000
Text Label 4750 4600 0    50   ~ 0
MA2
$Comp
L 74xx:74LS00 U?
U 1 1 5E61D130
P 8750 1200
F 0 "U?" H 8750 1525 50  0000 C CNN
F 1 "74LS00" H 8750 1434 50  0000 C CNN
F 2 "" H 8750 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8750 1200 50  0001 C CNN
	1    8750 1200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 2 1 5E628EB2
P 9450 1750
F 0 "U?" H 9450 2075 50  0000 C CNN
F 1 "74LS00" H 9450 1984 50  0000 C CNN
F 2 "" H 9450 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9450 1750 50  0001 C CNN
	2    9450 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 3 1 5E62BDF3
P 8600 2500
F 0 "U?" H 8600 2825 50  0000 C CNN
F 1 "74LS00" H 8600 2734 50  0000 C CNN
F 2 "" H 8600 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8600 2500 50  0001 C CNN
	3    8600 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 4 1 5E62EF03
P 8650 4550
F 0 "U?" H 8650 4875 50  0000 C CNN
F 1 "74LS00" H 8650 4784 50  0000 C CNN
F 2 "" H 8650 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8650 4550 50  0001 C CNN
	4    8650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2400 8200 2400
Wire Wire Line
	8200 2400 8200 2600
Connection ~ 8200 2600
Wire Wire Line
	8200 2600 8300 2600
Wire Wire Line
	8900 2500 9000 2500
Wire Wire Line
	9000 2500 9000 1850
Wire Wire Line
	9000 1850 8300 1850
Wire Wire Line
	8300 1850 8300 1300
Wire Wire Line
	8300 1300 8450 1300
Wire Wire Line
	8300 850  8300 1100
Wire Wire Line
	8300 1100 8450 1100
Wire Wire Line
	9050 1200 9100 1200
Wire Wire Line
	9750 1750 10150 1750
Wire Wire Line
	7250 850  8300 850 
Wire Wire Line
	9100 1200 9100 1650
Wire Wire Line
	9100 1850 9150 1850
Connection ~ 9100 1200
Wire Wire Line
	9100 1200 9900 1200
Wire Wire Line
	9150 1650 9100 1650
Connection ~ 9100 1650
Wire Wire Line
	9100 1650 9100 1850
Wire Wire Line
	8100 4550 8250 4550
Wire Wire Line
	8250 4550 8250 4450
Wire Wire Line
	8250 4450 8350 4450
Wire Wire Line
	8350 4650 8250 4650
Wire Wire Line
	8250 4650 8250 4550
Connection ~ 8250 4550
Wire Wire Line
	8950 4550 9300 4550
Wire Bus Line
	1450 2400 1450 3000
Wire Bus Line
	2000 1500 2000 3150
$EndSCHEMATC
