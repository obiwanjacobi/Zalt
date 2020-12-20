EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4100 2350 0    50   ~ 0
Video Memory Pixel Address Counter (18-bits)
Text HLabel 3800 2950 0    50   Input ~ 0
AddressStrobe
Text HLabel 3800 3050 0    50   Input ~ 0
AddressLoad
Wire Wire Line
	5400 2950 5900 2950
Wire Wire Line
	5400 3050 5900 3050
Wire Wire Line
	5400 3150 5900 3150
Wire Wire Line
	5400 3350 5900 3350
Wire Wire Line
	5400 3450 5900 3450
Wire Wire Line
	5400 3550 5900 3550
Wire Wire Line
	5400 3650 5900 3650
Wire Wire Line
	5400 3750 5900 3750
Text Label 5700 2950 0    50   ~ 0
A2
Text Label 5700 3050 0    50   ~ 0
A3
Text Label 5700 3150 0    50   ~ 0
A4
Text Label 5700 3350 0    50   ~ 0
A5
Text Label 5700 3450 0    50   ~ 0
A6
Text Label 5700 3550 0    50   ~ 0
A7
Text Label 5700 3650 0    50   ~ 0
A8
Text Label 5700 3750 0    50   ~ 0
A0
Text Label 5700 3850 0    50   ~ 0
A1
Wire Wire Line
	8050 2950 8550 2950
Wire Wire Line
	8050 3050 8550 3050
Wire Wire Line
	8050 3150 8550 3150
Wire Wire Line
	8050 3250 8550 3250
Wire Wire Line
	8050 3350 8550 3350
Wire Wire Line
	8050 3450 8550 3450
Wire Wire Line
	8050 3550 8550 3550
Wire Wire Line
	8050 3650 8550 3650
Text Label 8350 3450 0    50   ~ 0
A15
Text Label 8350 3550 0    50   ~ 0
A16
Text Label 8350 3650 0    50   ~ 0
A17
Entry Wire Line
	5900 2950 6000 2850
Entry Wire Line
	5900 3050 6000 2950
Entry Wire Line
	5900 3150 6000 3050
Entry Wire Line
	5900 3350 6000 3250
Entry Wire Line
	5900 3450 6000 3350
Entry Wire Line
	5900 3550 6000 3450
Entry Wire Line
	5900 3650 6000 3550
Entry Wire Line
	5900 3750 6000 3650
Entry Wire Line
	5900 3850 6000 3750
Entry Wire Line
	8550 2950 8650 2850
Entry Wire Line
	8550 3050 8650 2950
Entry Wire Line
	8550 3150 8650 3050
Entry Wire Line
	8550 3250 8650 3150
Entry Wire Line
	8550 3350 8650 3250
Entry Wire Line
	8550 3450 8650 3350
Entry Wire Line
	8550 3550 8650 3450
Entry Wire Line
	8550 3650 8650 3550
Wire Wire Line
	4000 3050 3800 3050
Wire Wire Line
	4450 3050 4000 3050
Connection ~ 4000 3050
Wire Wire Line
	4000 2500 4000 3050
$Comp
L power:+5V #PWR?
U 1 1 5EC9ECD8
P 7850 2750
AR Path="/5E4A1CB2/5EC9ECD8" Ref="#PWR?"  Part="1" 
AR Path="/5EC9200D/5EC9ECD8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7850 2600 50  0001 C CNN
F 1 "+5V" H 7865 2923 50  0000 C CNN
F 2 "" H 7850 2750 50  0001 C CNN
F 3 "" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EC9ECDE
P 5250 2750
AR Path="/5E4A1CB2/5EC9ECDE" Ref="#PWR?"  Part="1" 
AR Path="/5EC9200D/5EC9ECDE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 2600 50  0001 C CNN
F 1 "+5V" H 5265 2923 50  0000 C CNN
F 2 "" H 5250 2750 50  0001 C CNN
F 3 "" H 5250 2750 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC9ECE4
P 5000 4350
AR Path="/5E4A1CB2/5EC9ECE4" Ref="#PWR?"  Part="1" 
AR Path="/5EC9200D/5EC9ECE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5000 4100 50  0001 C CNN
F 1 "GND" H 5005 4177 50  0000 C CNN
F 2 "" H 5000 4350 50  0001 C CNN
F 3 "" H 5000 4350 50  0001 C CNN
	1    5000 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC9ECEA
