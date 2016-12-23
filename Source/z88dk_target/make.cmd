@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

@REM zcc +zalt -clib=new -m zalt.lst -o zalt.asm -a
@REM zcc +zalt -clib=new -m zalt.lst -o zalt --list
@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node999 --c-code-in-asm -m @zalt.lst -o zalt.asm -a
zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 -m @zalt.lst -o zalt --list