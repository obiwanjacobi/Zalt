EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
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
Entry Wire Line
	1350 2500 1450 2600
Entry Wire Line
	1350 2600 1450 2700
Entry Wire Line
	1350 2700 1450 2800
Entry Wire Line
	1350 2800 1450 2900
Entry Wire Line
	1350 2900 1450 3000
Entry Wire Line
	1350 3000 1450 3100
Entry Wire Line
	1350 3100 1450 3200
Entry Wire Line
	1350 3200 1450 3300
Entry Wire Line
	1350 3300 1450 3400
Wire Wire Line
	1350 1500 950  1500
Wire Wire Line
	1350 1600 950  1600
Wire Wire Line
	1350 1700 950  1700
Wire Wire Line
	1350 1800 950  1800
Wire Wire Line
	1350 1900 950  1900
Wire Wire Line
	1350 2000 950  2000
Wire Wire Line
	1350 2100 950  2100
Wire Wire Line
	1350 2200 950  2200
Wire Wire Line
	1350 2300 950  2300
Wire Wire Line
	1350 2400 950  2400
Wire Wire Line
	1350 2500 950  2500
Wire Wire Line
	1350 2600 950  2600
Wire Wire Line
	1350 2700 950  2700
Wire Wire Line
	1350 2800 950  2800
Wire Wire Line
	1350 2900 950  2900
Wire Wire Line
	1350 3000 950  3000
Wire Wire Line
	1350 3100 950  3100
Wire Wire Line
	1350 3200 950  3200
Wire Wire Line
	1350 3300 950  3300
Text Label 1000 1500 0    50   ~ 0
A0
Text Label 1000 1600 0    50   ~ 0
A1
Text Label 1000 1700 0    50   ~ 0
A2
Text Label 1000 1800 0    50   ~ 0
A3
Text Label 1000 1900 0    50   ~ 0
A4
Text Label 1000 2000 0    50   ~ 0
A5
Text Label 1000 2100 0    50   ~ 0
A6
Text Label 1000 2200 0    50   ~ 0
A7
Text Label 1000 2300 0    50   ~ 0
A8
Text Label 1000 2400 0    50   ~ 0
A9
Text Label 1000 2500 0    50   ~ 0
A10
Text Label 1000 2600 0    50   ~ 0
A11
Text Label 1000 2700 0    50   ~ 0
A12
Text Label 1000 2800 0    50   ~ 0
A13
Text Label 1000 2900 0    50   ~ 0
A14
Text Label 1000 3000 0    50   ~ 0
A15
Text Label 1000 3100 0    50   ~ 0
A16
Text Label 1000 3200 0    50   ~ 0
A17
Text Label 1000 3300 0    50   ~ 0
A18
Text Notes 650  1350 0    50   ~ 0
From VRAM\nAddress Counter
Text Notes 10000 6300 0    50   ~ 0
Mode 0: \ndisengage driving the \nVRAM / CPU access\n\nMode 1: \nA0 selects pixel data\nA8 duplicate line\n\nA1-A7 => A0-A6\nA9-A18 => A7-A16\n\nMode 2:\nA0,A1 selects pixel data\nA9 duplicate line\n\nA2-A8 => A0-A6\nA10-A18 => A7-A15\n\nMode 3:\nA0,A1,A2 selects pixel data\nA10 duplicate line\n\nA3-A9 => A0-A6\nA11-A18 => A7-A14\n
$Comp
L 74xx:74LS245 U?
U 1 1 5EBFC20E
P 3250 2250
F 0 "U?" H 3250 3231 50  0000 C CNN
F 1 "74LS245" H 3250 3140 50  0000 C CNN
F 2 "" H 3250 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3250 2250 50  0001 C CNN
	1    3250 2250
	1    0    0    -1  
$EndComp
Text Label 1250 6850 0    50   ~ 0
VMS0
Text Label 1250 6750 0    50   ~ 0
VMS1
$Comp
L 74xx:74LS139 U?
U 1 1 5EBFD3F8
P 2250 6850
F 0 "U?" H 2250 7217 50  0000 C CNN
F 1 "74LS139" H 2250 7126 50  0000 C CNN
F 2 "" H 2250 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 2250 6850 50  0001 C CNN
	1    2250 6850
	1    0    0    -1  
