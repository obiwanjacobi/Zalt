EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:memory
LIBS:texas
LIBS:audio
LIBS:interface
LIBS:display
LIBS:atmel
LIBS:contrib
LIBS:Zilog
LIBS:memory-umc
LIBS:g-link
LIBS:syshdr
LIBS:cypressmicro
LIBS:CY8CKIT-059
LIBS:GAL16v8
LIBS:tex
LIBS:tex2
LIBS:texas-msp
LIBS:TIL311
LIBS:Z80 Computer-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Zalt Z80 Computer"
Date "13 feb 2016"
Rev ""
Comp "Canned Bytes"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8750 1800 1150 2900
U 567BF679
F0 "CPU and Memory" 50
F1 "CPUandMemory.sch" 50
F2 "A0" B R 9900 1900 60 
F3 "A1" B R 9900 2000 60 
F4 "A2" B R 9900 2100 60 
F5 "A3" B R 9900 2200 60 
F6 "A4" B R 9900 2300 60 
F7 "A5" B R 9900 2400 60 
F8 "A6" B R 9900 2500 60 
F9 "A7" B R 9900 2600 60 
F10 "A8" B R 9900 2700 60 
F11 "A9" B R 9900 2800 60 
F12 "A10" B R 9900 2900 60 
F13 "A11" B R 9900 3000 60 
F14 "A12" B R 9900 3100 60 
F15 "A13" B R 9900 3200 60 
F16 "A14" B R 9900 3300 60 
F17 "A15" B R 9900 3400 60 
F18 "D0" B R 9900 3600 60 
F19 "D1" B R 9900 3700 60 
F20 "D2" B R 9900 3800 60 
F21 "D3" B R 9900 3900 60 
F22 "D4" B R 9900 4000 60 
F23 "D5" B R 9900 4100 60 
F24 "D6" B R 9900 4200 60 
F25 "D7" B R 9900 4300 60 
F26 "!CPU_RESET" I L 8750 1950 60 
F27 "!CPU_CLK" I L 8750 2050 60 
F28 "!CPU_WAIT" I L 8750 2150 60 
F29 "!CPU_HALT" O L 8750 2250 60 
F30 "!RD" B L 8750 2750 60 
F31 "!WR" B L 8750 2850 60 
F32 "!MEMREQ" B L 8750 2950 60 
F33 "!IOREQ" O L 8750 3050 60 
F34 "!BUSREQ" I L 8750 3250 60 
F35 "!BUSACK" O L 8750 3350 60 
F36 "!CPU_INT" I L 8750 2450 60 
F37 "!NMI" I L 8750 2550 60 
F38 "MA12" I L 8750 4250 60 
F39 "MA13" I L 8750 4350 60 
F40 "MA14" I L 8750 4450 60 
F41 "MA15" I L 8750 4550 60 
F42 "CPU_ME" I L 8750 3550 60 
F43 "!MBE1" I L 8750 3650 60 
F44 "!MBE2" I L 8750 3750 60 
F45 "!MBE3" I L 8750 3850 60 
F46 "!MBE4" I L 8750 3950 60 
F47 "!CPU_M1" O R 9900 4500 60 
$EndSheet
Entry Wire Line
	10350 1900 10450 1800
Entry Wire Line
	10350 2000 10450 1900
Entry Wire Line
	10350 2100 10450 2000
Entry Wire Line
	10350 2200 10450 2100
Entry Wire Line
	10350 2300 10450 2200
Entry Wire Line
	10350 2400 10450 2300
Entry Wire Line
	10350 2500 10450 2400
Entry Wire Line
	10350 2600 10450 2500
Entry Wire Line
	10350 2700 10450 2600
Entry Wire Line
	10350 2800 10450 2700
Entry Wire Line
	10350 2900 10450 2800
Entry Wire Line
	10350 3000 10450 2900
Entry Wire Line
	10350 3100 10450 3000
