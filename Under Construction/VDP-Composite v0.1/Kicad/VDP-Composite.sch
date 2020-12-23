EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8450 2250 1050 1200
U 5FDC62A1
F0 "VDP" 50
F1 "VDP.sch" 50
F2 "~VDP_RD" I L 8450 2850 50 
F3 "~VDP_WR" I L 8450 2950 50 
F4 "VDP_A0" I L 8450 2350 50 
F5 "VDP_A1" I L 8450 2450 50 
F6 "~RESET" I L 8450 3150 50 
F7 "~INT" O L 8450 3250 50 
F8 "~CPU_WAIT" O L 8450 3350 50 
F9 "D[0..7]" B L 8450 2650 50 
F10 "AudioL" I R 9500 3100 50 
F11 "AudioR" I R 9500 3200 50 
$EndSheet
$Comp
L syshdr:BUSHDR-A HDR101
U 1 1 5FE14615
P 2700 2400
F 0 "HDR101" H 2700 3637 60  0000 C CNN
F 1 "BUSHDR-A" H 2700 3531 60  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2700 1750 60  0001 C CNN
F 3 "" H 2700 1750 60  0000 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
$Comp
L syshdr:BUSHDR-B HDR102
U 1 1 5FE17C33
P 6200 2350
F 0 "HDR102" H 6200 3587 60  0000 C CNN
F 1 "BUSHDR-B" H 6200 3481 60  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 6200 1700 60  0001 C CNN
F 3 "" H 6200 1700 60  0000 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2550 1750 2550
Wire Wire Line
	2100 2650 1750 2650
Wire Wire Line
	2100 2750 1750 2750
Wire Wire Line
	2100 2850 1750 2850
Wire Wire Line
	3300 2550 3650 2550
Wire Wire Line
	3300 2650 3650 2650
Wire Wire Line
	3300 2750 3650 2750
Wire Wire Line
	3300 2850 3650 2850
Text Label 1850 2550 0    50   ~ 0
D0
Text Label 1850 2650 0    50   ~ 0
D2
Text Label 1850 2750 0    50   ~ 0
D4
Text Label 1850 2850 0    50   ~ 0
D6
Text Label 3500 2550 0    50   ~ 0
D1
Text Label 3500 2650 0    50   ~ 0
D3
Text Label 3500 2750 0    50   ~ 0
D5
Text Label 3500 2850 0    50   ~ 0
D7
Entry Wire Line
	3650 2550 3750 2650
Entry Wire Line
	3650 2650 3750 2750
Entry Wire Line
	3650 2750 3750 2850
Entry Wire Line
	3650 2850 3750 2950
Entry Wire Line
	1650 2650 1750 2550
Entry Wire Line
	1650 2750 1750 2650
Entry Wire Line
	1650 2850 1750 2750
Entry Wire Line
	1650 2950 1750 2850
Wire Bus Line
	1650 3750 3750 3750
Text Label 2500 3750 0    50   ~ 0
D[0..7]
Wire Bus Line
	8450 2650 8000 2650
Text Label 8050 2650 0    50   ~ 0
D[0..7]
Wire Wire Line
	8450 2350 8000 2350
Wire Wire Line
	8000 2450 8450 2450
Text Label 8100 2350 0    50   ~ 0
A0
Text Label 8100 2450 0    50   ~ 0
A1
Wire Wire Line
	8450 3150 8000 3150
Wire Wire Line
	8450 3250 8000 3250
Wire Wire Line
	8450 3350 8000 3350
Text Label 8050 3150 0    50   ~ 0
~RST
Text Label 8050 3250 0    50   ~ 0
~INT
Text Label 8050 3350 0    50   ~ 0
~WAIT
Wire Wire Line
	2100 1550 1750 1550
Wire Wire Line
	3300 1550 3650 1550
Text Label 1850 1550 0    50   ~ 0
A0
Text Label 3500 1550 0    50   ~ 0
A1
Wire Wire Line
	5600 2300 5250 2300
