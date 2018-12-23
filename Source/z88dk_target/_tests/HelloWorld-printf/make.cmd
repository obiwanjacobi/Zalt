@ECHO OFF
@SET PATH=%PATH%;C:\z88dk\bin\

set zalt_sources=../../src/io/Stream.c ../../src/io/ConsoleStreamProvider.c ../../src/sys/Thread.c ../../src/sys/Async.c ../../src/sys/Error.c ../../src/sys/Heap.c ../../src/sys/String.c

@REM zcc +zalt -clib=new -m helloworld.c -o helloworld.asm -a
@REM zcc +zalt -clib=new -m helloworld.c -o helloworld --list

@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 --c-code-in-asm -m helloworld.c -o helloworld.asm -a
@REM zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 helloworld.c -o helloworld --list

zcc +zalt -clib=sdcc_iy --max-allocs-per-node200000 helloworld.c %zalt_sources% -o helloworld --list