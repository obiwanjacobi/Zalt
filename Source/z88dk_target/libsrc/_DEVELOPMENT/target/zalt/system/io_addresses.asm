;
; SystemController IO addresses
;
section code_zalt_system


; exports
public bios_sysctrl_testecho
public debug_sysctrl_port
public bios_sysctrl_terminal
public bios_sysctrl_debugconsole


; stores last value, can be read back
; in/out
defc    bios_sysctrl_testecho       =   $00

; IO port on the SystemController that is used for debug Breakpoints
; in/out
defc	debug_sysctrl_port	        =	$08

; user terminal 
; in/out
defc    bios_sysctrl_terminal       =   $20

; debug console
; in/out
defc    bios_sysctrl_debugconsole   =   $30
