;
; This file defines the memory layout for page zero.
;

; exports
public bios_load_byte_instruction
public bios_load_word_instruction
; export bios vars
public bios_var_ram_top_page
public bios_var_ram_page
public bios_var_ram_active_page

; imports
extern bios_reset_init
extern bios_trap_illegal

ifdef DEBUG
extern debug_save_registers
extern debug_infopoint
endif

module page0

; Declares fixed addresses and startup routines

;
; Page-0 memory layout
;

	;defs 0x0000 - ASMPC
; address = 0x0000
; !RESET and RST00
	di						; from warm boot (rst00), interrupts may be enabled
	jp	bios_reset_init
   
	defs 0x0008 - ASMPC
	; address = 0x0008
	; RTS08
	;	di					; if you need interrupts disabled, do that here
	jp	BiosFn1


	defs 0x0010 - ASMPC
	; address = 0x0010
	; RST10
	;	di					; if you need interrupts disabled, do that here
	jp	BiosFn2

	defs 0x0018 - ASMPC
	; address = 0x0018
	; RST18
	;	di					; if you need interrupts disabled, do that here
	jp	BiosFn3


	defs 0x0020 - ASMPC
	; address = 0x0020
	; RST20
	;	di					; if you need interrupts disabled, do that here
	jp	BiosFn4


	defs 0x0028 - ASMPC
	; address = 0x0028
	; RST28
	;	di					; if you need interrupts disabled, do that here
	jp	BiosFn5

   
	defs 0x0030 - ASMPC
	; address = 0x0030
	; RST30
	;	di					; if you need interrupts disabled, do that here
	jp	BiosFn6

	
	defs 0x0038 - ASMPC
	; address = 0x0038
	; RST38 and IM1
	; used to trap illegal jumps and interrupt mode
	di							; disable interrupts
ifdef DEBUG
	call debug_save_registers	; save cpu state
endif
	jp	bios_trap_illegal		; call the handler for illegal calls.

	
; bios vars
	defs 0x0040 - ASMPC
bios_var_ram_top_page:
	defb $00		; last valid ram page
bios_var_ram_top:
	defw $0000		; last valid ram address on last page
bios_var_ram_active_page:
	defb $00		; current active ram page


	defs 0x0066 - ASMPC
	; address = 0x0066
	; !NMI
;ifdef DEBUG
	call debug_save_registers	; save cpu state
	call debug_infopoint		; communicate InfoPoint to SystemController
;endif
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
	halt


;
; ISR Table (IM2) of 16-bit jump addresses (I=1) 256 bytes max
;

; ISR Table is located at page 1 ($0100, I=1).
defc isr_table_address 	= $0100		; hi-byte is same as the isr_table_index
defc isr_table_index 	= 1         ; used to initialie I register
defc isr_table_address_end = isr_table_address + $0100	; 256 byte of isr table

defs isr_table_address - ASMPC

