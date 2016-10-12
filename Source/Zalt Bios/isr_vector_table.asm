;
; This file defines the interrupt service routine vector table (IM2)
;


; exports
public isr_table_index

; imports (external isr's)
extern isr_null_vector

section isr_vector_table

;
; ISR Table (IM2) of 16-bit jump addresses (I=1) 256 bytes max
;

; ISR Table is located at page 1 ($0100, I=1).
defc isr_table_index = 1            ; used to initialie I register
defc isr_table_address = $0100      ; hi-byte is same as the isr_table_index


org isr_table_address
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

; for full table this would be the last ISR vector
;defw	isr_null_vector		; Address of ISR #127