Wire Wire Line
	5600 2000 5250 2000
Wire Wire Line
	6800 1600 7150 1600
Text Label 6950 1600 0    50   ~ 0
~WAIT
Text Label 5350 2000 0    50   ~ 0
~INT
Text Label 5350 2300 0    50   ~ 0
~RST
Wire Wire Line
	2100 1650 1750 1650
Wire Wire Line
	2100 1750 1750 1750
Wire Wire Line
	2100 1850 1750 1850
Wire Wire Line
	3300 1650 3650 1650
Wire Wire Line
	3300 1750 3650 1750
Wire Wire Line
	3300 1850 3650 1850
Text Label 1850 1650 0    50   ~ 0
A2
Text Label 1850 1750 0    50   ~ 0
A4
Text Label 1850 1850 0    50   ~ 0
A6
Text Label 3500 1650 0    50   ~ 0
A3
Text Label 3500 1750 0    50   ~ 0
A5
Text Label 3500 1850 0    50   ~ 0
A7
Wire Wire Line
	6800 1800 7150 1800
Wire Wire Line
	3300 2950 3650 2950
Wire Wire Line
	2100 3050 1750 3050
Text Label 1850 3050 0    50   ~ 0
~RD
Text Label 6900 1800 0    50   ~ 0
~IOREQ
Text Label 3450 2950 0    50   ~ 0
~WR
Wire Wire Line
	2100 1450 1450 1450
Wire Wire Line
	1450 1450 1450 1550
Wire Wire Line
	3300 1450 3800 1450
Wire Wire Line
	3800 1450 3800 1300
Wire Wire Line
	5600 1400 5050 1400
Wire Wire Line
	5050 1400 5050 1500
Wire Wire Line
	6800 1400 7350 1400
Wire Wire Line
	7350 1400 7350 1300
$Comp
L power:GND #PWR0105
U 1 1 5FE2D424
P 5050 1500
F 0 "#PWR0105" H 5050 1250 50  0001 C CNN
F 1 "GND" H 5055 1327 50  0000 C CNN
F 2 "" H 5050 1500 50  0001 C CNN
F 3 "" H 5050 1500 50  0001 C CNN
	1    5050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FE2D9D5
P 1450 1550
F 0 "#PWR0103" H 1450 1300 50  0001 C CNN
F 1 "GND" H 1455 1377 50  0000 C CNN
F 2 "" H 1450 1550 50  0001 C CNN
F 3 "" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5FE2E413
P 3800 1300
F 0 "#PWR0104" H 3800 1150 50  0001 C CNN
F 1 "+5V" H 3815 1473 50  0000 C CNN
F 2 "" H 3800 1300 50  0001 C CNN
F 3 "" H 3800 1300 50  0001 C CNN
	1    3800 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5FE2EA0A
P 7350 1300
F 0 "#PWR0109" H 7350 1150 50  0001 C CNN
F 1 "+5V" H 7365 1473 50  0000 C CNN
F 2 "" H 7350 1300 50  0001 C CNN
F 3 "" H 7350 1300 50  0001 C CNN
	1    7350 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5FE2F181
P 5800 4100
F 0 "#PWR0107" H 5800 3950 50  0001 C CNN
F 1 "+5V" H 5815 4273 50  0000 C CNN
F 2 "" H 5800 4100 50  0001 C CNN
F 3 "" H 5800 4100 50  0001 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FE2F841
P 5550 5900
F 0 "#PWR0106" H 5550 5650 50  0001 C CNN
F 1 "GND" H 5555 5727 50  0000 C CNN
F 2 "" H 5550 5900 50  0001 C CNN
F 3 "" H 5550 5900 50  0001 C CNN
	1    5550 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C101
U 1 1 5FE30276
P 6050 5750
F 0 "C101" H 6142 5796 50  0000 L CNN
F 1 "100nF" H 6142 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6050 5750 50  0001 C CNN
F 3 "~" H 6050 5750 50  0001 C CNN
	1    6050 5750
	1    0    0    -1  