$EndComp
Entry Wire Line
	9350 1600 9450 1500
Entry Wire Line
	9350 1700 9450 1600
Entry Wire Line
	9350 1800 9450 1700
Entry Wire Line
	9350 1900 9450 1800
Entry Wire Line
	9350 2000 9450 1900
Entry Wire Line
	9350 2100 9450 2000
Entry Wire Line
	9350 2200 9450 2100
Entry Wire Line
	9350 2300 9450 2200
Entry Wire Line
	9350 2400 9450 2300
Entry Wire Line
	9350 2500 9450 2400
Entry Wire Line
	9350 2600 9450 2500
Entry Wire Line
	9350 2700 9450 2600
Entry Wire Line
	9350 2800 9450 2700
Entry Wire Line
	9350 2900 9450 2800
Entry Wire Line
	9350 3000 9450 2900
Entry Wire Line
	9350 3100 9450 3000
Entry Wire Line
	9350 3200 9450 3100
Entry Wire Line
	9350 3300 9450 3200
Entry Wire Line
	9350 3400 9450 3300
Wire Wire Line
	9450 1500 10050 1500
Wire Wire Line
	9450 1600 10050 1600
Wire Wire Line
	9450 1700 10050 1700
Wire Wire Line
	9450 1800 10050 1800
Wire Wire Line
	9450 1900 10050 1900
Wire Wire Line
	9450 2000 10050 2000
Wire Wire Line
	9450 2100 10050 2100
Wire Wire Line
	9450 2200 10050 2200
Wire Wire Line
	9450 2300 10050 2300
Wire Wire Line
	9450 2400 10050 2400
Wire Wire Line
	9450 2500 10050 2500
Wire Wire Line
	9450 2600 10050 2600
Wire Wire Line
	9450 2700 10050 2700
Wire Wire Line
	9450 2800 10050 2800
Wire Wire Line
	9450 2900 10050 2900
Wire Wire Line
	9450 3000 10050 3000
Wire Wire Line
	9450 3100 10050 3100
Wire Wire Line
	9450 3200 10050 3200
Wire Wire Line
	9450 3300 10050 3300
Text Label 9750 1500 0    50   ~ 0
MA0
Text Label 9750 1600 0    50   ~ 0
MA1
Text Label 9750 1700 0    50   ~ 0
MA2
Text Label 9750 1800 0    50   ~ 0
MA3
Text Label 9750 1900 0    50   ~ 0
MA4
Text Label 9750 2000 0    50   ~ 0
MA5
Text Label 9750 2100 0    50   ~ 0
MA6
Text Label 9750 2200 0    50   ~ 0
MA7
Text Label 9750 2300 0    50   ~ 0
MA8
Text Label 9750 2400 0    50   ~ 0
MA9
Text Label 9750 2500 0    50   ~ 0
MA10
Text Label 9750 2600 0    50   ~ 0
MA11
Text Label 9750 2700 0    50   ~ 0
MA12
Text Label 9750 2800 0    50   ~ 0
MA13
Text Label 9750 2900 0    50   ~ 0
MA14
Text Label 9750 3000 0    50   ~ 0
MA15
Text Label 9750 3100 0    50   ~ 0
MA16
Text Label 9750 3200 0    50   ~ 0
MA17
Text Label 9750 3300 0    50   ~ 0
MA18
Text Notes 9700 1250 0    50   ~ 0
To VRAM
Text Label 2900 6750 0    50   ~ 0
~VM0
Text Label 2900 6850 0    50   ~ 0
~VM1
Text Label 2900 6950 0    50   ~ 0
~VM2
Text Label 2900 7050 0    50   ~ 0
~VM3
$Comp
L 74xx:74LS245 U?
U 1 1 5EC06FE1
P 3250 4400
F 0 "U?" H 3250 5381 50  0000 C CNN
F 1 "74LS245" H 3250 5290 50  0000 C CNN
F 2 "" H 3250 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3250 4400 50  0001 C CNN
	1    3250 4400
	1    0    0    -1  
$EndComp
Text Label 2500 2750 0    50   ~ 0
~VM1
Wire Wire Line
	2450 2750 2750 2750
