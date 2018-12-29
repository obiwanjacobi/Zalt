@echo off
@echo Building Tests...

cd %~dp0Echo-getputchar
call build.cmd

cd %~dp0Heap
call build.cmd

cd %~dp0HelloWorld-printf
call build.cmd

cd %~dp0MemoryManager
call build.cmd

cd %~dp0RingBuffer
call build.cmd

cd %~dp0