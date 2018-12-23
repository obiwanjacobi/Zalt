@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

@REM zcc +zalt -clib=new -m %1.c -o %1.asm -a
@REM zcc +zalt -clib=new -m %1.c -o %1 --list

set zalt_sources=../../src/io/Stream.c ../../src/io/ConsoleStreamProvider.c ../../src/sys/Thread.c ../../src/sys/Async.c ../../src/sys/Error.c ../../src/sys/Heap.c ../../src/sys/String.c

::zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 --c-code-in-asm -m %1.c -o %1.asm -a
zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 -m %1.c %zalt_sources% -o %1 --list
