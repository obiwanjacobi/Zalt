@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

@REM zcc +zalt -clib=new -m _zalt.lst -o zalt.asm -a
@REM zcc +zalt -clib=new -m _zalt.lst -o zalt --list
@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node999 --c-code-in-asm -m @_zalt.lst -o zalt.asm -a
@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 -m @_zalt.lst -o zalt --list

@REM zcc +zalt -vn -m -SO3 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy --max-allocs-per-node200000 @_zalt.lst -o zalt

:: make lib: zalt_c.lib
::zcc +zalt -m -s --list -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy @_zalt.lst -o zalt
zcc +zalt -m -s --list -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy @_zalt.lst -c
z80asm --IXIY -xzalt_c -DDEBUG -D__SDCC -D__SDCC_IY @_zalt.o.lst
