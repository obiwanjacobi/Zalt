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
P 8200 2300
F 0 "U?" H 8200 3281 50  0000 C CNN
F 1 "74ACT573 (fast)" H 8200 3190 50  0000 C CNN
F 2 "" H 8200 2300 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 8200 2300 50  0001 C CNN
	1    8200 2300
	1    0    0    -1  
$EndComp
Text Notes 1100 7400 0    50   ~ 0
Read:\nIde is accessed to fetch a logical block.\n\nAfter BUSRQ/BUSACK the external memory interface \nis initialized and enabled to access the Z80 bus.\n\nThen the internal buffer is copied into the Z80 memory \nbuffer. Due to low internal SRAM this will probably be \ntwo cycles of a couple of kB bytes to read/write one file/stream to/from IDE.\n\nWhen done, the Z80 is released.
Wire Wire Line
	6600 1800 7700 1800
Wire Wire Line
	6600 1900 7700 1900
Wire Wire Line
	6600 2000 7700 2000
Wire Wire Line
	6600 2100 7700 2100
Wire Wire Line
	6600 2200 7700 2200
Wire Wire Line
	6600 2300 7700 2300
Wire Wire Line
	6600 2400 7700 2400
Wire Wire Line
	6600 2500 7700 2500
Wire Wire Line
	8700 1800 9150 1800
Wire Wire Line
	8700 1900 9150 1900
Wire Wire Line
	8700 2000 9150 2000
Wire Wire Line
	8700 2100 9150 2100
Wire Wire Line
	8700 2200 9150 2200
Wire Wire Line
	8700 2300 9150 2300
Wire Wire Line
	8700 2400 9150 2400
Wire Wire Line
	8700 2500 9150 2500
Text Label 9000 1800 0    50   ~ 0
A0
Text Label 9000 1900 0    50   ~ 0
A1
Text Label 9000 2000 0    50   ~ 0
A2
Text Label 9000 2100 0    50   ~ 0
A3
Text Label 9000 2200 0    50   ~ 0
A4
Text Label 9000 2300 0    50   ~ 0
A5
Text Label 9000 2400 0    50   ~ 0
A6
Text Label 9000 2500 0    50   ~ 0
A7
Wire Wire Line
	7700 2700 7450 2700
Text Label 7450 2700 0    50   ~ 0
ALE
$Comp
L Connector:AVR-ISP-6 J?
U 1 1 601C43C7
P 1950 10100
F 0 "J?" H 1621 10196 50  0000 R CNN
F 1 "AVR-ISP-6" H 1621 10105 50  0000 R CNN
F 2 "" V 1700 10150 50  0001 C CNN
F 3 " ~" H 675 9550 50  0001 C CNN
	1    1950 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 9900 2750 9900
Wire Wire Line
	2350 10000 2750 10000
Wire Wire Line
	2350 10100 2750 10100
Wire Wire Line
	2350 10200 2750 10200
Text Label 2500 9900 0    50   ~ 0
MOSI
Text Label 2500 10000 0    50   ~ 0
MISO
Text Label 2500 10100 0    50   ~ 0
SCK
Text Label 2500 10200 0    50   ~ 0
~RST
Wire Wire Line
	5400 1800 5200 1800
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 601D509F
P 5100 1800
F 0 "JP?" H 5100 2012 50  0000 C CNN
F 1 "Open to Program" H 5100 1921 50  0000 C CNN
F 2 "" H 5100 1800 50  0001 C CNN
F 3 "~" H 5100 1800 50  0001 C CNN
	1    5100 1800
	1    0    0    -1  
$EndComp
Text Label 5250 1800 0    50   ~ 0
~RST
Wire Wire Line
	5000 1800 4700 1800
Text Label 4750 1800 0    50   ~ 0
~RESET
Wire Wire Line
	950  5100 600  5100
Text Label 650  5100 0    50   ~ 0
~RESET
$Comp
L Device:Crystal Y?
U 1 1 601DCEB3
P 4650 2200
F 0 "Y?" H 4650 2468 50  0000 C CNN
F 1 "16MHz" H 4650 2377 50  0000 C CNN
F 2 "" H 4650 2200 50  0001 C CNN
F 3 "~" H 4650 2200 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2200 4900 2200
Wire Wire Line
	5400 2000 4350 2000
