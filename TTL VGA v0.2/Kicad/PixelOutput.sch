EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
Title "Zalt TTL VGA"
Date "2020-02-09"
Rev "0.1"
Comp "Canned Bytes"
Comment1 "640x480 @60Hz"
Comment2 "512x384 + border"
Comment3 "Pixel Output"
Comment4 ""
$EndDescr
Text HLabel 1450 2900 0    50   Input ~ 0
VideoData
Text HLabel 7750 1050 0    50   Input ~ 0
Hblank
Text HLabel 7750 1150 0    50   Input ~ 0
Vblank
$Comp
L Logic_Programmable:GAL16V8 U19
U 1 1 5E5571A5
P 9300 2000
F 0 "U19" H 9300 2881 50  0000 C CNN
F 1 "GAL16V8" H 9300 2790 50  0000 C CNN
F 2 "" H 9300 2000 50  0001 C CNN
F 3 "" H 9300 2000 50  0001 C CNN
	1    9300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1600 8450 1600
Wire Wire Line
	8800 1700 8450 1700
Wire Wire Line
	8800 1800 8450 1800
Wire Wire Line
	8800 1900 8450 1900
Wire Wire Line
	8800 2000 8450 2000
Wire Wire Line
	8800 2100 8450 2100
Wire Wire Line
	8800 2200 8450 2200
Wire Wire Line
	8800 2300 8450 2300
Wire Wire Line
	8650 1050 8650 1500
Wire Wire Line
	8650 1500 8800 1500
Wire Wire Line
	7750 1150 8100 1150
Wire Wire Line
	8100 1150 8100 2400
Wire Wire Line
	8100 2400 8800 2400
$Comp
L power:GND #PWR037
U 1 1 5E55AA51
P 9300 2850
F 0 "#PWR037" H 9300 2600 50  0001 C CNN
F 1 "GND" H 9305 2677 50  0000 C CNN
F 2 "" H 9300 2850 50  0001 C CNN
F 3 "" H 9300 2850 50  0001 C CNN
	1    9300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2850 9300 2700
$Comp
L power:+5V #PWR034
U 1 1 5E55AF97
P 9600 1300
F 0 "#PWR034" H 9600 1150 50  0001 C CNN
F 1 "+5V" H 9615 1473 50  0000 C CNN
F 2 "" H 9600 1300 50  0001 C CNN
F 3 "" H 9600 1300 50  0001 C CNN
	1    9600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1300 9300 1300
Wire Wire Line
	9800 1500 10600 1500
Wire Wire Line
	9800 1600 10600 1600
Wire Wire Line
	9800 1700 10600 1700
Wire Wire Line
	9800 1800 10600 1800
Wire Wire Line
	9800 1900 10600 1900
Wire Wire Line
	9800 2000 10600 2000
Wire Wire Line
	9800 2100 10050 2100
Wire Wire Line
	9800 2200 10600 2200
Text Label 10400 1500 0    50   ~ 0
R0
Text Label 10400 1600 0    50   ~ 0
R1
Text Label 10400 1700 0    50   ~ 0
R2
Text Label 10400 1800 0    50   ~ 0
G0
Text Label 10400 1900 0    50   ~ 0
G1
Text Label 10400 2000 0    50   ~ 0
G2
Text Label 10400 2100 0    50   ~ 0
B0
Text Label 10400 2200 0    50   ~ 0
B1
Text Label 10400 2300 0    50   ~ 0
B2
Wire Wire Line
	10050 2100 10050 2300
Connection ~ 10050 2100
Wire Wire Line
	10050 2100 10600 2100
Wire Wire Line
	10050 2300 10600 2300
Text Notes 9050 950  0    50   ~ 0
U19 => BlankMux.pld
$Comp
L UM61512A:UM61512A U?
U 1 1 5EC12233
P 4600 5750
F 0 "U?" H 4575 6765 50  0000 C CNN
F 1 "UM61512A" H 4575 6674 50  0000 C CNN
F 2 "" H 4600 6750 50  0001 C CNN
F 3 "http://www.lupinek.com/soubory/um61512.pdf" H 4600 6750 50  0001 C CNN
	1    4600 5750
	1    0    0    -1  
