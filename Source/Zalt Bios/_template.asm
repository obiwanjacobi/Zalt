
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
	; looped instructions here 
	
	djnz loop		; lsb inner loop (decrements b)
	dec d			; decrement msb
	jr nz, loop		; msb outer loop
	
	
	
;; 	difference between sub-routines and services:
;; 	- sub-routines are called with native call-ret and pass arguments by documented registers.
;; 	- services are called (through a funtion table) with native call-ret but pass arguments by stack. 
;;	  documented if the service parameter is in, out or ref.

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

defc  method_parameter_offset	4	; saved ix and return address
defc  method_localvar_offset	0	; ?value is specific per scope

; callee prolog: executed at the beginning of every service	
	push ix			; save ix
	ld ix, $0000
	add ix, sp		; ix now points to the bottom of the stack

; callee body: retrieve parameters (ix with posative displacement) reversed little endian
	ld h, (ix + method_parameter_offset)
	ld l, (ix + method_parameter_offset + 1)
	ld d, (ix + method_parameter_offset + 2)
	ld e, (ix + method_parameter_offset + 3)
	
; callee local vars init - for all local vars (in scope)
	ld      ix, -n          ; allocate n bytes for local variables
    add     ix, sp
    ld      sp, ix  	;!! THIS CHANGES SP (AND IX)! EPILOG WILL FAIL
	
; callee uses local vars (ix with negative displacement) little endian
	ld l, (ix - )
	ld h, (ix - )


; callee can call other services (callee becomes caller)
	push hl
	call subcallee
	pop hl
	
	
; callee epilog: executed at the end of every service call
	pop ix		; restore ix
	ret
	
	