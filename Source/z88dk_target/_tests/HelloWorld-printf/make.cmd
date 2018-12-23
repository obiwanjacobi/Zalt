@ECHO OFF
@SET PATH=%PATH%;C:\z88dk\bin\

set zalt_lib=../../zalt_c.lib

@REM zcc +zalt -clib=new -m helloworld.c -o helloworld.asm -a
@REM zcc +zalt -clib=new -m helloworld.c -o helloworld --list

@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 --c-code-in-asm -m helloworld.c -o helloworld.asm -a
@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 helloworld.c -o helloworld --list

zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 helloworld.c -l%zalt_lib% -o helloworld --list