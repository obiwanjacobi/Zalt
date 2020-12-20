EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 5
Title "Zalt TTL VGA"
Date "2020-02-09"
Rev "0.1"
Comp "Canned Bytes"
Comment1 "640x480 @60Hz"
Comment2 "512x384 + border"
Comment3 "Video Memory"
Comment4 ""
$EndDescr
Text Notes 3300 1050 0    50   ~ 0
Video Memory Pixel Address Counter (18-bits)
Wire Wire Line
	3350 10450 3350 10700
Wire Wire Line
	1450 10500 1450 10550
Wire Wire Line
	1450 10700 1150 10700
Wire Wire Line
	2400 10450 2400 10700
Wire Wire Line
	2400 10700 2100 10700
$Comp
L Device:C C?
U 1 1 5E4AA6F3
P 1150 9550
AR Path="/5E4AA6F3" Ref="C?"  Part="1" 
AR Path="/5E4A1CB2/5E4AA6F3" Ref="C6"  Part="1" 
F 0 "C6" H 1265 9596 50  0000 L CNN
F 1 "100n" H 1265 9505 50  0000 L CNN
F 2 "" H 1188 9400 50  0001 C CNN
F 3 "~" H 1150 9550 50  0001 C CNN
	1    1150 9550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4AA6F9
P 2100 9550
AR Path="/5E4AA6F9" Ref="C?"  Part="1" 
AR Path="/5E4A1CB2/5E4AA6F9" Ref="C7"  Part="1" 
F 0 "C7" H 2215 9596 50  0000 L CNN
F 1 "100n" H 2215 9505 50  0000 L CNN
F 2 "" H 2138 9400 50  0001 C CNN
F 3 "~" H 2100 9550 50  0001 C CNN
	1    2100 9550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4AA6FF
P 3050 9550
AR Path="/5E4AA6FF" Ref="C?"  Part="1" 
AR Path="/5E4A1CB2/5E4AA6FF" Ref="C8"  Part="1" 
F 0 "C8" H 3165 9596 50  0000 L CNN
F 1 "100n" H 3165 9505 50  0000 L CNN
F 2 "" H 3088 9400 50  0001 C CNN
F 3 "~" H 3050 9550 50  0001 C CNN
	1    3050 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 9400 1150 9300
Wire Wire Line
	1150 9700 1150 10700
Wire Wire Line
	2100 9700 2100 10700
Connection ~ 2100 10700
Wire Wire Line
	2100 9300 2400 9300
Wire Wire Line
	1450 10700 2100 10700
Connection ~ 1450 10700
Wire Wire Line
	3050 9700 3050 10700
Connection ~ 3050 10700
Wire Wire Line
	3050 10700 3350 10700
Wire Wire Line
	3050 9400 3050 9300
Connection ~ 3050 9300
Wire Wire Line
	2400 10700 2750 10700
Connection ~ 2400 10700
Connection ~ 2400 9300
Wire Wire Line
	3050 9300 3350 9300
Wire Wire Line
	2400 9300 2750 9300
$Comp
L power:+5V #PWR032
U 1 1 5E4AC3CF
P 2750 9300
F 0 "#PWR032" H 2750 9150 50  0001 C CNN
F 1 "+5V" H 2765 9473 50  0000 C CNN
F 2 "" H 2750 9300 50  0001 C CNN
F 3 "" H 2750 9300 50  0001 C CNN
	1    2750 9300
	1    0    0    -1  
$EndComp
Connection ~ 2750 9300
Wire Wire Line
	2750 9300 3050 9300
$Comp
L power:GND #PWR033
U 1 1 5E4ACA5A
P 2750 10700
F 0 "#PWR033" H 2750 10450 50  0001 C CNN
F 1 "GND" H 2755 10527 50  0000 C CNN
F 2 "" H 2750 10700 50  0001 C CNN
F 3 "" H 2750 10700 50  0001 C CNN
	1    2750 10700
	1    0    0    -1  
$EndComp
Connection ~ 2750 10700
Wire Wire Line
	2750 10700 3050 10700
Text HLabel 3000 1650 0    50   Input ~ 0
AddressStrobe
Text HLabel 3000 1750 0    50   Input ~ 0
AddressClear
$Comp
L UM61512A:UM61512A U9
U 1 1 5E4CA5E0
P 8250 3950
F 0 "U9" H 8225 4965 50  0000 C CNN
F 1 "UM61512A" H 8225 4874 50  0000 C CNN
F 2 "" H 8250 4950 50  0001 C CNN
F 3 "http://www.lupinek.com/soubory/um61512.pdf" H 8250 4950 50  0001 C CNN
	1    8250 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U8
U 3 1 5E4CF552
P 1450 10050
F 0 "U8" H 1680 10096 50  0000 L CNN
F 1 "74LS139" H 1680 10005 50  0000 L CNN
F 2 "" H 1450 10050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 1450 10050 50  0001 C CNN
	3    1450 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1650 5100 1650
Wire Wire Line
	4600 1750 5100 1750
Wire Wire Line
	4600 1850 5100 1850
Wire Wire Line
	4600 2050 5100 2050
Wire Wire Line
	4600 2150 5100 2150
Wire Wire Line
	4600 2250 5100 2250
Wire Wire Line
	4600 2350 5100 2350
Wire Wire Line
	4600 2450 5100 2450
Text Label 4900 1650 0    50   ~ 0
A2
Text Label 4900 1750 0    50   ~ 0
A3
Text Label 4900 1850 0    50   ~ 0
A4
Text Label 4900 2050 0    50   ~ 0
A5
Text Label 4900 2150 0    50   ~ 0
A6
Text Label 4900 2250 0    50   ~ 0
A7
Text Label 4900 2350 0    50   ~ 0
A8
Text Label 4900 2450 0    50   ~ 0
A0
Text Label 4900 2550 0    50   ~ 0
A1
Wire Wire Line
	6500 1650 7000 1650
Wire Wire Line
	6500 1750 7000 1750
Wire Wire Line
	6500 1850 7000 1850
Wire Wire Line
	6500 1950 7000 1950
Wire Wire Line
	6500 2050 7000 2050
Wire Wire Line
	6500 2150 7000 2150
Wire Wire Line
	6500 2250 7000 2250
Wire Wire Line
	6500 2350 7000 2350
