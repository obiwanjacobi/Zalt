EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L MCU_Microchip_ATmega:ATmega8515-16PU U?
U 1 1 60118872
P 4700 3750
F 0 "U?" H 4700 5931 50  0000 C CNN
F 1 "ATmega8515-16PU" H 4700 5840 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 4700 3750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2512.pdf" H 4700 3750 50  0001 C CNN
	1    4700 3750
	1    0    0    -1  
$EndComp
$Comp
L SYSHDR:BUSHDR-A HDR?
U 1 1 6011F958
P 1550 2450
F 0 "HDR?" H 1550 3687 60  0000 C CNN
F 1 "BUSHDR-A" H 1550 3581 60  0000 C CNN
F 2 "" H 1550 1800 60  0000 C CNN
F 3 "" H 1550 1800 60  0000 C CNN
	1    1550 2450
	1    0    0    -1  
$EndComp
$Comp
L SYSHDR:BUSHDR-B HDR?
U 1 1 60120223
P 1550 5150
F 0 "HDR?" H 1550 6387 60  0000 C CNN
F 1 "BUSHDR-B" H 1550 6281 60  0000 C CNN
F 2 "" H 1550 4500 60  0000 C CNN
F 3 "" H 1550 4500 60  0000 C CNN
	1    1550 5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U?
U 1 1 60121841
P 5850 7100
F 0 "U?" H 5850 8081 50  0000 C CNN
F 1 "74HC245" H 5850 7990 50  0000 C CNN
F 2 "" H 5850 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 5850 7100 50  0001 C CNN
	1    5850 7100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U?
U 1 1 60122069
P 5850 9000
F 0 "U?" H 5850 9981 50  0000 C CNN
F 1 "74HC245" H 5850 9890 50  0000 C CNN
F 2 "" H 5850 9000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 5850 9000 50  0001 C CNN
	1    5850 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1600 2400 1600
Wire Wire Line
	2150 1700 2400 1700
Wire Wire Line
	2150 1800 2400 1800
Wire Wire Line
	2150 1900 2400 1900
Wire Wire Line
	2150 2000 2400 2000
Wire Wire Line
	2150 2100 2400 2100
Wire Wire Line
	2150 2600 2400 2600
Wire Wire Line
	2150 2700 2400 2700
Wire Wire Line
	2150 2800 2400 2800
Wire Wire Line
	2150 2900 2400 2900
Wire Wire Line
	950  1600 700  1600
Wire Wire Line
	950  1700 700  1700
Wire Wire Line
	950  1800 700  1800
Wire Wire Line
	950  1900 700  1900
Wire Wire Line
	950  2000 700  2000
Wire Wire Line
	950  2100 700  2100
Wire Wire Line
	950  2600 700  2600
Wire Wire Line
	950  2700 700  2700
Wire Wire Line
	950  2800 700  2800
Wire Wire Line
	950  2900 700  2900
Wire Wire Line
	2150 4900 2400 4900
Wire Wire Line
	2150 5000 2400 5000
Wire Wire Line
	950  4900 700  4900
Wire Wire Line
	950  5000 700  5000
Text Label 750  1600 0    50   ~ 0
A0
Text Label 750  1700 0    50   ~ 0
A2
Text Label 750  1800 0    50   ~ 0
A4
Text Label 750  1900 0    50   ~ 0
A6
Text Label 750  2000 0    50   ~ 0
A8
Text Label 750  2100 0    50   ~ 0
A10
Text Label 2250 1600 0    50   ~ 0
A1
Text Label 2250 1700 0    50   ~ 0
A3
Text Label 2250 1800 0    50   ~ 0
A5
Text Label 2250 1900 0    50   ~ 0
A7
Text Label 2250 2000 0    50   ~ 0
A9
Text Label 2250 2100 0    50   ~ 0
A11
Text Label 2250 2600 0    50   ~ 0
D1
Text Label 2250 2700 0    50   ~ 0
D3
Text Label 2250 2800 0    50   ~ 0
D5
Text Label 2250 2900 0    50   ~ 0
D7
Text Label 750  2600 0    50   ~ 0
D0
Text Label 750  2700 0    50   ~ 0
D2
Text Label 750  2800 0    50   ~ 0
D4
Text Label 750  2900 0    50   ~ 0
D6
Text Label 750  4900 0    50   ~ 0
A12
Text Label 750  5000 0    50   ~ 0
A14
Text Label 2250 4900 0    50   ~ 0
A13
Text Label 2250 5000 0    50   ~ 0
A15
$Comp
L 74xx:74LS573 U?
U 1 1 6012E888
P 6900 2550
F 0 "U?" H 6900 3531 50  0000 C CNN
F 1 "74ACT573 (fast)" H 6900 3440 50  0000 C CNN
F 2 "" H 6900 2550 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 6900 2550 50  0001 C CNN
	1    6900 2550
	1    0    0    -1  
