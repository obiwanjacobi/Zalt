@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

@REM zcc +zalt -clib=new -m helloworld.c -o helloworld.asm -a
@REM zcc +zalt -clib=new -m helloworld.c -o helloworld --list
zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 --c-code-in-asm -m helloworld.c -o helloworld.asm -a
zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 helloworld.c -o helloworld --list