Wire Wire Line
	2450 4900 2750 4900
Text Label 2500 4900 0    50   ~ 0
~VM1
Wire Wire Line
	3750 1750 4100 1750
Wire Wire Line
	3750 1850 4100 1850
Wire Wire Line
	3750 1950 4100 1950
Wire Wire Line
	3750 2050 4100 2050
Wire Wire Line
	3750 2150 4100 2150
Wire Wire Line
	3750 2250 4100 2250
Wire Wire Line
	3750 2350 4100 2350
Wire Wire Line
	3750 2450 4100 2450
Wire Wire Line
	3750 3900 4100 3900
Wire Wire Line
	3750 4000 4100 4000
Wire Wire Line
	3750 4100 4100 4100
Wire Wire Line
	3750 4200 4100 4200
Wire Wire Line
	3750 4300 4100 4300
Wire Wire Line
	3750 4400 4100 4400
Wire Wire Line
	3750 4500 4100 4500
Wire Wire Line
	3750 4600 4100 4600
Text Label 3850 1750 0    50   ~ 0
MA0
Text Label 3850 1850 0    50   ~ 0
MA1
Text Label 3850 1950 0    50   ~ 0
MA2
Text Label 3850 2050 0    50   ~ 0
MA3
Text Label 3850 2150 0    50   ~ 0
MA4
Text Label 3850 2250 0    50   ~ 0
MA5
Text Label 3850 2350 0    50   ~ 0
MA6
Text Label 3850 2450 0    50   ~ 0
MA7
Text Label 3850 3900 0    50   ~ 0
MA8
Text Label 3850 4000 0    50   ~ 0
MA9
Text Label 3850 4100 0    50   ~ 0
MA10
Text Label 3850 4200 0    50   ~ 0
MA11
Text Label 3850 4300 0    50   ~ 0
MA12
Text Label 3850 4400 0    50   ~ 0
MA13
Text Label 3850 4500 0    50   ~ 0
MA14
Text Label 3850 4600 0    50   ~ 0
MA15
$Comp
L 74xx:74LS245 U?
U 1 1 5EC1F4A1
P 5400 2250
F 0 "U?" H 5400 3231 50  0000 C CNN
F 1 "74LS245" H 5400 3140 50  0000 C CNN
F 2 "" H 5400 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5EC1F4A7
P 5400 4400
F 0 "U?" H 5400 5381 50  0000 C CNN
F 1 "74LS245" H 5400 5290 50  0000 C CNN
F 2 "" H 5400 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5400 4400 50  0001 C CNN
	1    5400 4400
	1    0    0    -1  
$EndComp
Text Label 4650 2750 0    50   ~ 0
~VM2
Wire Wire Line
	4600 2750 4900 2750
Wire Wire Line
	4600 4900 4900 4900
Text Label 4650 4900 0    50   ~ 0
~VM2
Wire Wire Line
	5900 1750 6250 1750
Wire Wire Line
	5900 1850 6250 1850
Wire Wire Line
	5900 1950 6250 1950
Wire Wire Line
	5900 2050 6250 2050
Wire Wire Line
	5900 2150 6250 2150
Wire Wire Line
	5900 2250 6250 2250
Wire Wire Line
	5900 2350 6250 2350
Wire Wire Line
	5900 2450 6250 2450
Wire Wire Line
	5900 3900 6250 3900
Wire Wire Line
	5900 4000 6250 4000
Wire Wire Line
	5900 4100 6250 4100
Wire Wire Line
	5900 4200 6250 4200
Wire Wire Line
	5900 4300 6250 4300
Wire Wire Line
	5900 4400 6250 4400
Wire Wire Line
	5900 4500 6250 4500
Wire Wire Line
	5900 4600 6250 4600
