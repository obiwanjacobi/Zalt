
    module bios_crt0

;--------
; Some scope definitions
;--------

        EXTERN    _main           ;main() is always external to crt0 code

        PUBLIC    cleanup         ;jp'd to by exit()
        PUBLIC    l_dcal          ;jp(hl)


        PUBLIC    _vfprintf       ;jp to the printf() core

        PUBLIC    exitsp          ;atexit() variables
        PUBLIC    exitcount

        PUBLIC    heaplast        ;Near malloc heap variables
        PUBLIC    heapblocks
        PUBLIC    __sgoioblk      ;stdio info block



;if (ASMPC<>$0000)
;        defs    CODE_ALIGNMENT_ERROR
;endif

;	jp	program

;	defs	$0008-ASMPC
;if (ASMPC<>$0008)
;        defs    CODE_ALIGNMENT_ERROR
;endif
;	jp	restart08

;	defs	$0010-ASMPC
;if (ASMPC<>$0010)
;        defs    CODE_ALIGNMENT_ERROR
;endif
;	jp	restart10

;	defs	$0018-ASMPC
;if (ASMPC<>$0018)
;        defs    CODE_ALIGNMENT_ERROR
;endif
;	jp	restart18

;	defs	$0020-ASMPC
;if (ASMPC<>$0020)
;        defs    CODE_ALIGNMENT_ERROR
;endif
;	jp	restart20

;    defs	$0028-ASMPC
;if (ASMPC<>$0028)
;        defs    CODE_ALIGNMENT_ERROR
;endif
;	jp	restart28

;	defs	$0030-ASMPC
;if (ASMPC<>$0030)
;        defs    CODE_ALIGNMENT_ERROR
;endif
;	jp	restart30

;	defs	$0038-ASMPC
;if (ASMPC<>$0038)
;        defs    CODE_ALIGNMENT_ERROR
;endif
; IM1 interrupt routine
;	ei
;	ret

restart08:
	; a = command to execute
	defb	$ED, $FE	;trap
	ret
; Restart routines, nothing sorted yet
;restart10:
;restart18:
;restart20:
;restart28:
;restart30:
;	ret

program:
	ld	sp,65535
	ld	hl,-64
	add	hl,sp
	ld	sp,hl
	ld	(exitsp),sp
    ei
	call	_main
cleanup:
	ld	a,CMD_EXIT	;exit
	rst	8


l_dcal: jp      (hl)            ;Used for function pointer calls


;-----------
; Define the stdin/out/err area. For the z88 we have two models - the
; classic (kludgey) one and "ANSI" model
;-----------
__sgoioblk:
IF DEFINED_ANSIstdio
        INCLUDE "stdio_fp.asm"
ELSE
        defw    -11,-12,-10
ENDIF

;---------------------------------
; Select which printf core we want
;---------------------------------
_vfprintf:
IF DEFINED_floatstdio
        EXTERN     vfprintf_fp
        jp      vfprintf_fp
ELSE
        IF DEFINED_complexstdio
                EXTERN     vfprintf_comp
                jp      vfprintf_comp
        ELSE
                IF DEFINED_ministdio
                        EXTERN     vfprintf_mini
                        jp      vfprintf_mini
                ENDIF
        ENDIF
ENDIF
        

;-----------
; variables
;-----------

exitsp:         defw    0       ; Address of where the atexit() stack is
exitcount:      defb    0       ; How many routines on the atexit() stack


heaplast:       defw    0       ; Address of last block on heap
heapblocks:     defw    0       ; Number of blocks


;-----------------------
; Floating point support
;-----------------------
IF NEED_floatpack
        INCLUDE         "float.asm"
fp_seed:        defb    $80,$80,0,0,0,0 ;FP seed (unused ATM)
extra:          defs    6               ;FP register
fa:             defs    6               ;FP Accumulator
fasign:         defb    0               ;FP register

ENDIF