P 7650 4250
AR Path="/5E4A1CB2/5EC9ECEA" Ref="#PWR?"  Part="1" 
AR Path="/5EC9200D/5EC9ECEA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7650 4000 50  0001 C CNN
F 1 "GND" H 7655 4077 50  0000 C CNN
F 2 "" H 7650 4250 50  0001 C CNN
F 3 "" H 7650 4250 50  0001 C CNN
	1    7650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3950 7100 3950
Wire Wire Line
	5400 3850 5900 3850
$Comp
L 22V10:G22V10 U?
U 1 1 5EC9ED3C
P 4950 3400
AR Path="/5E4A1CB2/5EC9ED3C" Ref="U?"  Part="1" 
AR Path="/5EC9200D/5EC9ED3C" Ref="U?"  Part="1" 
F 0 "U?" H 4925 4231 50  0000 C CNN
F 1 "G22V10" H 4925 4140 50  0000 C CNN
F 2 "" H 4850 4000 50  0001 C CNN
F 3 "" H 4850 4000 50  0001 C CNN
	1    4950 3400
	1    0    0    -1  
$EndComp
$Comp
L 22V10:G22V10 U?
U 1 1 5EC9ED42
P 7600 3400
AR Path="/5E4A1CB2/5EC9ED42" Ref="U?"  Part="1" 
AR Path="/5EC9200D/5EC9ED42" Ref="U?"  Part="1" 
F 0 "U?" H 7575 4231 50  0000 C CNN
F 1 "G22V10" H 7575 4140 50  0000 C CNN
F 2 "" H 7500 4000 50  0001 C CNN
F 3 "" H 7500 4000 50  0001 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2750 7850 2750
Wire Wire Line
	3800 2950 4450 2950
Wire Wire Line
	4000 2500 7000 2500
Wire Wire Line
	7000 2500 7000 3050
Wire Wire Line
	7000 3050 7100 3050
Wire Wire Line
	7100 4050 7000 4050
Wire Bus Line
	6000 2400 8650 2400
Wire Wire Line
	5250 2750 4950 2750
NoConn ~ 8050 3850
Wire Wire Line
	5000 4350 5000 4250
Entry Wire Line
	8550 3750 8650 3650
Wire Wire Line
	8550 3750 8050 3750
Text Label 8350 3350 0    50   ~ 0
A14
Text Label 8350 3250 0    50   ~ 0
A13
Text Label 8350 3150 0    50   ~ 0
A12
Text Label 8350 3050 0    50   ~ 0
A11
Text Label 8350 2950 0    50   ~ 0
A10
Text Label 8350 3750 0    50   ~ 0
A9
Wire Wire Line
	5400 3250 5600 3250
Wire Wire Line
	5600 3250 5600 2750
Wire Wire Line
	5600 2750 6750 2750
Wire Wire Line
	6750 2750 6750 2950
Wire Wire Line
	6750 2950 7100 2950
Text Notes 850  1900 0    50   ~ 0
We have registers here that load in a start address for \neach frame. That way a scrolling function can be supported \nin hardware. The software would load a value of the address \nof the start of the next frame based on the direction of scrolling. \nLeft or right would simply increment or decrement the start \naddress. Scrolling up and down would be addding/subtracting \na complete horizontal line worth of bytes.
Text Notes 7150 2150 0    50   ~ 0
U6 => BinaryCounterLo.pld\nU7 => BinaryCounterHi.pld
Wire Bus Line
	8650 2400 9250 2400
