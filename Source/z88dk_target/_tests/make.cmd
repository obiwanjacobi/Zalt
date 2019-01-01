@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

set lib=../../zalt_c.lib
set debug=-DDEBUG -Ca-DDEBUG -Cl-DDEBUG
set include=-I%~dp0..\src -I%~dp0..\src\sys -I%~dp0..\src\io

:: %1 is main.c file to compile (without extension)
:: %2 is the clib to use
:: %3 is an optional additional zcc command line option

@echo Compiling %1 (%2)

zcc +zalt %debug% %include% -SO2 -clib=%2 %1.c -l%lib% -o %1 %3 --c-code-in-asm -m --list
z88dk-dis -o 0 -x %1.map %1_CODE.bin > %1.dis.asm

::zcc +zalt %debug% %include% -SO2 -clib=%2 %1.c -l%zalt_lib% -o %1 -vn %3