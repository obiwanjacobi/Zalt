;; --------------------------------------------------------

; public function
public component_object_function

; pre-conditions:
;      expected register
; post-conditions:
;      used registers
component_object_function:
    xor a           ; comment
	

;; --------------------------------------------------------
	
; example of a fast 16 bit loop
; de: contains the 16-bit loop length

	ld b, e			; lsb in b for djnz instruction
	dec de			; decrement whole count before ...
	inc d			; add msb one outer loop iteration
.loop
	; looped instructions here 
	
	djnz loop		; lsb inner loop (decrements b)
	dec d			; decrement msb
	jr nz, loop		; msb outer loop
	




;; --------------------------------------------------------------------------------------------------------------------
;; 	difference between sub-routines and services:
;; 	- sub-routines are called with native call-ret and pass arguments by documented registers.
;; 	- services are called (through a funtion table) with native call-ret but pass arguments by stack. 
;;	  documented if the service parameter is in, out or ref.

; example of parameter passing via the SP.
; parameters are always 16 bits (because SP works only with 16 bits values)
; caller pushes parameters on the SP (left-to-right)
; caller then calls callee (call-ret)
; callee pops the parameters of the SP in reverse order
; callee needs to preserve return address
; caller cleans up parameters from stack after callee returns
; there is NO return value. Any return value must be passed as out-parameter

caller:
; caller prepares parameters
	push de
	push hl
; caller makes the call
	call callee
; caller cleans up the stack
	pop hl
	pop de
; caller (optionally) use the popped values of out or ref parameters

; stack on entry:
;	- param 1 (de)
;	- param 2 (hl)
;	- ret-addr
; sp =>

callee:
; callee prolog: executed at the beginning of every service	- with local vars
	push ix			; save incoming ix
	ld ix, 0		; prepare to copy sp into ix
	add ix, sp		; ix now points to the bottom of the stack
	ld hl, -4		; reserve space for the local vars (4 bytes)
	add	hl, sp		; calc where the sp would end up
	ld sp, hl		; move the stack pointer to keep local vars safe

; stack when prolog done (sp < ix):
;	- param 1 (de)
;	- param 2 (hl)
;	- ret-addr
; ix =>
;	- var 1 (l)
;	- var 1 (h)
;	- var 2 (l)
;	- var 2 (h)
; sp =>


defc params_offset = 4		; offset to jump over the pushed ix and return address on stack to get to params

; callee body: retrieve parameters (ix with positive displacement) reversed little endian
	ld h, (ix + params_offset + 0)	; a positive offset goes back up the stack
	ld l, (ix + params_offset + 1)
	ld d, (ix + params_offset + 2)
	ld e, (ix + params_offset + 3)

; callee body: write out parameters (ix with positive displacement) reversed little endian
	ld (ix + params_offset + 0), h	; a positive offset goes back up the stack
	ld (ix + params_offset + 1), l
	ld (ix + params_offset + 2), d
	ld (ix + params_offset + 3), e

defc vars_offset = 0		; offset to jump to local vars area on stack

; callee uses local vars (ix with negative displacement) little endian
	ld h, (ix - vars_offset - 0)	; a negative offset goes down the stack
	ld l, (ix - vars_offset - 1)
	ld d, (ix - vars_offset - 2)
	ld e, (ix - vars_offset - 3)

; callee can call other services (callee becomes caller)
	push hl
	call subcallee
	pop hl
	
; callee epilog: executed at the end of every service call
	ld	sp, ix	; restore the original sp
	pop ix		; restore saved ix
	ret