Wire Wire Line
	4350 2000 4350 2200
Wire Wire Line
	4350 2200 4500 2200
Wire Wire Line
	4350 2200 4350 2350
Connection ~ 4350 2200
Wire Wire Line
	4900 2200 4900 2350
Connection ~ 4900 2200
Wire Wire Line
	4900 2200 4800 2200
$Comp
L Device:C_Small C?
U 1 1 601EC481
P 4350 2450
F 0 "C?" H 4442 2496 50  0000 L CNN
F 1 "22pF" H 4442 2405 50  0000 L CNN
F 2 "" H 4350 2450 50  0001 C CNN
F 3 "~" H 4350 2450 50  0001 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 601ECB1C
P 4900 2450
F 0 "C?" H 4992 2496 50  0000 L CNN
F 1 "22pF" H 4992 2405 50  0000 L CNN
F 2 "" H 4900 2450 50  0001 C CNN
F 3 "~" H 4900 2450 50  0001 C CNN
	1    4900 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601ED003
P 4350 2700
F 0 "#PWR?" H 4350 2450 50  0001 C CNN
F 1 "GND" H 4355 2527 50  0000 C CNN
F 2 "" H 4350 2700 50  0001 C CNN
F 3 "" H 4350 2700 50  0001 C CNN
	1    4350 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601ED8FA
P 7000 1350
F 0 "#PWR?" H 7000 1200 50  0001 C CNN
F 1 "+5V" H 7015 1523 50  0000 C CNN
F 2 "" H 7000 1350 50  0001 C CNN
F 3 "" H 7000 1350 50  0001 C CNN
	1    7000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601EE441
P 4900 2700
F 0 "#PWR?" H 4900 2450 50  0001 C CNN
F 1 "GND" H 4905 2527 50  0000 C CNN
F 2 "" H 4900 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2550 4350 2700
Wire Wire Line
	4900 2550 4900 2700
Wire Wire Line
	6450 1450 7000 1450
Wire Wire Line
	7000 1450 7000 1350
Text Label 7450 2800 0    50   ~ 0
~BusEnable
Wire Wire Line
	7700 2800 7450 2800
$Comp
L power:+5V #PWR?
U 1 1 602C083F
P 8650 1450
F 0 "#PWR?" H 8650 1300 50  0001 C CNN
F 1 "+5V" H 8665 1623 50  0000 C CNN
F 2 "" H 8650 1450 50  0001 C CNN
F 3 "" H 8650 1450 50  0001 C CNN
	1    8650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 602C124C
P 1850 9500
F 0 "#PWR?" H 1850 9350 50  0001 C CNN
F 1 "+5V" H 1865 9673 50  0000 C CNN
F 2 "" H 1850 9500 50  0001 C CNN
F 3 "" H 1850 9500 50  0001 C CNN
	1    1850 9500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60339F54
P 8200 3200
F 0 "#PWR?" H 8200 2950 50  0001 C CNN
F 1 "GND" H 8205 3027 50  0000 C CNN
F 2 "" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6033A2F2
P 5950 8700
F 0 "#PWR?" H 5950 8450 50  0001 C CNN
F 1 "GND" H 5955 8527 50  0000 C CNN
F 2 "" H 5950 8700 50  0001 C CNN
F 3 "" H 5950 8700 50  0001 C CNN
	1    5950 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6033B23A
P 1850 10600
F 0 "#PWR?" H 1850 10350 50  0001 C CNN
F 1 "GND" H 1855 10427 50  0000 C CNN
F 2 "" H 1850 10600 50  0001 C CNN
F 3 "" H 1850 10600 50  0001 C CNN
	1    1850 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 9500 1850 9600
Wire Wire Line
	1850 10500 1850 10600
Wire Wire Line
	8200 1500 8650 1500
Wire Wire Line
	8650 1500 8650 1450
Wire Wire Line
	8200 3100 8200 3200
Wire Wire Line
	5950 8600 5950 8700
$Comp
L IDE:Conn_IDE40 J?
U 1 1 603E6D59
P 12500 4500
F 0 "J?" H 12300 4615 50  0000 C CNN
F 1 "Conn_IDE40" H 12300 4524 50  0000 C CNN
F 2 "" H 12500 4500 50  0001 C CNN
F 3 "" H 12500 4500 50  0001 C CNN
	1    12500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 4750 11500 4750
