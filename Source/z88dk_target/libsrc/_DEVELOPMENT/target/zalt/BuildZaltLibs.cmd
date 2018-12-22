@echo off

setlocal
setlocal ENABLEDELAYEDEXPANSION

copy /Y target\zalt\clib_cfg.asm . 1> nul
copy /Y target\zalt\clib_target_cfg.asm . 1> nul

call target\zalt\Preprocess.cmd

::echo   zalt_sccz80.lib

::z80asm -xzalt_sccz80 -D%1 -D__SCCZ80 @target/zalt/library/zalt_sccz80.lst
::move /Y zalt_sccz80.lib lib/sccz80/zalt.lib

::del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1

::echo   zalt_sdcc_ix.lib

::z80asm -xzalt_sdcc_ix -D%1 -D__SDCC -D__SDCC_IX @target/zalt/library/zalt_sdcc_ix.lst
::move /Y zalt_sdcc_ix.lib lib/sdcc_ix/zalt.lib

::del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1

echo   zalt_sdcc_iy.lib

del /S *.err > nul 2>&1

z80asm --IXIY -xzalt_sdcc_iy -D%1 -D__SDCC -D__SDCC_IY @target/zalt/library/zalt_sdcc_iy.lst
move /Y zalt_sdcc_iy.lib lib/sdcc_iy/zalt.lib

del /S *.o > nul 2>&1

del clib_cfg.asm > nul 2>&1
del clib_target_cfg.asm > nul 2>&1
      
echo.
echo Done.