$EndComp
Text HLabel 1450 1650 0    50   Input ~ 0
VideoMode
Text HLabel 1450 4200 0    50   Input ~ 0
PixelAddress
Text Notes 4200 7450 0    50   ~ 0
          VD0  VD1  VD2  VD3  VD4  VD5  VD6  VD7\nVM1: | PA = 0                   | PA = 1                    \nVM2: | PA = 0   | PA =1    | PA = 2    | PA = 3\nVM3: | PA0  | PA1 | PA2 | PA3 | PA4 | PA5 | PA6 | PA7\n
$Comp
L 74xx:74LS251 U?
U 1 1 5EC21696
P 8050 5100
F 0 "U?" H 8050 6181 50  0000 C CNN
F 1 "74LS251" H 8050 6090 50  0000 C CNN
F 2 "" H 8050 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS251" H 8050 5100 50  0001 C CNN
	1    8050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5000 3750 5000
Wire Wire Line
	4200 5100 3750 5100
Wire Wire Line
	4200 5200 3750 5200
Wire Wire Line
	4200 5300 3750 5300
Wire Wire Line
	4200 5400 3750 5400
Wire Wire Line
	4200 5500 3750 5500
Wire Wire Line
	4200 5600 3750 5600
Text Label 3800 5000 0    50   ~ 0
PalA0
Text Label 3800 5100 0    50   ~ 0
PalA1
Text Label 3800 5200 0    50   ~ 0
PalA2
Text Label 3800 5300 0    50   ~ 0
PalA3
Text Label 3800 5400 0    50   ~ 0
PalA4
Text Label 3800 5500 0    50   ~ 0
PalA5
Text Label 3800 5600 0    50   ~ 0
PalA6
Wire Wire Line
	8550 4500 8900 4500
Text Label 8650 4500 0    50   ~ 0
PalA0
Entry Wire Line
	1700 3100 1800 3200
Entry Wire Line
	1700 3200 1800 3300
Entry Wire Line
	1700 3300 1800 3400
Entry Wire Line
	1700 3400 1800 3500
Entry Wire Line
	1700 3500 1800 3600
Entry Wire Line
	1700 3600 1800 3700
Entry Wire Line
	1700 3700 1800 3800
Entry Wire Line
	1700 3800 1800 3900
Entry Wire Line
	1700 4400 1800 4500
Entry Wire Line
	1700 4500 1800 4600
Entry Wire Line
	1700 4600 1800 4700
Entry Wire Line
	1700 4700 1800 4800
Wire Wire Line
	1800 3200 2150 3200
Wire Wire Line
	1800 3300 2150 3300
Wire Wire Line
	1800 3400 2150 3400
Wire Wire Line
	1800 3500 2150 3500
Wire Wire Line
	1800 4500 2150 4500
Wire Wire Line
	1800 4600 2150 4600
Wire Wire Line
	1800 4700 2150 4700
Wire Wire Line
	1800 4800 2150 4800
Wire Wire Line
	1800 3700 2150 3700
Wire Wire Line
	1800 3800 2150 3800
Wire Wire Line
	1800 3900 2150 3900
Wire Wire Line
	1800 3600 2150 3600
Wire Bus Line
	1700 2900 1450 2900
Wire Bus Line
	1700 4200 1450 4200
Text Label 1850 3200 0    50   ~ 0
VD0
Text Label 1850 3300 0    50   ~ 0
VD1
Text Label 1850 3400 0    50   ~ 0
VD2
Text Label 1850 3500 0    50   ~ 0
VD3
Text Label 1850 3600 0    50   ~ 0
VD4
Text Label 1850 3700 0    50   ~ 0
VD5
Text Label 1850 3800 0    50   ~ 0
VD6
Text Label 1850 3900 0    50   ~ 0
VD7
Text Label 1850 4500 0    50   ~ 0
PA0
Text Label 1850 4600 0    50   ~ 0
PA1
Text Label 1850 4700 0    50   ~ 0
PA2
Text Label 1850 4800 0    50   ~ 0
PA3
Wire Wire Line
	7550 4500 7200 4500