Text Label 6800 2150 0    50   ~ 0
A15
Text Label 6800 2250 0    50   ~ 0
A16
Text Label 6800 2350 0    50   ~ 0
A17
Entry Wire Line
	5100 1650 5200 1550
Entry Wire Line
	5100 1750 5200 1650
Entry Wire Line
	5100 1850 5200 1750
Entry Wire Line
	5100 2050 5200 1950
Entry Wire Line
	5100 2150 5200 2050
Entry Wire Line
	5100 2250 5200 2150
Entry Wire Line
	5100 2350 5200 2250
Entry Wire Line
	5100 2450 5200 2350
Entry Wire Line
	5100 2550 5200 2450
Entry Wire Line
	7000 1650 7100 1550
Entry Wire Line
	7000 1750 7100 1650
Entry Wire Line
	7000 1850 7100 1750
Entry Wire Line
	7000 1950 7100 1850
Entry Wire Line
	7000 2050 7100 1950
Entry Wire Line
	7000 2150 7100 2050
Entry Wire Line
	7000 2250 7100 2150
Entry Wire Line
	7000 2350 7100 2250
Wire Wire Line
	3200 1750 3000 1750
Wire Wire Line
	3650 1750 3200 1750
Connection ~ 3200 1750
Wire Wire Line
	3200 1200 3200 1750
$Comp
L power:+5V #PWR010
U 1 1 5E488B77
P 6300 1450
F 0 "#PWR010" H 6300 1300 50  0001 C CNN
F 1 "+5V" H 6315 1623 50  0000 C CNN
F 2 "" H 6300 1450 50  0001 C CNN
F 3 "" H 6300 1450 50  0001 C CNN
	1    6300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5E4894EE
P 4450 1450
F 0 "#PWR09" H 4450 1300 50  0001 C CNN
F 1 "+5V" H 4465 1623 50  0000 C CNN
F 2 "" H 4450 1450 50  0001 C CNN
F 3 "" H 4450 1450 50  0001 C CNN
	1    4450 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E48BC8A
P 4200 3050
F 0 "#PWR014" H 4200 2800 50  0001 C CNN
F 1 "GND" H 4205 2877 50  0000 C CNN
F 2 "" H 4200 3050 50  0001 C CNN
F 3 "" H 4200 3050 50  0001 C CNN
	1    4200 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E48C5ED
P 6100 2950
F 0 "#PWR015" H 6100 2700 50  0001 C CNN
F 1 "GND" H 6105 2777 50  0000 C CNN
F 2 "" H 6100 2950 50  0001 C CNN
F 3 "" H 6100 2950 50  0001 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E48C8C0
P 3400 2550
F 0 "#PWR011" H 3400 2300 50  0001 C CNN
F 1 "GND" H 3405 2377 50  0000 C CNN
F 2 "" H 3400 2550 50  0001 C CNN
F 3 "" H 3400 2550 50  0001 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E48CE5F
P 5300 2550
F 0 "#PWR012" H 5300 2300 50  0001 C CNN
F 1 "GND" H 5305 2377 50  0000 C CNN
F 2 "" H 5300 2550 50  0001 C CNN
F 3 "" H 5300 2550 50  0001 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1850 5450 1850
Wire Wire Line
	5450 1850 5450 1950
Wire Wire Line
	5450 2650 5550 2650
Wire Wire Line
	5550 1950 5450 1950
Connection ~ 5450 1950
Wire Wire Line
	5450 1950 5450 2050
Wire Wire Line
	5550 2050 5450 2050
Wire Wire Line
	5550 2150 5450 2150
Wire Wire Line
	5550 2250 5450 2250
Wire Wire Line
	5550 2350 5450 2350
Wire Wire Line
	5550 2450 5450 2450
Wire Wire Line
	5550 2550 5450 2550
Connection ~ 5450 2050
Wire Wire Line
	5450 2050 5450 2150
Connection ~ 5450 2150
Wire Wire Line
	5450 2150 5450 2250
Connection ~ 5450 2250
Wire Wire Line
	5450 2250 5450 2350
Connection ~ 5450 2350
Wire Wire Line
	5450 2350 5450 2450
Connection ~ 5450 2450
Wire Wire Line
	5450 2450 5450 2550
Connection ~ 5450 2550
Wire Wire Line
	5450 2550 5450 2650
Wire Wire Line
	5300 2550 5300 2450
Wire Wire Line
	5300 2450 5450 2450
Wire Wire Line
	3650 2650 3550 2650
Wire Wire Line
	3550 2650 3550 2550
Wire Wire Line
	3550 1850 3650 1850
Wire Wire Line
	3650 1950 3550 1950
Connection ~ 3550 1950
Wire Wire Line
	3550 1950 3550 1850
Wire Wire Line
	3650 2050 3550 2050
Wire Wire Line
	3650 2250 3550 2250
Wire Wire Line
	3650 2350 3550 2350
Wire Wire Line
	3650 2450 3550 2450
Wire Wire Line
	3650 2550 3550 2550
Connection ~ 3550 2050
Wire Wire Line
	3550 2050 3550 1950
Wire Wire Line
	3650 2150 3550 2150
Connection ~ 3550 2150
Wire Wire Line
	3550 2150 3550 2050
Connection ~ 3550 2250
Wire Wire Line
	3550 2250 3550 2150
Connection ~ 3550 2350
Wire Wire Line
	3550 2350 3550 2250
Connection ~ 3550 2450
Wire Wire Line
	3550 2450 3550 2350
Connection ~ 3550 2550
Wire Wire Line
	3550 2550 3550 2450
Wire Wire Line
	3400 2550 3400 2450
Wire Wire Line
	3400 2450 3550 2450
Entry Wire Line
	7100 2100 7200 2200
Entry Wire Line
	7100 2200 7200 2300
Wire Wire Line
	7200 2200 7600 2200
Wire Wire Line
	7200 2300 7600 2300
Text Label 7250 2200 0    50   ~ 0
A16
Text Label 7250 2300 0    50   ~ 0
A17
$Comp
L power:GND #PWR013
U 1 1 5E4A0583
P 7550 2600
F 0 "#PWR013" H 7550 2350 50  0001 C CNN
F 1 "GND" H 7555 2427 50  0000 C CNN
F 2 "" H 7550 2600 50  0001 C CNN
F 3 "" H 7550 2600 50  0001 C CNN
	1    7550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2500 7550 2500