Entry Wire Line
	10350 3200 10450 3100
Entry Wire Line
	10350 3300 10450 3200
Entry Wire Line
	10350 3400 10450 3300
Entry Wire Line
	10350 3600 10450 3500
Entry Wire Line
	10350 3700 10450 3600
Entry Wire Line
	10350 3800 10450 3700
Entry Wire Line
	10350 3900 10450 3800
Entry Wire Line
	10350 4000 10450 3900
Entry Wire Line
	10350 4100 10450 4000
Entry Wire Line
	10350 4200 10450 4100
Entry Wire Line
	10350 4300 10450 4200
Text Label 10350 1900 2    60   ~ 0
A0
Text Label 10350 2000 2    60   ~ 0
A1
Text Label 10350 2100 2    60   ~ 0
A2
Text Label 10350 2200 2    60   ~ 0
A3
Text Label 10350 2300 2    60   ~ 0
A4
Text Label 10350 2400 2    60   ~ 0
A5
Text Label 10350 2500 2    60   ~ 0
A6
Text Label 10350 2600 2    60   ~ 0
A7
Text Label 10350 2700 2    60   ~ 0
A8
Text Label 10350 2800 2    60   ~ 0
A9
Text Label 10350 2900 2    60   ~ 0
A10
Text Label 10350 3000 2    60   ~ 0
A11
Text Label 10350 3100 2    60   ~ 0
A12
Text Label 10350 3200 2    60   ~ 0
A13
Text Label 10350 3300 2    60   ~ 0
A14
Text Label 10350 3400 2    60   ~ 0
A15
Text Label 10350 3600 2    60   ~ 0
D0
Text Label 10350 3700 2    60   ~ 0
D1
Text Label 10350 3800 2    60   ~ 0
D2
Text Label 10350 3900 2    60   ~ 0
D3
Text Label 10350 4000 2    60   ~ 0
D4
Text Label 10350 4100 2    60   ~ 0
D5
Text Label 10350 4200 2    60   ~ 0
D6
Text Label 10350 4300 2    60   ~ 0
D7
Entry Wire Line
	7400 1500 7500 1400
Entry Wire Line
	7400 1600 7500 1500
Entry Wire Line
	7400 1700 7500 1600
Entry Wire Line
	7400 1800 7500 1700
Entry Wire Line
	7400 1900 7500 1800
Entry Wire Line
	7400 2000 7500 1900
Entry Wire Line
	7400 2100 7500 2000
Entry Wire Line
	7400 2200 7500 2100
Entry Wire Line
	7400 2300 7500 2200
Entry Wire Line
	7400 2400 7500 2300
Entry Wire Line
	7400 2500 7500 2400
Entry Wire Line
	7400 2600 7500 2500
Entry Wire Line
	7400 2700 7500 2600
Entry Wire Line
	7400 2800 7500 2700
Entry Wire Line
	7400 2900 7500 2800
Entry Wire Line
	7400 3000 7500 2900
Entry Wire Line
	7400 3200 7500 3100
Entry Wire Line
	7400 3300 7500 3200
Entry Wire Line
	7400 3400 7500 3300
Entry Wire Line
	7400 3500 7500 3400
Entry Wire Line
	7400 3600 7500 3500
Entry Wire Line
	7400 3700 7500 3600
Entry Wire Line
	7400 3800 7500 3700
Entry Wire Line
	7400 3900 7500 3800