$EndComp
Text Notes 1100 7400 0    50   ~ 0
Read:\nIde is accessed to fetch a logical block.\n\nAfter BUSRQ/BUSACK the external memory interface \nis initialized and enabled to access the Z80 bus.\n\nThen the internal buffer is copied into the Z80 memory \nbuffer. Due to low internal SRAM this will probably be \ntwo cycles of a couple of kB bytes to read/write one file/stream to/from IDE.\n\nWhen done, the Z80 is released.
Text Label 5450 2050 0    50   ~ 0
AD0
Text Label 5450 2150 0    50   ~ 0
AD1
Text Label 5450 2250 0    50   ~ 0
AD2
Text Label 5450 2350 0    50   ~ 0
AD3
Text Label 5450 2450 0    50   ~ 0
AD4
Text Label 5450 2550 0    50   ~ 0
AD5
Text Label 5450 2650 0    50   ~ 0
AD6
Text Label 5450 2750 0    50   ~ 0
AD7
Wire Wire Line
	5300 2950 5650 2950
Wire Wire Line
	5300 3050 5650 3050
Wire Wire Line
	5300 3150 5650 3150
Wire Wire Line
	5300 3250 5650 3250
Wire Wire Line
	5300 3350 5650 3350
Wire Wire Line
	5300 3450 5650 3450
Wire Wire Line
	5300 3550 5650 3550
Wire Wire Line
	5300 3650 5650 3650
Wire Wire Line
	5300 3850 5650 3850
Wire Wire Line
	5300 3950 5650 3950
Wire Wire Line
	5300 4050 5650 4050
Wire Wire Line
	5300 4150 5650 4150
Wire Wire Line
	5300 4250 5650 4250
Wire Wire Line
	5300 4350 5650 4350
Wire Wire Line
	5300 4450 5650 4450
Wire Wire Line
	5300 4550 5650 4550
Wire Wire Line
	5300 5350 5650 5350
Wire Wire Line
	5300 5450 5650 5450
Text Label 5350 5350 0    50   ~ 0
~DMA_WR
Text Label 5350 5450 0    50   ~ 0
~DMA_RD
Wire Wire Line
	5300 2050 6400 2050
Wire Wire Line
	5300 2150 6400 2150
Wire Wire Line
	5300 2250 6400 2250
Wire Wire Line
	5300 2350 6400 2350
Wire Wire Line
	5300 2450 6400 2450
Wire Wire Line
	5300 2550 6400 2550
Wire Wire Line
	5300 2650 6400 2650
Wire Wire Line
	5300 2750 6400 2750
Wire Wire Line
	5350 6600 4900 6600
Wire Wire Line
	5350 6700 4900 6700
Wire Wire Line
	5350 6800 4900 6800
Wire Wire Line
	5350 6900 4900 6900
Wire Wire Line
	5350 7000 4900 7000
Wire Wire Line
	5350 7100 4900 7100
Wire Wire Line
	5350 7200 4900 7200
Wire Wire Line
	5350 7300 4900 7300
Text Label 5000 6600 0    50   ~ 0
AD0
Text Label 5000 6700 0    50   ~ 0
AD1
Text Label 5000 6800 0    50   ~ 0
AD2
Text Label 5000 6900 0    50   ~ 0
AD3
Text Label 5000 7000 0    50   ~ 0
AD4
Text Label 5000 7100 0    50   ~ 0
AD5
Text Label 5000 7200 0    50   ~ 0
AD6
Text Label 5000 7300 0    50   ~ 0
AD7
Wire Wire Line
	6350 6600 6700 6600
Wire Wire Line
	6350 6700 6700 6700
Wire Wire Line
	6350 6800 6700 6800
Wire Wire Line
	6350 6900 6700 6900
Wire Wire Line
	6350 7000 6700 7000
Wire Wire Line
	6350 7100 6700 7100
Wire Wire Line
	6350 7200 6700 7200
Wire Wire Line
	6350 7300 6700 7300
Text Label 6500 6600 0    50   ~ 0
D0
Text Label 6500 6700 0    50   ~ 0
D1
Text Label 6500 6800 0    50   ~ 0
D2
Text Label 6500 6900 0    50   ~ 0
D3
Text Label 6500 7000 0    50   ~ 0
D4
Text Label 6500 7100 0    50   ~ 0
D5
Text Label 6500 7200 0    50   ~ 0
D6
Text Label 6500 7300 0    50   ~ 0
D7
Wire Wire Line
	7400 2050 7850 2050
