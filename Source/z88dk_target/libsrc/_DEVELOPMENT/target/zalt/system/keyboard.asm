include "io_addresses.asm"

;
; keyboard device support
;
section code_zalt_system


; exports
public keyboard_isr
public keyboard_lastkey

; imports
; C api
extern _KeyBoard_OnKey__isr
; z88dk
extern asm_z80_push_registers
extern asm_z80_pop_registers
; zalt
extern bios_sysctrl_debugconsole_in



; interrupt service routine (#2)
; saves all registers (alternate also)
; calls KeyBoard_OnKey__isr (C) with new char
keyboard_isr:
    call asm_z80_push_registers
    
    call bios_sysctrl_debugconsole_in   ; get keyboard char (a)
    or a, a                             ; non-destructive zero-test
    jr z, keyboard_isr_skip
    
    call _KeyBoard_OnKey__isr           ; notify new key (non-zero)

.keyboard_isr_skip
    call asm_z80_pop_registers
    ei
    reti