@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

@REM zcc +zalt -clib=new -m _zalt.lst -o zalt.asm -a
@REM zcc +zalt -clib=new -m _zalt.lst -o zalt --list
@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node999 --c-code-in-asm -m @_zalt.lst -o zalt.asm -a
@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 -m @_zalt.lst -o zalt --list

@REM zcc +zalt -vn -m -SO3 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy --max-allocs-per-node200000 @_zalt.lst -o zalt
zcc +zalt -m -SO3 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy --max-allocs-per-node200000 @_zalt.lst -o zalt