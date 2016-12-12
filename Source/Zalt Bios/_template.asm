
; public function
public component_object_function

; pre-conditions:
;      expected register
; post-conditions:
;      used registers
component_object_function:
    xor a           ; comment
	
	
;	
; example of a fast 16 bit loop
; de: contains the 16-bit loop length

	ld b, e			; lsb in b for djnz instruction
	dec de			; decrement whole count before ...
	inc d			; add msb one outer loop iteration
.loop
	; loooped instructions here 
	
	djnz loop		; lsb inner loop (decrements b)
	dec d			; decrement msb
	jr nz, loop		; msb outer loop
	
	
	
;; 	difference between sub-routines and services:
;; 	- sub-routines are called with native call-ret and pass argument by documented register.
;; 	- services are called (through a funtion table) with native call-ret but pass arguments by stack. 
;;	  documented is if the service parameter is in, out or ref.

; example of parameter passing via the SP.
; parameters are always 16 bits (because SP works only with 16 bits values)
; caller pushes parameters on the SP then call
; callee pops the parameters of the SP in reverse order
; callee needs to preserve return address
; caller cleans up parameters from stack after callee returns
; there is NO return value. Any return value must be passed as out-parameter


; caller prepares parameters
	push de
	push hl
; caller makes the call
	call callee
; caller cleans up the stack
	pop hl
	pop de
; caller (optionally) use the popped values of out or ref parameters


; callee prolog: executed at the beginning of every service
	call thread_get_sp_in_hl	; returns sp in hl (see thread.asm)
	dec hl
	dec hl			; skip return address
	push ix			; save ix
	ld ix, hl		; ix now points to the parameters
	
; callee local vars init
	ld hl, $0		; default/initialization value of var
	push hl			; create space on stack for var

; callee body: retrieve parameters (ix with negative displacement) reversed little endian
	ld h, (ix - 1)
	ld l, (ix - 2)
	ld d, (ix - 3)
	ld e, (ix - 4)
	
; callee uses local vars (ix with positive displacement) little endian
	ld l, (ix + 2)	; have to skip return address, start at 2
	ld h, (ix + 3)


; callee can call other services (callee becomes caller)
	push hl
	call subcallee
	pop hl
	
	
; callee epilog: executed at the end of every service call
	pop ix		; restore ix
	ret
	
	