; The lo address byte (A1-A7: A0=0) is put on the databus by the interrupting device.
; The hi address byte (A8-A15) is supplied by the I register that is initialized to (page) 1.
defw	isr_null_vector		; Address of ISR #0
defw	isr_null_vector		; Address of ISR #1
defw	isr_null_vector		; Address of ISR #2
defw	isr_null_vector		; Address of ISR #3
defw	isr_null_vector		; Address of ISR #4
defw	isr_null_vector		; Address of ISR #5
defw	isr_null_vector		; Address of ISR #6
defw	isr_null_vector		; Address of ISR #7
defw	isr_null_vector		; Address of ISR #8
defw	isr_null_vector		; Address of ISR #9
defw	isr_null_vector		; Address of ISR #10
defw	isr_null_vector		; Address of ISR #11
defw	isr_null_vector		; Address of ISR #12
defw	isr_null_vector		; Address of ISR #13
defw	isr_null_vector		; Address of ISR #14
defw	isr_null_vector		; Address of ISR #15
defw	isr_null_vector		; Address of ISR #16
defw	isr_null_vector		; Address of ISR #17
defw	isr_null_vector		; Address of ISR #18
defw	isr_null_vector		; Address of ISR #19
defw	isr_null_vector		; Address of ISR #20
defw	isr_null_vector		; Address of ISR #21
defw	isr_null_vector		; Address of ISR #22
defw	isr_null_vector		; Address of ISR #23
defw	isr_null_vector		; Address of ISR #24
defw	isr_null_vector		; Address of ISR #25
defw	isr_null_vector		; Address of ISR #26
defw	isr_null_vector		; Address of ISR #27
defw	isr_null_vector		; Address of ISR #28
defw	isr_null_vector		; Address of ISR #29
defw	isr_null_vector		; Address of ISR #30
defw	isr_null_vector		; Address of ISR #31
defw	isr_null_vector		; Address of ISR #32
defw	isr_null_vector		; Address of ISR #33
defw	isr_null_vector		; Address of ISR #34
defw	isr_null_vector		; Address of ISR #35
defw	isr_null_vector		; Address of ISR #36
defw	isr_null_vector		; Address of ISR #37
defw	isr_null_vector		; Address of ISR #38
defw	isr_null_vector		; Address of ISR #39
defw	isr_null_vector		; Address of ISR #40
defw	isr_null_vector		; Address of ISR #41
defw	isr_null_vector		; Address of ISR #42
defw	isr_null_vector		; Address of ISR #43
defw	isr_null_vector		; Address of ISR #44
defw	isr_null_vector		; Address of ISR #45
defw	isr_null_vector		; Address of ISR #46
defw	isr_null_vector		; Address of ISR #47
defw	isr_null_vector		; Address of ISR #48
defw	isr_null_vector		; Address of ISR #49
defw	isr_null_vector		; Address of ISR #50
defw	isr_null_vector		; Address of ISR #51
defw	isr_null_vector		; Address of ISR #52
defw	isr_null_vector		; Address of ISR #53
defw	isr_null_vector		; Address of ISR #54
defw	isr_null_vector		; Address of ISR #55
defw	isr_null_vector		; Address of ISR #56
defw	isr_null_vector		; Address of ISR #57
defw	isr_null_vector		; Address of ISR #58
defw	isr_null_vector		; Address of ISR #59
defw	isr_null_vector		; Address of ISR #60
defw	isr_null_vector		; Address of ISR #61
defw	isr_null_vector		; Address of ISR #62
defw	isr_null_vector		; Address of ISR #63
defw	isr_null_vector		; Address of ISR #64
defw	isr_null_vector		; Address of ISR #65
defw	isr_null_vector		; Address of ISR #66
defw	isr_null_vector		; Address of ISR #67
defw	isr_null_vector		; Address of ISR #68
defw	isr_null_vector		; Address of ISR #69
defw	isr_null_vector		; Address of ISR #70
defw	isr_null_vector		; Address of ISR #71
defw	isr_null_vector		; Address of ISR #72
defw	isr_null_vector		; Address of ISR #73
defw	isr_null_vector		; Address of ISR #74
defw	isr_null_vector		; Address of ISR #75
defw	isr_null_vector		; Address of ISR #76
defw	isr_null_vector		; Address of ISR #77
defw	isr_null_vector		; Address of ISR #78
defw	isr_null_vector		; Address of ISR #79
defw	isr_null_vector		; Address of ISR #80
defw	isr_null_vector		; Address of ISR #81
defw	isr_null_vector		; Address of ISR #82
defw	isr_null_vector		; Address of ISR #83
defw	isr_null_vector		; Address of ISR #84
defw	isr_null_vector		; Address of ISR #85
defw	isr_null_vector		; Address of ISR #86
defw	isr_null_vector		; Address of ISR #87
defw	isr_null_vector		; Address of ISR #88
defw	isr_null_vector		; Address of ISR #89
defw	isr_null_vector		; Address of ISR #90
defw	isr_null_vector		; Address of ISR #91
defw	isr_null_vector		; Address of ISR #92
defw	isr_null_vector		; Address of ISR #93
defw	isr_null_vector		; Address of ISR #94
defw	isr_null_vector		; Address of ISR #95
defw	isr_null_vector		; Address of ISR #96
defw	isr_null_vector		; Address of ISR #97
defw	isr_null_vector		; Address of ISR #98
defw	isr_null_vector		; Address of ISR #99
defw	isr_null_vector		; Address of ISR #100
defw	isr_null_vector		; Address of ISR #101
defw	isr_null_vector		; Address of ISR #102
defw	isr_null_vector		; Address of ISR #103
defw	isr_null_vector		; Address of ISR #104
defw	isr_null_vector		; Address of ISR #105
defw	isr_null_vector		; Address of ISR #106
defw	isr_null_vector		; Address of ISR #107
defw	isr_null_vector		; Address of ISR #108
defw	isr_null_vector		; Address of ISR #109
defw	isr_null_vector		; Address of ISR #110
defw	isr_null_vector		; Address of ISR #111
defw	isr_null_vector		; Address of ISR #112
defw	isr_null_vector		; Address of ISR #113
defw	isr_null_vector		; Address of ISR #114
defw	isr_null_vector		; Address of ISR #115
defw	isr_null_vector		; Address of ISR #116
defw	isr_null_vector		; Address of ISR #117
defw	isr_null_vector		; Address of ISR #118
defw	isr_null_vector		; Address of ISR #119
defw	isr_null_vector		; Address of ISR #120
defw	isr_null_vector		; Address of ISR #121
defw	isr_null_vector		; Address of ISR #122
defw	isr_null_vector		; Address of ISR #123
defw	isr_null_vector		; Address of ISR #124
defw	isr_null_vector		; Address of ISR #125
defw	isr_null_vector		; Address of ISR #126
defw	isr_null_vector		; Address of ISR #127