Text Label 7400 1500 2    60   ~ 0
A0
Text Label 7400 1600 2    60   ~ 0
A1
Text Label 7400 1700 2    60   ~ 0
A2
Text Label 7400 1800 2    60   ~ 0
A3
Text Label 7400 1900 2    60   ~ 0
A4
Text Label 7400 2000 2    60   ~ 0
A5
Text Label 7400 2100 2    60   ~ 0
A6
Text Label 7400 2200 2    60   ~ 0
A7
Text Label 7400 2300 2    60   ~ 0
A8
Text Label 7400 2400 2    60   ~ 0
A9
Text Label 7400 2500 2    60   ~ 0
A10
Text Label 7400 2600 2    60   ~ 0
A11
Text Label 7400 2700 2    60   ~ 0
A12
Text Label 7400 2800 2    60   ~ 0
A13
Text Label 7400 2900 2    60   ~ 0
A14
Text Label 7400 3000 2    60   ~ 0
A15
Text Label 7400 3200 2    60   ~ 0
D0
Text Label 7400 3300 2    60   ~ 0
D1
Text Label 7400 3400 2    60   ~ 0
D2
Text Label 7400 3500 2    60   ~ 0
D3
Text Label 7400 3600 2    60   ~ 0
D4
Text Label 7400 3700 2    60   ~ 0
D5
Text Label 7400 3800 2    60   ~ 0
D6
Text Label 7400 3900 2    60   ~ 0
D7
Entry Wire Line
	5150 1650 5250 1550
Entry Wire Line
	5150 1750 5250 1650
Entry Wire Line
	5150 1850 5250 1750
Entry Wire Line
	5150 1950 5250 1850
Entry Wire Line
	5150 2150 5250 2050
Entry Wire Line
	5150 2350 5250 2250
Entry Wire Line
	5150 2450 5250 2350
Entry Wire Line
	5150 2550 5250 2450
Entry Wire Line
	5150 2650 5250 2550
Entry Wire Line
	5150 2850 5250 2750
Entry Wire Line
	5150 2950 5250 2850
Entry Wire Line
	8150 2050 8250 1950
Entry Wire Line
	8150 2150 8250 2050
Entry Wire Line
	8150 2250 8250 2150
Entry Wire Line
	8150 2350 8250 2250
Entry Wire Line
	8150 2550 8250 2450
Entry Wire Line
	8150 2650 8250 2550
Entry Wire Line
	8150 2850 8250 2750
Entry Wire Line
	8150 2950 8250 2850
Entry Wire Line
	8150 3050 8250 2950
Entry Wire Line
	8150 3150 8250 3050
Entry Wire Line
	8150 3350 8250 3250
Entry Wire Line
	8150 3450 8250 3350
Entry Wire Line
	8150 3650 8250 3550
Entry Wire Line
	8150 3750 8250 3650
Entry Wire Line
	8150 3850 8250 3750
Entry Wire Line
	8150 3950 8250 3850
Entry Wire Line
	8150 4050 8250 3950
Entry Wire Line
	8150 4350 8250 4250
Entry Wire Line
	8150 4450 8250 4350
Entry Wire Line
	8150 4550 8250 4450
Entry Wire Line
	8150 4650 8250 4550
Text Label 8250 1950 0    60   ~ 0
!CPU_RST
Text Label 8250 2050 0    60   ~ 0
!CPU_CLK
Text Label 8250 2150 0    60   ~ 0
!CPU_WAIT
Text Label 8250 2250 0    60   ~ 0
!CPU_HALT
Text Label 8250 2450 0    60   ~ 0
!CPU_INT
Text Label 8250 2550 0    60   ~ 0
!NMI
Text Label 8250 2750 0    60   ~ 0
!RD
Text Label 8250 2850 0    60   ~ 0
!WR
Text Label 8250 2950 0    60   ~ 0
!MEMREQ
Text Label 8250 3050 0    60   ~ 0
!IOREQ
Text Label 8250 3250 0    60   ~ 0
!BUSREQ
Text Label 8250 3350 0    60   ~ 0
!BUSACK
Text Label 8250 3550 0    60   ~ 0
CPU_ME
Text Label 8250 3650 0    60   ~ 0
!MBE1
Text Label 8250 3750 0    60   ~ 0
!MBE2
Text Label 8250 3850 0    60   ~ 0
!MBE3
Text Label 8250 3950 0    60   ~ 0
!MBE4
Text Label 8250 4250 0    60   ~ 0
MA12
Text Label 8250 4350 0    60   ~ 0
MA13
Text Label 8250 4450 0    60   ~ 0
MA14
Text Label 8250 4550 0    60   ~ 0
MA15
Text Label 5250 1550 0    60   ~ 0
!CPU_CLK
Text Label 5250 1650 0    60   ~ 0
!CPU_WAIT
Text Label 5250 1750 0    60   ~ 0
!CPU_HALT
Text Label 5250 1850 0    60   ~ 0
!CPU_RST
Text Label 5250 2050 0    60   ~ 0
!CPU_INT
Text Label 5250 2250 0    60   ~ 0
!RD
Text Label 5250 2350 0    60   ~ 0
!WR
Text Label 5250 2450 0    60   ~ 0
!MEMREQ
Text Label 5250 2550 0    60   ~ 0
!IOREQ
Text Label 5250 2750 0    60   ~ 0
!BUSREQ
Text Label 5250 2850 0    60   ~ 0
!BUSACK
Wire Bus Line
	10450 1150 10450 4400
