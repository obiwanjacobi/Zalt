;
; This file defines the memory layout for page zero.
;

; exports
public bios_load_byte_instruction
public bios_load_word_instruction

; imports
extern bios_reset_init
extern bios_trap_illegal

module page0

; Declares fixed addresses and startup routines

;
; Page 0 memory layout
;

section a00
; !RESET and RST00
org $0000
	di					; from warm boot (rst00), interrupts may be enabled
	jp	bios_reset_init

section a08
; RTS08
org $0008
;	di					; if you need interrupts disabled, do that here
	jp	BiosFn1

section a10
; RST10
org $0010
;	di					; if you need interrupts disabled, do that here
	jp	BiosFn2

section a18
; RST18
org $0018
;	di					; if you need interrupts disabled, do that here
	jp	BiosFn3

section a20
; RST20
org $0020
;	di					; if you need interrupts disabled, do that here
	jp	BiosFn4

section a28
; RST28
org $0028
;	di					; if you need interrupts disabled, do that here
	jp	BiosFn5

section a30
; RST30
org $0030
;	di					; if you need interrupts disabled, do that here
	jp	BiosFn6

section a38
; RST38 and IM1
; used to trap illegal jumps and interrupt mode
org $0038
	di							; disable interrupts
ifdef DEBUG
	call debug_save_registers	; save cpu state
endif
	jp	bios_trap_illegal		; call the handler for illegal calls.

section bios_vars
org $0040
; see bios_vars.asm for address defines.
defw $0000		; bios_var_ram_top
defb $00		; bios_var_ram_page

section a66
org $0066
; !NMI
ifdef DEBUG
	call debug_save_registers	; save cpu state
	call debug_info_point		; communicate InfoPoint to SystemController
endif
	retn

	
; When a program calls an RST function its PC is stored on the SP.
; The RST function can define an additional byte (or two) immediate after the RST instruction.
; This extra information would have meaning for the RST operation.

; This method reads the single byte that follows the RST instruction
; and adjusts the returns address to return control after that byte.
; rst{n} defb $xx
; pre-condition:
;	The SP contains a direct return address used to return from this method
;	and it contains the return address from where the RST method was called -
;	that will be adjusted.
; post-condition:
;	Register a will contain the extra RST byte and the RST return address is adjusted.
bios_load_byte_instruction:
	pop de		; this is the immediate return address and must be preserved.
	pop	hl		; this is the RST return address and must be adjusted
	ld a, (hl)	; get the extra byte
	inc hl		; set RST return address past the data byte
	push hl		; put RST return address back on stack
	push de		; as well as the immediate return address
	ret

; This method reads two bytes (a word) that follows the RST instruction
; and adjusts the returns address to return control after that word.
; rst{n} defw $xxxx
; pre-condition:
;	The SP contains a direct return address used to return from this method
;	and it contains the return address from where the RST method was called -
;	that will be adjusted.
;	The word bytes are little endian: so the first is LSB and the next is MSB.
; post-condition:
;	Register bc will contain the extra RST bytes and the RST return address is adjusted.
;	Register c contains the first (lsb) and b contains the second (msb) byte after the RST instruction.
bios_load_word_instruction:
	pop de		; this is the immediate return address and must be preserved.
	pop	hl		; this is the RST return address and must be adjusted
	ld c, (hl)	; get the first extra byte
	inc hl		; prepare to get the next data byte
	ld b, (hl)	; get the next extra byte
	inc hl		; set RST return address past the data word
	push hl		; put RST return address back on stack
	push de		; as well as the immediate return address
	ret
	
BiosFn1:
; bios function #1

BiosFn2:
; bios function #2

BiosFn3:
; bios function #3

BiosFn4:
; bios function #4

BiosFn5:
; bios function #5

BiosFn6:
; bios function #6