Wire Wire Line
	7400 2150 7850 2150
Wire Wire Line
	7400 2250 7850 2250
Wire Wire Line
	7400 2350 7850 2350
Wire Wire Line
	7400 2450 7850 2450
Wire Wire Line
	7400 2550 7850 2550
Wire Wire Line
	7400 2650 7850 2650
Wire Wire Line
	7400 2750 7850 2750
Text Label 7700 2050 0    50   ~ 0
A0
Text Label 7700 2150 0    50   ~ 0
A1
Text Label 7700 2250 0    50   ~ 0
A2
Text Label 7700 2350 0    50   ~ 0
A3
Text Label 7700 2450 0    50   ~ 0
A4
Text Label 7700 2550 0    50   ~ 0
A5
Text Label 7700 2650 0    50   ~ 0
A6
Text Label 7700 2750 0    50   ~ 0
A7
Text Label 5350 3850 0    50   ~ 0
DMA_A8
Text Label 5350 3950 0    50   ~ 0
DMA_A9
Text Label 5350 4050 0    50   ~ 0
DMA_A10
Text Label 5350 4150 0    50   ~ 0
DMA_A11
Text Label 5350 4250 0    50   ~ 0
DMA_A12
Text Label 5350 4350 0    50   ~ 0
DMA_A13
Text Label 5350 4450 0    50   ~ 0
DMA_A14
Text Label 5350 4550 0    50   ~ 0
DMA_A15
Wire Wire Line
	4100 4850 3750 4850
Text Label 3800 4850 0    50   ~ 0
IdeA1
Wire Wire Line
	6400 2950 6150 2950
Text Label 6150 2950 0    50   ~ 0
IdeA1
Text Label 5450 3450 0    50   ~ 0
MOSI
Text Label 5450 3550 0    50   ~ 0
MISO
Text Label 5450 3650 0    50   ~ 0
SCK
$Comp
L Connector:AVR-ISP-6 J?
U 1 1 601C43C7
P 9900 1400
F 0 "J?" H 9571 1496 50  0000 R CNN
F 1 "AVR-ISP-6" H 9571 1405 50  0000 R CNN
F 2 "" V 9650 1450 50  0001 C CNN
F 3 " ~" H 8625 850 50  0001 C CNN
	1    9900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1200 10700 1200
Wire Wire Line
	10300 1300 10700 1300
Wire Wire Line
	10300 1400 10700 1400
Wire Wire Line
	10300 1500 10700 1500
Text Label 10450 1200 0    50   ~ 0
MOSI
Text Label 10450 1300 0    50   ~ 0
MISO
Text Label 10450 1400 0    50   ~ 0
SCK
Text Label 10450 1500 0    50   ~ 0
~RST
Wire Wire Line
	4100 2050 3900 2050
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 601D509F
P 3800 2050
F 0 "JP?" H 3800 2262 50  0000 C CNN
F 1 "Open to Program" H 3800 2171 50  0000 C CNN
F 2 "" H 3800 2050 50  0001 C CNN
F 3 "~" H 3800 2050 50  0001 C CNN
	1    3800 2050
	1    0    0    -1  
$EndComp
Text Label 3950 2050 0    50   ~ 0
~RST
Wire Wire Line
	3700 2050 3400 2050
Text Label 3450 2050 0    50   ~ 0
~RESET
Wire Wire Line
	950  5100 600  5100
Text Label 650  5100 0    50   ~ 0
~RESET
$Comp
L Device:Crystal Y?
U 1 1 601DCEB3
P 3700 2450
F 0 "Y?" H 3700 2718 50  0000 C CNN
F 1 "16MHz" H 3700 2627 50  0000 C CNN
F 2 "" H 3700 2450 50  0001 C CNN
F 3 "~" H 3700 2450 50  0001 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2450 3950 2450
Wire Wire Line
	4100 2250 3400 2250
Wire Wire Line
	3400 2250 3400 2450
Wire Wire Line
	3400 2450 3550 2450
Wire Wire Line
	3400 2450 3400 2600
Connection ~ 3400 2450
Wire Wire Line
	3950 2450 3950 2600
Connection ~ 3950 2450
Wire Wire Line
	3950 2450 3850 2450
