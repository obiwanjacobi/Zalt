EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title "Zalt TTL VGA"
Date "2020-02-09"
Rev "0.1"
Comp "Canned Bytes"
Comment1 "640x480 @60Hz"
Comment2 "512x384 + border"
Comment3 "Horizontal and Vertical Counters"
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS393 U?
U 1 1 5E484BD6
P 6350 1950
AR Path="/5E484BD6" Ref="U?"  Part="1" 
AR Path="/5E451FD0/5E484BD6" Ref="U4"  Part="1" 
F 0 "U4" H 6350 2317 50  0000 C CNN
F 1 "74LS393" H 6350 2226 50  0000 C CNN
F 2 "" H 6350 1950 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 6350 1950 50  0001 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 2 1 5E484BDC
P 6000 4650
AR Path="/5E484BDC" Ref="U?"  Part="2" 
AR Path="/5E451FD0/5E484BDC" Ref="U4"  Part="2" 
F 0 "U4" H 6000 5017 50  0000 C CNN
F 1 "74LS393" H 6000 4926 50  0000 C CNN
F 2 "" H 6000 4650 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 6000 4650 50  0001 C CNN
	2    6000 4650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 1 1 5E484BE2
P 4650 1950
AR Path="/5E484BE2" Ref="U?"  Part="1" 
AR Path="/5E451FD0/5E484BE2" Ref="U3"  Part="1" 
F 0 "U3" H 4650 2317 50  0000 C CNN
F 1 "74LS393" H 4650 2226 50  0000 C CNN
F 2 "" H 4650 1950 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 4650 1950 50  0001 C CNN
	1    4650 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 2 1 5E484BE8
P 4300 4650
AR Path="/5E484BE8" Ref="U?"  Part="2" 
AR Path="/5E451FD0/5E484BE8" Ref="U3"  Part="2" 
F 0 "U3" H 4300 5017 50  0000 C CNN
F 1 "74LS393" H 4300 4926 50  0000 C CNN
F 2 "" H 4300 4650 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 4300 4650 50  0001 C CNN
	2    4300 4650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 1 1 5E484BEE
P 2900 1950
AR Path="/5E484BEE" Ref="U?"  Part="1" 
AR Path="/5E451FD0/5E484BEE" Ref="U2"  Part="1" 
F 0 "U2" H 2900 2317 50  0000 C CNN
F 1 "74LS393" H 2900 2226 50  0000 C CNN
F 2 "" H 2900 1950 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 2900 1950 50  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 2 1 5E484BF4
P 2550 4650
AR Path="/5E484BF4" Ref="U?"  Part="2" 
AR Path="/5E451FD0/5E484BF4" Ref="U2"  Part="2" 
F 0 "U2" H 2550 5017 50  0000 C CNN
F 1 "74LS393" H 2550 4926 50  0000 C CNN
F 2 "" H 2550 4650 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 2550 4650 50  0001 C CNN
	2    2550 4650
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:ACO-xxxMHz X?
U 1 1 5E484BFA
P 1700 1850
AR Path="/5E484BFA" Ref="X?"  Part="1" 
AR Path="/5E451FD0/5E484BFA" Ref="X1"  Part="1" 
F 0 "X1" H 1357 1896 50  0000 R CNN
F 1 "ACO-25.175MHz" H 1357 1805 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 2150 1500 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 1600 1850 50  0001 C CNN
	1    1700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1850 3800 1850
Wire Wire Line
	3400 1950 3800 1950
Wire Wire Line
	3400 2050 3800 2050
Wire Wire Line
	3400 2150 3450 2150
Entry Wire Line
	3800 1850 3900 1750
Entry Wire Line
	3800 1950 3900 1850
Entry Wire Line
	3800 2050 3900 1950
Entry Wire Line
	3800 2150 3900 2050
Wire Wire Line
	3450 2150 3450 2300
Wire Wire Line
	3450 2300 4000 2300
Wire Wire Line
	4000 2300 4000 1850