Wire Wire Line
	11800 4850 11500 4850
Wire Wire Line
	11800 4950 11500 4950
Wire Wire Line
	11800 5050 11500 5050
Wire Wire Line
	11800 5150 11500 5150
Wire Wire Line
	11800 5250 11500 5250
Wire Wire Line
	11800 5350 11500 5350
Wire Wire Line
	11800 5450 11500 5450
Wire Wire Line
	12800 4750 13150 4750
Wire Wire Line
	12800 4850 13150 4850
Wire Wire Line
	12800 4950 13150 4950
Wire Wire Line
	12800 5050 13150 5050
Wire Wire Line
	12800 5150 13150 5150
Wire Wire Line
	12800 5250 13150 5250
Wire Wire Line
	12800 5350 13150 5350
Wire Wire Line
	12800 5450 13150 5450
Text Label 11550 4750 0    50   ~ 0
DD7
Text Label 11550 4850 0    50   ~ 0
DD6
Text Label 11550 4950 0    50   ~ 0
DD5
Text Label 11550 5050 0    50   ~ 0
DD4
Text Label 11550 5150 0    50   ~ 0
DD3
Text Label 11550 5250 0    50   ~ 0
DD2
Text Label 11550 5350 0    50   ~ 0
DD1
Text Label 11550 5450 0    50   ~ 0
DD0
Text Label 12950 4750 0    50   ~ 0
DD8
Text Label 12950 4850 0    50   ~ 0
DD9
Text Label 12950 4950 0    50   ~ 0
DD10
Text Label 12950 5050 0    50   ~ 0
DD11
Text Label 12950 5150 0    50   ~ 0
DD12
Text Label 12950 5250 0    50   ~ 0
DD13
Text Label 12950 5350 0    50   ~ 0
DD14
Text Label 12950 5450 0    50   ~ 0
DD15
Text Notes 5050 6700 0    50   ~ 0
(positive logic)\nMEMRQ = BusEnable & (DMA_RD | DMA_WR) - .OE = BusEnable\nRD = BusEnable & DMA_RD - .OE = BusEnable\nWR = BusEnable & DMA_WR - .OE = BusEnable\nIdeEnable = !BusEnable\nDataDir = DMA_WR\nRegWr = IOREQ & WR & A[4..7]\nRegRd = IOREQ & RD & A[4..7]
Wire Wire Line
	11800 5750 11500 5750
Wire Wire Line
	11800 5850 11500 5850
Wire Wire Line
	11800 6250 11500 6250
Wire Wire Line
	11800 6350 11500 6350
Wire Wire Line
	11800 6450 11500 6450
Wire Wire Line
	12800 6350 13100 6350
Text Label 11500 6250 0    50   ~ 0
IdeA1
Text Label 11500 6350 0    50   ~ 0
IdeA0
Text Label 12900 6350 0    50   ~ 0
IdeA2
Text Label 11500 6450 0    50   ~ 0
~IdeSel
$Comp
L G22V10:G22V10 U?
U 1 1 608BC719
P 5900 7750
F 0 "U?" H 5875 8581 50  0000 C CNN
F 1 "G22V10" H 5875 8490 50  0000 C CNN
F 2 "" H 5800 8350 50  0001 C CNN
F 3 "" H 5800 8350 50  0001 C CNN
	1    5900 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 7300 5000 7300
Wire Wire Line
	5400 7400 5000 7400
Wire Wire Line
	5400 7500 5000 7500
Wire Wire Line
	5400 7600 5000 7600
Wire Wire Line
	5400 7700 5000 7700
Wire Wire Line
	5400 7800 5000 7800
Wire Wire Line
	5400 7900 5000 7900
Wire Wire Line
	5400 8000 5000 8000
Wire Wire Line
	5400 8100 5000 8100
Wire Wire Line
	5400 8200 5000 8200
Wire Wire Line
	5400 8300 5000 8300
Wire Wire Line
	5400 8400 5000 8400
Wire Wire Line
	6350 7300 6800 7300