Wire Wire Line
	7550 2500 7550 2600
Wire Wire Line
	8600 2200 9050 2200
Wire Wire Line
	8600 2300 9050 2300
Wire Wire Line
	8600 2400 9050 2400
Wire Wire Line
	8600 2500 9050 2500
Wire Wire Line
	7850 3200 7200 3200
Wire Wire Line
	7850 3300 7200 3300
Wire Wire Line
	7850 3400 7200 3400
Wire Wire Line
	7850 3500 7200 3500
Wire Wire Line
	7850 3600 7200 3600
Wire Wire Line
	7850 3700 7200 3700
Wire Wire Line
	7850 3800 7200 3800
Wire Wire Line
	7850 3900 7200 3900
Wire Wire Line
	7850 4000 7200 4000
Wire Wire Line
	7850 4100 7200 4100
Wire Wire Line
	7850 4200 7200 4200
Wire Wire Line
	7850 4300 7200 4300
Wire Wire Line
	7850 4400 7200 4400
Wire Wire Line
	7850 4500 7200 4500
Wire Wire Line
	7850 4600 7200 4600
Wire Wire Line
	7850 4700 7200 4700
Text Label 7300 3200 0    50   ~ 0
A0
Text Label 7300 3300 0    50   ~ 0
A1
Text Label 7300 3400 0    50   ~ 0
A2
Text Label 7300 3500 0    50   ~ 0
A3
Text Label 7300 3600 0    50   ~ 0
A4
Text Label 7300 3700 0    50   ~ 0
A5
Text Label 7300 3800 0    50   ~ 0
A6
Text Label 7300 3900 0    50   ~ 0
A7
Text Label 7300 4000 0    50   ~ 0
A8
Text Label 7300 4100 0    50   ~ 0
A9
Text Label 7300 4200 0    50   ~ 0
A10
Text Label 7300 4300 0    50   ~ 0
A11
Text Label 7300 4400 0    50   ~ 0
A12
Text Label 7300 4500 0    50   ~ 0
A13
Text Label 7300 4600 0    50   ~ 0
A14
Text Label 7300 4700 0    50   ~ 0
A15
Entry Wire Line
	7100 3100 7200 3200
Entry Wire Line
	7100 3200 7200 3300
Entry Wire Line
	7100 3300 7200 3400
Entry Wire Line
	7100 3400 7200 3500
Entry Wire Line
	7100 3500 7200 3600
Entry Wire Line
	7100 3600 7200 3700
Entry Wire Line
	7100 3700 7200 3800
Entry Wire Line
	7100 3800 7200 3900
Entry Wire Line
	7100 3900 7200 4000
Entry Wire Line
	7100 4000 7200 4100
Entry Wire Line
	7100 4100 7200 4200
Entry Wire Line
	7100 4200 7200 4300
Entry Wire Line
	7100 4300 7200 4400
Entry Wire Line
	7100 4400 7200 4500
Entry Wire Line
	7100 4500 7200 4600
Entry Wire Line
	7100 4600 7200 4700
Wire Wire Line
	8600 3200 9150 3200
Wire Wire Line
	8600 3300 9150 3300
Wire Wire Line
	8600 3500 9150 3500
Wire Wire Line
	8600 3600 9150 3600
Wire Wire Line
	8600 3700 9150 3700
Wire Wire Line
	8600 3800 9150 3800
Wire Wire Line
	8600 3900 9150 3900
Text Label 9000 3200 0    50   ~ 0
D0
Text Label 9000 3300 0    50   ~ 0
D1
Text Label 9000 3400 0    50   ~ 0
D2
Text Label 9000 3500 0    50   ~ 0
D3
Text Label 9000 3600 0    50   ~ 0
D4
Text Label 9000 3700 0    50   ~ 0
D5
Text Label 9000 3800 0    50   ~ 0
D6
Text Label 9000 3900 0    50   ~ 0
D7
Entry Wire Line
	9150 3200 9250 3300
Entry Wire Line
	9150 3300 9250 3400
Entry Wire Line
	9150 3400 9250 3500
Entry Wire Line
	9150 3500 9250 3600
Entry Wire Line
	9150 3600 9250 3700
Entry Wire Line
	9150 3700 9250 3800
Entry Wire Line
	9150 3800 9250 3900
Wire Wire Line
	8600 3400 9150 3400
Entry Wire Line
	9150 3900 9250 4000
$Comp
L power:GND #PWR019
U 1 1 5E4D1BCF
P 8650 4750
F 0 "#PWR019" H 8650 4500 50  0001 C CNN
F 1 "GND" H 8655 4577 50  0000 C CNN
F 2 "" H 8650 4750 50  0001 C CNN
F 3 "" H 8650 4750 50  0001 C CNN
	1    8650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4700 8650 4700
Wire Wire Line
	8650 4700 8650 4750
Wire Wire Line
	8600 4200 8700 4200
Wire Wire Line
	8700 4200 8700 4600
Wire Wire Line
	8700 4600 8600 4600
$Comp
L power:+5V #PWR017
U 1 1 5E4DBC76
P 8800 4650
F 0 "#PWR017" H 8800 4500 50  0001 C CNN
F 1 "+5V" H 8815 4823 50  0000 C CNN
F 2 "" H 8800 4650 50  0001 C CNN
F 3 "" H 8800 4650 50  0001 C CNN
	1    8800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4700 8800 4650
Wire Wire Line
	8800 4700 8700 4700
Wire Wire Line
	8700 4700 8700 4600
Connection ~ 8700 4600
Wire Wire Line
	8600 4100 9000 4100
Text Label 8850 4100 0    50   ~ 0
~ME0
Text Label 8850 2200 0    50   ~ 0
~ME0
Text Label 8850 2300 0    50   ~ 0
~ME1
Text Label 8850 2400 0    50   ~ 0
~ME2
Text Label 8850 2500 0    50   ~ 0
~ME3
Connection ~ 1450 10550
Wire Wire Line
	1450 10550 1450 10700
Wire Wire Line
	1450 9300 1450 9550
Wire Wire Line
	4850 4450 5100 4450
Wire Wire Line
	4850 4550 5100 4550
Wire Wire Line
	4850 4650 5100 4650
Wire Wire Line
	4850 4750 5100 4750