Wire Wire Line
	4000 1850 4150 1850
Connection ~ 3450 2150
Wire Wire Line
	3450 2150 3800 2150
Wire Wire Line
	2400 2150 2400 2400
Wire Wire Line
	2400 2400 4150 2400
Wire Wire Line
	5850 2400 5850 2150
Wire Wire Line
	4150 2150 4150 2400
Connection ~ 4150 2400
Wire Wire Line
	4150 2400 5850 2400
Text Label 3650 1850 0    50   ~ 0
H0
Text Label 3650 1950 0    50   ~ 0
H1
Text Label 3650 2050 0    50   ~ 0
H2
Text Label 3650 2150 0    50   ~ 0
H3
Wire Wire Line
	6850 1850 7250 1850
Wire Wire Line
	6850 1950 7250 1950
Entry Wire Line
	5450 1850 5550 1750
Entry Wire Line
	5450 1950 5550 1850
Entry Wire Line
	5450 2050 5550 1950
Entry Wire Line
	5450 2150 5550 2050
Entry Wire Line
	7250 1850 7350 1750
Entry Wire Line
	7250 1950 7350 1850
Text Label 5250 1850 0    50   ~ 0
H4
Text Label 5250 1950 0    50   ~ 0
H5
Text Label 5250 2050 0    50   ~ 0
H6
Text Label 5250 2150 0    50   ~ 0
H7
Text Label 7050 1850 0    50   ~ 0
H8
Text Label 7050 1950 0    50   ~ 0
H9
NoConn ~ 6850 2050
NoConn ~ 6850 2150
Wire Bus Line
	3900 1300 5550 1300
Wire Wire Line
	5150 1850 5450 1850
Wire Wire Line
	5150 1950 5450 1950
Wire Wire Line
	5150 2050 5450 2050
Wire Wire Line
	5150 2150 5200 2150
Connection ~ 5550 1300
Wire Bus Line
	5550 1300 7350 1300
Wire Wire Line
	5850 1850 5700 1850
Wire Wire Line
	5700 1850 5700 2300
Wire Wire Line
	5700 2300 5200 2300
Wire Wire Line
	5200 2300 5200 2150
Connection ~ 5200 2150
Wire Wire Line
	5200 2150 5450 2150
Entry Wire Line
	7750 1450 7850 1550
Entry Wire Line
	7750 1550 7850 1650
Entry Wire Line
	7750 1650 7850 1750
Entry Wire Line
	7750 1750 7850 1850
Entry Wire Line
	7750 1850 7850 1950
Entry Wire Line
	7750 1950 7850 2050
Entry Wire Line
	7750 2050 7850 2150
Entry Wire Line
	7750 2150 7850 2250
Entry Wire Line
	7750 2250 7850 2350
Entry Wire Line
	7750 2350 7850 2450
Wire Wire Line
	7850 1550 8150 1550
Wire Wire Line
	7850 1650 8150 1650
Wire Wire Line
	7850 1750 8150 1750
Wire Wire Line
	7850 1850 8150 1850
Wire Wire Line
	7850 1950 8150 1950
Wire Wire Line
	7850 2050 8150 2050
Wire Wire Line
	7850 2150 8150 2150
Wire Wire Line
	7850 2250 8150 2250
Wire Wire Line
	7850 2350 8150 2350
Wire Wire Line
	7850 2450 8150 2450
Text Label 7900 1550 0    50   ~ 0
H0
Text Label 7900 1650 0    50   ~ 0
H1
Text Label 7900 1750 0    50   ~ 0
H2
Text Label 7900 1850 0    50   ~ 0
H3
Text Label 7900 1950 0    50   ~ 0
H4
Text Label 7900 2050 0    50   ~ 0
H5
Text Label 7900 2150 0    50   ~ 0
H6
Text Label 7900 2250 0    50   ~ 0
H7
Text Label 7900 2350 0    50   ~ 0
H8
Text Label 7900 2450 0    50   ~ 0
H9
$Comp
L power:+5V #PWR?
U 1 1 5E484C54
P 8650 1100
AR Path="/5E484C54" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E484C54" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 8650 950 50  0001 C CNN
F 1 "+5V" H 8665 1273 50  0000 C CNN
F 2 "" H 8650 1100 50  0001 C CNN
F 3 "" H 8650 1100 50  0001 C CNN
	1    8650 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E484C5B