Connection ~ 8650 2400
Text HLabel 9250 2400 2    50   Output ~ 0
PixelAddress
$Comp
L 74xx:74LS574 U?
U 1 1 5ECA88D1
P 2200 4850
F 0 "U?" H 2200 5831 50  0000 C CNN
F 1 "74LS574" H 2200 5740 50  0000 C CNN
F 2 "" H 2200 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 2200 4850 50  0001 C CNN
	1    2200 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS574 U?
U 1 1 5ECAC29B
P 3150 6550
F 0 "U?" H 3150 7531 50  0000 C CNN
F 1 "74LS574" H 3150 7440 50  0000 C CNN
F 2 "" H 3150 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 3150 6550 50  0001 C CNN
	1    3150 6550
	1    0    0    -1  
$EndComp
Wire Bus Line
	1000 3600 1100 3600
Entry Wire Line
	1100 6650 1200 6750
Entry Wire Line
	1100 4250 1200 4350
Entry Wire Line
	1100 4350 1200 4450
Entry Wire Line
	1100 4450 1200 4550
Entry Wire Line
	1100 4550 1200 4650
Entry Wire Line
	1100 4650 1200 4750
Entry Wire Line
	1100 4750 1200 4850
Entry Wire Line
	1100 4850 1200 4950
Entry Wire Line
	1100 4950 1200 5050
Entry Wire Line
	1100 5950 1200 6050
Entry Wire Line
	1100 6050 1200 6150
Entry Wire Line
	1100 6150 1200 6250
Entry Wire Line
	1100 6250 1200 6350
Entry Wire Line
	1100 6350 1200 6450
Entry Wire Line
	1100 6450 1200 6550
Entry Wire Line
	1100 6550 1200 6650
Wire Wire Line
	1200 4350 1700 4350
Wire Wire Line
	1200 4450 1700 4450
Wire Wire Line
	1200 4550 1700 4550
Wire Wire Line
	1200 4650 1700 4650
Wire Wire Line
	1200 4750 1700 4750
Wire Wire Line
	1200 4850 1700 4850
Wire Wire Line
	1200 4950 1700 4950
Wire Wire Line
	1200 5050 1700 5050
Wire Wire Line
	1200 6050 2650 6050
Wire Wire Line
	1200 6150 2650 6150
Wire Wire Line
	1200 6250 2650 6250
Wire Wire Line
	1200 6350 2650 6350
Wire Wire Line
	1200 6450 2650 6450
Wire Wire Line
	1200 6550 2650 6550
Wire Wire Line
	1200 6650 2650 6650
Wire Wire Line
	1200 6750 2650 6750
Text Label 1250 4350 0    50   ~ 0
D0
Text Label 1250 4450 0    50   ~ 0
D1
Text Label 1250 4550 0    50   ~ 0
D2
Text Label 1250 4650 0    50   ~ 0
D3
Text Label 1250 4750 0    50   ~ 0
D4
Text Label 1250 4850 0    50   ~ 0
D5
Text Label 1250 4950 0    50   ~ 0
D6
Text Label 1250 5050 0    50   ~ 0
D7
Text Label 1250 6050 0    50   ~ 0
D0
Text Label 1250 6150 0    50   ~ 0
D1
Text Label 1250 6250 0    50   ~ 0
D2
Text Label 1250 6350 0    50   ~ 0
D3
Text Label 1250 6450 0    50   ~ 0
D4
Text Label 1250 6550 0    50   ~ 0
D5
Text Label 1250 6650 0    50   ~ 0
D6
Text Label 1250 6750 0    50   ~ 0
D7
Wire Wire Line
	4450 3150 3050 3150
Wire Wire Line
	3050 3150 3050 4350
Wire Wire Line
	3050 4350 2700 4350
Wire Wire Line
	2700 4450 3150 4450
Wire Wire Line
	3150 4450 3150 3250
Wire Wire Line
	3150 3250 4450 3250
Wire Wire Line
	4450 3350 3250 3350
Wire Wire Line
	3250 3350 3250 4550
Wire Wire Line
	3250 4550 2700 4550
Wire Wire Line
	3350 4650 3350 3450
Wire Wire Line
	3350 3450 4450 3450
Wire Wire Line
	4450 3550 3450 3550
