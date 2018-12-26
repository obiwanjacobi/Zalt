@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

call deploy_target.cmd
call build_lib.cmd

::cd %~dp0_tests\Echo-getputchar
::call build.cmd

::cd %~dp0_tests\Heap
::call build.cmd

cd %~dp0_tests\HelloWorld-printf
call build.cmd

::cd _tests\RingBuffer
::call build.cmd

cd %~dp0