P 8700 2850
AR Path="/5E484C5B" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E484C5B" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 8700 2600 50  0001 C CNN
F 1 "GND" H 8705 2677 50  0000 C CNN
F 2 "" H 8700 2850 50  0001 C CNN
F 3 "" H 8700 2850 50  0001 C CNN
	1    8700 2850
	1    0    0    -1  
$EndComp
Text Label 9300 1750 0    50   ~ 0
Astrobe
Text Label 9300 1850 0    50   ~ 0
Hsync
Text Label 9300 1950 0    50   ~ 0
Hblank
Text Label 9300 1450 0    50   ~ 0
Lstrobe
Text Label 9300 1650 0    50   ~ 0
Hclr
Wire Wire Line
	5850 2400 6500 2400
Connection ~ 5850 2400
Text Label 6200 2400 0    50   ~ 0
Hclr
Wire Wire Line
	3050 4550 3450 4550
Wire Wire Line
	3050 4650 3450 4650
Wire Wire Line
	3050 4750 3450 4750
Wire Wire Line
	3050 4850 3100 4850
Wire Wire Line
	4800 4550 5150 4550
Wire Wire Line
	4800 4650 5150 4650
Wire Wire Line
	4800 4750 5150 4750
Wire Wire Line
	4800 4850 4850 4850
Wire Wire Line
	6500 4550 6900 4550
Wire Wire Line
	6500 4650 6900 4650
Entry Wire Line
	3450 4550 3550 4450
Entry Wire Line
	3450 4650 3550 4550
Entry Wire Line
	3450 4750 3550 4650
Entry Wire Line
	3450 4850 3550 4750
Entry Wire Line
	5150 4550 5250 4450
Entry Wire Line
	5150 4650 5250 4550
Entry Wire Line
	5150 4750 5250 4650
Entry Wire Line
	5150 4850 5250 4750
Entry Wire Line
	6900 4550 7000 4450
Entry Wire Line
	6900 4650 7000 4550
Text Label 3300 4550 0    50   ~ 0
V0
Text Label 3300 4650 0    50   ~ 0
V1
Text Label 3300 4750 0    50   ~ 0
V2
Text Label 3300 4850 0    50   ~ 0
V3
Text Label 5000 4550 0    50   ~ 0
V4
Text Label 5000 4650 0    50   ~ 0
V5
Text Label 5000 4750 0    50   ~ 0
V6
Text Label 5000 4850 0    50   ~ 0
V7
Text Label 6700 4550 0    50   ~ 0
V8
Text Label 6700 4650 0    50   ~ 0
V9
Wire Wire Line
	3100 4850 3100 5000
Wire Wire Line
	3100 5000 3650 5000
Wire Wire Line
	3650 5000 3650 4550
Wire Wire Line
	3650 4550 3800 4550
Connection ~ 3100 4850
Wire Wire Line
	3100 4850 3450 4850
Wire Wire Line
	4850 4850 4850 5000
Wire Wire Line
	4850 5000 5350 5000
Wire Wire Line
	5350 5000 5350 4550
Wire Wire Line
	5350 4550 5500 4550
Connection ~ 4850 4850
Wire Wire Line
	4850 4850 5150 4850
Wire Wire Line
	2050 4850 2050 5100
Wire Wire Line
	2050 5100 3800 5100
Wire Wire Line
	5500 5100 5500 4850
Wire Wire Line
	3800 4850 3800 5100
Connection ~ 3800 5100
Wire Wire Line
	3800 5100 5500 5100
Connection ~ 5500 5100
Wire Bus Line
	3550 4000 5250 4000
Connection ~ 5250 4000
Wire Bus Line
	5250 4000 7000 4000
