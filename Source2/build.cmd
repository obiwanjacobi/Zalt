@ECHO OFF
SETLOCAL
SET PATH=%PATH%;C:\z88dk\bin\

SET COMPILER=-compiler=sccz80
SET LIB_NAME=bios
SET BIN_NAME=firmware
SET OUTDIR=%~dp0.build

:: --------------------------------------------------------------------------
:: build_lib  - assemble ASM files listed in _asm.lst into bios.lib
:: build_bin  - compile C files listed in _src.lst and link against bios.lib
:: all        - build_lib then build_bin (default)
:: clean      - remove build artefacts
:: --------------------------------------------------------------------------

IF /I "%1"=="build_lib" GOTO build_lib
IF /I "%1"=="build_bin" GOTO build_bin
IF /I "%1"=="clean"     GOTO clean

:all
CALL :build_lib
IF ERRORLEVEL 1 GOTO error
CALL :build_bin
IF ERRORLEVEL 1 GOTO error
GOTO done

:build_lib
ECHO [build_lib] Assembling %LIB_NAME%.lib ...
SET ASMOUT=%OUTDIR%\asm
IF NOT EXIST "%ASMOUT%" MKDIR "%ASMOUT%"
IF EXIST "%ASMOUT%\_asm_local.lst" DEL "%ASMOUT%\_asm_local.lst"
FOR /F "usebackq eol=; tokens=*" %%F IN ("_asm.lst") DO CALL :copy_asm_file "%%F"
PUSHD "%ASMOUT%"
z80asm -x"%OUTDIR%\%LIB_NAME%.lib" -m -s "@%ASMOUT%\_asm_local.lst"
POPD
IF ERRORLEVEL 1 EXIT /B 1
ECHO [build_lib] Done.
EXIT /B 0

:copy_asm_file
SET "_SRC=%~1"
SET "_SRC=%_SRC:/=\%"
COPY /Y "%~dp0%_SRC%" "%ASMOUT%\" >NUL
FOR %%N IN ("%_SRC%") DO ECHO %%~nxN>> "%ASMOUT%\_asm_local.lst"
EXIT /B 0

:build_bin
ECHO [build_bin] Compiling and linking %BIN_NAME% ...
IF NOT EXIST "%OUTDIR%" MKDIR "%OUTDIR%"
zcc +z80 -SO2 -nostdlib --no-crt %COMPILER% ^
    @_src.lst ^
    -l%LIB_NAME% -L"%OUTDIR%" ^
    -o "%OUTDIR%\%BIN_NAME%" -m -s --list
IF ERRORLEVEL 1 EXIT /B 1
ECHO [build_bin] Done.
z88dk-dis -x "%OUTDIR%\%BIN_NAME%.sym" -o 0 "%OUTDIR%\%BIN_NAME%" > "%OUTDIR%\%BIN_NAME%.dis.asm"
EXIT /B 0

:clean
ECHO [clean] Removing build artefacts ...
IF EXIST "%OUTDIR%" RMDIR /S /Q "%OUTDIR%"
ECHO [clean] Done.
GOTO done

:error
ECHO Build failed.
EXIT /B 1

:done
ECHO All done.