$Comp
L Device:C_Small C?
U 1 1 601EC481
P 3400 2700
F 0 "C?" H 3492 2746 50  0000 L CNN
F 1 "22pF" H 3492 2655 50  0000 L CNN
F 2 "" H 3400 2700 50  0001 C CNN
F 3 "~" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 601ECB1C
P 3950 2700
F 0 "C?" H 4042 2746 50  0000 L CNN
F 1 "22pF" H 4042 2655 50  0000 L CNN
F 2 "" H 3950 2700 50  0001 C CNN
F 3 "~" H 3950 2700 50  0001 C CNN
	1    3950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601ED003
P 3400 2950
F 0 "#PWR?" H 3400 2700 50  0001 C CNN
F 1 "GND" H 3405 2777 50  0000 C CNN
F 2 "" H 3400 2950 50  0001 C CNN
F 3 "" H 3400 2950 50  0001 C CNN
	1    3400 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601ED8FA
P 5250 1650
F 0 "#PWR?" H 5250 1500 50  0001 C CNN
F 1 "+5V" H 5265 1823 50  0000 C CNN
F 2 "" H 5250 1650 50  0001 C CNN
F 3 "" H 5250 1650 50  0001 C CNN
	1    5250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601EE441
P 3950 2950
F 0 "#PWR?" H 3950 2700 50  0001 C CNN
F 1 "GND" H 3955 2777 50  0000 C CNN
F 2 "" H 3950 2950 50  0001 C CNN
F 3 "" H 3950 2950 50  0001 C CNN
	1    3950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2800 3400 2950
Wire Wire Line
	3950 2800 3950 2950
Wire Wire Line
	4700 1750 5250 1750
Wire Wire Line
	5250 1750 5250 1650
Wire Wire Line
	5350 7500 5050 7500
Wire Wire Line
	5350 7600 5050 7600
Wire Wire Line
	5350 9500 5050 9500
Text Label 6150 3050 0    50   ~ 0
~BusEnable
Wire Wire Line
	6400 3050 6150 3050
Text Label 5100 7500 0    50   ~ 0
DataDir
Wire Wire Line
	6350 8500 6700 8500
Wire Wire Line
	6350 8600 6700 8600
Wire Wire Line
	6350 8700 6700 8700
Wire Wire Line
	6350 8800 6700 8800
Wire Wire Line
	6350 8900 6700 8900
Wire Wire Line
	6350 9000 6700 9000
Wire Wire Line
	6350 9100 6700 9100
Wire Wire Line
	6350 9200 6700 9200
Wire Wire Line
	5350 8500 4900 8500
Wire Wire Line
	5350 8600 4900 8600
Wire Wire Line
	5350 8700 4900 8700
Wire Wire Line
	5350 8800 4900 8800
Wire Wire Line
	5350 8900 4900 8900
Wire Wire Line
	5350 9000 4900 9000
Wire Wire Line
	5350 9100 4900 9100
Wire Wire Line
	5350 9200 4900 9200
Text Label 6500 8500 0    50   ~ 0
A8
Text Label 6500 8600 0    50   ~ 0
A9
Text Label 6500 8700 0    50   ~ 0
A10
Text Label 6500 8800 0    50   ~ 0
A11
Text Label 6500 8900 0    50   ~ 0
A12
Text Label 6500 9000 0    50   ~ 0
A13
Text Label 6500 9100 0    50   ~ 0
A14
Text Label 6500 9200 0    50   ~ 0
A15
Text Label 4950 8500 0    50   ~ 0
DMA_A8
Text Label 4950 8600 0    50   ~ 0
DMA_A9
Text Label 4950 8700 0    50   ~ 0
DMA_A10
Text Label 4950 8800 0    50   ~ 0
DMA_A11
Text Label 4950 8900 0    50   ~ 0
DMA_A12
Text Label 4950 9000 0    50   ~ 0
DMA_A13
Text Label 4950 9100 0    50   ~ 0
DMA_A14
Text Label 4950 9200 0    50   ~ 0
DMA_A15
Wire Wire Line
	5350 9400 5050 9400
Text Label 5100 9400 0    50   ~ 0
BusOut
Text Label 3750 10000 0    50   ~ 0
BusOut
Wire Wire Line
	3700 10000 4100 10000
Wire Wire Line
	4100 10000 4100 9900
$Comp
L power:+5V #PWR?
U 1 1 602C083F
P 7350 1700
F 0 "#PWR?" H 7350 1550 50  0001 C CNN
F 1 "+5V" H 7365 1873 50  0000 C CNN
F 2 "" H 7350 1700 50  0001 C CNN
F 3 "" H 7350 1700 50  0001 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 602C0DAC
P 6150 6250
F 0 "#PWR?" H 6150 6100 50  0001 C CNN
F 1 "+5V" H 6165 6423 50  0000 C CNN
F 2 "" H 6150 6250 50  0001 C CNN
F 3 "" H 6150 6250 50  0001 C CNN
	1    6150 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 602C124C
