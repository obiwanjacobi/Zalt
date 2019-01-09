@ECHO OFF
call ../make MemoryManager_test %1 --list
call ../make MemoryManager_Init %1 --list
call ../make FarMemory_test %1 --list