;
; bios.asm
;

; This is the root file for compiling the bios.

; memory_model defines the order of the non-fixed sections
; Order is determined by the first time these section names are encountered by the assembler.
include "memory_model.asm"
; page0 and isr_vectortable have a fixed org
include "page0.asm"
include "isr_vector_table.asm"

; bios content
include "bios_vars.asm"
include "bios_crt0.asm"
include "memory.asm"
include "debug.asm"

; exports
public bios_reset_init
public isr_null_vector

; imports
extern isr_table_index

;
; Start of bios
;
section bios
org $0200

; a dummy isr for initializing the isr vector table
isr_null_vector:
ifdef DEBUG
	halt			; break if debug build
endif
	reti;			; do nothing, return from interrupt

;	hl contains the source address of illegal call
bios_trap_illegal:
ifdef DEBUG
	halt			; break if debug build
endif
	jp $0000		; reset
	
; Interrupts are disabled.
bios_reset_init:
	xor a
	ld b, a
	ld c, a
	ld d, a
	ld e, a
	ld h, a
	ld l, a
	ld ix, hl
	ld iy, hl

	ld	a, i			; cold boot/hard reset would init I to $00
	cp	a, $00			; is I zero?
	jr  nz, resetWarm	; nope - warm boot

	; initialze ram
	ld hl, $FFFF				; hard-coded ram top (64k)
	xor a						; memory page $00
	ld (bios_var_ram_top), hl	; init bios vars
	ld (bios_var_ram_page), a	; 

	; !! TEMP !!
	ld hl, bios_memory_page_size	; start of program memory (first page is reserved)
	call bios_memory_init			; call routine to clear/fill program memory
	
	; initialize Interrupt mode
	ld	a, isr_table_index      ; load I with page address for isr_vector_table
	ld	i, a			        ; for the ISR jump table (at $0100)
	im	2				        ; for IM2

; bios_reset_init jumps here if it detects a warm reset
.resetWarm
	; TODO reset all registers (except I and R)
	ld hl, (bios_var_ram_top)	; load ram-top
	ld sp, hl					; Stack Pointer at Ram Top

	ei					; turn on interrupts
;	jp crt_main; jmp to C main loop

	

	
	
	