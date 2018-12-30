@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

set zalt_lib=../../zalt_c.lib

set debug=-DDEBUG -Ca-DDEBUG -Cl-DDEBUG
set include=-I%~dp0..\src -I%~dp0..\src\sys -I%~dp0..\src\io

@echo Compiling %1 (%2)

:: zcc +zalt %debug% -SO2 -clib=%2 %1.c -l%zalt_lib% --c-code-in-asm -m -a --list
zcc +zalt %debug% %include% -SO2 -clib=%2 %1.c -l%zalt_lib% -o %1 -vn %3