Wire Wire Line
	6350 7400 6800 7400
Wire Wire Line
	6350 7500 6800 7500
Wire Wire Line
	6350 7600 6800 7600
Wire Wire Line
	6350 7700 6800 7700
Wire Wire Line
	6350 7800 6800 7800
Wire Wire Line
	6350 7900 6800 7900
Wire Wire Line
	6350 8000 6800 8000
Wire Wire Line
	6350 8100 6800 8100
Wire Wire Line
	6350 8200 6800 8200
Text Label 5050 7300 0    50   ~ 0
~M1
Text Label 5050 7400 0    50   ~ 0
~IOREQ
Text Label 5050 7500 0    50   ~ 0
~RD
Text Label 5050 7600 0    50   ~ 0
~WR
Text Label 5050 7800 0    50   ~ 0
A4
Text Label 5050 7900 0    50   ~ 0
A5
Text Label 5050 8000 0    50   ~ 0
A6
Text Label 5050 8100 0    50   ~ 0
A7
Text Label 6500 7900 0    50   ~ 0
RegWr
Text Label 6500 8000 0    50   ~ 0
RegRd
Wire Wire Line
	2150 4300 2500 4300
Wire Wire Line
	950  4300 600  4300
Text Label 650  4300 0    50   ~ 0
~BUSRQ
Text Label 2250 4300 0    50   ~ 0
~BUSACK
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
P 1650 8300
F 0 "Q?" H 1841 8346 50  0000 L CNN
F 1 "BC547" H 1841 8255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1850 8225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 1650 8300 50  0001 L CNN
	1    1650 8300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B4C7AC
P 2100 8300
F 0 "R?" V 1893 8300 50  0000 C CNN
F 1 "3.3k" V 1984 8300 50  0000 C CNN
F 2 "" V 2030 8300 50  0001 C CNN
F 3 "~" H 2100 8300 50  0001 C CNN
	1    2100 8300
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 8300 1950 8300
Wire Wire Line
	2250 8300 2650 8300
Wire Wire Line
	1550 8100 1550 7900
Wire Wire Line
	1550 7900 1050 7900
Wire Wire Line
	1550 8500 1550 8650
Text Label 1150 7900 0    50   ~ 0
~BUSRQ
Text Label 2300 8300 0    50   ~ 0
BusRequest
$Comp
L power:GND #PWR?
U 1 1 60BA5E22
P 1550 8650
F 0 "#PWR?" H 1550 8400 50  0001 C CNN
F 1 "GND" H 1555 8477 50  0000 C CNN
F 2 "" H 1550 8650 50  0001 C CNN
F 3 "" H 1550 8650 50  0001 C CNN
	1    1550 8650
	1    0    0    -1  
$EndComp
Text Label 6500 8100 0    50   ~ 0
OutIntVect
$Comp
L MCU_Microchip_ATmega:ATmega128A-AU U?
U 1 1 601FCAFF
P 6000 3500
F 0 "U?" H 6000 1411 50  0000 C CNN
F 1 "ATmega128A-AU" H 6000 1320 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_14x14mm_P0.8mm" H 6000 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8151-8-bit-AVR-ATmega128A_Datasheet.pdf" H 6000 3500 50  0001 C CNN
	1    6000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2700 7200 2700
Wire Wire Line
	6600 2800 7200 2800
Wire Wire Line
	6600 2900 7200 2900
Wire Wire Line
	6600 3000 7200 3000
Wire Wire Line
	6600 3100 7200 3100
Wire Wire Line
	6600 3200 7200 3200
Wire Wire Line
	6600 3300 7200 3300
Wire Wire Line
	6600 3400 7200 3400
Wire Wire Line
	6600 3600 7200 3600
Wire Wire Line
	6600 3700 7200 3700
Wire Wire Line
	6600 3800 7200 3800
Wire Wire Line
	6600 3900 7200 3900
Wire Wire Line
	6600 4000 7200 4000
Wire Wire Line
	6600 4100 7200 4100
Wire Wire Line
	6600 4200 7200 4200
Wire Wire Line
	6600 4300 7200 4300
Wire Wire Line
	6600 4500 7200 4500
Wire Wire Line
	6600 4600 7200 4600
Wire Wire Line
	6600 4700 7200 4700
