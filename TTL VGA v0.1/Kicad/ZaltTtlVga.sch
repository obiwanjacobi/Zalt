EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Zalt TTL VGA"
Date "2020-02-09"
Rev "0.1"
Comp "Canned Bytes"
Comment1 "640x480 @60Hz"
Comment2 "512x384 + border"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2700 1500 1600 1250
U 5E451FD0
F0 "Line Counters" 50
F1 "LineCounters.sch" 50
F2 "AddressStrobe" O R 4300 1750 50 
F3 "AddressClear" O R 4300 1850 50 
$EndSheet
$Sheet
S 5100 1500 1750 1300
U 5E4A1CB2
F0 "Video Memory" 50
F1 "Memory.sch" 50
F2 "AddressStrobe" O L 5100 1750 50 
F3 "AddressClear" O L 5100 1850 50 
$EndSheet
Wire Wire Line
	4300 1750 5100 1750
Wire Wire Line
	4300 1850 5100 1850
$EndSCHEMATC