Wire Bus Line
	1100 1150 10450 1150
Wire Bus Line
	7500 1150 7500 3800
Wire Wire Line
	9900 1900 10350 1900
Wire Wire Line
	9900 2000 10350 2000
Wire Wire Line
	9900 2100 10350 2100
Wire Wire Line
	9900 2200 10350 2200
Wire Wire Line
	9900 2300 10350 2300
Wire Wire Line
	9900 2400 10350 2400
Wire Wire Line
	9900 2500 10350 2500
Wire Wire Line
	9900 2600 10350 2600
Wire Wire Line
	9900 2700 10350 2700
Wire Wire Line
	9900 2800 10350 2800
Wire Wire Line
	9900 2900 10350 2900
Wire Wire Line
	9900 3000 10350 3000
Wire Wire Line
	9900 3100 10350 3100
Wire Wire Line
	9900 3200 10350 3200
Wire Wire Line
	9900 3300 10350 3300
Wire Wire Line
	9900 3400 10350 3400
Wire Wire Line
	9900 3600 10350 3600
Wire Wire Line
	9900 3700 10350 3700
Wire Wire Line
	9900 3800 10350 3800
Wire Wire Line
	9900 3900 10350 3900
Wire Wire Line
	9900 4000 10350 4000
Wire Wire Line
	9900 4100 10350 4100
Wire Wire Line
	9900 4200 10350 4200
Wire Wire Line
	9900 4300 10350 4300
Wire Wire Line
	6950 1500 7400 1500
Wire Wire Line
	6950 1600 7400 1600
Wire Wire Line
	6950 1700 7400 1700
Wire Wire Line
	6950 1800 7400 1800
Wire Wire Line
	6950 1900 7400 1900
Wire Wire Line
	6950 2000 7400 2000
Wire Wire Line
	6950 2100 7400 2100
Wire Wire Line
	6950 2200 7400 2200
Wire Wire Line
	6950 2300 7400 2300
Wire Wire Line
	6950 2400 7400 2400
Wire Wire Line
	6950 2500 7400 2500
Wire Wire Line
	6950 2600 7400 2600
Wire Wire Line
	6950 2700 7400 2700
Wire Wire Line
	6950 2800 7400 2800
Wire Wire Line
	6950 2900 7400 2900
Wire Wire Line
	6950 3000 7400 3000
Wire Wire Line
	6950 3200 7400 3200
Wire Wire Line
	6950 3300 7400 3300
Wire Wire Line
	6950 3400 7400 3400
Wire Wire Line
	6950 3500 7400 3500
Wire Wire Line
	6950 3600 7400 3600
Wire Wire Line
	6950 3700 7400 3700
Wire Wire Line
	6950 3800 7400 3800
Wire Wire Line
	6950 3900 7400 3900
