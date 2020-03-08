EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Zalt TTL VGA"
Date "2020-02-09"
Rev "0.1"
Comp "Canned Bytes"
Comment1 "640x480 @60Hz"
Comment2 "512x384 + border"
Comment3 "Video Memory"
Comment4 ""
$EndDescr
$Sheet
S 3250 1500 1050 1250
U 5E451FD0
F0 "Line Counters" 50
F1 "LineCounters.sch" 50
F2 "AddressStrobe" O R 4300 1750 50 
F3 "AddressClear" O R 4300 1850 50 
F4 "~AddressEnable" O R 4300 1950 50 
F5 "Hblank" O R 4300 2550 50 
F6 "Vblank" O R 4300 2650 50 
$EndSheet
$Sheet
S 5100 1500 1300 1250
U 5E4A1CB2
F0 "Video Memory" 50
F1 "Memory.sch" 50
F2 "AddressStrobe" I L 5100 1750 50 
F3 "AddressClear" I L 5100 1850 50 
F4 "~AddressEnable" I L 5100 1950 50 
F5 "BusAddress" I L 5100 2300 50 
F6 "BusData" I L 5100 2400 50 
F7 "BusControl" I L 5100 2500 50 
F8 "PixelData" I R 6400 1750 50 
$EndSheet
Wire Wire Line
	4300 1750 5100 1750
Wire Wire Line
	4300 1850 5100 1850
Wire Wire Line
	4300 1950 5100 1950
$Sheet
S 6900 1500 1100 1250
U 5E4F03C9
F0 "Pixel Output" 50
F1 "PixelOutput.sch" 50
F2 "PixelData" I L 6900 1750 50 
F3 "Hblank" I L 6900 2550 50 
F4 "Vblank" I L 6900 2650 50 
$EndSheet
Wire Bus Line
	6400 1750 6900 1750
Wire Wire Line
	4300 2550 4550 2550
Wire Wire Line
	4550 2550 4550 3300
Wire Wire Line
	4550 3300 6700 3300
Wire Wire Line
	6700 3300 6700 2550
Wire Wire Line
	6700 2550 6900 2550
Wire Wire Line
	6900 2650 6800 2650
Wire Wire Line
	6800 2650 6800 3400
Wire Wire Line
	6800 3400 4450 3400
Wire Wire Line
	4450 3400 4450 2650
Wire Wire Line
	4450 2650 4300 2650
$Comp
L syshdr:BUSHDR-A HDR?
U 1 1 5E5CCE97
P 2100 6150
F 0 "HDR?" H 2100 7387 60  0000 C CNN
F 1 "BUSHDR-A" H 2100 7281 60  0000 C CNN
F 2 "" H 2100 5500 60  0000 C CNN
F 3 "" H 2100 5500 60  0000 C CNN
	1    2100 6150
	1    0    0    -1  
$EndComp
$Comp
L syshdr:BUSHDR-B HDR?
U 1 1 5E5CE473
P 5050 6150
F 0 "HDR?" H 5050 7387 60  0000 C CNN
F 1 "BUSHDR-B" H 5050 7281 60  0000 C CNN
F 2 "" H 5050 5500 60  0000 C CNN
F 3 "" H 5050 5500 60  0000 C CNN
	1    5050 6150
	1    0    0    -1  
