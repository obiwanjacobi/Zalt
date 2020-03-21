@echo off
@echo Building Tests...

cd %~dp0_tests/Debug
call build.cmd %1

cd %~dp0_tests/Stdio
call build.cmd %1

cd %~dp0_tests/Heap
call build.cmd %1

cd %~dp0_tests/MemoryManager
call build.cmd %1

cd %~dp0_tests/RingBuffer
call build.cmd %1

cd %~dp0_tests/VGA
call build.cmd %1

cd %~dp0