Wire Bus Line
	5150 950  5150 3400
Wire Bus Line
	8150 950  8150 5900
Wire Wire Line
	5250 1550 5700 1550
Wire Wire Line
	5250 1650 5700 1650
Wire Wire Line
	5250 1750 5700 1750
Wire Wire Line
	5250 1850 5700 1850
Wire Wire Line
	5250 2050 5700 2050
Wire Wire Line
	5250 2250 5700 2250
Wire Wire Line
	5250 2350 5700 2350
Wire Wire Line
	5250 2450 5700 2450
Wire Wire Line
	5250 2550 5700 2550
Wire Wire Line
	5250 2750 5700 2750
Wire Wire Line
	5250 2850 5700 2850
Wire Wire Line
	8250 1950 8750 1950
Wire Wire Line
	8250 2050 8750 2050
Wire Wire Line
	8250 2150 8750 2150
Wire Wire Line
	8250 2250 8750 2250
Wire Wire Line
	8250 2450 8750 2450
Wire Wire Line
	8250 2550 8750 2550
Wire Wire Line
	8250 2750 8750 2750
Wire Wire Line
	8250 2850 8750 2850
Wire Wire Line
	8250 2950 8750 2950
Wire Wire Line
	8250 3050 8750 3050
Wire Wire Line
	8250 3250 8750 3250
Wire Wire Line
	8250 3350 8750 3350
Wire Wire Line
	8250 3550 8750 3550
Wire Wire Line
	8250 3650 8750 3650
Wire Wire Line
	8250 3750 8750 3750
Wire Wire Line
	8250 3850 8750 3850
Wire Wire Line
	8250 3950 8750 3950
Wire Wire Line
	8250 4250 8750 4250
Wire Wire Line
	8250 4350 8750 4350
Wire Wire Line
	8250 4450 8750 4450
Wire Wire Line
	8250 4550 8750 4550
Wire Bus Line
	7450 4200 7450 5900
Entry Wire Line
	7350 4100 7450 4200
Entry Wire Line
	7350 4200 7450 4300
Entry Wire Line
	7350 4300 7450 4400
Entry Wire Line
	7350 4400 7450 4500
Entry Wire Line
	7350 4500 7450 4600
Entry Wire Line
	7350 4600 7450 4700
Entry Wire Line
	7350 4700 7450 4800
Entry Wire Line
	7350 4800 7450 4900
Wire Wire Line
	6950 4100 7350 4100
Wire Wire Line
	6950 4200 7350 4200
Wire Wire Line
	6950 4300 7350 4300
Wire Wire Line
	6950 4400 7350 4400
Wire Wire Line
	6950 4500 7350 4500
Wire Wire Line
	6950 4600 7350 4600
Wire Wire Line
	6950 4700 7350 4700
Wire Wire Line
	6950 4800 7350 4800
Text Label 7350 4100 2    60   ~ 0
MA12
Text Label 7350 4200 2    60   ~ 0
MA13
Text Label 7350 4300 2    60   ~ 0
MA14
Text Label 7350 4400 2    60   ~ 0
MA15
Text Label 7350 4500 2    60   ~ 0
MA16
Text Label 7350 4600 2    60   ~ 0
MA17
Text Label 7350 4700 2    60   ~ 0
MA18
Text Label 7350 4800 2    60   ~ 0
MA19
Wire Bus Line
	8150 950  5150 950 
Wire Bus Line
	7450 5900 8150 5900
Entry Wire Line
	7350 5000 7450 5100
Entry Wire Line
	7350 5100 7450 5200
Entry Wire Line
	7350 5200 7450 5300
Entry Wire Line
	7350 5300 7450 5400
Entry Wire Line
	7350 5400 7450 5500
Entry Wire Line
	7350 5500 7450 5600
Entry Wire Line
	7350 5600 7450 5700
Entry Wire Line
	7350 5700 7450 5800
Wire Wire Line
	6950 5000 7350 5000