Connection ~ 7000 4000
Wire Bus Line
	7350 1300 7750 1300
Connection ~ 7350 1300
Wire Wire Line
	7800 4200 8150 4200
Wire Wire Line
	7800 4300 8150 4300
Wire Wire Line
	7800 4400 8150 4400
Wire Wire Line
	7800 4500 8150 4500
Wire Wire Line
	7800 4600 8150 4600
Wire Wire Line
	7800 4700 8150 4700
Wire Wire Line
	7800 4800 8150 4800
Wire Wire Line
	7800 4900 8150 4900
Wire Wire Line
	7800 5000 8150 5000
Wire Wire Line
	7800 5100 8150 5100
Text Label 7850 4200 0    50   ~ 0
V0
Text Label 7850 4300 0    50   ~ 0
V1
Text Label 7850 4400 0    50   ~ 0
V2
Text Label 7850 4500 0    50   ~ 0
V3
Text Label 7850 4600 0    50   ~ 0
V4
Text Label 7850 4700 0    50   ~ 0
V5
Text Label 7850 4800 0    50   ~ 0
V6
Text Label 7850 4900 0    50   ~ 0
V7
Text Label 7850 5000 0    50   ~ 0
V8
Text Label 7850 5100 0    50   ~ 0
V9
Entry Wire Line
	7700 4100 7800 4200
Entry Wire Line
	7700 4200 7800 4300
Entry Wire Line
	7700 4300 7800 4400
Entry Wire Line
	7700 4400 7800 4500
Entry Wire Line
	7700 4500 7800 4600
Entry Wire Line
	7700 4600 7800 4700
Entry Wire Line
	7700 4700 7800 4800
Entry Wire Line
	7700 4800 7800 4900
Entry Wire Line
	7700 4900 7800 5000
Entry Wire Line
	7700 5000 7800 5100
Wire Bus Line
	7000 4000 7700 4000
NoConn ~ 6500 4750
NoConn ~ 6500 4850
Wire Wire Line
	9100 4400 9600 4400
Text Label 9350 4300 0    50   ~ 0
Vclr
Text Label 9350 4500 0    50   ~ 0
Vsync
Text Label 9350 4600 0    50   ~ 0
Vblank
Text Label 9350 4400 0    50   ~ 0
VborderTop
Wire Wire Line
	2050 4550 1650 4550
Text Label 1750 4550 0    50   ~ 0
Lstrobe
$Comp
L power:+5V #PWR?
U 1 1 5E484CCC
P 8650 3750
AR Path="/5E484CCC" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E484CCC" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 8650 3600 50  0001 C CNN
F 1 "+5V" H 8665 3923 50  0000 C CNN
F 2 "" H 8650 3750 50  0001 C CNN
F 3 "" H 8650 3750 50  0001 C CNN
	1    8650 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E484CD2
P 8700 5650
AR Path="/5E484CD2" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E484CD2" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 8700 5400 50  0001 C CNN
F 1 "GND" H 8705 5477 50  0000 C CNN
F 2 "" H 8700 5650 50  0001 C CNN
F 3 "" H 8700 5650 50  0001 C CNN
	1    8700 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E484CDA
P 1700 2300
AR Path="/5E484CDA" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E484CDA" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1700 2050 50  0001 C CNN
F 1 "GND" H 1705 2127 50  0000 C CNN
F 2 "" H 1700 2300 50  0001 C CNN
F 3 "" H 1700 2300 50  0001 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E484CE0
P 1700 1400
AR Path="/5E484CE0" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E484CE0" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1700 1250 50  0001 C CNN
F 1 "+5V" H 1715 1573 50  0000 C CNN
F 2 "" H 1700 1400 50  0001 C CNN
F 3 "" H 1700 1400 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1400 1700 1550
Wire Wire Line
	1700 2150 1700 2300
Wire Wire Line
	9100 1550 9550 1550
Wire Wire Line
	9100 1650 9550 1650