Text Label 6000 1750 0    50   ~ 0
MA0
Text Label 6000 1850 0    50   ~ 0
MA1
Text Label 6000 1950 0    50   ~ 0
MA2
Text Label 6000 2050 0    50   ~ 0
MA3
Text Label 6000 2150 0    50   ~ 0
MA4
Text Label 6000 2250 0    50   ~ 0
MA5
Text Label 6000 2350 0    50   ~ 0
MA6
Text Label 6000 2450 0    50   ~ 0
MA7
Text Label 6000 3900 0    50   ~ 0
MA8
Text Label 6000 4000 0    50   ~ 0
MA9
Text Label 6000 4100 0    50   ~ 0
MA10
Text Label 6000 4200 0    50   ~ 0
MA11
Text Label 6000 4300 0    50   ~ 0
MA12
Text Label 6000 4400 0    50   ~ 0
MA13
Text Label 6000 4500 0    50   ~ 0
MA14
Text Label 6000 4600 0    50   ~ 0
MA15
$Comp
L 74xx:74LS245 U?
U 1 1 5EC37D2E
P 7650 2250
F 0 "U?" H 7650 3231 50  0000 C CNN
F 1 "74LS245" H 7650 3140 50  0000 C CNN
F 2 "" H 7650 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7650 2250 50  0001 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5EC37D38
P 7650 4400
F 0 "U?" H 7650 5381 50  0000 C CNN
F 1 "74LS245" H 7650 5290 50  0000 C CNN
F 2 "" H 7650 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7650 4400 50  0001 C CNN
	1    7650 4400
	1    0    0    -1  
$EndComp
Text Label 6900 2750 0    50   ~ 0
~VM3
Wire Wire Line
	6850 2750 7150 2750
Wire Wire Line
	6850 4900 7150 4900
Text Label 6900 4900 0    50   ~ 0
~VM3
Wire Wire Line
	8150 1750 8500 1750
Wire Wire Line
	8150 1850 8500 1850
Wire Wire Line
	8150 1950 8500 1950
Wire Wire Line
	8150 2050 8500 2050
Wire Wire Line
	8150 2150 8500 2150
Wire Wire Line
	8150 2250 8500 2250
Wire Wire Line
	8150 2350 8500 2350
Wire Wire Line
	8150 2450 8500 2450
Wire Wire Line
	8150 3900 8500 3900
Wire Wire Line
	8150 4000 8500 4000
Wire Wire Line
	8150 4100 8500 4100
Wire Wire Line
	8150 4200 8500 4200
Wire Wire Line
	8150 4300 8500 4300
Wire Wire Line
	8150 4400 8500 4400
Wire Wire Line
	8150 4500 8500 4500
Wire Wire Line
	8150 4600 8500 4600
Text Label 8250 1750 0    50   ~ 0
MA0
Text Label 8250 1850 0    50   ~ 0
MA1
Text Label 8250 1950 0    50   ~ 0
MA2
Text Label 8250 2050 0    50   ~ 0
MA3
Text Label 8250 2150 0    50   ~ 0
MA4
Text Label 8250 2250 0    50   ~ 0
MA5
Text Label 8250 2350 0    50   ~ 0
MA6
Text Label 8250 2450 0    50   ~ 0
MA7
Text Label 8250 3900 0    50   ~ 0
MA8
Text Label 8250 4000 0    50   ~ 0
MA9
Text Label 8250 4100 0    50   ~ 0
MA10
Text Label 8250 4200 0    50   ~ 0
MA11
Text Label 8250 4300 0    50   ~ 0
MA12
Text Label 8250 4400 0    50   ~ 0
MA13
Text Label 8250 4500 0    50   ~ 0
MA14
Text Label 8250 4600 0    50   ~ 0
MA15
Text Label 6900 4500 0    50   ~ 0
A18
Text Label 6900 4400 0    50   ~ 0
A17
Text Label 6900 4300 0    50   ~ 0
A16
Text Label 6900 4200 0    50   ~ 0
A15
Text Label 6900 4100 0    50   ~ 0
A14
Text Label 6900 4000 0    50   ~ 0
A13
Text Label 6900 3900 0    50   ~ 0
A12
Wire Wire Line
	7150 4600 6850 4600
Wire Wire Line
	7150 4500 6850 4500
Wire Wire Line
	7150 4400 6850 4400
Wire Wire Line
	7150 4300 6850 4300
Wire Wire Line
	7150 4200 6850 4200
Wire Wire Line
	7150 4100 6850 4100
Wire Wire Line
	7150 4000 6850 4000
Wire Wire Line
	7150 3900 6850 3900