Wire Wire Line
	6950 5100 7350 5100
Wire Wire Line
	6950 5200 7350 5200
Wire Wire Line
	6950 5300 7350 5300
Wire Wire Line
	6950 5400 7350 5400
Wire Wire Line
	6950 5500 7350 5500
Wire Wire Line
	6950 5600 7350 5600
Wire Wire Line
	6950 5700 7350 5700
Text Label 7350 5000 2    60   ~ 0
!MBE1
Text Label 7350 5100 2    60   ~ 0
!MBE2
Text Label 7350 5200 2    60   ~ 0
!MBE3
Text Label 7350 5300 2    60   ~ 0
!MBE4
Text Label 7350 5400 2    60   ~ 0
!MBE5
Text Label 7350 5500 2    60   ~ 0
!MBE6
Text Label 7350 5600 2    60   ~ 0
!MBE7
Text Label 7350 5700 2    60   ~ 0
!MBE8
$Sheet
S 5700 1400 1250 4400
U 56B78FD3
F0 "SystemControllerPSoC" 50
F1 "SystemControllerPSoC.sch" 50
F2 "A0" B R 6950 1500 60 
F3 "A1" B R 6950 1600 60 
F4 "A2" B R 6950 1700 60 
F5 "A3" B R 6950 1800 60 
F6 "A4" B R 6950 1900 60 
F7 "A5" B R 6950 2000 60 
F8 "A6" B R 6950 2100 60 
F9 "A7" B R 6950 2200 60 
F10 "A8" B R 6950 2300 60 
F11 "A9" B R 6950 2400 60 
F12 "A10" B R 6950 2500 60 
F13 "A11" B R 6950 2600 60 
F14 "A12" B R 6950 2700 60 
F15 "A13" B R 6950 2800 60 
F16 "A14" B R 6950 2900 60 
F17 "A15" B R 6950 3000 60 
F18 "D0" B R 6950 3200 60 
F19 "D1" B R 6950 3300 60 
F20 "D2" B R 6950 3400 60 
F21 "D3" B R 6950 3500 60 
F22 "D4" B R 6950 3600 60 
F23 "D5" B R 6950 3700 60 
F24 "D6" B R 6950 3800 60 
F25 "D7" B R 6950 3900 60 
F26 "MEMREQ" B L 5700 2450 60 
F27 "IOREQ" B L 5700 2550 60 
F28 "RD" B L 5700 2250 60 
F29 "WR" B L 5700 2350 60 
F30 "BUSREQ" O L 5700 2750 60 
F31 "BUSACK" I L 5700 2850 60 
F32 "CPURST" O L 5700 1850 60 
F33 "CPUCLK" O L 5700 1550 60 
F34 "CPUWAIT" O L 5700 1650 60 
F35 "CPUHALT" I L 5700 1750 60 
F36 "CPUM1" I L 5700 3050 60 
$EndSheet
$Sheet
S 1550 1400 950  2350
U 56B7E872
F0 "BusSpy" 50
F1 "BusSpy.sch" 50
F2 "A0" I L 1550 1500 60 
F3 "A1" I L 1550 1600 60 
F4 "A2" I L 1550 1700 60 
F5 "A3" I L 1550 1800 60 
F6 "A4" I L 1550 1900 60 
F7 "A5" I L 1550 2000 60 
F8 "A6" I L 1550 2100 60 
F9 "A7" I L 1550 2200 60 
F10 "A8" I L 1550 2300 60 
F11 "A9" I L 1550 2400 60 
F12 "A10" I L 1550 2500 60 
F13 "A11" I L 1550 2600 60 
F14 "A12" I L 1550 2700 60 
F15 "A13" I L 1550 2800 60 
F16 "A14" I L 1550 2900 60 
F17 "A15" I L 1550 3000 60 
F18 "D0" I R 2500 1500 60 
F19 "D1" I R 2500 1600 60 
F20 "D2" I R 2500 1700 60 
F21 "D3" I R 2500 1800 60 
F22 "D4" I R 2500 1900 60 
F23 "D5" I R 2500 2000 60 
F24 "D6" I R 2500 2100 60 
F25 "D7" I R 2500 2200 60 
F26 "A16" I L 1550 3100 60 
F27 "A17" I L 1550 3200 60 
F28 "A18" I L 1550 3300 60 
F29 "A19" I L 1550 3400 60 
F30 "SA12" I R 2500 2700 60 
F31 "SA13" I R 2500 2800 60 
F32 "SA14" I R 2500 2900 60 
F33 "SA15" I R 2500 3000 60 
$EndSheet
Entry Wire Line
	10350 4500 10450 4400
