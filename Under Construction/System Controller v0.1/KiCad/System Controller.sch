EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
S 5150 3800 1000 1300
U 602CEA69
F0 "System Controller (PSOC5)" 50
F1 "SysCtrl_PSoC5kit.sch" 50
F2 "A[0..15]" T R 6150 4000 50 
F3 "D[0..7]" T R 6150 4200 50 
F4 "~RD" T L 5150 4400 50 
F5 "~WR" T L 5150 4500 50 
F6 "~MEMRQ" T L 5150 4200 50 
F7 "~IOREQ" T L 5150 4300 50 
F8 "CPU_CLK" O R 6150 4900 50 
F9 "~WAIT" T L 5150 4800 50 
F10 "~INT" T R 6150 4600 50 
F11 "~NMI" T R 6150 4500 50 
F12 "~BUSRQ" T L 5150 4900 50 
F13 "~BUSACK" I L 5150 5000 50 
F14 "~M1" I L 5150 3900 50 
F15 "~CPU_RST" T R 6150 4800 50 
F16 "~HALT" I L 5150 4000 50 
$EndSheet
Text Notes 3700 2550 0    50   ~ 0
What other functions do we require of the System Controller?\n\n- one connector to bring out complete bus to external (bus) logic.\n    for instance ISA-bus connection for multiple CPU configurations?\n- smart bus coordinator?\n    Connecting multiple smart devices to CPU\n    (although each smart device could have its own DMA and INT handling)
$EndSCHEMATC
