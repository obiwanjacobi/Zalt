@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

@REM zcc +zalt -clib=new -m echo.c -o echo.asm -a
@REM zcc +zalt -clib=new -m echo.c -o echo --list
zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 --c-code-in-asm -m echo.c -o echo.asm -a
zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 -m echo.c -o echo --list