Wire Wire Line
	9900 4500 10350 4500
Text Label 10000 4500 0    60   ~ 0
!CPU_M1
Entry Wire Line
	5150 3150 5250 3050
Wire Wire Line
	5250 3050 5700 3050
Text Label 5250 3050 0    60   ~ 0
!CPU_M1
Wire Bus Line
	1100 3350 1100 1150
Wire Bus Line
	2950 1150 2950 2900
Entry Wire Line
	1100 1400 1200 1500
Entry Wire Line
	1100 1500 1200 1600
Entry Wire Line
	1100 1600 1200 1700
Entry Wire Line
	1100 1700 1200 1800
Entry Wire Line
	1100 1800 1200 1900
Entry Wire Line
	1100 1900 1200 2000
Entry Wire Line
	1100 2000 1200 2100
Entry Wire Line
	1100 2100 1200 2200
Entry Wire Line
	1100 2200 1200 2300
Entry Wire Line
	1100 2300 1200 2400
Entry Wire Line
	1100 2400 1200 2500
Entry Wire Line
	1100 2500 1200 2600
Entry Wire Line
	1100 2600 1200 2700
Entry Wire Line
	1100 2700 1200 2800
Entry Wire Line
	1100 2800 1200 2900
Entry Wire Line
	1100 2900 1200 3000
Entry Wire Line
	1100 3000 1200 3100
Entry Wire Line
	1100 3100 1200 3200
Entry Wire Line
	1100 3200 1200 3300
Entry Wire Line
	1100 3300 1200 3400
Entry Wire Line
	2850 1500 2950 1400
Entry Wire Line
	2850 1600 2950 1500
Entry Wire Line
	2850 1700 2950 1600
Entry Wire Line
	2850 1800 2950 1700
Entry Wire Line
	2850 1900 2950 1800
Entry Wire Line
	2850 2000 2950 1900
Entry Wire Line
	2850 2100 2950 2000
Entry Wire Line
	2850 2200 2950 2100
Wire Wire Line
	1200 1500 1550 1500
Wire Wire Line
	1200 1600 1550 1600
Wire Wire Line
	1200 1700 1550 1700
Wire Wire Line
	1200 1800 1550 1800
Wire Wire Line
	1200 1900 1550 1900
Wire Wire Line
	1200 2000 1550 2000
Wire Wire Line
	1200 2100 1550 2100
Wire Wire Line
	1200 2200 1550 2200
Wire Wire Line
	1200 2300 1550 2300
Wire Wire Line
	1200 2400 1550 2400
Wire Wire Line
	1200 2500 1550 2500
Wire Wire Line
	1200 2600 1550 2600
Wire Wire Line
	1200 2700 1550 2700
Wire Wire Line
	1200 2800 1550 2800
Wire Wire Line
	1200 2900 1550 2900
Wire Wire Line
	1200 3000 1550 3000
Wire Wire Line
	1200 3100 1550 3100
Wire Wire Line
	1200 3200 1550 3200
Wire Wire Line
	1200 3300 1550 3300
Wire Wire Line
	1200 3400 1550 3400
Wire Wire Line
	2500 1500 2850 1500
