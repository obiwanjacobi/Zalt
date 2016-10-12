defc	IO_ADDRESS	=	$20

org $0000
start:
	ld a, '@'
	out (IO_ADDRESS), a
	;in a, (IO_ADDRESS)
	halt