Wire Wire Line
	7550 4600 7200 4600
Wire Wire Line
	7550 4700 7200 4700
Wire Wire Line
	7550 4800 7200 4800
Wire Wire Line
	7550 4900 7200 4900
Wire Wire Line
	7550 5000 7200 5000
Wire Wire Line
	7550 5100 7200 5100
Wire Wire Line
	7550 5200 7200 5200
Wire Wire Line
	7550 5400 7200 5400
Wire Wire Line
	7550 5500 7200 5500
Wire Wire Line
	7550 5600 7200 5600
Text Label 7350 4500 0    50   ~ 0
VD0
Text Label 7350 4600 0    50   ~ 0
VD1
Text Label 7350 4700 0    50   ~ 0
VD2
Text Label 7350 4800 0    50   ~ 0
VD3
Text Label 7350 4900 0    50   ~ 0
VD4
Text Label 7350 5000 0    50   ~ 0
VD5
Text Label 7350 5100 0    50   ~ 0
VD6
Text Label 7350 5200 0    50   ~ 0
VD7
Text Label 7350 5400 0    50   ~ 0
PA0
Text Label 7350 5500 0    50   ~ 0
PA1
Text Label 7350 5600 0    50   ~ 0
PA2
Wire Wire Line
	7550 5800 7200 5800
Text Label 7350 5800 0    50   ~ 0
~VM3
$Comp
L 74xx:74LS253 U?
U 1 1 5EC36489
P 6350 3900
F 0 "U?" H 6350 5081 50  0000 C CNN
F 1 "74LS253" H 6350 4990 50  0000 C CNN
F 2 "" H 6350 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS253" H 6350 3900 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3200 7150 3200
Wire Wire Line
	6850 3900 7150 3900
Wire Wire Line
	5850 3200 5500 3200
Wire Wire Line
	5850 3300 5500 3300
Wire Wire Line
	5850 3400 5500 3400
Wire Wire Line
	5850 3500 5500 3500
Wire Wire Line
	5850 3700 5500 3700
Wire Wire Line
	5850 3900 5500 3900
Wire Wire Line
	5850 4000 5500 4000
Wire Wire Line
	5850 4100 5500 4100
Wire Wire Line
	5850 4200 5500 4200
Wire Wire Line
	5850 4400 5500 4400
Wire Wire Line
	5850 4600 5500 4600
Wire Wire Line
	5850 4700 5500 4700
Text Label 6850 3200 0    50   ~ 0
PalA0
Text Label 6850 3900 0    50   ~ 0
PalA1
Text Label 5600 3200 0    50   ~ 0
VD0
Text Label 5600 3900 0    50   ~ 0
VD1
Text Label 5600 3300 0    50   ~ 0
VD2
Text Label 5600 4000 0    50   ~ 0
VD3
Text Label 5600 3400 0    50   ~ 0
VD4
Text Label 5600 3500 0    50   ~ 0
VD6
Text Label 5600 4100 0    50   ~ 0
VD5
Text Label 5600 4200 0    50   ~ 0
VD7
Text Label 5600 3700 0    50   ~ 0
~VM2
Text Label 5600 4400 0    50   ~ 0
~VM2
Text Label 5600 4600 0    50   ~ 0
PA0
Text Label 5600 4700 0    50   ~ 0
PA1
$Comp
L 74xx:74LS257 U?
U 1 1 5EC3F4E0
P 4600 2150
F 0 "U?" H 4600 3231 50  0000 C CNN
F 1 "74LS257" H 4600 3140 50  0000 C CNN
F 2 "" H 4600 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1550 5500 1550
Wire Wire Line
	5100 1850 5500 1850
Wire Wire Line
	5100 2150 5500 2150
Wire Wire Line
	5100 2450 5500 2450