P 9800 800
F 0 "#PWR?" H 9800 650 50  0001 C CNN
F 1 "+5V" H 9815 973 50  0000 C CNN
F 2 "" H 9800 800 50  0001 C CNN
F 3 "" H 9800 800 50  0001 C CNN
	1    9800 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 602C16DA
P 6150 8100
F 0 "#PWR?" H 6150 7950 50  0001 C CNN
F 1 "+5V" H 6165 8273 50  0000 C CNN
F 2 "" H 6150 8100 50  0001 C CNN
F 3 "" H 6150 8100 50  0001 C CNN
	1    6150 8100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 602C1E2B
P 4100 9900
F 0 "#PWR?" H 4100 9750 50  0001 C CNN
F 1 "+5V" H 4115 10073 50  0000 C CNN
F 2 "" H 4100 9900 50  0001 C CNN
F 3 "" H 4100 9900 50  0001 C CNN
	1    4100 9900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60339F54
P 6900 3450
F 0 "#PWR?" H 6900 3200 50  0001 C CNN
F 1 "GND" H 6905 3277 50  0000 C CNN
F 2 "" H 6900 3450 50  0001 C CNN
F 3 "" H 6900 3450 50  0001 C CNN
	1    6900 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6033A2F2
P 4700 5850
F 0 "#PWR?" H 4700 5600 50  0001 C CNN
F 1 "GND" H 4705 5677 50  0000 C CNN
F 2 "" H 4700 5850 50  0001 C CNN
F 3 "" H 4700 5850 50  0001 C CNN
	1    4700 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6033A723
P 5500 7900
F 0 "#PWR?" H 5500 7650 50  0001 C CNN
F 1 "GND" H 5505 7727 50  0000 C CNN
F 2 "" H 5500 7900 50  0001 C CNN
F 3 "" H 5500 7900 50  0001 C CNN
	1    5500 7900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6033AF8D
P 5850 9950
F 0 "#PWR?" H 5850 9700 50  0001 C CNN
F 1 "GND" H 5855 9777 50  0000 C CNN
F 2 "" H 5850 9950 50  0001 C CNN
F 3 "" H 5850 9950 50  0001 C CNN
	1    5850 9950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6033B23A
P 9800 1900
F 0 "#PWR?" H 9800 1650 50  0001 C CNN
F 1 "GND" H 9805 1727 50  0000 C CNN
F 2 "" H 9800 1900 50  0001 C CNN
F 3 "" H 9800 1900 50  0001 C CNN
	1    9800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 800  9800 900 
Wire Wire Line
	9800 1800 9800 1900
Wire Wire Line
	6900 1750 7350 1750
Wire Wire Line
	7350 1750 7350 1700
Wire Wire Line
	6900 3350 6900 3450
Wire Wire Line
	4700 5750 4700 5850
Wire Wire Line
	5850 6300 6150 6300
Wire Wire Line
	6150 6300 6150 6250
Wire Wire Line
	5500 7900 5850 7900
Wire Wire Line
	5850 8200 6150 8200
Wire Wire Line
	6150 8200 6150 8100
Wire Wire Line
	5850 9800 5850 9950
$Comp
L 74xx:74HC245 U?
U 1 1 603E6D4D
P 12100 5650
F 0 "U?" H 12100 6631 50  0000 C CNN
F 1 "74HC245" H 12100 6540 50  0000 C CNN
F 2 "" H 12100 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 12100 5650 50  0001 C CNN
	1    12100 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U?
U 1 1 603E6D53
P 12100 7800
F 0 "U?" H 12100 8781 50  0000 C CNN
F 1 "74HC245" H 12100 8690 50  0000 C CNN
F 2 "" H 12100 7800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 12100 7800 50  0001 C CNN
	1    12100 7800
	1    0    0    -1  
$EndComp
$Comp
L IDE:Conn_IDE40 J?
U 1 1 603E6D59
P 14600 5900
F 0 "J?" H 14400 6015 50  0000 C CNN
F 1 "Conn_IDE40" H 14400 5924 50  0000 C CNN
F 2 "" H 14600 5900 50  0001 C CNN
F 3 "" H 14600 5900 50  0001 C CNN
	1    14600 5900
	1    0    0    -1  
$EndComp
Text Label 5450 2950 0    50   ~ 0
A0
Text Label 5450 3050 0    50   ~ 0
A1
Text Label 5450 3150 0    50   ~ 0
A2
Text Label 5450 3250 0    50   ~ 0
A3
Wire Wire Line
	5300 5250 5650 5250