Wire Wire Line
	8700 2750 8700 2800
Text Notes 9300 2700 0    50   ~ 0
22V10 used for number of product\n terms per output \n(not for number of pins).
Wire Wire Line
	9100 2050 9550 2050
Text Label 9300 2050 0    50   ~ 0
HborderRight
Text Notes 9300 1300 0    50   ~ 0
Max number of product terms\nis not equal amongst all pins. 
Wire Wire Line
	9100 4500 9600 4500
Wire Wire Line
	9100 4700 9600 4700
Text Label 9350 4700 0    50   ~ 0
VborderBottom
Text Notes 9250 3600 0    50   ~ 0
Left-, Right-, Top- and Bottom-border \nsignals can be used to index a reserved \nregion of the pallette.\nAllowing different colors in the 8 \ndifferent areas in the border.
Text Label 9350 4100 0    50   ~ 0
Aclr
Text Notes 2250 1000 0    50   ~ 0
Horizontal Pixel Counter (10-bits)
Text Notes 2250 3850 0    50   ~ 0
Vertical Line Counter (10-bits)
$Comp
L 74xx:74LS393 U?
U 3 1 5E4990CD
P 2750 6550
AR Path="/5E4990CD" Ref="U?"  Part="3" 
AR Path="/5E451FD0/5E4990CD" Ref="U2"  Part="3" 
F 0 "U2" H 2980 6596 50  0000 L CNN
F 1 "74LS393" H 2980 6505 50  0000 L CNN
F 2 "" H 2750 6550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 2750 6550 50  0001 C CNN
	3    2750 6550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 3 1 5E4990D3
P 3700 6550
AR Path="/5E4990D3" Ref="U?"  Part="3" 
AR Path="/5E451FD0/5E4990D3" Ref="U3"  Part="3" 
F 0 "U3" H 3930 6596 50  0000 L CNN
F 1 "74LS393" H 3930 6505 50  0000 L CNN
F 2 "" H 3700 6550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3700 6550 50  0001 C CNN
	3    3700 6550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 U?
U 3 1 5E4990D9
P 4650 6550
AR Path="/5E4990D9" Ref="U?"  Part="3" 
AR Path="/5E451FD0/5E4990D9" Ref="U4"  Part="3" 
F 0 "U4" H 4880 6596 50  0000 L CNN
F 1 "74LS393" H 4880 6505 50  0000 L CNN
F 2 "" H 4650 6550 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 4650 6550 50  0001 C CNN
	3    4650 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4990DF
P 4350 6100
AR Path="/5E4990DF" Ref="C?"  Part="1" 
AR Path="/5E451FD0/5E4990DF" Ref="C3"  Part="1" 
F 0 "C3" H 4465 6146 50  0000 L CNN
F 1 "100n" H 4465 6055 50  0000 L CNN
F 2 "" H 4388 5950 50  0001 C CNN
F 3 "~" H 4350 6100 50  0001 C CNN
	1    4350 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4990E5
P 3400 6100
AR Path="/5E4990E5" Ref="C?"  Part="1" 
AR Path="/5E451FD0/5E4990E5" Ref="C2"  Part="1" 
F 0 "C2" H 3515 6146 50  0000 L CNN
F 1 "100n" H 3515 6055 50  0000 L CNN
F 2 "" H 3438 5950 50  0001 C CNN
F 3 "~" H 3400 6100 50  0001 C CNN
	1    3400 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4990EB
P 2450 6100
AR Path="/5E4990EB" Ref="C?"  Part="1" 
AR Path="/5E451FD0/5E4990EB" Ref="C1"  Part="1" 
F 0 "C1" H 2565 6146 50  0000 L CNN
F 1 "100n" H 2565 6055 50  0000 L CNN
F 2 "" H 2488 5950 50  0001 C CNN
F 3 "~" H 2450 6100 50  0001 C CNN
	1    2450 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4990F1