$EndComp
Text Label 1300 5300 0    50   ~ 0
MA0
Text Label 1300 5400 0    50   ~ 0
MA2
Text Label 1300 5500 0    50   ~ 0
MA4
Text Label 1300 5600 0    50   ~ 0
MA6
Text Label 1300 5700 0    50   ~ 0
MA8
Text Label 1300 5800 0    50   ~ 0
MA10
Text Label 1300 5900 0    50   ~ 0
MA12
Text Label 1300 6000 0    50   ~ 0
MA14
Text Label 1300 6100 0    50   ~ 0
MA16
Text Label 1300 6200 0    50   ~ 0
MA18
Text Label 2750 5300 0    50   ~ 0
MA1
Text Label 2750 5400 0    50   ~ 0
MA3
Text Label 2750 5500 0    50   ~ 0
MA5
Text Label 2750 5600 0    50   ~ 0
MA7
Text Label 2750 5700 0    50   ~ 0
MA9
Text Label 2750 5800 0    50   ~ 0
MA11
Text Label 2750 5900 0    50   ~ 0
MA13
Text Label 2750 6000 0    50   ~ 0
MA15
Text Label 2750 6100 0    50   ~ 0
MA17
Text Label 2750 6200 0    50   ~ 0
MA19
Text Label 2900 6300 0    50   ~ 0
BD1
Text Label 2900 6400 0    50   ~ 0
BD3
Text Label 2900 6500 0    50   ~ 0
BD5
Text Label 2900 6600 0    50   ~ 0
BD7
Text Label 1150 6300 0    50   ~ 0
BD0
Text Label 1150 6400 0    50   ~ 0
BD2
Text Label 1150 6500 0    50   ~ 0
BD4
Text Label 1150 6600 0    50   ~ 0
BD6
Entry Wire Line
	1150 5200 1250 5300
Entry Wire Line
	1150 5300 1250 5400
Entry Wire Line
	1150 5400 1250 5500
Entry Wire Line
	1150 5500 1250 5600
Entry Wire Line
	1150 5600 1250 5700
Entry Wire Line
	1150 5700 1250 5800
Entry Wire Line
	1150 5800 1250 5900
Entry Wire Line
	1150 5900 1250 6000
Entry Wire Line
	1150 6000 1250 6100
Entry Wire Line
	1150 6100 1250 6200
Entry Wire Line
	1000 6200 1100 6300
Entry Wire Line
	1000 6300 1100 6400
Entry Wire Line
	1000 6400 1100 6500
Entry Wire Line
	1000 6500 1100 6600
Entry Wire Line
	2950 5300 3050 5200
Entry Wire Line
	2950 5400 3050 5300
Entry Wire Line
	2950 5500 3050 5400
Entry Wire Line
	2950 5600 3050 5500
Entry Wire Line
	2950 5700 3050 5600
Entry Wire Line
	2950 5800 3050 5700
Entry Wire Line
	2950 5900 3050 5800
Entry Wire Line
	2950 6000 3050 5900
Entry Wire Line
	2950 6100 3050 6000
Entry Wire Line
	2950 6200 3050 6100
Entry Wire Line
	3100 6300 3200 6200
Entry Wire Line
	3100 6400 3200 6300
Entry Wire Line
	3100 6500 3200 6400
Entry Wire Line
	3100 6600 3200 6500
Wire Wire Line
	1250 5300 1500 5300
Wire Wire Line
	1250 5400 1500 5400
Wire Wire Line
	1250 5500 1500 5500
Wire Wire Line
	1250 5600 1500 5600
Wire Wire Line
	1250 5700 1500 5700
Wire Wire Line
	1250 5800 1500 5800
Wire Wire Line
	1250 5900 1500 5900
Wire Wire Line
	1250 6000 1500 6000
Wire Wire Line
	1250 6100 1500 6100
Wire Wire Line
	1250 6200 1500 6200
Wire Wire Line
	2700 5300 2950 5300
Wire Wire Line
	2700 5400 2950 5400
Wire Wire Line
	2700 5500 2950 5500
Wire Wire Line
	2700 5600 2950 5600
Wire Wire Line
	2700 5700 2950 5700
Wire Wire Line
	2700 5800 2950 5800
Wire Wire Line
	2700 5900 2950 5900
Wire Wire Line
	2700 6000 2950 6000
Wire Wire Line
	2700 6100 2950 6100
Wire Wire Line
	2700 6200 2950 6200
Wire Wire Line
	1100 6300 1500 6300
Wire Wire Line
	1100 6400 1500 6400
Wire Wire Line
	1100 6500 1500 6500
Wire Wire Line
	1100 6600 1500 6600
Wire Wire Line
	2700 6300 3100 6300