Text Label 5350 5250 0    50   ~ 0
~DMARQ
Wire Wire Line
	5300 4750 5650 4750
Wire Wire Line
	5300 4850 5650 4850
Wire Wire Line
	5300 4950 5650 4950
Wire Wire Line
	5300 5050 5650 5050
Wire Wire Line
	5300 5150 5650 5150
Text Label 5350 4750 0    50   ~ 0
~BusEnable
Text Label 5050 9500 0    50   ~ 0
~BusEnable
Wire Wire Line
	11600 6050 10950 6050
Wire Wire Line
	11600 6150 10950 6150
Wire Wire Line
	11600 8200 10950 8200
Wire Wire Line
	11600 8300 10950 8300
Text Label 11000 8300 0    50   ~ 0
~IdeEnable
Text Label 11000 6150 0    50   ~ 0
~IdeEnable
Text Label 11000 8200 0    50   ~ 0
DataDir
Text Label 11000 6050 0    50   ~ 0
DataDir
Wire Wire Line
	13900 6150 13600 6150
Wire Wire Line
	13900 6250 13600 6250
Wire Wire Line
	13900 6350 13600 6350
Wire Wire Line
	13900 6450 13600 6450
Wire Wire Line
	13900 6550 13600 6550
Wire Wire Line
	13900 6650 13600 6650
Wire Wire Line
	13900 6750 13600 6750
Wire Wire Line
	13900 6850 13600 6850
Wire Wire Line
	14900 6150 15250 6150
Wire Wire Line
	14900 6250 15250 6250
Wire Wire Line
	14900 6350 15250 6350
Wire Wire Line
	14900 6450 15250 6450
Wire Wire Line
	14900 6550 15250 6550
Wire Wire Line
	14900 6650 15250 6650
Wire Wire Line
	14900 6750 15250 6750
Wire Wire Line
	14900 6850 15250 6850
Text Label 13650 6150 0    50   ~ 0
DD7
Text Label 13650 6250 0    50   ~ 0
DD6
Text Label 13650 6350 0    50   ~ 0
DD5
Text Label 13650 6450 0    50   ~ 0
DD4
Text Label 13650 6550 0    50   ~ 0
DD3
Text Label 13650 6650 0    50   ~ 0
DD2
Text Label 13650 6750 0    50   ~ 0
DD1
Text Label 13650 6850 0    50   ~ 0
DD0
Text Label 15050 6150 0    50   ~ 0
DD8
Text Label 15050 6250 0    50   ~ 0
DD9
Text Label 15050 6350 0    50   ~ 0
DD10
Text Label 15050 6450 0    50   ~ 0
DD11
Text Label 15050 6550 0    50   ~ 0
DD12
Text Label 15050 6650 0    50   ~ 0
DD13
Text Label 15050 6750 0    50   ~ 0
DD14
Text Label 15050 6850 0    50   ~ 0
DD15
Wire Wire Line
	12600 5150 12900 5150
Wire Wire Line
	12600 5250 12900 5250
Wire Wire Line
	12600 5350 12900 5350
Wire Wire Line
	12600 5450 12900 5450
Wire Wire Line
	12600 5550 12900 5550
Wire Wire Line
	12600 5650 12900 5650
Wire Wire Line
	12600 5750 12900 5750
Wire Wire Line
	12600 5850 12900 5850
Wire Wire Line
	12600 7300 12900 7300
Wire Wire Line
	12600 7400 12900 7400
Wire Wire Line
	12600 7500 12900 7500
Wire Wire Line
	12600 7600 12900 7600
Wire Wire Line
	12600 7700 12900 7700
Wire Wire Line
	12600 7800 12900 7800
Wire Wire Line
	12600 7900 12900 7900
Wire Wire Line
	12600 8000 12900 8000
Text Label 12700 5150 0    50   ~ 0
DD0
Text Label 12700 5250 0    50   ~ 0
DD1
Text Label 12700 5350 0    50   ~ 0
DD2
Text Label 12700 5450 0    50   ~ 0
DD3
Text Label 12700 5550 0    50   ~ 0
DD4
Text Label 12700 5650 0    50   ~ 0
DD5
Text Label 12700 5750 0    50   ~ 0
DD6
Text Label 12700 5850 0    50   ~ 0
DD7
Text Label 12700 7300 0    50   ~ 0
DD8
Text Label 12700 7400 0    50   ~ 0
DD9
Text Label 12700 7500 0    50   ~ 0
DD10
Text Label 12700 7600 0    50   ~ 0
DD11
Text Label 12700 7700 0    50   ~ 0
DD12
Text Label 12700 7800 0    50   ~ 0
DD13
Text Label 12700 7900 0    50   ~ 0
DD14
Text Label 12700 8000 0    50   ~ 0
DD15
Wire Wire Line
	11600 5150 11250 5150
