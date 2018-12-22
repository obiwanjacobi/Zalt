:: NOT USED !!
@echo off
setlocal enableDelayedExpansion
::m4 processing

for /f %%i in (%~dp0_zalt_preprocess.lst) do (
    echo Processing %~dp0%%i
    C:\z88dk\bin\m4.exe -E -d %~dp0%%i > %~dp0%%~pi%%~ni
)