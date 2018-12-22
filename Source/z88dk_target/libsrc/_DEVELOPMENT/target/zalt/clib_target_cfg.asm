
IF !_CLIB_TARGET_CFG_ASM_
defc _CLIB_TARGET_CFG_ASM_ = 1

; **********************************************************************
; IF YOU MAKE CHANGES TO THIS FILE YOU MUST RECOMPILE THE ZALT LIBRARIES
; **********************************************************************

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TEMP - TARGET CLIB CONFIGURATION ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;--------------------------------------------------------------
;-- ARCHITECTURE CONSTANTS ------------------------------------
;--------------------------------------------------------------

defc __temp         = 1

; TODO: zalt has variable clock speeds!
defc __clock_freq   = 10000000          ; Hz

defc __z80_cpu_info = $01

; bit 0 = $01 = if set indicates an nmos z80 (if unsure set it)
; bit 1 = $02 = allow undocumented instruction "sll r"

ENDIF