Wire Wire Line
	4850 4850 5100 4850
Wire Wire Line
	4850 4950 5100 4950
Wire Wire Line
	4850 5050 5100 5050
Wire Wire Line
	4850 5150 5100 5150
Text Label 4900 4450 0    50   ~ 0
A0
Text Label 4900 4550 0    50   ~ 0
A1
Text Label 4900 4650 0    50   ~ 0
A2
Text Label 4900 4750 0    50   ~ 0
A3
Text Label 4900 4850 0    50   ~ 0
A4
Text Label 4900 4950 0    50   ~ 0
A5
Text Label 4900 5050 0    50   ~ 0
A6
Text Label 4900 5150 0    50   ~ 0
A7
Entry Wire Line
	5100 4450 5200 4350
Entry Wire Line
	5100 4550 5200 4450
Entry Wire Line
	5100 4650 5200 4550
Entry Wire Line
	5100 4750 5200 4650
Entry Wire Line
	5100 4850 5200 4750
Entry Wire Line
	5100 4950 5200 4850
Entry Wire Line
	5100 5050 5200 4950
Entry Wire Line
	5100 5150 5200 5050
Text HLabel 1250 3050 0    50   Input ~ 0
~AddressEnable
Wire Wire Line
	1150 9300 1450 9300
Wire Wire Line
	2100 9400 2100 9300
Wire Wire Line
	1450 9300 2100 9300
Connection ~ 1450 9300
Connection ~ 2100 9300
Text Label 3600 4450 0    50   ~ 0
MA0
Text Label 3600 4550 0    50   ~ 0
MA1
Text Label 3600 4650 0    50   ~ 0
MA2
Text Label 3600 4750 0    50   ~ 0
MA3
Text Label 3600 4850 0    50   ~ 0
MA4
Text Label 3600 4950 0    50   ~ 0
MA5
Text Label 3600 5050 0    50   ~ 0
MA6
Text Label 3600 5150 0    50   ~ 0
MA7
Entry Wire Line
	3400 4350 3500 4450
Entry Wire Line
	3400 4450 3500 4550
Entry Wire Line
	3400 4550 3500 4650
Entry Wire Line
	3400 4650 3500 4750
Entry Wire Line
	3400 4750 3500 4850
Entry Wire Line
	3400 4850 3500 4950
Entry Wire Line
	3400 4950 3500 5050
Entry Wire Line
	3400 5050 3500 5150
Text HLabel 1100 4000 0    50   Input ~ 0
BusAddress
$Comp
L 74xx:74LS374 U12
U 1 1 5E4BB176
P 2100 6900
F 0 "U12" H 2100 7881 50  0000 C CNN
F 1 "74LS374" H 2100 7790 50  0000 C CNN
F 2 "" H 2100 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 2100 6900 50  0001 C CNN
	1    2100 6900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U11
U 1 1 5E4BC68A
P 4350 4950
F 0 "U11" H 4350 5931 50  0000 C CNN
F 1 "74LS245" H 4350 5840 50  0000 C CNN
F 2 "" H 4350 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4350 4950 50  0001 C CNN
	1    4350 4950
	-1   0    0    -1  
$EndComp
Entry Wire Line
	3400 6600 3500 6700
Entry Wire Line
	3400 6500 3500 6600
Entry Wire Line
	3400 6400 3500 6500
Entry Wire Line
	3400 6300 3500 6400
Text Label 3600 6700 0    50   ~ 0
MA11
Text Label 3600 6600 0    50   ~ 0
MA10
Text Label 3600 6500 0    50   ~ 0
MA9
Text Label 3600 6400 0    50   ~ 0
MA8
Entry Wire Line
	5100 6600 5200 6500
Entry Wire Line
	5100 6500 5200 6400
Entry Wire Line
	5100 6400 5200 6300
Text Label 4900 6700 0    50   ~ 0
A11
Text Label 4900 6600 0    50   ~ 0
A10
Text Label 4900 6500 0    50   ~ 0
A9
Text Label 4900 6400 0    50   ~ 0
A8
Wire Wire Line
	4850 6700 5100 6700
Wire Wire Line
	4850 6600 5100 6600
Wire Wire Line
	4850 6500 5100 6500
Wire Wire Line
	4850 6400 5100 6400
$Comp
L 74xx:74LS245 U13
U 1 1 5E54EE14
P 4350 6900
F 0 "U13" H 4350 7881 50  0000 C CNN
F 1 "74LS245" H 4350 7790 50  0000 C CNN
F 2 "" H 4350 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4350 6900 50  0001 C CNN
	1    4350 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 4450 3850 4450
Wire Wire Line
	3500 4550 3850 4550
Wire Wire Line
	3500 4650 3850 4650
Wire Wire Line
	3500 4750 3850 4750
Wire Wire Line
	3500 4850 3850 4850
Wire Wire Line
	3500 4950 3850 4950
Wire Wire Line
	3500 5050 3850 5050
Wire Wire Line
	3500 5150 3850 5150
Wire Wire Line
	3500 6400 3850 6400
Wire Wire Line
	3500 6500 3850 6500
Wire Wire Line
	3500 6600 3850 6600
Wire Wire Line
	3500 6700 3850 6700
Entry Wire Line
	5100 6700 5200 6600
Text HLabel 1100 4950 0    50   Input ~ 0
BusData
Wire Wire Line
	2600 6400 2850 6400
Wire Wire Line
	2600 6500 2850 6500
Wire Wire Line
	2600 6600 2850 6600
Wire Wire Line
	2600 6700 2850 6700
Wire Wire Line
	2600 6800 2850 6800
Wire Wire Line
	2600 6900 2850 6900
Text Label 2650 6400 0    50   ~ 0
A12
Text Label 2650 6500 0    50   ~ 0
A13
Text Label 2650 6600 0    50   ~ 0
A14
Text Label 2650 6700 0    50   ~ 0
A15
Text Label 2650 6800 0    50   ~ 0
A16
Text Label 2650 6900 0    50   ~ 0
A17
Wire Wire Line
	1600 6400 1350 6400
Wire Wire Line
	1600 6500 1350 6500
Wire Wire Line
	1600 6600 1350 6600
Wire Wire Line
	1600 6700 1350 6700
Wire Wire Line
	1600 6800 1350 6800
Wire Wire Line
	1600 6900 1350 6900
