;
; bios.asm
;

; exports
public bios_reset_init
public isr_null_vector
public bios_trap_illegal

; imports


;
; Start of bios
;

; a dummy isr for initializing the isr vector table
isr_null_vector:
ifdef DEBUG
	;halt			; break if debug build
endif
	ei				; lets do that again
	reti			; return from interrupt

;	hl contains the source address of illegal call
bios_trap_illegal:
ifdef DEBUG
	;halt			; break if debug build
endif
	;rst $00			; reset
	halt
	
; Interrupts are disabled.
bios_reset_init:
	xor a, a
	ld b, a
	ld c, a
	ld d, a
	ld e, a
	ld h, a
	ld l, a
	ld ix, $0000
	ld iy, $0000

	ld	a, i			; cold boot/hard reset would init I to $00
	cp	a, $00			; is I zero?
	jr  nz, resetWarm	; nope - warm boot

	; initialze ram
	ld hl, $FFFF						; hard-coded ram top (64k)
	xor a, a							; memory page $00
	ld (bios_var_ram_top), hl			; init bios vars
	ld (bios_var_ram_active_page), a	; init to first page

	; !! TEMP !!
	;ld hl, bios_memory_page_size	; start of program memory (first page is reserved)
	;call bios_memory_init			; call routine to clear/fill program memory
	
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
	jp __Start			; jmp to C main entry point

	
	
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
	
	
	
	