Wire Wire Line
	2500 1600 2850 1600
Wire Wire Line
	2500 1700 2850 1700
Wire Wire Line
	2500 1800 2850 1800
Wire Wire Line
	2500 1900 2850 1900
Wire Wire Line
	2500 2000 2850 2000
Wire Wire Line
	2500 2100 2850 2100
Wire Wire Line
	2500 2200 2850 2200
Text Label 2850 1500 2    60   ~ 0
D0
Text Label 2850 1600 2    60   ~ 0
D1
Text Label 2850 1700 2    60   ~ 0
D2
Text Label 2850 1800 2    60   ~ 0
D3
Text Label 2850 1900 2    60   ~ 0
D4
Text Label 2850 2000 2    60   ~ 0
D5
Text Label 2850 2100 2    60   ~ 0
D6
Text Label 2850 2200 2    60   ~ 0
D7
Text Label 1200 1500 0    60   ~ 0
A0
Text Label 1200 1600 0    60   ~ 0
A1
Text Label 1200 1700 0    60   ~ 0
A2
Text Label 1200 1800 0    60   ~ 0
A3
Text Label 1200 1900 0    60   ~ 0
A4
Text Label 1200 2000 0    60   ~ 0
A5
Text Label 1200 2100 0    60   ~ 0
A6
Text Label 1200 2200 0    60   ~ 0
A7
Text Label 1200 2300 0    60   ~ 0
A8
Text Label 1200 2400 0    60   ~ 0
A9
Text Label 1200 2500 0    60   ~ 0
A10
Text Label 1200 2600 0    60   ~ 0
A11
Text Label 1200 2700 0    60   ~ 0
MA12
Text Label 1200 2800 0    60   ~ 0
MA13
Text Label 1200 2900 0    60   ~ 0
MA14
Text Label 1200 3000 0    60   ~ 0
MA15
Text Label 1200 3100 0    60   ~ 0
MA16
Text Label 1200 3200 0    60   ~ 0
MA17
Text Label 1200 3300 0    60   ~ 0
MA18
Text Label 1200 3400 0    60   ~ 0
MA19
$Comp
L BUSHDR-A HDR101
U 1 1 570A7BA4
P 1600 6350
F 0 "HDR101" H 1400 7450 60  0000 C CNN
F 1 "BUSHDR-A" H 1650 5250 60  0000 C CNN
F 2 "" H 1600 5700 60  0000 C CNN
F 3 "" H 1600 5700 60  0000 C CNN
	1    1600 6350
	1    0    0    -1  
$EndComp
$Comp
L BUSHDR-B HDR102
U 1 1 570A7E75
P 3100 6350
F 0 "HDR102" H 2900 7450 60  0000 C CNN
F 1 "BUSHDR-B" H 3150 5250 60  0000 C CNN
F 2 "" H 3100 5700 60  0000 C CNN
F 3 "" H 3100 5700 60  0000 C CNN
	1    3100 6350
	1    0    0    -1  
$EndComp
Entry Wire Line
	2850 2700 2950 2600
Entry Wire Line
	2850 2700 2950 2600
Entry Wire Line
	2850 2800 2950 2700
Entry Wire Line
	2850 2900 2950 2800
Entry Wire Line
	2850 3000 2950 2900
Wire Wire Line
	2500 2700 2850 2700
Wire Wire Line
	2500 2800 2850 2800
Wire Wire Line
	2500 2900 2850 2900
Wire Wire Line
	2500 3000 2850 3000
Text Label 2800 2700 2    60   ~ 0
A12
Text Label 2800 2800 2    60   ~ 0
A13
Text Label 2800 2900 2    60   ~ 0
A14
Text Label 2800 3000 2    60   ~ 0
A15
$Sheet
S 3300 3100 1000 1150
U 57376A6E
F0 "BusSpy2" 60
F1 "BusSpy2.sch" 60
$EndSheet
$EndSCHEMATC