P 1100 6500
AR Path="/5E4990F1" Ref="C?"  Part="1" 
AR Path="/5E451FD0/5E4990F1" Ref="C4"  Part="1" 
F 0 "C4" H 1215 6546 50  0000 L CNN
F 1 "100n" H 1215 6455 50  0000 L CNN
F 2 "" H 1138 6350 50  0001 C CNN
F 3 "~" H 1100 6500 50  0001 C CNN
	1    1100 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4990F7
P 1450 6500
AR Path="/5E4990F7" Ref="C?"  Part="1" 
AR Path="/5E451FD0/5E4990F7" Ref="C5"  Part="1" 
F 0 "C5" H 1565 6546 50  0000 L CNN
F 1 "100n" H 1565 6455 50  0000 L CNN
F 2 "" H 1488 6350 50  0001 C CNN
F 3 "~" H 1450 6500 50  0001 C CNN
	1    1450 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E499103
P 3200 7400
AR Path="/5E499103" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E499103" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 3200 7150 50  0001 C CNN
F 1 "GND" H 3205 7227 50  0000 C CNN
F 2 "" H 3200 7400 50  0001 C CNN
F 3 "" H 3200 7400 50  0001 C CNN
	1    3200 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5850 4650 6050
Wire Wire Line
	4350 5950 4350 5850
Wire Wire Line
	3700 6050 3700 5850
Connection ~ 3700 5850
Wire Wire Line
	3400 5950 3400 5850
Wire Wire Line
	2450 6250 2450 7250
Wire Wire Line
	4350 6250 4350 7250
Wire Wire Line
	3700 7050 3700 7250
Connection ~ 3700 7250
Wire Wire Line
	3400 6250 3400 7250
Wire Wire Line
	2750 7050 2750 7250
Connection ~ 2750 7250
Wire Wire Line
	3200 5700 3200 5850
Connection ~ 3200 5850
Wire Wire Line
	3200 7400 3200 7250
Connection ~ 3200 7250
Wire Wire Line
	1100 6650 1100 7250
Wire Wire Line
	1100 7250 1450 7250
Wire Wire Line
	2450 5950 2450 5850
Wire Wire Line
	1100 6350 1100 5850
Wire Wire Line
	1100 5850 1450 5850
Wire Wire Line
	1450 6350 1450 5850
Connection ~ 1450 5850
Wire Wire Line
	1450 6650 1450 7250
Connection ~ 1450 7250
Connection ~ 3400 5850
Connection ~ 3400 7250
Connection ~ 4350 5850
Connection ~ 4350 7250
Wire Wire Line
	3200 5850 3400 5850
Wire Wire Line
	3200 7250 3400 7250
Wire Wire Line
	2750 7250 3200 7250
Wire Wire Line
	4350 5850 4650 5850
Wire Wire Line
	4350 7250 4650 7250
Wire Wire Line
	3700 5850 4350 5850
Wire Wire Line
	3700 7250 4350 7250
Wire Wire Line
	3400 5850 3700 5850
Wire Wire Line
	3400 7250 3700 7250
Connection ~ 2450 5850
Connection ~ 2450 7250
Wire Wire Line
	2450 7250 2750 7250
Wire Wire Line
	1450 5850 2450 5850
Wire Wire Line
	1450 7250 2450 7250
Text HLabel 10250 1450 2    50   Output ~ 0
AddressStrobe
Text HLabel 10100 4100 2    50   Output ~ 0
AddressClear
Wire Wire Line
	9100 4100 10100 4100
Wire Wire Line
	9100 1450 9550 1450
Text HLabel 10100 4200 2    50   Output ~ 0
~AddressEnable
Text Label 9300 1550 0    50   ~ 0
HborderLeft
Wire Wire Line
	9100 4200 10100 4200
Text Label 9350 4200 0    50   ~ 0
Aenable
$Comp
L 22V10:G22V10 U1
U 1 1 5E54A3AB
P 8650 1900
F 0 "U1" H 8625 2731 50  0000 C CNN
F 1 "G22V10" H 8625 2640 50  0000 C CNN
F 2 "" H 8550 2500 50  0001 C CNN
F 3 "" H 8550 2500 50  0001 C CNN
	1    8650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1850 2250 1850