Wire Wire Line
	1600 7000 1350 7000
Wire Wire Line
	1600 7100 1350 7100
Text Label 1450 6400 0    50   ~ 0
BD0
Text Label 1450 6500 0    50   ~ 0
BD1
Text Label 1450 6600 0    50   ~ 0
BD2
Text Label 1450 6700 0    50   ~ 0
BD3
Text Label 1450 6800 0    50   ~ 0
BD4
Text Label 1450 6900 0    50   ~ 0
BD5
Text Label 1450 7000 0    50   ~ 0
BD6
Text Label 1450 7100 0    50   ~ 0
BD7
Text HLabel 1100 4550 0    50   Input ~ 0
BusControl
$Sheet
S 1750 4100 1050 900 
U 5E5EE6C3
F0 "Bus Decoder" 50
F1 "BusDecoder.sch" 50
F2 "BusAddress" I L 1750 4450 50 
F3 "BusControl" I L 1750 4550 50 
F4 "~ControlRegisterEnable" O R 2800 4900 50 
F5 "~BusDriverEnable" O R 2800 4800 50 
F6 "~AddressEnable" I L 1750 4250 50 
$EndSheet
Entry Wire Line
	1250 6300 1350 6400
Entry Wire Line
	1250 6400 1350 6500
Entry Wire Line
	1250 6500 1350 6600
Entry Wire Line
	1250 6600 1350 6700
Entry Wire Line
	1250 6700 1350 6800
Entry Wire Line
	1250 6800 1350 6900
Entry Wire Line
	1250 6900 1350 7000
Entry Wire Line
	1250 7000 1350 7100
Wire Wire Line
	1600 7400 1350 7400
Entry Wire Line
	2850 6400 2950 6500
Entry Wire Line
	2850 6500 2950 6600
Entry Wire Line
	2850 6600 2950 6700
Entry Wire Line
	2850 6700 2950 6800
Entry Wire Line
	2850 6800 2950 6900
Entry Wire Line
	2850 6900 2950 7000
NoConn ~ 4850 6800
NoConn ~ 4850 6900
Wire Wire Line
	1100 5600 1100 7300
Wire Wire Line
	1100 7300 1600 7300
$Comp
L power:GND #PWR022
U 1 1 5E68F558
P 4350 5750
F 0 "#PWR022" H 4350 5500 50  0001 C CNN
F 1 "GND" H 4355 5577 50  0000 C CNN
F 2 "" H 4350 5750 50  0001 C CNN
F 3 "" H 4350 5750 50  0001 C CNN
	1    4350 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5E68F868
P 2100 7700
F 0 "#PWR028" H 2100 7450 50  0001 C CNN
F 1 "GND" H 2105 7527 50  0000 C CNN
F 2 "" H 2100 7700 50  0001 C CNN
F 3 "" H 2100 7700 50  0001 C CNN
	1    2100 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 8000 3150 8000
Wire Wire Line
	1350 7400 1350 8000
$Comp
L power:+5V #PWR023
U 1 1 5E69E690
P 2400 6100
F 0 "#PWR023" H 2400 5950 50  0001 C CNN
F 1 "+5V" H 2415 6273 50  0000 C CNN
F 2 "" H 2400 6100 50  0001 C CNN
F 3 "" H 2400 6100 50  0001 C CNN
	1    2400 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5E69ECF1
P 4650 6100
F 0 "#PWR024" H 4650 5950 50  0001 C CNN
F 1 "+5V" H 4665 6273 50  0000 C CNN
F 2 "" H 4650 6100 50  0001 C CNN
F 3 "" H 4650 6100 50  0001 C CNN
	1    4650 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5E69F0D5
P 4650 4150
F 0 "#PWR016" H 4650 4000 50  0001 C CNN
F 1 "+5V" H 4665 4323 50  0000 C CNN
F 2 "" H 4650 4150 50  0001 C CNN
F 3 "" H 4650 4150 50  0001 C CNN
	1    4650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4150 4350 4150
Wire Wire Line
	4650 6100 4350 6100
Wire Wire Line
	2400 6100 2100 6100
Wire Bus Line
	2950 8100 5200 8100
Wire Bus Line
	3400 3700 1350 3700
Text Notes 800  9050 0    50   ~ 0
Z80 interfaces through a 4k Memory Page. \nThe location (bit address) of this memory page is determined by the Bus Decoder.\n\nThe Control Register provides the upper 6 bits A12..A17 of the\nVRAM address and can only be changed through an IO write.\nThe IO address (A0-A7) is also determined by the Bus Decoder.
Wire Wire Line
	3800 6800 3800 6900
Wire Wire Line
	3850 6900 3800 6900
Connection ~ 3800 6900
Wire Wire Line
	3800 6900 3800 7000
Wire Wire Line
	3850 7000 3800 7000
Connection ~ 3800 7000
$Comp
L power:GND #PWR027
U 1 1 5E83CED6
P 3800 7600
F 0 "#PWR027" H 3800 7350 50  0001 C CNN
F 1 "GND" H 3805 7427 50  0000 C CNN
F 2 "" H 3800 7600 50  0001 C CNN
F 3 "" H 3800 7600 50  0001 C CNN
	1    3800 7600
	1    0    0    -1  
$EndComp
NoConn ~ 2600 7000
$Comp
L 74xx:74LS245 U14
U 1 1 5E852F98
P 6450 6900
F 0 "U14" H 6450 7881 50  0000 C CNN
F 1 "74LS245" H 6450 7790 50  0000 C CNN
F 2 "" H 6450 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6450 6900 50  0001 C CNN
	1    6450 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 6400 7250 6400
Wire Wire Line
	6950 6500 7250 6500
Wire Wire Line
	6950 6600 7250 6600
Wire Wire Line
	6950 6700 7250 6700
Wire Wire Line
	6950 6800 7250 6800
Wire Wire Line
	6950 6900 7250 6900
Wire Wire Line
	6950 7000 7250 7000
Wire Wire Line
	6950 7100 7250 7100
Text Label 7050 6400 0    50   ~ 0
D0
Text Label 7050 6500 0    50   ~ 0
D1
Text Label 7050 6600 0    50   ~ 0
D2
Text Label 7050 6700 0    50   ~ 0
D3
Text Label 7050 6800 0    50   ~ 0
D4
Text Label 7050 6900 0    50   ~ 0
D5
Text Label 7050 7000 0    50   ~ 0
D6
Text Label 7050 7100 0    50   ~ 0
D7
Wire Wire Line
	5950 6400 5600 6400
