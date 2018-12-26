@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

zcc +zalt -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy @_zalt_lib.lst -a --c-code-in-asm --list
:: make lib: zalt_c.lib
zcc +zalt -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy @_zalt_lib.lst -o zalt_c -x -s -m --list
