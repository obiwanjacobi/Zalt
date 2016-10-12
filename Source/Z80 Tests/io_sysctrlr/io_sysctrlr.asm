defc	TEST_ADDRESS	=	$00		; test loop
defc	IO_ADDRESS		=	$20		; Serial

org $0000
start:
	ld a, '@'
	out (TEST_ADDRESS), a
	xor a
	in a, (TEST_ADDRESS)
	out (IO_ADDRESS), a
	halt
