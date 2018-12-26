@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

set zalt_lib=../../zalt_c.lib

::zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 --c-code-in-asm -m %1.c -o %1.asm -a
zcc +zalt -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy --max-allocs-per-node200000 %1.c -l%zalt_lib% --c-code-in-asm -m -a --list
zcc +zalt -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy --max-allocs-per-node200000 %1.c -l%zalt_lib% -o %1