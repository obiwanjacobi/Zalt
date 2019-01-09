@echo off
@echo Building Tests...

cd %~dp0Stdio
call build.cmd %1

cd %~dp0Heap
call build.cmd %1

cd %~dp0MemoryManager
call build.cmd %1

cd %~dp0RingBuffer
call build.cmd %1

cd %~dp0