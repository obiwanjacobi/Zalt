@ECHO OFF
SET PATH=%PATH%;C:\z88dk\bin\

zcc +zalt -vn -m -SO3 -DDEBUG -Ca-DDEBUG -clib=%1 --max-allocs-per-node200000 --c-code-in-asm -m @_zalt.lst -o zalt -a