Wire Wire Line
	5950 6500 5600 6500
Wire Wire Line
	5950 6600 5600 6600
Wire Wire Line
	5950 6700 5600 6700
Wire Wire Line
	5950 6800 5600 6800
Wire Wire Line
	5950 6900 5600 6900
Wire Wire Line
	5950 7000 5600 7000
Wire Wire Line
	5950 7100 5600 7100
Text Label 5750 6400 0    50   ~ 0
BD0
Text Label 5750 6500 0    50   ~ 0
BD1
Text Label 5750 6600 0    50   ~ 0
BD2
Text Label 5750 6700 0    50   ~ 0
BD3
Text Label 5750 6800 0    50   ~ 0
BD4
Text Label 5750 6900 0    50   ~ 0
BD5
Text Label 5750 7000 0    50   ~ 0
BD6
Text Label 5750 7100 0    50   ~ 0
BD7
Wire Wire Line
	3150 8000 5350 8000
Connection ~ 3150 8000
$Comp
L power:GND #PWR031
U 1 1 5E89F758
P 6450 7700
F 0 "#PWR031" H 6450 7450 50  0001 C CNN
F 1 "GND" H 6455 7527 50  0000 C CNN
F 2 "" H 6450 7700 50  0001 C CNN
F 3 "" H 6450 7700 50  0001 C CNN
	1    6450 7700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5E89FA28
P 6750 6100
F 0 "#PWR025" H 6750 5950 50  0001 C CNN
F 1 "+5V" H 6765 6273 50  0000 C CNN
F 2 "" H 6750 6100 50  0001 C CNN
F 3 "" H 6750 6100 50  0001 C CNN
	1    6750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6100 6450 6100
Entry Wire Line
	5500 6500 5600 6400
Entry Wire Line
	5500 6600 5600 6500
Entry Wire Line
	5500 6700 5600 6600
Entry Wire Line
	5500 6800 5600 6700
Entry Wire Line
	5500 6900 5600 6800
Entry Wire Line
	5500 7000 5600 6900
Entry Wire Line
	5500 7100 5600 7000
Entry Wire Line
	5500 7200 5600 7100
Wire Bus Line
	5500 8250 1250 8250
Entry Wire Line
	7250 6400 7350 6300
Entry Wire Line
	7250 6500 7350 6400
Entry Wire Line
	7250 6600 7350 6500
Entry Wire Line
	7250 6700 7350 6600
Entry Wire Line
	7250 6800 7350 6700
Entry Wire Line
	7250 6900 7350 6800
Entry Wire Line
	7250 7000 7350 6900
Entry Wire Line
	7250 7100 7350 7000
Wire Bus Line
	7350 5900 9250 5900
Wire Bus Line
	1350 3700 1350 4000
Wire Bus Line
	1100 4000 1350 4000
Connection ~ 1350 4000
Wire Bus Line
	1100 4950 1250 4950
Wire Wire Line
	8600 4400 9100 4400
Wire Wire Line
	9100 8000 7100 8000
Wire Wire Line
	6900 3450 6900 5150
Wire Wire Line
	6900 5150 8950 5150
Wire Wire Line
	8950 5150 8950 4300
Wire Wire Line
	8950 4300 8600 4300
Text HLabel 12450 2650 2    50   Input ~ 0
PixelData
Wire Bus Line
	12450 2650 11700 2650
$Comp
L UM61512A:UM61512A U10
U 1 1 5E5DF240
P 10700 3950
F 0 "U10" H 10675 4965 50  0000 C CNN
F 1 "UM61512A" H 10675 4874 50  0000 C CNN
F 2 "" H 10700 4950 50  0001 C CNN
F 3 "http://www.lupinek.com/soubory/um61512.pdf" H 10700 4950 50  0001 C CNN
	1    10700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3200 9650 3200
Wire Wire Line
	10300 3300 9650 3300
Wire Wire Line
	10300 3400 9650 3400
Wire Wire Line
	10300 3500 9650 3500
Wire Wire Line
	10300 3600 9650 3600
Wire Wire Line
	10300 3700 9650 3700
Wire Wire Line
	10300 3800 9650 3800
Wire Wire Line
	10300 3900 9650 3900
Wire Wire Line
	10300 4000 9650 4000
Wire Wire Line
	10300 4100 9650 4100
Wire Wire Line
	10300 4200 9650 4200
Wire Wire Line
	10300 4300 9650 4300
Wire Wire Line
	10300 4400 9650 4400
Wire Wire Line
	10300 4500 9650 4500
Wire Wire Line
	10300 4600 9650 4600
Wire Wire Line
	10300 4700 9650 4700
Text Label 9750 3200 0    50   ~ 0
A0
Text Label 9750 3300 0    50   ~ 0
A1
Text Label 9750 3400 0    50   ~ 0
A2
Text Label 9750 3500 0    50   ~ 0
A3
Text Label 9750 3600 0    50   ~ 0
A4
Text Label 9750 3700 0    50   ~ 0
A5
Text Label 9750 3800 0    50   ~ 0
A6
Text Label 9750 3900 0    50   ~ 0
A7
Text Label 9750 4000 0    50   ~ 0
A8
Text Label 9750 4100 0    50   ~ 0
A9
Text Label 9750 4200 0    50   ~ 0
A10
Text Label 9750 4300 0    50   ~ 0
A11
Text Label 9750 4400 0    50   ~ 0
A12
Text Label 9750 4500 0    50   ~ 0
A13
Text Label 9750 4600 0    50   ~ 0
A14
Text Label 9750 4700 0    50   ~ 0
A15
Entry Wire Line
	9550 3100 9650 3200
Entry Wire Line
	9550 3200 9650 3300
Entry Wire Line
	9550 3300 9650 3400
Entry Wire Line
	9550 3400 9650 3500
Entry Wire Line
	9550 3500 9650 3600
Entry Wire Line
	9550 3600 9650 3700
Entry Wire Line
	9550 3700 9650 3800
Entry Wire Line
	9550 3800 9650 3900
Entry Wire Line
	9550 3900 9650 4000
Entry Wire Line
	9550 4000 9650 4100
