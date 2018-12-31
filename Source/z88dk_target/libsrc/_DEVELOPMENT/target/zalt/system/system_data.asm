;
; system_data.asm
;
section data_zalt_system


; exports
public bios_interrupt_enable_count
public debug_status
public memorymanager_bankid
public memorymanager_io_bankid


; imports


; bios vars
bios_interrupt_enable_count:	; counts nested calls to bios_interrupt_disable
	defb $00

; debug vars
debug_status:
	defb $00		; state of debug handshaking with system controller

; memory manager vars
memorymanager_bankid:
	defb $00		; the current bank id in the operational latch
memorymanager_io_bankid:
	defb $00		; the current bank id in the configuration latch
