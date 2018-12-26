@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

set zalt_lib=../../zalt_c.lib

@echo Compiling %1

:: zcc +zalt -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy --max-allocs-per-node200000 %1.c -l%zalt_lib% --c-code-in-asm -m -a --list
zcc +zalt -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy --max-allocs-per-node200000 %1.c -l%zalt_lib% -o %1 -vn