;
; system_data.asm
;
section data_zalt_system


; exports
public bios_var_ram_top_page
public bios_var_ram_active_page
public bios_var_ram_top
public bios_interrupt_enable_count
public debug_status

; imports


; bios vars
bios_var_ram_top_page:
	defb $00		; last valid ram page
bios_var_ram_active_page:
	defb $00		; current active ram page
bios_var_ram_top:
	defw $0000		; last valid ram address on last page
bios_interrupt_enable_count:	; counts nested calls to bios_interrupt_disable
	defb $00

; debug vars
debug_status:
	defb $00		; state of debug handshaking with system controller