Text Label 4650 4600 0    50   ~ 0
A18
Text Label 4650 4500 0    50   ~ 0
A17
Text Label 4650 4400 0    50   ~ 0
A16
Text Label 4650 4300 0    50   ~ 0
A15
Text Label 4650 4200 0    50   ~ 0
A14
Text Label 4650 4100 0    50   ~ 0
A13
Text Label 4650 4000 0    50   ~ 0
A12
Text Label 4650 3900 0    50   ~ 0
A11
Wire Wire Line
	4900 4600 4600 4600
Wire Wire Line
	4900 4500 4600 4500
Wire Wire Line
	4900 4400 4600 4400
Wire Wire Line
	4900 4300 4600 4300
Wire Wire Line
	4900 4200 4600 4200
Wire Wire Line
	4900 4100 4600 4100
Wire Wire Line
	4900 4000 4600 4000
Wire Wire Line
	4900 3900 4600 3900
Text Label 4650 2450 0    50   ~ 0
A10
Text Label 4650 2350 0    50   ~ 0
A8
Text Label 4650 2250 0    50   ~ 0
A7
Text Label 4650 2150 0    50   ~ 0
A6
Text Label 4650 2050 0    50   ~ 0
A5
Text Label 4650 1950 0    50   ~ 0
A4
Text Label 4650 1850 0    50   ~ 0
A3
Text Label 4650 1750 0    50   ~ 0
A2
Wire Wire Line
	4900 2450 4600 2450
Wire Wire Line
	4900 2350 4600 2350
Wire Wire Line
	4900 2250 4600 2250
Wire Wire Line
	4900 2150 4600 2150
Wire Wire Line
	4900 2050 4600 2050
Wire Wire Line
	4900 1950 4600 1950
Wire Wire Line
	4900 1850 4600 1850
Wire Wire Line
	4900 1750 4600 1750
Text Label 2500 4600 0    50   ~ 0
A17
Text Label 2500 4500 0    50   ~ 0
A16
Text Label 2500 4400 0    50   ~ 0
A15
Text Label 2500 4300 0    50   ~ 0
A14
Text Label 2500 4200 0    50   ~ 0
A13
Text Label 2500 4100 0    50   ~ 0
A12
Text Label 2500 4000 0    50   ~ 0
A11
Text Label 2500 3900 0    50   ~ 0
A10
Wire Wire Line
	2750 4600 2450 4600
Wire Wire Line
	2750 4500 2450 4500
Wire Wire Line
	2750 4400 2450 4400
Wire Wire Line
	2750 4300 2450 4300
Wire Wire Line
	2750 4200 2450 4200
Wire Wire Line
	2750 4100 2450 4100
Wire Wire Line
	2750 4000 2450 4000
Wire Wire Line
	2750 3900 2450 3900
Text Label 2500 2450 0    50   ~ 0
A9
Text Label 2500 2350 0    50   ~ 0
A7
Text Label 2500 2250 0    50   ~ 0
A6
Text Label 2500 2150 0    50   ~ 0
A5
Text Label 2500 2050 0    50   ~ 0
A4
Text Label 2500 1950 0    50   ~ 0
A3
Text Label 2500 1850 0    50   ~ 0
A2
Text Label 2500 1750 0    50   ~ 0
A1
Wire Wire Line
	2750 2450 2450 2450
Wire Wire Line
	2750 2350 2450 2350
Wire Wire Line
	2750 2250 2450 2250
Wire Wire Line
	2750 2150 2450 2150
Wire Wire Line
	2750 2050 2450 2050
Wire Wire Line
	2750 1950 2450 1950
Wire Wire Line
	2750 1850 2450 1850
Wire Wire Line
	2750 1750 2450 1750
Wire Wire Line
	7150 1750 6850 1750
Wire Wire Line
	7150 1850 6850 1850
Wire Wire Line
	7150 1950 6850 1950
Wire Wire Line
	7150 2050 6850 2050
Wire Wire Line
	7150 2150 6850 2150
Wire Wire Line
	7150 2250 6850 2250
Wire Wire Line
	7150 2350 6850 2350
Wire Wire Line
	7150 2450 6850 2450
