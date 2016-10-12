defc	IO_ADDRESS	=	$20

org $0000
start:
	ld hl, TextSource
loop:
	ld a, (hl)
	cp a, 0
	jr z, end
	out (IO_ADDRESS), a
	inc hl
	jr loop
end:
	halt

TextSource:
defm "Hello World!", 0