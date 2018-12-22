@echo off
setlocal enableDelayedExpansion
::m4 processing

for /f %%i in (%~dp0_zalt_preprocess.lst) do (
    echo Processing %%i
    c:\z88dk\bin\m4 -E %~dp0%%i > %~dp0%%~pi%%~ni
)