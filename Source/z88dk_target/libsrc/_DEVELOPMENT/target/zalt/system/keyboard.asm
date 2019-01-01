
;
; keyboard device support
;
section code_zalt_system


; exports
public keyboard_isr

; imports
; C api
extern _KeyBoard_OnKey__isr
; z88dk
extern asm_im2_push_registers
extern asm_im2_pop_registers
; zalt
extern bios_sysctrl_debugconsole_in


; interrupt service routine (#2)
; saves all registers (alternate also)
; calls KeyBoard_OnKey__isr (C) with new char
keyboard_isr:
    call asm_im2_push_registers
    
    call bios_sysctrl_debugconsole_in   ; get keyboard char (a)
    or a, a                             ; non-destructive zero-test
    jr z, keyboard_isr_skip
    
    call _KeyBoard_OnKey__isr           ; notify new key (non-zero)

.keyboard_isr_skip
    call asm_im2_pop_registers
    ei
    reti