Entry Wire Line
	9550 4100 9650 4200
Entry Wire Line
	9550 4200 9650 4300
Entry Wire Line
	9550 4300 9650 4400
Entry Wire Line
	9550 4400 9650 4500
Entry Wire Line
	9550 4500 9650 4600
Entry Wire Line
	9550 4600 9650 4700
Wire Wire Line
	11050 3200 11600 3200
Wire Wire Line
	11050 3300 11600 3300
Wire Wire Line
	11050 3500 11600 3500
Wire Wire Line
	11050 3600 11600 3600
Wire Wire Line
	11050 3700 11600 3700
Wire Wire Line
	11050 3800 11600 3800
Wire Wire Line
	11050 3900 11600 3900
Text Label 11450 3200 0    50   ~ 0
D0
Text Label 11450 3300 0    50   ~ 0
D1
Text Label 11450 3400 0    50   ~ 0
D2
Text Label 11450 3500 0    50   ~ 0
D3
Text Label 11450 3600 0    50   ~ 0
D4
Text Label 11450 3700 0    50   ~ 0
D5
Text Label 11450 3800 0    50   ~ 0
D6
Text Label 11450 3900 0    50   ~ 0
D7
Entry Wire Line
	11600 3200 11700 3300
Entry Wire Line
	11600 3300 11700 3400
Entry Wire Line
	11600 3400 11700 3500
Entry Wire Line
	11600 3500 11700 3600
Entry Wire Line
	11600 3600 11700 3700
Entry Wire Line
	11600 3700 11700 3800
Entry Wire Line
	11600 3800 11700 3900
Wire Wire Line
	11050 3400 11600 3400
Entry Wire Line
	11600 3900 11700 4000
$Comp
L power:GND #PWR020
U 1 1 5E5DF292
P 11100 4750
F 0 "#PWR020" H 11100 4500 50  0001 C CNN
F 1 "GND" H 11105 4577 50  0000 C CNN
F 2 "" H 11100 4750 50  0001 C CNN
F 3 "" H 11100 4750 50  0001 C CNN
	1    11100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 4700 11100 4700
Wire Wire Line
	11100 4700 11100 4750
Wire Wire Line
	11050 4200 11150 4200
Wire Wire Line
	11150 4200 11150 4600
Wire Wire Line
	11150 4600 11050 4600
$Comp
L power:+5V #PWR018
U 1 1 5E5DF2A1
P 11250 4650
F 0 "#PWR018" H 11250 4500 50  0001 C CNN
F 1 "+5V" H 11265 4823 50  0000 C CNN
F 2 "" H 11250 4650 50  0001 C CNN
F 3 "" H 11250 4650 50  0001 C CNN
	1    11250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 4700 11250 4650
Wire Wire Line
	11250 4700 11150 4700
Wire Wire Line
	11150 4700 11150 4600
Connection ~ 11150 4600
Wire Wire Line
	11050 4100 11450 4100
Text Label 11300 4100 0    50   ~ 0
~ME1
Wire Wire Line
	11050 4400 11550 4400
Wire Wire Line
	11550 4400 11550 8000
Wire Wire Line
	11400 5150 11400 4300
Wire Wire Line
	11400 4300 11050 4300
Connection ~ 11700 2650
Wire Bus Line
	11700 2650 9250 2650
Wire Wire Line
	8950 5150 11400 5150
Connection ~ 8950 5150
Wire Wire Line
	9100 4400 9100 8000
Wire Wire Line
	11550 8000 9100 8000
Connection ~ 9100 8000
Wire Wire Line
	3150 4800 2800 4800
Wire Wire Line
	2800 4900 2950 4900
Wire Wire Line
	2950 4900 2950 5600
Wire Wire Line
	1100 5600 2950 5600
Wire Bus Line
	1750 4450 1350 4450
Wire Bus Line
	1350 4000 1350 4450
Wire Bus Line
	1750 4550 1100 4550
Wire Wire Line
	4600 2550 5100 2550
$Comp
L 22V10:G22V10 U6
U 1 1 5E5A7880
P 4150 2100
F 0 "U6" H 4125 2931 50  0000 C CNN
F 1 "G22V10" H 4125 2840 50  0000 C CNN
F 2 "" H 4050 2700 50  0001 C CNN
F 3 "" H 4050 2700 50  0001 C CNN
	1    4150 2100
	1    0    0    -1  
$EndComp
$Comp
L 22V10:G22V10 U7
U 1 1 5E5AA19F
P 6050 2100
F 0 "U7" H 6025 2931 50  0000 C CNN
F 1 "G22V10" H 6025 2840 50  0000 C CNN
F 2 "" H 5950 2700 50  0001 C CNN
F 3 "" H 5950 2700 50  0001 C CNN
	1    6050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1450 6300 1450
Wire Wire Line
	3000 1650 3650 1650
Wire Wire Line
	3200 1200 5450 1200
Wire Wire Line
	5450 1200 5450 1750
Wire Wire Line
	5450 1750 5550 1750
Wire Wire Line
	5550 2750 5450 2750
Wire Wire Line
	5450 2750 5450 3450
Connection ~ 5450 3450
Wire Wire Line
	5450 3450 6900 3450
Wire Wire Line
	3650 2750 3550 2750
Wire Wire Line
	3550 2750 3550 3450
Connection ~ 3550 3450
Wire Wire Line
	3550 3450 5450 3450
Wire Bus Line
	5200 1100 7100 1100
Connection ~ 7100 1100
Wire Bus Line
	7100 1100 9550 1100
Wire Wire Line
	4450 1450 4150 1450
NoConn ~ 6500 2550
Wire Wire Line
	3800 7000 3800 7100
Wire Wire Line
	3850 6800 3800 6800
Wire Wire Line
	3850 7100 3800 7100
Connection ~ 3800 7100
Wire Wire Line
	3800 7100 3800 7550
Wire Wire Line
	4200 3050 4200 2950
Wire Wire Line
	4350 7750 4050 7750
Wire Wire Line
	4050 7750 4050 7550
Wire Wire Line
	4050 7550 3800 7550
Connection ~ 3800 7550
Wire Wire Line
	3800 7550 3800 7600
Wire Wire Line
	4350 7700 4350 7750