Wire Wire Line
	8150 1450 8000 1450
Wire Wire Line
	8000 1450 8000 1150
Wire Wire Line
	8000 1150 2250 1150
Wire Wire Line
	2250 1150 2250 1850
Connection ~ 2250 1850
Wire Wire Line
	2250 1850 2400 1850
Wire Wire Line
	8650 1100 8650 1250
Wire Wire Line
	10100 1750 10100 1450
Wire Wire Line
	10100 1450 10250 1450
Wire Wire Line
	9100 1750 10100 1750
$Comp
L 22V10:G22V10 U5
U 1 1 5E56F4CE
P 8650 4550
F 0 "U5" H 8625 5381 50  0000 C CNN
F 1 "G22V10" H 8625 5290 50  0000 C CNN
F 2 "" H 8550 5150 50  0001 C CNN
F 3 "" H 8550 5150 50  0001 C CNN
	1    8650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3900 8650 3750
Wire Wire Line
	9100 4300 9600 4300
Wire Wire Line
	5500 5100 6150 5100
Text Label 5850 5100 0    50   ~ 0
Vclr
Wire Wire Line
	9100 1850 9550 1850
Wire Wire Line
	8700 2800 8050 2800
Wire Wire Line
	8050 2800 8050 2550
Wire Wire Line
	8050 2550 8150 2550
Connection ~ 8700 2800
Wire Wire Line
	8700 2800 8700 2850
NoConn ~ 9100 2350
NoConn ~ 9100 2250
NoConn ~ 9100 2150
NoConn ~ 9550 2050
NoConn ~ 9550 1850
NoConn ~ 9550 1550
Wire Wire Line
	2450 5850 2750 5850
Wire Wire Line
	2750 6050 2750 5850
Connection ~ 2750 5850
Wire Wire Line
	2750 5850 3200 5850
$Comp
L power:+5V #PWR?
U 1 1 5E58F05B
P 3200 5700
AR Path="/5E58F05B" Ref="#PWR?"  Part="1" 
AR Path="/5E451FD0/5E58F05B" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3200 5550 50  0001 C CNN
F 1 "+5V" H 3215 5873 50  0000 C CNN
F 2 "" H 3200 5700 50  0001 C CNN
F 3 "" H 3200 5700 50  0001 C CNN
	1    3200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4100 8000 4100
Wire Wire Line
	8000 4100 8000 5200
Wire Wire Line
	8150 5200 8000 5200
Connection ~ 8000 5200
NoConn ~ 9100 5000
NoConn ~ 9100 4900
NoConn ~ 9100 4800
NoConn ~ 9600 4700
NoConn ~ 9600 4500
NoConn ~ 9600 4400
Wire Wire Line
	8700 5600 8000 5600
Wire Wire Line
	8000 5200 8000 5600
Wire Wire Line
	8700 5400 8700 5600
Connection ~ 8700 5600
Wire Wire Line
	8700 5600 8700 5650
Wire Wire Line
	4650 7050 4650 7250
Text HLabel 10250 1950 2    50   Output ~ 0
Hblank
Text HLabel 10100 4600 2    50   Output ~ 0
Vblank
Wire Wire Line
	9100 4600 10100 4600
Wire Wire Line
	9100 1950 10250 1950
Text Notes 6800 3300 0    50   ~ 0
U1 => HorizontalDecoder.pld\nU5 => VerticalDecoder.pld
Wire Bus Line
	7000 4000 7000 4550
Wire Bus Line
	7350 1300 7350 1850
Wire Bus Line
	5250 4000 5250 4750
Wire Bus Line
	3550 4000 3550 4750
Wire Bus Line
	5550 1300 5550 2050
Wire Bus Line
	3900 1300 3900 2050
Wire Bus Line
	7700 4000 7700 5000
Wire Bus Line
	7750 1300 7750 2350
$EndSCHEMATC
