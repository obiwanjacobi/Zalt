@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

:: make lib: zalt_c.lib
zcc +zalt -m -s --list -SO2 -DDEBUG -Ca-DDEBUG -clib=sdcc_iy @_zalt.lst -o zalt_c -x