Wire Bus Line
	1150 4700 3050 4700
Wire Wire Line
	2700 6400 3100 6400
Wire Wire Line
	2700 6500 3100 6500
Wire Wire Line
	2700 6600 3100 6600
Wire Bus Line
	1000 4550 3200 4550
Wire Bus Line
	3200 4550 4750 4550
Wire Bus Line
	4750 4550 4750 2400
Connection ~ 3200 4550
Wire Bus Line
	4750 2400 5100 2400
Wire Bus Line
	5100 2300 4650 2300
Wire Bus Line
	4650 2300 4650 4450
Wire Bus Line
	4650 4450 3050 4450
Wire Bus Line
	3050 4450 3050 4700
Connection ~ 3050 4700
Text Label 5750 5400 0    50   ~ 0
~WAIT
Text Label 5750 5600 0    50   ~ 0
~IOREQ
Text Label 5750 5700 0    50   ~ 0
~WR
Text Label 5750 6100 0    50   ~ 0
~BusCLK
Text Label 4150 5700 0    50   ~ 0
~RD
Text Label 4150 5600 0    50   ~ 0
~MEMRQ
Wire Wire Line
	5650 5400 6050 5400
Wire Wire Line
	5650 5600 6050 5600
Wire Wire Line
	5650 5700 6050 5700
Wire Wire Line
	5650 6100 6050 6100
Wire Wire Line
	4100 5600 4450 5600
Wire Wire Line
	4100 5700 4450 5700
Entry Wire Line
	6050 5400 6150 5300
Entry Wire Line
	6050 5600 6150 5500
Entry Wire Line
	6050 5700 6150 5600
Entry Wire Line
	6050 6100 6150 6000
Entry Wire Line
	4000 5500 4100 5600
Entry Wire Line
	4000 5600 4100 5700
Wire Bus Line
	4000 4700 4850 4700
Wire Bus Line
	5100 2500 4850 2500
Wire Bus Line
	4850 2500 4850 4700
Connection ~ 4850 4700
Wire Bus Line
	4850 4700 6150 4700
$Comp
L power:GND #PWR?
U 1 1 5E5EF115
P 1350 4900
F 0 "#PWR?" H 1350 4650 50  0001 C CNN
F 1 "GND" H 1355 4727 50  0000 C CNN
F 2 "" H 1350 4900 50  0001 C CNN
F 3 "" H 1350 4900 50  0001 C CNN
	1    1350 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E5EF9BD
P 4300 4900
F 0 "#PWR?" H 4300 4650 50  0001 C CNN
F 1 "GND" H 4305 4727 50  0000 C CNN
F 2 "" H 4300 4900 50  0001 C CNN
F 3 "" H 4300 4900 50  0001 C CNN
	1    4300 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E5F03F5
P 5650 5050
F 0 "#PWR?" H 5650 4900 50  0001 C CNN
F 1 "+5V" H 5665 5223 50  0000 C CNN
F 2 "" H 5650 5050 50  0001 C CNN
F 3 "" H 5650 5050 50  0001 C CNN
	1    5650 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E5F0888
P 2700 5050
F 0 "#PWR?" H 2700 4900 50  0001 C CNN
F 1 "+5V" H 2715 5223 50  0000 C CNN
F 2 "" H 2700 5050 50  0001 C CNN
F 3 "" H 2700 5050 50  0001 C CNN
	1    2700 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5050 2700 5200
Wire Wire Line
	5650 5050 5650 5200
Wire Wire Line
	4300 4900 4450 4900
Wire Wire Line
	4450 4900 4450 5200
Wire Wire Line
	1350 4900 1500 4900
Wire Wire Line
	1500 4900 1500 5200
Wire Bus Line
	4000 4700 4000 5600
Wire Bus Line
	1000 4550 1000 6500
Wire Bus Line
	3200 4550 3200 6500
Wire Bus Line
	6150 4700 6150 6000
Wire Bus Line
	3050 4700 3050 6100
Wire Bus Line
	1150 4700 1150 6100
$EndSCHEMATC