Wire Wire Line
	11600 5250 11250 5250
Wire Wire Line
	11600 5350 11250 5350
Wire Wire Line
	11600 5450 11250 5450
Wire Wire Line
	11600 5550 11250 5550
Wire Wire Line
	11600 5650 11250 5650
Wire Wire Line
	11600 5750 11250 5750
Wire Wire Line
	11600 5850 11250 5850
Text Label 11300 5150 0    50   ~ 0
AD0
Text Label 11300 5250 0    50   ~ 0
AD1
Text Label 11300 5350 0    50   ~ 0
AD2
Text Label 11300 5450 0    50   ~ 0
AD3
Text Label 11300 5550 0    50   ~ 0
AD4
Text Label 11300 5650 0    50   ~ 0
AD5
Text Label 11300 5750 0    50   ~ 0
AD6
Text Label 11300 5850 0    50   ~ 0
AD7
Wire Wire Line
	11600 7300 11150 7300
Wire Wire Line
	11600 7400 11150 7400
Wire Wire Line
	11600 7500 11150 7500
Wire Wire Line
	11600 7600 11150 7600
Wire Wire Line
	11600 7700 11150 7700
Wire Wire Line
	11600 7800 11150 7800
Wire Wire Line
	11600 7900 11150 7900
Wire Wire Line
	11600 8000 11150 8000
Text Label 11200 7300 0    50   ~ 0
DMA_A8
Text Label 11200 7400 0    50   ~ 0
DMA_A9
Text Label 11200 7500 0    50   ~ 0
DMA_A10
Text Label 11200 7600 0    50   ~ 0
DMA_A11
Text Label 11200 7700 0    50   ~ 0
DMA_A12
Text Label 11200 7800 0    50   ~ 0
DMA_A13
Text Label 11200 7900 0    50   ~ 0
DMA_A14
Text Label 11200 8000 0    50   ~ 0
DMA_A15
Text Notes 7700 6450 0    50   ~ 0
(positive logic)\nMEMRQ = BusEnable & (DMA_RD | DMA_WR) - .OE = BusEnable\nRD = BusEnable & DMA_RD - .OE = BusEnable\nWR = BusEnable & DMA_WR - .OE = BusEnable\nIdeEnable = !BusEnable\nDataDir = DMA_WR\nRegWr = IOREQ & WR & A[4..7]\nRegRd = IOREQ & RD & A[4..7]
Wire Wire Line
	13900 7150 13600 7150
Wire Wire Line
	13900 7250 13600 7250
Text Label 13600 7150 0    50   ~ 0
~DMA_WR
Text Label 13600 7250 0    50   ~ 0
~DMA_RD
Wire Wire Line
	4100 4750 3750 4750
Wire Wire Line
	4100 4950 3750 4950
Text Label 3800 4750 0    50   ~ 0
IdeA0
Text Label 3800 4950 0    50   ~ 0
IdeA2
Wire Wire Line
	13900 7650 13600 7650
Wire Wire Line
	13900 7750 13600 7750
Wire Wire Line
	13900 7850 13600 7850
Wire Wire Line
	14900 7750 15200 7750
Text Label 13600 7650 0    50   ~ 0
IdeA1
Text Label 13600 7750 0    50   ~ 0
IdeA0
Text Label 15000 7750 0    50   ~ 0
IdeA2
Text Label 13600 7850 0    50   ~ 0
~IdeSel
Text Label 5350 4950 0    50   ~ 0
~IdeSel
$Comp
L G22V10:G22V10 U?
U 1 1 608BC719
P 8550 7500
F 0 "U?" H 8525 8331 50  0000 C CNN
F 1 "G22V10" H 8525 8240 50  0000 C CNN
F 2 "" H 8450 8100 50  0001 C CNN
F 3 "" H 8450 8100 50  0001 C CNN
	1    8550 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 7050 7650 7050
Wire Wire Line
	8050 7150 7650 7150
Wire Wire Line
	8050 7250 7650 7250
Wire Wire Line
	8050 7350 7650 7350
Wire Wire Line
	8050 7450 7650 7450
Wire Wire Line
	8050 7550 7650 7550
Wire Wire Line
	8050 7650 7650 7650
Wire Wire Line
	8050 7750 7650 7750
Wire Wire Line
	8050 7850 7650 7850
Wire Wire Line
	8050 7950 7650 7950
Wire Wire Line
	8050 8050 7650 8050
Wire Wire Line
	8050 8150 7650 8150
