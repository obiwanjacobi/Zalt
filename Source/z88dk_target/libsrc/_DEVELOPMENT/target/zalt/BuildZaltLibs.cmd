@echo off

setlocal
setlocal ENABLEDELAYEDEXPANSION

::set options=-s -m -l
set options=
set zalt_loc=%~dp0
set z88dk_loc=C:\z88dk\libsrc\_DEVELOPMENT\


m4 -DCFG_ASM_DEF %zalt_loc%config.m4 > %zalt_loc%config_zalt_private.inc
m4 -DCFG_ASM_PUB %zalt_loc%config.m4 > %zalt_loc%config_zalt_public.inc
m4 -DCFG_C_DEF %zalt_loc%config.m4 > %zalt_loc%config_zalt.h
copy /Y %zalt_loc%config_zalt_private.inc %zalt_loc%config_private.inc 1> nul

::cd %zalt_loc%
::m4 %zalt_loc%zalt_crt.asm.m4 > %zalt_loc%zalt_crt.asm -I%zalt_loc% -I%z88dk_loc%
::cd %z88dk_loc%

echo   zalt_sccz80.lib %2

z80asm %options% -xzalt_sccz80 -D%1 -D__SCCZ80 @%zalt_loc%library/zalt_sccz80.lst
move /Y zalt_sccz80.lib %z88dk_loc%lib/sccz80/zalt.lib

del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1


echo   zalt_sdcc_ix.lib %2

z80asm %options% -xzalt_sdcc_ix -D%1 -D__SDCC -D__SDCC_IX @%zalt_loc%library/zalt_sdcc_ix.lst
move /Y zalt_sdcc_ix.lib %z88dk_loc%lib/sdcc_ix/zalt.lib

del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1


echo   zalt_sdcc_iy.lib %2

z80asm %options% --IXIY -xzalt_sdcc_iy -D%1 -D__SDCC -D__SDCC_IY @%zalt_loc%library/zalt_sdcc_iy.lst
move /Y zalt_sdcc_iy.lib %z88dk_loc%lib/sdcc_iy/zalt.lib

del /S *.o > nul 2>&1
::del /S *.err > nul 2>&1


::del clib_cfg.asm > nul 2>&1
::del clib_target_cfg.asm > nul 2>&1

echo.
echo Done.
