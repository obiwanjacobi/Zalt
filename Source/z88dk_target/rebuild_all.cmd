@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

call deploy_target.cmd
call build_lib.cmd
call %~dp0_tests\build_all.cmd

cd %~dp0