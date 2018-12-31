@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

if [%1]==[] goto clib

set debug=-DDEBUG -Ca-DDEBUG -Cl-DDEBUG

@echo Compiling Zalt Lib (%1)

:: debug files
::zcc +zalt -SO2 %debug% -clib=%1 @_zalt_lib.lst -a --c-code-in-asm --list

:: make lib: zalt_c.lib
zcc +zalt -SO2 %debug% -clib=%1 @_zalt_lib.lst -o zalt_c -x -s -m --list -vn

@echo Done.
goto :eof

:clib
@echo Specify option: 'sccz80', 'sdcc_ix' or 'sdcc_iy'