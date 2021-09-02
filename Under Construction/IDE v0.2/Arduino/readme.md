# Arduino IDE Controller

Use Arduino MEGA (ATmega2560) to test out the smart IDE controller idea.

The MCU has the following functions

- Interface to the IDE/PATA Disk
  - Init, Read, Write
- Implement a file system (PC compatible)
- Interface with the Z80
  - Intercept IN and OUT instructions
  - Take control of Z80 Bus and perform DMA
  - Provide INT-ack vector data

Extensions:

- SD-Card (3V3!)
- RAM disk (DMA)

## Resources

SD-FAT: https://www.arduino.cc/reference/en/libraries/sdfat/

IDE_FAT (SD-FAT + IDE): https://code.google.com/archive/p/idefat-arduino/

FAT File System (no disk layer): http://elm-chan.org/fsw/ff/00index_e.html

(stm32 https://www.arduino.cc/reference/en/libraries/fatfs/)

---

PlatformIO Arduino debugging: https://docs.platformio.org/en/latest/plus/debug-tools/avr-stub.html