Text Label 6900 1750 0    50   ~ 0
A3
Text Label 6900 1850 0    50   ~ 0
A4
Text Label 6900 1950 0    50   ~ 0
A5
Text Label 6900 2050 0    50   ~ 0
A6
Text Label 6900 2150 0    50   ~ 0
A7
Text Label 6900 2250 0    50   ~ 0
A8
Text Label 6900 2350 0    50   ~ 0
A9
Text Label 6900 2450 0    50   ~ 0
A11
Text Notes 4000 7350 0    50   ~ 0
Based on Opt0/1 one of 4 Video Modes is selected.\nEverything is based of the 640x480@60Hz timing.\nThe VRAM Address Counter counts visible pixels.\nEach Video Mode maps these pixel addresses to VRAM addresses.\nVM0:off\nVM1: 256x192 - 16 colors (4 bits per pixel)\nVM2: 256x192 - 4 colors (2 bits per pixel)\nVM3: 256x192 - 2 colors (1 bit per pixel)\n
Text HLabel 1200 4300 0    50   Input ~ 0
PixelAddress
Wire Bus Line
	1200 4300 1450 4300
Text HLabel 9950 4050 2    50   Output ~ 0
VideoAddress
Wire Bus Line
	9950 4050 9350 4050
Wire Bus Line
	1000 6250 1850 6250
Wire Bus Line
	1850 6250 1850 5750
Wire Bus Line
	1850 5750 1450 5750
Entry Wire Line
	1000 6650 1100 6750
Entry Wire Line
	1000 6750 1100 6850
Wire Wire Line
	1100 6750 1750 6750
Wire Wire Line
	1100 6850 1750 6850
Text HLabel 1450 5750 0    50   Input ~ 0
VideoModeSelect
Text HLabel 1250 7050 0    50   Input ~ 0
~VideoEnable
Wire Wire Line
	1250 7050 1750 7050
$Comp
L power:GND #PWR?
U 1 1 5EE1A85A
P 3250 3050
F 0 "#PWR?" H 3250 2800 50  0001 C CNN
F 1 "GND" H 3255 2877 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE1B5A9
P 5400 3050
F 0 "#PWR?" H 5400 2800 50  0001 C CNN
F 1 "GND" H 5405 2877 50  0000 C CNN
F 2 "" H 5400 3050 50  0001 C CNN
F 3 "" H 5400 3050 50  0001 C CNN
	1    5400 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE1B802
P 7650 3050
F 0 "#PWR?" H 7650 2800 50  0001 C CNN
F 1 "GND" H 7655 2877 50  0000 C CNN
F 2 "" H 7650 3050 50  0001 C CNN
F 3 "" H 7650 3050 50  0001 C CNN
	1    7650 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE1BFA0
P 7650 5200
F 0 "#PWR?" H 7650 4950 50  0001 C CNN
F 1 "GND" H 7655 5027 50  0000 C CNN
F 2 "" H 7650 5200 50  0001 C CNN
F 3 "" H 7650 5200 50  0001 C CNN
	1    7650 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE1C3BB
P 5400 5200
F 0 "#PWR?" H 5400 4950 50  0001 C CNN
F 1 "GND" H 5405 5027 50  0000 C CNN
F 2 "" H 5400 5200 50  0001 C CNN
F 3 "" H 5400 5200 50  0001 C CNN
	1    5400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE1C6C6
P 3250 5200
F 0 "#PWR?" H 3250 4950 50  0001 C CNN
F 1 "GND" H 3255 5027 50  0000 C CNN
F 2 "" H 3250 5200 50  0001 C CNN
F 3 "" H 3250 5200 50  0001 C CNN
	1    3250 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1CDC0
P 3500 1450
F 0 "#PWR?" H 3500 1300 50  0001 C CNN
F 1 "+5V" H 3515 1623 50  0000 C CNN
F 2 "" H 3500 1450 50  0001 C CNN
F 3 "" H 3500 1450 50  0001 C CNN
	1    3500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1D58A
P 5650 1450
F 0 "#PWR?" H 5650 1300 50  0001 C CNN
F 1 "+5V" H 5665 1623 50  0000 C CNN
F 2 "" H 5650 1450 50  0001 C CNN
F 3 "" H 5650 1450 50  0001 C CNN
	1    5650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1DA12
