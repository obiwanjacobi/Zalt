@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

::zcc +zalt -S03 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy @_zalt.lst -o zalt.asm -a --c-code-in-asm --list
zcc +zalt -SO3 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy @_zalt.lst -o zalt -m -s --list