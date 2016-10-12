;
;	thread manages the state of a path of execution
;

; exports
public thread_get_sp_in_hl
public thread_init
public thread_start


; pre-conditions:
;      call-ret
;		a = id		(not used)
;		de = sp
;		hl = pc
; initiales a thread strucure prior to running
thread_init:
	;ld (thread_var_id), a
	ld (thread_var_pc), de
	ld (thread_var_sp), hl
	ret
	
; pre-conditions:
;      call-ret
; transfers execution control to the threads procedure
thread_start:
	; TODO: save system sp
	ld sp, (thread_var_sp)
	; TODO: this should be jp when we have a scheduler!
	call (thread_var_pc)
	; TODO restore system sp
	ret
	
	
; called by the prolog of services	
; stores the stack pointer (before this call)
thread_get_sp_in_hl:
	pop hl					; sp is now as before when we were called
	ld (thread_var_sp), sp	; store sp
	push hl					; restore return address
	ld hl, (thread_var_sp)	; load sp into hl
	ret


; list with active threads
thread_list:
	defb	1				; count is one
	defw	thread_var		; currently only one default thread


; static structure with saved thread state
thread_var:
;thread_var_id:
;	defb	0
thread_var_pc:
	defw	0
thread_var_sp:
	defw	0
thread_var_stackblocksize:
	defb	1		; 4k stack (1 mem block)
thread_var_mem_blocks
	defw	0		; a location to do mem block usage book keeping. structure unknown.
	
; todo register space