P 7900 1450
F 0 "#PWR?" H 7900 1300 50  0001 C CNN
F 1 "+5V" H 7915 1623 50  0000 C CNN
F 2 "" H 7900 1450 50  0001 C CNN
F 3 "" H 7900 1450 50  0001 C CNN
	1    7900 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1DD8B
P 7900 3600
F 0 "#PWR?" H 7900 3450 50  0001 C CNN
F 1 "+5V" H 7915 3773 50  0000 C CNN
F 2 "" H 7900 3600 50  0001 C CNN
F 3 "" H 7900 3600 50  0001 C CNN
	1    7900 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1E362
P 5650 3600
F 0 "#PWR?" H 5650 3450 50  0001 C CNN
F 1 "+5V" H 5665 3773 50  0000 C CNN
F 2 "" H 5650 3600 50  0001 C CNN
F 3 "" H 5650 3600 50  0001 C CNN
	1    5650 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1E721
P 3500 3600
F 0 "#PWR?" H 3500 3450 50  0001 C CNN
F 1 "+5V" H 3515 3773 50  0000 C CNN
F 2 "" H 3500 3600 50  0001 C CNN
F 3 "" H 3500 3600 50  0001 C CNN
	1    3500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1EC80
P 2750 2650
F 0 "#PWR?" H 2750 2500 50  0001 C CNN
F 1 "+5V" H 2765 2823 50  0000 C CNN
F 2 "" H 2750 2650 50  0001 C CNN
F 3 "" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1F15C
P 4900 4800
F 0 "#PWR?" H 4900 4650 50  0001 C CNN
F 1 "+5V" H 4915 4973 50  0000 C CNN
F 2 "" H 4900 4800 50  0001 C CNN
F 3 "" H 4900 4800 50  0001 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1F5BE
P 4900 2650
F 0 "#PWR?" H 4900 2500 50  0001 C CNN
F 1 "+5V" H 4915 2823 50  0000 C CNN
F 2 "" H 4900 2650 50  0001 C CNN
F 3 "" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1F94A
P 7150 2650
F 0 "#PWR?" H 7150 2500 50  0001 C CNN
F 1 "+5V" H 7165 2823 50  0000 C CNN
F 2 "" H 7150 2650 50  0001 C CNN
F 3 "" H 7150 2650 50  0001 C CNN
	1    7150 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE1FDB1
P 2750 4800
F 0 "#PWR?" H 2750 4650 50  0001 C CNN
F 1 "+5V" H 2765 4973 50  0000 C CNN
F 2 "" H 2750 4800 50  0001 C CNN
F 3 "" H 2750 4800 50  0001 C CNN
	1    2750 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE20122
P 7150 4800
F 0 "#PWR?" H 7150 4650 50  0001 C CNN
F 1 "+5V" H 7165 4973 50  0000 C CNN
F 2 "" H 7150 4800 50  0001 C CNN
F 3 "" H 7150 4800 50  0001 C CNN
	1    7150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1450 3500 1450
Wire Wire Line
	5400 1450 5650 1450
Wire Wire Line
	7650 1450 7900 1450
Wire Wire Line
	7650 3600 7900 3600
Wire Wire Line
	5400 3600 5650 3600
Wire Wire Line
	3250 3600 3500 3600
Text HLabel 4350 6100 2    50   Output ~ 0
VideoMode
Entry Wire Line
	3250 6850 3350 6750
Entry Wire Line
	3250 6950 3350 6850
Entry Wire Line
	3250 7050 3350 6950
Entry Wire Line
	3250 6750 3350 6650
Wire Wire Line
	2750 6750 3250 6750
Wire Bus Line
	3350 6100 4350 6100
Wire Wire Line
	2750 6850 3250 6850
Wire Wire Line
	2750 6950 3250 6950
Wire Wire Line
	2750 7050 3250 7050
Wire Bus Line
	1000 6250 1000 6750
Wire Bus Line
	3350 6100 3350 6950
Wire Bus Line
	1450 1600 1450 4300
Wire Bus Line
	9350 1600 9350 4050
$EndSCHEMATC
