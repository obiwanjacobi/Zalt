@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

@REM zcc +zalt -vn -m -SO3 -clib=sdcc_iy --max-allocs-per-node200000 @_zalt.lst -o zalt
zcc +zalt -m -SO3 -clib=sdcc_iy --max-allocs-per-node200000 @_zalt.lst -o zalt