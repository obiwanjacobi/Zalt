@echo off

setlocal
setlocal ENABLEDELAYEDEXPANSION

::set options=-s -m -l
set options=

:: m4 processing
m4 -DCFG_ASM_DEF target/zalt/config.m4 > target/zalt/config_zalt_private.inc
m4 -DCFG_ASM_PUB target/zalt/config.m4 > target/zalt/config_zalt_public.inc
m4 -DCFG_C_DEF target/zalt/config.m4 > target/zalt/config_zalt.h

copy /Y target\zalt\config_zalt_private.inc config_private.inc 1> nul


echo   zalt_sccz80.lib %2

z80asm %options% -xzalt_sccz80 -D%1 -D__SCCZ80 @target/zalt/library/zalt_sccz80.lst
move /Y zalt_sccz80.lib lib/sccz80/zalt.lib

del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1


echo   zalt_sdcc_ix.lib %2

z80asm %options% -xzalt_sdcc_ix -D%1 -D__SDCC -D__SDCC_IX @target/zalt/library/zalt_sdcc_ix.lst
move /Y zalt_sdcc_ix.lib lib/sdcc_ix/zalt.lib

del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1


echo   zalt_sdcc_iy.lib %2

z80asm %options% --IXIY -xzalt_sdcc_iy -D%1 -D__SDCC -D__SDCC_IY @target/zalt/library/zalt_sdcc_iy.lst
move /Y zalt_sdcc_iy.lib lib/sdcc_iy/zalt.lib

del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1


::del clib_cfg.asm > nul 2>&1
::del clib_target_cfg.asm > nul 2>&1

echo.
echo Done.