$EndComp
Text Label 4650 5350 0    50   ~ 0
~IOREQ
Text Label 4650 5250 0    50   ~ 0
~RD
Text Label 4650 5150 0    50   ~ 0
~WR
Wire Wire Line
	8450 2850 8000 2850
Wire Wire Line
	8000 2950 8450 2950
Text Label 8050 2850 0    50   ~ 0
~VDP_RD
Text Label 8050 2950 0    50   ~ 0
~VDP_WR
Text Label 6200 5150 0    50   ~ 0
~VDP_RD
Text Label 6200 5050 0    50   ~ 0
~VDP_WR
Wire Wire Line
	5500 4150 5800 4150
Wire Wire Line
	5800 4150 5800 4100
Wire Wire Line
	5550 5850 6050 5850
Connection ~ 5550 5850
Wire Wire Line
	5550 5850 5550 5900
$Comp
L power:+5V #PWR0108
U 1 1 5FE5CB45
P 6050 5650
F 0 "#PWR0108" H 6050 5500 50  0001 C CNN
F 1 "+5V" H 6065 5823 50  0000 C CNN
F 2 "" H 6050 5650 50  0001 C CNN
F 3 "" H 6050 5650 50  0001 C CNN
	1    6050 5650
	1    0    0    -1  
$EndComp
Text Notes 4650 4200 0    50   ~ 0
IO Address Decoder
NoConn ~ 3300 3350
NoConn ~ 3300 3250
NoConn ~ 3300 3150
NoConn ~ 3300 3050
NoConn ~ 2100 3350
NoConn ~ 2100 3250
NoConn ~ 2100 3150
NoConn ~ 2100 2950
NoConn ~ 2100 2450
NoConn ~ 2100 2350
NoConn ~ 3300 2350
NoConn ~ 3300 2450
NoConn ~ 3300 2250
NoConn ~ 3300 2150
NoConn ~ 3300 2050
NoConn ~ 2100 2250
NoConn ~ 2100 2150
NoConn ~ 5600 3300
NoConn ~ 5600 3200
NoConn ~ 5600 3100
NoConn ~ 5600 3000
NoConn ~ 5600 2900
NoConn ~ 5600 2800
NoConn ~ 5600 2700
NoConn ~ 5600 2600
NoConn ~ 5600 2500
NoConn ~ 5600 2400
NoConn ~ 5600 2200
NoConn ~ 5600 2100
NoConn ~ 5600 1800
NoConn ~ 5600 1600
NoConn ~ 5600 1500
NoConn ~ 6800 1500
NoConn ~ 6800 1700
NoConn ~ 6800 2000
NoConn ~ 6800 2100
NoConn ~ 6800 2200
NoConn ~ 6800 2300
NoConn ~ 6800 2400
NoConn ~ 6800 2500
NoConn ~ 6800 2600
NoConn ~ 6800 2700
NoConn ~ 6800 2800
NoConn ~ 6800 2900
NoConn ~ 6800 3000
NoConn ~ 6800 3100
NoConn ~ 6800 3200
NoConn ~ 6800 3300
Text Label 6200 5250 0    50   ~ 0
~M1
$Comp
L 74xx:74HCT574 U102
U 1 1 60082819
P 2700 5350
F 0 "U102" H 2700 6331 50  0000 C CNN
F 1 "74HCT574" H 2700 6240 50  0000 C CNN
F 2 "Package_SO:SOP-20_7.5x12.8mm_P1.27mm" H 2700 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT574" H 2700 5350 50  0001 C CNN
	1    2700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 600848E9
P 2700 6150
F 0 "#PWR0110" H 2700 5900 50  0001 C CNN
F 1 "GND" H 2705 5977 50  0000 C CNN
F 2 "" H 2700 6150 50  0001 C CNN
F 3 "" H 2700 6150 50  0001 C CNN
	1    2700 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 60084D87