Wire Wire Line
	6600 4800 7200 4800
Wire Wire Line
	6600 4900 7200 4900
Wire Wire Line
	6600 5000 7200 5000
Wire Wire Line
	6600 5100 7200 5100
Wire Wire Line
	6600 5200 7200 5200
Wire Wire Line
	5400 3600 4850 3600
Wire Wire Line
	5400 3700 4850 3700
Wire Wire Line
	5400 3800 4850 3800
Wire Wire Line
	5400 3900 4850 3900
Wire Wire Line
	5400 4000 4850 4000
Wire Wire Line
	5400 4100 4850 4100
Wire Wire Line
	5400 4200 4850 4200
Wire Wire Line
	5400 4300 4850 4300
Wire Wire Line
	5400 4500 4850 4500
Wire Wire Line
	5400 4600 4850 4600
Wire Wire Line
	5400 4700 4850 4700
Wire Wire Line
	5400 4800 4850 4800
Wire Wire Line
	5400 4900 4850 4900
Wire Wire Line
	5400 5000 4850 5000
Wire Wire Line
	5400 5100 4850 5100
Wire Wire Line
	5400 5200 4850 5200
Wire Wire Line
	5400 2800 5050 2800
Wire Wire Line
	5400 2900 5050 2900
Wire Wire Line
	5400 3000 5050 3000
Wire Wire Line
	5400 3100 5050 3100
Wire Wire Line
	5400 3200 5050 3200
Text Label 5050 3000 0    50   ~ 0
ALE
Text Label 7000 2800 0    50   ~ 0
SCK
Text Label 7000 2900 0    50   ~ 0
MOSI
Text Label 7000 3000 0    50   ~ 0
MISO
Text Label 5050 2800 0    50   ~ 0
~WR
Text Label 5050 2900 0    50   ~ 0
~RD
Text Label 11500 5750 0    50   ~ 0
~IdeWr
Text Label 11500 5850 0    50   ~ 0
~IdeRd
Text Label 5100 3600 0    50   ~ 0
IdeA0
Text Label 5100 3700 0    50   ~ 0
IdeA1
Text Label 5100 3800 0    50   ~ 0
IdeA2
Text Label 5100 3900 0    50   ~ 0
~IdeSel
Text Label 6950 3400 0    50   ~ 0
~IdeRd
Text Label 6950 3300 0    50   ~ 0
~IdeWr
Text Label 6800 2700 0    50   ~ 0
~BusEnable
Text Label 4900 5000 0    50   ~ 0
RegRd
Text Label 4900 5100 0    50   ~ 0
RegWr
Text Label 4900 5200 0    50   ~ 0
OutIntVect
Text Label 4900 4900 0    50   ~ 0
Interrupt
Text Label 4900 4800 0    50   ~ 0
BusRequest
Text Label 5050 3200 0    50   ~ 0
~BUSACK
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 60D35EE1
P 3050 9000
F 0 "Q?" H 3241 9046 50  0000 L CNN
F 1 "BC547" H 3241 8955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3250 8925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3050 9000 50  0001 L CNN
	1    3050 9000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60D36357
P 3500 9000
F 0 "R?" V 3293 9000 50  0000 C CNN
F 1 "3.3k" V 3384 9000 50  0000 C CNN
F 2 "" V 3430 9000 50  0001 C CNN
F 3 "~" H 3500 9000 50  0001 C CNN
	1    3500 9000
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 9000 3350 9000
Wire Wire Line
	3650 9000 4050 9000
Wire Wire Line
	2950 8800 2950 8600
Wire Wire Line
	2950 8600 2450 8600
Wire Wire Line
	2950 9200 2950 9350
Text Label 2550 8600 0    50   ~ 0
~INT
Text Label 3700 9000 0    50   ~ 0
Interrupt
$Comp
L power:GND #PWR?
U 1 1 60D36368
P 2950 9350
F 0 "#PWR?" H 2950 9100 50  0001 C CNN
F 1 "GND" H 2955 9177 50  0000 C CNN
F 2 "" H 2950 9350 50  0001 C CNN
F 3 "" H 2950 9350 50  0001 C CNN
	1    2950 9350
	1    0    0    -1  
