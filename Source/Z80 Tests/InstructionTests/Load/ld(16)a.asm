org $0000
start:
	ld a, $AA
	ld bc, word
	ld (bc), a
	halt
word:
	defb 00, 00