P 3000 4500
F 0 "#PWR0111" H 3000 4350 50  0001 C CNN
F 1 "+5V" H 3015 4673 50  0000 C CNN
F 2 "" H 3000 4500 50  0001 C CNN
F 3 "" H 3000 4500 50  0001 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4550 3000 4550
Wire Wire Line
	3000 4550 3000 4500
$Comp
L Device:C_Small C102
U 1 1 600874A2
P 3200 5950
F 0 "C102" H 3292 5996 50  0000 L CNN
F 1 "100nF" H 3292 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3200 5950 50  0001 C CNN
F 3 "~" H 3200 5950 50  0001 C CNN
	1    3200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6150 3200 6150
Wire Wire Line
	3200 6150 3200 6050
Connection ~ 2700 6150
$Comp
L power:+5V #PWR0112
U 1 1 60089B19
P 3200 5850
F 0 "#PWR0112" H 3200 5700 50  0001 C CNN
F 1 "+5V" H 3215 6023 50  0000 C CNN
F 2 "" H 3200 5850 50  0001 C CNN
F 3 "" H 3200 5850 50  0001 C CNN
	1    3200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4950 1750 4950
Wire Wire Line
	2200 5050 1750 5050
Wire Wire Line
	2200 5150 1750 5150
Wire Wire Line
	2200 5250 1750 5250
Wire Wire Line
	2200 5350 1750 5350
Wire Wire Line
	2200 5450 1750 5450
Wire Wire Line
	2200 5550 1750 5550
Wire Wire Line
	2200 5750 1750 5750
Wire Wire Line
	2200 5850 1750 5850
Wire Wire Line
	3200 4850 3650 4850
Wire Wire Line
	3200 4950 3650 4950
Wire Wire Line
	3200 5050 3650 5050
Wire Wire Line
	3200 5150 3650 5150
Wire Wire Line
	3200 5250 3650 5250
Wire Wire Line
	3200 5350 3650 5350
Wire Wire Line
	3200 5450 3650 5450
Wire Wire Line
	3200 5550 3650 5550
Text Label 1800 4950 0    50   ~ 0
D6
Text Label 1800 5050 0    50   ~ 0
D5
Text Label 1800 5150 0    50   ~ 0
D4
Text Label 1800 5250 0    50   ~ 0
D3
Text Label 1800 5350 0    50   ~ 0
D2
Text Label 1800 5450 0    50   ~ 0
D1
Text Label 1800 5550 0    50   ~ 0
D0
Text Label 3500 4850 0    50   ~ 0
D7
Text Label 3500 4950 0    50   ~ 0
D6
Text Label 3500 5050 0    50   ~ 0
D5
Text Label 3500 5150 0    50   ~ 0
D4
Text Label 3500 5250 0    50   ~ 0
D3
Text Label 3500 5350 0    50   ~ 0
D2
Text Label 3500 5450 0    50   ~ 0
D1
Text Label 3500 5550 0    50   ~ 0
D0
Entry Wire Line
	1650 4850 1750 4950
Entry Wire Line
	1650 4950 1750 5050
Entry Wire Line
	1650 5050 1750 5150
Entry Wire Line
	1650 5150 1750 5250
Entry Wire Line
	1650 5250 1750 5350
Entry Wire Line
	1650 5350 1750 5450
Entry Wire Line
	1650 5450 1750 5550
Entry Wire Line
	3650 4850 3750 4750
Entry Wire Line
	3650 4950 3750 4850
Entry Wire Line
	3650 5050 3750 4950
Entry Wire Line
	3650 5150 3750 5050
Entry Wire Line
	3650 5250 3750 5150
Entry Wire Line
	3650 5350 3750 5250
Entry Wire Line
	3650 5450 3750 5350
Entry Wire Line
	3650 5550 3750 5450
