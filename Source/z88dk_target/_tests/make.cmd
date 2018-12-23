@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

set zalt_lib=../../zalt_c.lib

::zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 --c-code-in-asm -m %1.c -o %1.asm -a
zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 %1.c -l%zalt_lib% -o helloworld --list