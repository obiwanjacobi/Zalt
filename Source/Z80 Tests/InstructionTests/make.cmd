@echo off
C:\z88dk\bin\z80asm.exe -b %1.asm
del %1.map
del %1.obj
del %1.reloc
del %1.sym