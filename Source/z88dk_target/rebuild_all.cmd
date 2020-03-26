@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

if [%1]==[] goto clib

REM call deploy_target.cmd
call build_lib.cmd %1
call build_tests.cmd %1

cd %~dp0
goto :eof

:clib
@echo Specify option: 'sccz80', 'sdcc_ix' or 'sdcc_iy'