;
; system_data.asm
;
section data_zalt_system


; exports
public bios_interrupt_enable_count
public debug_status
public memorymanager_bankid
public memorymanager_io_bankid
public debug_regs_var
public debug_regs_var_size

; imports


;
; system vars
;
bios_interrupt_enable_count:	; counts nested calls to bios_interrupt_disable
    defb $00

;
; memory manager vars
;
memorymanager_bankid:
    defb $00        ; the current bank id in the operational latch
memorymanager_io_bankid:
    defb $00        ; the current bank id in the configuration latch

;
; debug vars
;
debug_status:
    defb $00        ; state of debug handshaking with system controller

; (2 sets of 4 regs + 2 index regs and 2 cpu regs) times 2 bytes (24 bytes total)
defc    debug_regs_var_size	= 24

; allocate space for debug registers vars
debug_regs_var:
    defb debug_regs_var_size, $00