Connection ~ 1650 3750
Connection ~ 3750 3750
Text Notes 2300 4200 0    50   ~ 0
Interrupt Vector Register
Text Label 1800 5750 0    50   ~ 0
IVL
Text Label 1800 5850 0    50   ~ 0
~IVOE
Text Label 6200 4750 0    50   ~ 0
IVL
Text Label 6200 4650 0    50   ~ 0
~IVOE
Text Notes 950  6500 0    50   ~ 0
Interrupt Vecor Load (IVL)\nActivates when the correct IO Address is written to.
Text Notes 950  6850 0    50   ~ 0
Interrupt Vector Output Enable (IVOR) Activates when a Z80 CPU Interrupt \nAcknowledge Cycle is detected: ~M1~ and ~IOREQ~both active.
$Comp
L Jumper:SolderJumper_3_Bridged12 JP101
U 1 1 60136017
P 4350 6100
F 0 "JP101" V 4396 6167 50  0000 L CNN
F 1 "Vector-Enable" V 4305 6167 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4350 6100 50  0001 C CNN
F 3 "~" H 4350 6100 50  0001 C CNN
	1    4350 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 6100 4700 6100
$Comp
L power:GND #PWR0114
U 1 1 6013FC48
P 4350 6300
F 0 "#PWR0114" H 4350 6050 50  0001 C CNN
F 1 "GND" H 4355 6127 50  0000 C CNN
F 2 "" H 4350 6300 50  0001 C CNN
F 3 "" H 4350 6300 50  0001 C CNN
	1    4350 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R101
U 1 1 601402BA
P 4350 5750
F 0 "R101" H 4420 5796 50  0000 L CNN
F 1 "10k" H 4420 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4280 5750 50  0001 C CNN
F 3 "~" H 4350 5750 50  0001 C CNN
	1    4350 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 601409A0
P 4350 5600
F 0 "#PWR0113" H 4350 5450 50  0001 C CNN
F 1 "+5V" H 4365 5773 50  0000 C CNN
F 2 "" H 4350 5600 50  0001 C CNN
F 3 "" H 4350 5600 50  0001 C CNN
	1    4350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4850 1750 4850
Text Label 1800 4850 0    50   ~ 0
D7
Entry Wire Line
	1650 4750 1750 4850
Text Notes 9100 6300 0    50   ~ 0
IM0: Disable Vector-Enable Jumper (GND)\nIM1: Load Vector Register with a RST instruction\nIM2: Load Vector Register with an Interrupt Vector (D0 = 0)
Text Label 4650 4450 0    50   ~ 0
A0
Text Label 4650 4350 0    50   ~ 0
A1
Text Label 4650 4650 0    50   ~ 0
A2
Text Label 4650 4550 0    50   ~ 0
A3
Text Label 4650 4850 0    50   ~ 0
A4
Text Notes 6700 5150 0    50   ~ 0
A[2..7] & ~IOREQ~ & ~RD~
Text Notes 6700 5050 0    50   ~ 0
A[2..7] & ~IOREQ~ & ~WR~
Text Notes 6700 4750 0    50   ~ 0
A[0..7] & ~IOREQ~ & ~WR~
Text Notes 6700 4650 0    50   ~ 0
~IOREQ~ & ~M1~
Wire Wire Line
	5600 1700 5250 1700
Text Label 5350 1700 0    50   ~ 0
~M1
NoConn ~ 3300 1950
NoConn ~ 2100 2050
NoConn ~ 2100 1950
$Comp
L Connector:Screw_Terminal_01x02 J101
U 1 1 602C355A
P 8950 1350
F 0 "J101" H 9030 1342 50  0000 L CNN
F 1 "Power +5V" H 9030 1251 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 8950 1350 50  0001 C CNN
F 3 "~" H 8950 1350 50  0001 C CNN
	1    8950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 602C3754
P 8550 1250
F 0 "#PWR0115" H 8550 1100 50  0001 C CNN
F 1 "+5V" H 8565 1423 50  0000 C CNN
F 2 "" H 8550 1250 50  0001 C CNN
F 3 "" H 8550 1250 50  0001 C CNN
	1    8550 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 602C3BDA
P 8550 1550
F 0 "#PWR0116" H 8550 1300 50  0001 C CNN
F 1 "GND" H 8555 1377 50  0000 C CNN
F 2 "" H 8550 1550 50  0001 C CNN
F 3 "" H 8550 1550 50  0001 C CNN
	1    8550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1550 8550 1450
