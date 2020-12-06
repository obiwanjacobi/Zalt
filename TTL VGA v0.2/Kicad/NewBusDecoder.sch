EESchema Schematic File Version 4
LIBS:ZaltTtlVga-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 9600 3050 2    50   Output ~ 0
~VideoEnable
Text HLabel 9600 3400 2    50   Output ~ 0
~BusEnable
Text HLabel 9500 4350 2    50   Output ~ 0
~ScrollRegLoStrobe
Text HLabel 9500 4550 2    50   Output ~ 0
~ScrollRegHiStrobe
Text HLabel 9450 1750 2    50   Output ~ 0
~BusAddressHiStrobe
Text HLabel 1800 2700 0    50   Input ~ 0
BusAddress
Text HLabel 1800 3200 0    50   Input ~ 0
BusCtrl
Text HLabel 1650 4000 0    50   Input ~ 0
BusData
Text HLabel 6650 5250 2    50   Output ~ 0
Settings
Text HLabel 9500 4000 2    50   Output ~ 0
~PalleteRegStrobe
Text Notes 9100 1600 0    50   ~ 0
VRAM bank register strobe
Text Notes 8050 3450 0    50   ~ 0
CPU access to the Video Memort Bus
Text Notes 8050 3750 0    50   ~ 0
TODO: CPU access to the content of the Pallete
Text Notes 7350 4000 0    50   ~ 0
Pallette Register for selecting an active color pallete.
Text Notes 7350 4500 0    50   ~ 0
Low and High address of the scroll register strobe.\nValue loaded when the line counters reset.
Text Notes 6200 5500 0    50   ~ 0
Signals that control VGA behavior\n-Video Mode
Text Notes 9000 2850 0    50   ~ 0
VGA video is active
Text Notes 1500 2450 0    50   ~ 0
CPU interface
$EndSCHEMATC
