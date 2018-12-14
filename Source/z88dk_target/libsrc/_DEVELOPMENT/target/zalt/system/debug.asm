include "io_addresses.asm"

;
; debug routines
;

IF DEBUG
section code_zalt_debug

; exports
public debug_breakpoint
public debug_monitor
public debug_save_registers
public debug_restore_registers

; imports
extern bios_interrupt_disable
extern bios_interrupt_enable

; (2 sets of 4 regs + 2 index regs and 2 cpu regs) times 2 bytes (24 bytes total)
defc	debug_vars_size	= 24

; allocate space for debug vars
debug_vars:
defb debug_vars_size, $00

defc	debug_var_af_offset		=	$00
defc	debug_var_bc_offset		=	$02
defc	debug_var_de_offset		=	$04
defc	debug_var_hl_offset		=	$06
defc	debug_var_ix_offset		=	$08
defc	debug_var_iy_offset		=	$0A
defc	debug_var_sp_offset		=	$0C
defc	debug_var_pc_offset		=	$0E
defc	debug_var_af2_offset	=	$10
defc	debug_var_bc2_offset	=	$12
defc	debug_var_de2_offset	=	$14
defc	debug_var_hl2_offset	=	$18

defc	debug_var_base	=	debug_vars
defc	debug_var_af	=	debug_var_base	+ 	debug_var_af_offset	
defc	debug_var_bc	=	debug_var_base	+	debug_var_bc_offset	
defc	debug_var_de	=	debug_var_base	+	debug_var_de_offset	
defc	debug_var_hl	=	debug_var_base	+	debug_var_hl_offset	
defc	debug_var_ix	=	debug_var_base	+	debug_var_ix_offset	
defc	debug_var_iy	=	debug_var_base	+	debug_var_iy_offset	
defc	debug_var_sp	=	debug_var_base	+	debug_var_sp_offset	
defc	debug_var_pc	=	debug_var_base	+	debug_var_pc_offset	
defc	debug_var_af2	=	debug_var_base	+	debug_var_af2_offset
defc	debug_var_bc2	=	debug_var_base	+	debug_var_bc2_offset
defc	debug_var_de2	=	debug_var_base	+	debug_var_de2_offset
defc	debug_var_hl2	=	debug_var_base	+	debug_var_hl2_offset

debug_status:
defb $00
defc debug_status_none				= $00
defc debug_status_registers_saved	= $01



; Saves all registers in debug vars.
; Corrects for calling this sub-routine. So SP is saved as if before this call.
; pre-condition:
;	call-ret
; post-condition:
;	All registers retain their values (alternates also).
debug_save_registers:
	; bc, de and hl
	ld (debug_var_bc), bc	; store bc
	ld (debug_var_de), de	; store de
	ld (debug_var_hl), hl	; store hl
	exx						; switch to alternate registers
	ld (debug_var_bc2), bc	; store bc'
	ld (debug_var_de2), de	; store de'
	ld (debug_var_hl2), hl	; store hl'
	exx						; switch back
	ld (debug_var_ix), ix	; store ix
	ld (debug_var_iy), iy	; store iy
	; pc & sp
	pop hl					; sp is now as before when we were called
	ld (debug_var_pc), hl	; store pc
	ld (debug_var_sp), sp	; store sp
	push hl					; restore return address
	; af
	push af					; ld hl, af
	pop hl
	ld (debug_var_af), hl	; store af
	; af'
	ex af, af				; switch to alternate af
	push af					; ld hl, af
	pop hl
	ld (debug_var_af2), hl	; store af'
	
	ex af, af				; switch af back
	ld hl, debug_status		; set debug status
	ld (hl), debug_status_registers_saved
	ld hl, (debug_var_hl)	; restore hl value
	ret
	

; Restores all registers (incl. alternates) to saved values (debug_save_registers).
; ALSO RESTORES PC AND SP!
; THIS MEANS THAT THE RETURN ADDRESS IS CHANGED TO THE SAVED PC VALUE!!
; AND THE SP IS ALSO RESTORED TO THE SAVED VALUE!!
debug_restore_registers_all:
	ld sp, (debug_var_sp)	; load saved sp value 
	ld hl, (debug_var_pc)	; load the saved pc value
	push hl					; set as new return address
	
	; ... and we're doomed
	
	; VVVVV fall thru! VVVVV
	
; Restores all registers (incl. alternates) to saved values (debug_save_registers).
; Does *NOT* restore pc and sp!
debug_restore_registers:
	; af'
	ex af, af
	ld hl, (debug_var_af2)
	push hl
	pop af
	
	; af
	ex af, af
	ld hl, (debug_var_af)
	push hl
	pop af
	
	; bc', de', hl'
	exx
	ld bc, (debug_var_bc2)
	ld de, (debug_var_de2)
	ld hl, (debug_var_hl2)
	
	; for now
	ld hl, debug_status		; set debug status
	ld (hl), debug_status_none

	; bc, de, hl
	exx
	ld bc, (debug_var_bc)
	ld de, (debug_var_de)
	ld hl, (debug_var_hl)
	
	; ix and iy
	ld ix, (debug_var_ix)
	ld iy, (debug_var_iy)
	ret
	
	
; debug commands from System Controller
defc  debug_cmd_exit = 0
defc  debug_cmd_wait = 1
defc  debug_cmd_dumpregs = 2


; Communicates with the System Controller to relay the debug information.
; Mainly CPU-register values. debug_save_registers must be called first.
; The SystemController can halt the CPU (BUSREQ) in order to retrieve data from memory (DMA).
debug_monitor:
	ld bc, debug_sysctrl_port			; set io port

.debug_monitor_get_cmd
	; for now we only check for no-command (zero)
	in a, (c)							; ask system controller if we're debugging
	ret z								; exit if not so (debug_cmd_exit)

	cp a, debug_cmd_dumpregs
	call z, debug_dump_registers		; dump registers

	jr debug_monitor_get_cmd			; loop while waiting (debug_cmd_wait)


; dumps the saved registers to the System Controller
; pre-conditions:
;	call-ret
;   bc contains debug port address
debug_dump_registers:
	; prepare to dump registers
	ld e, debug_vars_size				; size of register value block
	ld hl, debug_vars					; start address of register value block

.debug_dump_registers_loop
	ld a, (hl)
	out (c), a
	inc hl
	dec e
	jr nz, debug_dump_registers_loop
	ret


; implements setting up a precompiled debug breakpoint
; pre-conditions:
;	call-ret
debug_breakpoint:
	call bios_interrupt_disable
	call debug_save_registers
	halt		; wait for NMI
	call debug_restore_registers
	call bios_interrupt_enable
	ret

ENDIF	; DEBUG