Wire Wire Line
	8550 1450 8750 1450
Wire Wire Line
	8750 1350 8550 1350
Wire Wire Line
	8550 1350 8550 1250
Wire Wire Line
	5950 4350 6500 4350
Wire Wire Line
	5950 4450 6500 4450
Wire Wire Line
	5950 4550 6500 4550
Wire Wire Line
	5950 4650 6500 4650
Wire Wire Line
	5950 4750 6500 4750
Wire Wire Line
	5950 4850 6500 4850
Wire Wire Line
	5950 4950 6500 4950
Wire Wire Line
	5950 5050 6500 5050
Wire Wire Line
	5000 5150 4600 5150
Wire Wire Line
	5000 5050 4600 5050
Wire Wire Line
	5000 4950 4600 4950
Wire Wire Line
	5000 4850 4600 4850
Wire Wire Line
	5000 4750 4600 4750
Wire Wire Line
	5000 4650 4600 4650
Wire Wire Line
	5000 4550 4600 4550
Wire Wire Line
	5000 4450 4600 4450
Wire Wire Line
	5000 4350 4600 4350
Wire Wire Line
	5550 5650 5550 5850
Text Label 4650 4950 0    50   ~ 0
A7
$Sheet
S 8450 3850 800  950 
U 60326DB5
F0 "SoundGen" 50
F1 "SoundGen.sch" 50
F2 "D[0..7]" B L 8450 4050 50 
F3 "~RESET" I L 8450 4300 50 
F4 "BDIR" I L 8450 4500 50 
F5 "BC1" I L 8450 4600 50 
F6 "AudioL" O R 9250 4200 50 
F7 "AudioR" O R 9250 4300 50 
$EndSheet
Wire Bus Line
	8450 4050 8000 4050
Wire Wire Line
	8450 4300 8000 4300
Wire Wire Line
	8450 4500 8000 4500
Wire Wire Line
	8450 4600 8000 4600
Text Label 8050 4050 0    50   ~ 0
D[0..7]
Text Label 8050 4300 0    50   ~ 0
~RST
Text Label 8050 4500 0    50   ~ 0
BDIR
Text Label 8050 4600 0    50   ~ 0
BC1
Wire Wire Line
	9250 4200 9850 4200
Wire Wire Line
	9850 4200 9850 3100
Wire Wire Line
	9850 3100 9500 3100
Wire Wire Line
	9250 4300 9950 4300
Wire Wire Line
	9950 4300 9950 3200
Wire Wire Line
	9950 3200 9500 3200
$Comp
L 22V10:G22V10 U101
U 1 1 6040F8FE
P 5500 4800
F 0 "U101" H 5475 5631 50  0000 C CNN
F 1 "G22V10" H 5475 5540 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_LongPads" H 5400 5400 50  0001 C CNN
F 3 "" H 5400 5400 50  0001 C CNN
	1    5500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5450 4700 5450
Wire Wire Line
	4700 5450 4700 6100
Wire Wire Line
	5000 5250 4600 5250
Wire Wire Line
	5000 5350 4600 5350
Wire Wire Line
	5950 5150 6500 5150
Wire Wire Line
	5950 5250 6500 5250
Text Label 4650 4750 0    50   ~ 0
A5
Text Label 4650 5050 0    50   ~ 0
A6
Text Label 6200 4950 0    50   ~ 0
BDIR
Text Label 6200 4850 0    50   ~ 0
BC1
NoConn ~ 6800 1900
NoConn ~ 5600 1900
NoConn ~ 6500 4550
NoConn ~ 6500 4450
NoConn ~ 6500 4350
Wire Bus Line
	1650 2650 1650 3750
Wire Bus Line
	3750 2650 3750 3750
Wire Bus Line
	3750 3750 3750 5450
Wire Bus Line
	1650 3750 1650 5450
$EndSCHEMATC