Wire Wire Line
	4100 1550 3750 1550
Wire Wire Line
	4100 1650 3750 1650
Wire Wire Line
	4100 1850 3750 1850
Wire Wire Line
	4100 1950 3750 1950
Wire Wire Line
	4100 2150 3750 2150
Wire Wire Line
	4100 2250 3750 2250
Wire Wire Line
	4100 2450 3750 2450
Wire Wire Line
	4100 2550 3750 2550
Wire Wire Line
	4100 2750 3750 2750
Wire Wire Line
	4100 2850 3750 2850
Text Label 5150 1550 0    50   ~ 0
PalA0
Text Label 5150 1850 0    50   ~ 0
PalA1
Text Label 5150 2150 0    50   ~ 0
PalA2
Text Label 5150 2450 0    50   ~ 0
PalA3
Text Label 3900 2850 0    50   ~ 0
~VM1
Text Label 3900 2750 0    50   ~ 0
PA0
Text Label 3900 1550 0    50   ~ 0
VD0
Text Label 3900 1850 0    50   ~ 0
VD1
Text Label 3900 2150 0    50   ~ 0
VD2
Text Label 3900 2450 0    50   ~ 0
VD3
Text Label 3900 1650 0    50   ~ 0
VD4
Text Label 3900 1950 0    50   ~ 0
VD5
Text Label 3900 2250 0    50   ~ 0
VD6
Text Label 3900 2550 0    50   ~ 0
VD6
Entry Wire Line
	1700 1850 1800 1950
Entry Wire Line
	1700 1950 1800 2050
Entry Wire Line
	1700 2050 1800 2150
Entry Wire Line
	1700 2150 1800 2250
Wire Bus Line
	1700 1650 1450 1650
Wire Wire Line
	1800 1950 2150 1950
Wire Wire Line
	1800 2050 2150 2050
Wire Wire Line
	1800 2150 2150 2150
Wire Wire Line
	1800 2250 2150 2250
Text Label 1850 1950 0    50   ~ 0
~VM0
Text Label 1850 2050 0    50   ~ 0
~VM1
Text Label 1850 2150 0    50   ~ 0
~VM2
Text Label 1850 2250 0    50   ~ 0
~VM3
Text Notes 4350 6750 0    50   ~ 0
Palette RAM
Wire Wire Line
	7750 1050 8650 1050
Text Label 8500 2300 0    50   ~ 0
PD7
Text Label 8500 2200 0    50   ~ 0
PD6
Text Label 8500 2100 0    50   ~ 0
PD5
Text Label 8500 2000 0    50   ~ 0
PD4
Text Label 8500 1900 0    50   ~ 0
PD3
Text Label 8500 1800 0    50   ~ 0
PD2
Text Label 8500 1700 0    50   ~ 0
PD1
Text Label 8500 1600 0    50   ~ 0
PD0
Wire Wire Line
	4950 5000 5300 5000
Wire Bus Line
	1700 1650 1700 2150
Wire Bus Line
	1700 4200 1700 4700
Wire Bus Line
	1700 2900 1700 3800
Wire Wire Line
	4950 5100 5300 5100
Wire Wire Line
	4950 5200 5300 5200
Wire Wire Line
	4950 5300 5300 5300
Wire Wire Line
	4950 5400 5300 5400
Wire Wire Line
	4950 5500 5300 5500
Wire Wire Line
	4950 5600 5300 5600
Wire Wire Line
	4950 5700 5300 5700
Text Label 5100 5000 0    50   ~ 0
PD0
Text Label 5100 5100 0    50   ~ 0
PD1
Text Label 5100 5200 0    50   ~ 0
PD2
Text Label 5100 5300 0    50   ~ 0
PD3
Text Label 5100 5400 0    50   ~ 0
PD4
Text Label 5100 5500 0    50   ~ 0
PD5
Text Label 5100 5600 0    50   ~ 0
PD6
Text Label 5100 5700 0    50   ~ 0
PD7
$EndSCHEMATC
