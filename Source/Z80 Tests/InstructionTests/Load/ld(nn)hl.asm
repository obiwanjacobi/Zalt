org $0000
start:
	ld hl, $AA
	ld (word), hl
	halt
word:
	defb $00, $00