Wire Wire Line
	9000 7050 9450 7050
Wire Wire Line
	9000 7150 9450 7150
Wire Wire Line
	9000 7250 9450 7250
Wire Wire Line
	9000 7350 9450 7350
Wire Wire Line
	9000 7450 9450 7450
Wire Wire Line
	9000 7550 9450 7550
Wire Wire Line
	9000 7650 9450 7650
Wire Wire Line
	9000 7750 9450 7750
Wire Wire Line
	9000 7850 9450 7850
Wire Wire Line
	9000 7950 9450 7950
Text Label 7700 7050 0    50   ~ 0
~M1
Text Label 7700 7150 0    50   ~ 0
~IOREQ
Text Label 9150 7050 0    50   ~ 0
~MEMRQ
Text Label 9150 7150 0    50   ~ 0
~RD
Text Label 9150 7250 0    50   ~ 0
~WR
Text Label 7650 7950 0    50   ~ 0
~DMA_RD
Text Label 7650 8050 0    50   ~ 0
~DMA_WR
Text Label 9150 7550 0    50   ~ 0
DataDir
Text Label 7700 7250 0    50   ~ 0
A4
Text Label 7700 7350 0    50   ~ 0
A5
Text Label 7700 7450 0    50   ~ 0
A6
Text Label 7700 7550 0    50   ~ 0
A7
Text Label 9100 7450 0    50   ~ 0
~IdeEnable
Text Label 7650 7850 0    50   ~ 0
~BusEnable
Text Label 9150 7650 0    50   ~ 0
RegWr
Text Label 9150 7750 0    50   ~ 0
RegRd
Text Label 5350 5050 0    50   ~ 0
RegRd
Text Label 5350 5150 0    50   ~ 0
RegWr
Wire Wire Line
	13900 6050 13600 6050
Text Label 13650 6050 0    50   ~ 0
~RESET
Wire Wire Line
	2150 4300 2500 4300
Wire Wire Line
	950  4300 600  4300
Text Label 650  4300 0    50   ~ 0
~BUSRQ
Text Label 2250 4300 0    50   ~ 0
IdeA2
Text Label 5350 4850 0    50   ~ 0
BusRequest
Wire Wire Line
	950  4800 600  4800
Text Label 650  4800 0    50   ~ 0
~INT
Wire Wire Line
	950  4500 600  4500
Wire Wire Line
	2150 4600 2500 4600
Wire Wire Line
	950  4600 600  4600
Text Label 650  4500 0    50   ~ 0
~M1
Text Label 650  4600 0    50   ~ 0
~MEMRQ
Text Label 2250 4600 0    50   ~ 0
~IOREQ
Wire Wire Line
	2150 4700 2500 4700
Wire Wire Line
	950  4700 600  4700
Text Label 650  4700 0    50   ~ 0
~RD
Text Label 2350 4700 0    50   ~ 0
~WR
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 60B4AAD3
P 1800 8350
F 0 "Q?" H 1991 8396 50  0000 L CNN
F 1 "BC547" H 1991 8305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2000 8275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 1800 8350 50  0001 L CNN
	1    1800 8350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B4C7AC
P 2250 8350
F 0 "R?" V 2043 8350 50  0000 C CNN
F 1 "R" V 2134 8350 50  0000 C CNN
F 2 "" V 2180 8350 50  0001 C CNN
F 3 "~" H 2250 8350 50  0001 C CNN
	1    2250 8350
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 8350 2100 8350
Wire Wire Line
	2400 8350 2800 8350
Wire Wire Line
	1700 8150 1700 7950
Wire Wire Line
	1700 7950 1200 7950
Wire Wire Line
	1700 8550 1700 8700
Text Label 1300 7950 0    50   ~ 0
~BUSRQ
Text Label 2450 8350 0    50   ~ 0
BusRequest
$Comp
L power:GND #PWR?
U 1 1 60BA5E22
P 1700 8700
F 0 "#PWR?" H 1700 8450 50  0001 C CNN
F 1 "GND" H 1705 8527 50  0000 C CNN
F 2 "" H 1700 8700 50  0001 C CNN
F 3 "" H 1700 8700 50  0001 C CNN
	1    1700 8700
	1    0    0    -1  
$EndComp
Text Label 9150 7850 0    50   ~ 0
OutIntVect
Text Label 5450 3350 0    50   ~ 0
OutIntVect
Text Label 5050 7600 0    50   ~ 0
~BusEnable
Text Notes 3800 7900 0    50   ~ 0
For outputting the Interrupt Vector (reg)\nwe need an extra signal to independently\nenable the data buffer.
$EndSCHEMATC