$EndComp
Text Label 6750 1800 0    50   ~ 0
D0
Text Label 6750 1900 0    50   ~ 0
D1
Text Label 6750 2000 0    50   ~ 0
D2
Text Label 6750 2100 0    50   ~ 0
D3
Text Label 6750 2200 0    50   ~ 0
D4
Text Label 6750 2300 0    50   ~ 0
D5
Text Label 6750 2400 0    50   ~ 0
D6
Text Label 6750 2500 0    50   ~ 0
D7
Text Notes 3850 3250 0    50   ~ 0
D[0..7] and PG[0..3]\nare configure to inputs when\nZ80 bus is not acquired. 
Text Label 5050 3100 0    50   ~ 0
~MEMRQ
Text Notes 3650 5200 0    50   ~ 0
RegRd, RegWr and OutIntVect\nare on INT-pins to handle\nthem quiclky
$Comp
L 74xx:74HC245 U?
U 1 1 601927FC
P 9350 5000
F 0 "U?" H 9350 5981 50  0000 C CNN
F 1 "74HC245" H 9350 5890 50  0000 C CNN
F 2 "" H 9350 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 9350 5000 50  0001 C CNN
	1    9350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4500 10350 4500
Wire Wire Line
	9850 4600 10350 4600
Wire Wire Line
	9850 4700 10350 4700
Wire Wire Line
	9850 4800 10350 4800
Wire Wire Line
	9850 4900 10350 4900
Wire Wire Line
	9850 5000 10350 5000
Wire Wire Line
	9850 5100 10350 5100
Wire Wire Line
	9850 5200 10350 5200
Wire Wire Line
	8850 4500 8300 4500
Wire Wire Line
	8850 4600 8300 4600
Wire Wire Line
	8850 4700 8300 4700
Wire Wire Line
	8850 4800 8300 4800
Wire Wire Line
	8850 4900 8300 4900
Wire Wire Line
	8850 5000 8300 5000
Wire Wire Line
	8850 5100 8300 5100
Wire Wire Line
	8850 5200 8300 5200
Text Label 10150 4500 0    50   ~ 0
A8
Text Label 10150 4600 0    50   ~ 0
A9
Text Label 10150 4700 0    50   ~ 0
A10
Text Label 10150 4800 0    50   ~ 0
A11
Text Label 10150 4900 0    50   ~ 0
A12
Text Label 10150 5000 0    50   ~ 0
A13
Text Label 10150 5100 0    50   ~ 0
A14
Text Label 10150 5200 0    50   ~ 0
A15
Text Label 7000 3600 0    50   ~ 0
DD8
Text Label 7000 3700 0    50   ~ 0
DD9
Text Label 7000 3800 0    50   ~ 0
DD10
Text Label 7000 3900 0    50   ~ 0
DD11
Text Label 7000 4000 0    50   ~ 0
DD12
Text Label 7000 4100 0    50   ~ 0
DD13
Text Label 7000 4200 0    50   ~ 0
DD14
Text Label 7000 4300 0    50   ~ 0
DD15
Text Label 8400 4500 0    50   ~ 0
DD8
Text Label 8400 4600 0    50   ~ 0
DD9
Text Label 8400 4700 0    50   ~ 0
DD10
Text Label 8400 4800 0    50   ~ 0
DD11
Text Label 8400 4900 0    50   ~ 0
DD12
Text Label 8400 5000 0    50   ~ 0
DD13
Text Label 8400 5100 0    50   ~ 0
DD14
Text Label 8400 5200 0    50   ~ 0
DD15
Text Label 7000 4500 0    50   ~ 0
DD0
Text Label 7000 4600 0    50   ~ 0
DD1
Text Label 7000 4700 0    50   ~ 0
DD2
Text Label 7000 4800 0    50   ~ 0
DD3
Text Label 7000 4900 0    50   ~ 0
DD4
Text Label 7000 5000 0    50   ~ 0
DD5
Text Label 7000 5100 0    50   ~ 0
DD6
Text Label 7000 5200 0    50   ~ 0
DD7
$Comp
L Connector:AVR-JTAG-10 J?
U 1 1 60517826
P 3900 10050
F 0 "J?" H 3470 10096 50  0000 R CNN
F 1 "AVR-JTAG-10" H 3470 10005 50  0000 R CNN
F 2 "" V 3750 10200 50  0001 C CNN
F 3 " ~" H 2625 9500 50  0001 C CNN
	1    3900 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 9750 4850 9750
