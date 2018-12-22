IF !_ZALT_IO_ADDRESSES_ASM_
defc _ZALT_IO_ADDRESSES_ASM_ = 1

;
; SystemController IO addresses
;

; exports
public bios_sysctrl_testecho
public debug_sysctrl_port
public bios_sysctrl_terminal
public bios_sysctrl_debugconsole

; stores last value, can be read back
; in/out
defc    bios_sysctrl_testecho       =   $00

; IO port on the SystemController that is used for debug InfoPoints
; in/out
defc	debug_sysctrl_port	        =	$08

; user terminal 
; in/out
defc    bios_sysctrl_terminal       =   $20

; debug console
; in/out
defc    bios_sysctrl_debugconsole   =   $30


ENDIF   ;_ZALT_IO_ADDRESSES_ASM_