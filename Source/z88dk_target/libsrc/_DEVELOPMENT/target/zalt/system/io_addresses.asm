;
; SystemController IO addresses
;

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