Wire Wire Line
	4400 9850 4850 9850
Wire Wire Line
	4400 9950 4850 9950
Wire Wire Line
	4400 10050 4850 10050
Wire Wire Line
	4400 10150 4850 10150
Wire Wire Line
	4400 10250 4850 10250
Text Label 4650 9950 0    50   ~ 0
TCK
Text Label 4650 10050 0    50   ~ 0
TMS
Text Label 4650 10150 0    50   ~ 0
TDO
Text Label 4650 10250 0    50   ~ 0
TDI
Text Label 4950 4000 0    50   ~ 0
TCK
Text Label 4950 4100 0    50   ~ 0
TMS
Text Label 4950 4200 0    50   ~ 0
TDO
Text Label 4950 4300 0    50   ~ 0
TDI
Wire Wire Line
	8850 5400 8050 5400
Wire Wire Line
	8850 5500 8300 5500
Text Label 5050 7700 0    50   ~ 0
A3
Text Label 4950 4500 0    50   ~ 0
A0
Text Label 4950 4600 0    50   ~ 0
A1
Text Label 4950 4700 0    50   ~ 0
A2
Text Label 8400 5500 0    50   ~ 0
~BusEnable
Text Label 4650 9750 0    50   ~ 0
~RST
NoConn ~ 3900 9450
NoConn ~ 4850 9850
$Comp
L power:+5V #PWR?
U 1 1 605C80BB
P 3800 9450
F 0 "#PWR?" H 3800 9300 50  0001 C CNN
F 1 "+5V" H 3815 9623 50  0000 C CNN
F 2 "" H 3800 9450 50  0001 C CNN
F 3 "" H 3800 9450 50  0001 C CNN
	1    3800 9450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605C8980
P 3900 10650
F 0 "#PWR?" H 3900 10400 50  0001 C CNN
F 1 "GND" H 3905 10477 50  0000 C CNN
F 2 "" H 3900 10650 50  0001 C CNN
F 3 "" H 3900 10650 50  0001 C CNN
	1    3900 10650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 605CAF55
P 3550 8050
F 0 "Q?" H 3741 8096 50  0000 L CNN
F 1 "BC547" H 3741 8005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3750 7975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3550 8050 50  0001 L CNN
	1    3550 8050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 605CAF5B
P 4000 8050
F 0 "R?" V 3793 8050 50  0000 C CNN
F 1 "3.3k" V 3884 8050 50  0000 C CNN
F 2 "" V 3930 8050 50  0001 C CNN
F 3 "~" H 4000 8050 50  0001 C CNN
	1    4000 8050
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 8050 3850 8050
Wire Wire Line
	4150 8050 4550 8050
Wire Wire Line
	3450 7850 3450 7650
Wire Wire Line
	3450 7650 2950 7650
Wire Wire Line
	3450 8250 3450 8400
Text Label 3050 7650 0    50   ~ 0
~WAIT
Text Label 4200 8050 0    50   ~ 0
Wait
$Comp
L power:GND #PWR?
U 1 1 605CAF68
P 3450 8400
F 0 "#PWR?" H 3450 8150 50  0001 C CNN
F 1 "GND" H 3455 8227 50  0000 C CNN
F 2 "" H 3450 8400 50  0001 C CNN
F 3 "" H 3450 8400 50  0001 C CNN
	1    3450 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4400 2500 4400
Text Label 2250 4400 0    50   ~ 0
~WAIT
Text Notes 7350 3750 0    50   ~ 0
Shared between XRAM and IDE
$Comp
L power:+5V #PWR?
U 1 1 605F2607
P 8050 5400
F 0 "#PWR?" H 8050 5250 50  0001 C CNN
F 1 "+5V" H 8065 5573 50  0000 C CNN
F 2 "" H 8050 5400 50  0001 C CNN
F 3 "" H 8050 5400 50  0001 C CNN
	1    8050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 4650 11500 4650
Text Label 11550 4650 0    50   ~ 0
~RESET
$EndSCHEMATC
