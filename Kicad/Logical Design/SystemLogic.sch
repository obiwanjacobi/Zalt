EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Zilog
LIBS:memory-umc
LIBS:g-link
LIBS:Z80 Computer-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 4 5
Title "Z80 Computer"
Date "4 feb 2016"
Rev ""
Comp "Canned Bytes"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1750 3750 0    60   BiDi ~ 0
D0
Text HLabel 1750 3850 0    60   BiDi ~ 0
D1
Text HLabel 1750 3950 0    60   BiDi ~ 0
D2
Text HLabel 1750 4050 0    60   BiDi ~ 0
D3
Text HLabel 1750 4150 0    60   BiDi ~ 0
D4
Text HLabel 1750 4250 0    60   BiDi ~ 0
D5
Text HLabel 1750 4350 0    60   BiDi ~ 0
D6
Text HLabel 1750 4450 0    60   BiDi ~ 0
D7
Text HLabel 1750 1500 0    60   BiDi ~ 0
A0
Text HLabel 1750 1600 0    60   BiDi ~ 0
A1
Text HLabel 1750 1700 0    60   BiDi ~ 0
A2
Text HLabel 1750 1800 0    60   BiDi ~ 0
A3
Text HLabel 1750 1900 0    60   BiDi ~ 0
A4
Text HLabel 1750 2000 0    60   BiDi ~ 0
A5
Text HLabel 1750 2100 0    60   BiDi ~ 0
A6
Text HLabel 1750 2200 0    60   BiDi ~ 0
A7
Text HLabel 1750 2300 0    60   BiDi ~ 0
A8
Text HLabel 1750 2400 0    60   BiDi ~ 0
A9
Text HLabel 1750 2500 0    60   BiDi ~ 0
A10
Text HLabel 1750 2600 0    60   BiDi ~ 0
A11
Text HLabel 1750 2700 0    60   BiDi ~ 0
A12
Text HLabel 1750 2800 0    60   BiDi ~ 0
A13
Text HLabel 1750 2900 0    60   BiDi ~ 0
A14
Text HLabel 1750 3000 0    60   BiDi ~ 0
A15
Text HLabel 2700 1600 0    60   BiDi ~ 0
EALE
Text HLabel 2250 2700 0    60   BiDi ~ 0
MA12
Text HLabel 2250 2800 0    60   BiDi ~ 0
MA13
Text HLabel 2250 2900 0    60   BiDi ~ 0
MA14
Text HLabel 2250 3000 0    60   BiDi ~ 0
MA15
Text HLabel 2250 3100 0    60   BiDi ~ 0
MA16
Text HLabel 2250 3200 0    60   BiDi ~ 0
MA17
Text HLabel 2250 3300 0    60   BiDi ~ 0
MA18
Text HLabel 2250 3400 0    60   BiDi ~ 0
MA19
Text HLabel 3150 2700 0    60   Input ~ 0
!MBE1
Text HLabel 3150 2800 0    60   Input ~ 0
!MBE2
Text HLabel 3150 2900 0    60   Input ~ 0
!MBE3
Text HLabel 3150 3000 0    60   Input ~ 0
!MBE4
Text HLabel 2700 1750 0    60   BiDi ~ 0
EA12
Text HLabel 2700 1850 0    60   BiDi ~ 0
EA13
Text HLabel 2700 1950 0    60   BiDi ~ 0
EA14
Text HLabel 2700 2050 0    60   BiDi ~ 0
EA15
Text Notes 2400 1350 0    60   ~ 0
The ExternalAddressLatchEnable (EALE)\nlatches the D0-D7 into A0-A7\nwhen the SysCtrlr does DMA.
Text Notes 2800 1800 0    60   ~ 0
The ExternalAddress12:15 lines are mapped \nto MA12:15 for DMA memory access and \nto A12:15 for IO access.
Text Notes 1100 1400 0    60   ~ 0
CPU Address bus A0:15 
Text Notes 1150 3650 0    60   ~ 0
CPU Data bus D0:7
Text Notes 1850 2500 0    60   ~ 0
MemoryAddress MA12:19 is driven\nby MemBank Switching logic.
Text Notes 2800 3150 0    60   ~ 0
MemoryBankEnable MBA1:8 are \nChipEnable lines for 64k banks.
Text Notes 7100 1000 0    60   ~ 0
IO Map\n$00-$0F    Memory Read Map (A12:15) (SysLogic)\n$10-$1F    Memory Write Map (A12:15) (SysLogic)\n$20-$2F    Debug Config Registers (SysCtrlr)\n$30-$3F    Clock Registers (SysCtrlr/Logic)\n$40-$4F    Serial UART Registers (SysCtrlr)\n$50-$5F    Serial SPI/I2C Registers (SysCtrlr)\n$60-$6F    Timer Registers (SysCtrlr)\n$70-$7F    \n$80-$8F    \n$90-$9F    
Text Notes 7100 2250 0    60   ~ 0
Interrupt Controller (SysLogic)\nNMI-Debug - Resume Breakpoint (!HALT)\n\nINT (IM2)\nVector00 - Configurable Timer Interrupt (SysCtrlr)\nVector01 - \nVector02 - \nVector03 - \nVector04 - \nVector05 - \nVector06 - \nVector07 - \nVector08 - \nVector09 - \nVector0A - \nVector0B - \nVector0C - \nVector0D - \nVector0E - \nVector0F - \n\nVector10 - External (Bus) Interrupts
Text HLabel 3500 3900 0    60   Input ~ 0
!MEMREQ
Text HLabel 3500 4050 0    60   Input ~ 0
!IOREQ
Text Notes 7050 6900 0    60   ~ 0
CPLD runs on 3.3V!!\nExtra series-resistors on the input are needed.\nOn the output pullup resistors and clamp diodes are needed.
Text Notes 1350 5450 0    60   ~ 0
Interrupt Controller\nThe interrupts controller publishes the specific vectors on D0:7 \nwhen a certain interrupt occurs.\nNormal INT interrupts are disabled in debug mode \nwhen the CPU is in HALT  state.
$EndSCHEMATC
