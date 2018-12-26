@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

call deploy_target.cmd
call build_lib.cmd

::call _tests\Echo-getputchar\build.cmd
::call _tests\Heap\build.cmd

cd _tests\HelloWorld-printf
call build.cmd

::call _tests\RingBuffer\build.cmd

:: back to this dir
cd %~dp0