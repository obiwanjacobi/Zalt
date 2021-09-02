EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2250 2500 0    50   3State ~ 0
A[0..15]
Text HLabel 2250 2800 0    50   3State ~ 0
D[0..7]
Text HLabel 2250 3200 0    50   3State ~ 0
~RD
Text HLabel 2250 3300 0    50   3State ~ 0
~WR
Text HLabel 2250 3400 0    50   3State ~ 0
~MEMRQ
Text HLabel 2250 3500 0    50   3State ~ 0
~IOREQ
Text HLabel 2250 3650 0    50   Output ~ 0
CPU_CLK
Text HLabel 2250 3800 0    50   3State ~ 0
~WAIT
Text HLabel 2250 3900 0    50   3State ~ 0
~INT
Text HLabel 2250 4000 0    50   3State ~ 0
~NMI
Text HLabel 2250 4200 0    50   3State ~ 0
~BUSRQ
Text HLabel 2250 4300 0    50   Input ~ 0
~BUSACK
Text HLabel 2250 3100 0    50   Input ~ 0
~M1
Text HLabel 2250 3000 0    50   3State ~ 0
~CPU_RST
Text HLabel 2250 4100 0    50   Input ~ 0
~HALT
Text Notes 4600 4900 0    50   ~ 0
The PSoC5 kit is the System Controller.\nIn order to free up more pins and more\nfunctions, we could latch out 8 address\nbits (for instance) seen on other MCUs\nusing an ALE signal to load the latch.\nOur version has to be bidirectional.
$EndSCHEMATC
