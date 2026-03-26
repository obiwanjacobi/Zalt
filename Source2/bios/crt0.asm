; crt0.asm - minimal startup, replaces z88dk CRT
; Linked first. Sets up the stack then calls into C.
; Adjust STACK_TOP to match your hardware RAM.

SECTION code

PUBLIC _crt0

EXTERN _main                ; C entry point (main.c must define main())

defc STACK_TOP = 0xFFFF     ; top of RAM

_crt0:
    di                      ; disable interrupts during init
    ld   sp, STACK_TOP      ; set up stack

    ; --- optional: zero BSS section ---
    ; ld   hl, __BSS_head
    ; ld   bc, __BSS_size
    ; call zero_bss

    ; --- optional: copy initialised data from ROM to RAM ---
    ; (needed only for ROM builds where DATA section is in RAM)

    ei                      ; enable interrupts (remove if not needed)
    call _main              ; call C entry point

_halt:
    di
    halt                    ; halt if main() returns
    jr   _halt              ; safety loop
