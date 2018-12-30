@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

if [%1]==[] goto clib

set debug=-DDEBUG -Ca-DDEBUG -Cl-DDEBUG

::zcc +zalt -S03 %debug% -clib=%1 @_zalt.lst -o zalt.asm -a --c-code-in-asm --list
zcc +zalt -SO3 %debug% -clib=%1 @_zalt.lst -o zalt -m -s --list
goto :eof

:clib
@echo Specify option: 'sccz80', 'sdcc_ix' or 'sdcc_iy'