Wire Wire Line
	3450 3550 3450 4750
Wire Wire Line
	3450 4750 2700 4750
Wire Wire Line
	2700 4650 3350 4650
Wire Wire Line
	4450 3650 3550 3650
Wire Wire Line
	3550 3650 3550 4850
Wire Wire Line
	3550 4850 2700 4850
Wire Wire Line
	2700 4950 3650 4950
Wire Wire Line
	3650 4950 3650 3750
Wire Wire Line
	3650 3750 4450 3750
Wire Wire Line
	4450 3850 3750 3850
Wire Wire Line
	3750 3850 3750 5050
Wire Wire Line
	3750 5050 2700 5050
Wire Wire Line
	3650 6050 6100 6050
Wire Wire Line
	6100 6050 6100 3150
Wire Wire Line
	6100 3150 7100 3150
Wire Wire Line
	3650 6150 6200 6150
Wire Wire Line
	6200 6150 6200 3250
Wire Wire Line
	6200 3250 7100 3250
Wire Wire Line
	6300 3350 6300 6250
Wire Wire Line
	6300 6250 3650 6250
Wire Wire Line
	6300 3350 7100 3350
Wire Wire Line
	3650 6350 6400 6350
Wire Wire Line
	6400 6350 6400 3450
Wire Wire Line
	6400 3450 7100 3450
Wire Wire Line
	6500 3550 6500 6450
Wire Wire Line
	6500 6450 3650 6450
Wire Wire Line
	6500 3550 7100 3550
Wire Wire Line
	3650 6550 6600 6550
Wire Wire Line
	6600 6550 6600 3650
Wire Wire Line
	6600 3650 7100 3650
Wire Wire Line
	6700 3750 6700 6650
Wire Wire Line
	6700 6650 3650 6650
Wire Wire Line
	6700 3750 7100 3750
Wire Wire Line
	3650 6750 6800 6750
Wire Wire Line
	6800 6750 6800 3850
Wire Wire Line
	6800 3850 7100 3850
Wire Wire Line
	1700 5350 1700 5650
Wire Wire Line
	1700 5650 1950 5650
Wire Wire Line
	1950 5650 1950 5750
Connection ~ 1950 5650
Wire Wire Line
	1950 5650 2200 5650
Wire Wire Line
	2650 7050 2650 7350
Wire Wire Line
	2650 7350 2900 7350
Wire Wire Line
	2900 7350 2900 7450
Connection ~ 2900 7350
Wire Wire Line
	2900 7350 3150 7350
$Comp
L power:GND #PWR?
U 1 1 5ED17CAE
P 1950 5750
AR Path="/5E4A1CB2/5ED17CAE" Ref="#PWR?"  Part="1" 
AR Path="/5EC9200D/5ED17CAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 5500 50  0001 C CNN
F 1 "GND" H 1955 5577 50  0000 C CNN
F 2 "" H 1950 5750 50  0001 C CNN
F 3 "" H 1950 5750 50  0001 C CNN
	1    1950 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED1820F
P 2900 7450
AR Path="/5E4A1CB2/5ED1820F" Ref="#PWR?"  Part="1" 
AR Path="/5EC9200D/5ED1820F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 7200 50  0001 C CNN
F 1 "GND" H 2905 7277 50  0000 C CNN
F 2 "" H 2900 7450 50  0001 C CNN
F 3 "" H 2900 7450 50  0001 C CNN
	1    2900 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5250 1550 5250
Text HLabel 1350 6950 0    50   Input ~ 0
ScrollRegHiStrobe
Text HLabel 1000 3600 0    50   Input ~ 0
BusData
Wire Wire Line
	1350 6950 2650 6950
Text HLabel 1350 7100 0    50   Input ~ 0
ScrollRegLoStrobe
Wire Wire Line
	1350 7100 1550 7100
Wire Wire Line
	1550 7100 1550 5250
Wire Bus Line
	8650 2400 8650 3650
Wire Bus Line
	6000 2400 6000 3750
Wire Bus Line
	1100 3600 1100 6650
$EndSCHEMATC
