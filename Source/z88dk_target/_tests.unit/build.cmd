:: For Windows and Visual Studio 2015 (Cpp) or higher
CALL "C:\Program Files (x86)\Microsoft Visual C++ Build Tools\vcbuildtools.bat" x86_amd64
cd "%~dp0"

SET sys_files=../src/sys/Async.c ../src/sys/Error.c ../src/sys/Heap.c ../src/sys/String.c ../src/sys/System.c ../src/sys/Thread.c ../src/sys/Types.c
SET test_files=main.c %sys_files%
SET CL=/I..\src\sys

cl %test_files% /MTd /Fe: TestRunner.exe