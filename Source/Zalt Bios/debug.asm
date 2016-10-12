;
; debug routines
;

ifdef DEBUG

public debug_info_point
public debug_save_registers
public debug_restore_registers
public debug_restore_registers_all


section debug

; IO port on the SystemController that is used for debug InfoPoints
defc	debug_system_controller_port	=	$00

; (2 sets of 4 regs + 2 index regs and 2 cpu regs) times 2 bytes (24 bytes total)
defc	debug_vars_size	= (4 * 2 + 2 + 2) * 2
debug_vars:
; allocate space for debug vars
defb debug_vars_size, $00

defc	debug_var_base	=	debug_vars
defc	debug_var_pc	=	debug_var_base	+	$00
defc	debug_var_sp	=	debug_var_base	+	$02
defc	debug_var_af	=	debug_var_base	+	$04
defc	debug_var_bc	=	debug_var_base	+	$06
defc	debug_var_de	=	debug_var_base	+	$08
defc	debug_var_hl	=	debug_var_base	+	$0A
defc	debug_var_af2	=	debug_var_base	+	$0C
defc	debug_var_bc2	=	debug_var_base	+	$0E
defc	debug_var_de2	=	debug_var_base	+	$10
defc	debug_var_hl2	=	debug_var_base	+	$12
defc	debug_var_ix	=	debug_var_base	+	$14
defc	debug_var_iy	=	debug_var_base	+	$16


; Saves all registers in debug vars.
; Corrects for calling this sub-routine. So SP is saved as if before this call.
; pre-condition:
;	call-ret
; post-condition:
;	All registers retain their values (also alternates).
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
	; pc
	ex (sp), hl				; swap hl onto the stack and get return address (pc)
	ld (debug_var_pc), hl	; store pc
	; sp
	pop hl					; sp is now as before when we were called
	ld (debug_var_sp), sp	; store sp
	ld hl, (debug_var_pc)	; load saved pc
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
; Does not restore pc and sp!
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
	ld hl, (debug_var_bc2)
	ld b, h
	ld c, l
	ld hl, (debug_var_de2)
	ld d, h
	ld e, l
	ld hl, (debug_var_hl2)
	
	; bc, de, hl
	exx
	ld hl, (debug_var_bc)
	ld b, h
	ld c, l
	ld hl, (debug_var_de)
	ld d, h
	ld e, l
	ld hl, (debug_var_hl)
	
	; ix and iy
	ld ix, (debug_var_ix)
	ld iy, (debug_var_iy)
	ret
	
	
; Communicates with the System Controller to relay the information that makes up an InfoPoint.
; Mainly CPU-register values. debug_save_registers must be called first.
; The SystemController can halt (BUSREQ) the CPU in order to retrieve data from memory (DMA).
debug_info_point:
	ld b, debug_vars_size				; load b with size of register value block
	ld hl, debug_vars					; load hl with start address of register value block
	ld c, debug_system_controller_port	; set io port
	; do not unroll: SystemController inserts wait-states
	otir								; repeat out
	ret
	
	
endif	; DEBUG