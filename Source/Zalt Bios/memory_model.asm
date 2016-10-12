;
; defines the order of the non-fixed code and data sections
;

module zalt

; Memory blocks are 4k bytes, 16 blocks in one 64k bytes bank, 4 banks of 64k bytes.

; Memory Page 0 (2k)
; $0000		page0  RSTs and NMI - $40: bios vars
; $0100		page1  Interrupt Vector Table
; $0200		bios
; $0300
; $0400		1k
; $0500
; $0600
; $0700
; $0800		2k
; $0900
; $0A00
; $0B00
; $0C00		3k
; $0D00
; $0E00
; $0F00

; Memory Page 1 (4k)
; $1000	 program area 


; fixed
section a00
section a08
section a10
section a18
section a20
section a28
section a30
section a38					; $FF illegal operation trap (IM1)
section bios_vars			; $0040
section a66
section isr_vector_table	; $0100

; non-fixed
section bios
section bios_memory
section debug