$Comp
L Device:C C?
U 1 1 5E693E80
P 2400 10300
AR Path="/5E693E80" Ref="C?"  Part="1" 
AR Path="/5E4A1CB2/5E693E80" Ref="C12"  Part="1" 
F 0 "C12" H 2515 10346 50  0000 L CNN
F 1 "100n" H 2515 10255 50  0000 L CNN
F 2 "" H 2438 10150 50  0001 C CNN
F 3 "~" H 2400 10300 50  0001 C CNN
	1    2400 10300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E6942CD
P 3350 10300
AR Path="/5E6942CD" Ref="C?"  Part="1" 
AR Path="/5E4A1CB2/5E6942CD" Ref="C13"  Part="1" 
F 0 "C13" H 3465 10346 50  0000 L CNN
F 1 "100n" H 3465 10255 50  0000 L CNN
F 2 "" H 3388 10150 50  0001 C CNN
F 3 "~" H 3350 10300 50  0001 C CNN
	1    3350 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 9300 2400 10150
Wire Wire Line
	3350 9300 3350 10150
Entry Wire Line
	7000 2450 7100 2350
Wire Wire Line
	7000 2450 6500 2450
Text Label 6800 2050 0    50   ~ 0
A14
Text Label 6800 1950 0    50   ~ 0
A13
Text Label 6800 1850 0    50   ~ 0
A12
Text Label 6800 1750 0    50   ~ 0
A11
Text Label 6800 1650 0    50   ~ 0
A10
Text Label 6800 2450 0    50   ~ 0
A9
$Comp
L 74xx:74LS139 U8
U 1 1 5E4CEB46
P 8100 2300
F 0 "U8" H 8100 2667 50  0000 C CNN
F 1 "74LS139" H 8100 2576 50  0000 C CNN
F 2 "" H 8100 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS139" H 8100 2300 50  0001 C CNN
	1    8100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1950 4800 1950
Wire Wire Line
	4800 1950 4800 1450
Wire Wire Line
	4800 1450 5350 1450
Wire Wire Line
	5350 1450 5350 1650
Wire Wire Line
	5350 1650 5550 1650
Wire Wire Line
	4850 5350 4950 5350
Wire Wire Line
	4950 5350 4950 5750
Wire Wire Line
	4950 5750 4350 5750
Connection ~ 4350 5750
Wire Wire Line
	4850 7300 4950 7300
Wire Wire Line
	4950 7300 4950 7750
Wire Wire Line
	4950 7750 4350 7750
Connection ~ 4350 7750
Wire Wire Line
	5350 8000 5350 7400
Wire Wire Line
	5350 5450 4850 5450
Connection ~ 5350 8000
Wire Wire Line
	4850 7400 5350 7400
Connection ~ 5350 7400
Wire Wire Line
	5350 7400 5350 5450
Wire Wire Line
	3150 4800 3150 8000
Wire Wire Line
	6950 7300 7000 7300
Wire Wire Line
	7000 7300 7000 7700
Wire Wire Line
	7000 7700 6450 7700
Connection ~ 6450 7700
Wire Wire Line
	6950 7400 7100 7400
Wire Wire Line
	7100 7400 7100 8000
Connection ~ 7100 8000
Wire Wire Line
	5350 8000 7100 8000
NoConn ~ 4850 7000
NoConn ~ 4850 7100
Text Notes 550  1450 0    50   ~ 0
We could have registers here that load in a start address for \neach frame. That way a scrolling function can be supported \nin hardware. The software would load a value of the address \nof the start of the next frame based on the direction of scrolling. \nLeft or right would simply increment or decrement the start \naddress. Scrolling up and down would be addding/subtracting \na complete horizontal line worth of bytes.
Text Notes 750  2650 0    50   ~ 0
This jumper is to disable the VGA VRAM access (removed).\nThis allows the SystemController to easily perform tests \nand access VRAM without synchronization.\n
Wire Wire Line
	1600 3050 1250 3050
$Comp
L Device:Jumper JP?
U 1 1 5EBC403C
P 1900 3050
F 0 "JP?" H 1900 3314 50  0000 C CNN
F 1 "Jumper" H 1900 3223 50  0000 C CNN
F 2 "" H 1900 3050 50  0001 C CNN
F 3 "~" H 1900 3050 50  0001 C CNN
	1    1900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3050 2450 3050
Wire Wire Line
	2450 3050 2450 3450
Wire Wire Line
	2450 3450 2950 3450
Wire Wire Line
	1500 4250 1500 3450
Wire Wire Line
	1500 3450 2450 3450
Wire Wire Line
	1500 4250 1750 4250
Connection ~ 2450 3450
$Comp
L Device:R R?
U 1 1 5EC03DFE
P 2950 3150
F 0 "R?" H 3020 3196 50  0000 L CNN
F 1 "10k" H 3020 3105 50  0000 L CNN
F 2 "" V 2880 3150 50  0001 C CNN
F 3 "~" H 2950 3150 50  0001 C CNN
	1    2950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3300 2950 3450
Connection ~ 2950 3450
Wire Wire Line
	2950 3450 3550 3450
Wire Wire Line
	2950 3000 2950 2900
$Comp
L power:+5V #PWR?
U 1 1 5EC43E14
P 2950 2900
F 0 "#PWR?" H 2950 2750 50  0001 C CNN
F 1 "+5V" H 2965 3073 50  0000 C CNN
F 2 "" H 2950 2900 50  0001 C CNN
F 3 "" H 2950 2900 50  0001 C CNN
	1    2950 2900
	1    0    0    -1  
$EndComp
NoConn ~ 2600 7100
Wire Bus Line
	2950 6500 2950 8100
Wire Bus Line
	11700 2650 11700 4000
Wire Bus Line
	7350 5900 7350 7000
Wire Bus Line
	5500 6500 5500 8250
Wire Bus Line
	1250 4950 1250 8250
Wire Bus Line
	9250 2650 9250 5900
Wire Bus Line
	3400 3700 3400 6600
Wire Bus Line
	9550 1100 9550 4600
Wire Bus Line
	5200 1100 5200 8100
Wire Bus Line
	7100 1100 7100 4600
Text Notes 7250 1800 0    50   ~ 0
A16 and A17 are swapped on the 74LS139.\n(but it is wired like this on the perf board)\nThis will fail when using more VRAM chips.\nFix by swapping outputs in U7 (WinCUPL).
$EndSCHEMATC
