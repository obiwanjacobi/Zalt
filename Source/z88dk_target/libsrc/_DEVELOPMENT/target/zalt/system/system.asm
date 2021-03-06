
;
; Implements C API for the System Controller IO
;

section code_zalt_system


; exports
;public _System_DebugConsole_Out
public _System_DebugConsole_Out__fast
public _System_DebugConsole_In

public bios_sysctrl_debugconsole_in
public bios_sysctrl_debugconsole_out

; imports
extern bios_sysctrl_debugconsole

;
; void System_DebugConsole_Out(uint8_t data);
;

;_System_DebugConsole_Out:
;        pop af                          ; return address
;        pop hl                          ; hl = data
;        push hl
;        push af                  ; 42 cycles overhead
        ; VVVVV FALL THROUGH VVVVV

; pre-conditions:
;   l contains byte to send
; post-conditions:
;   call-ret
;   uses bc and l
bios_sysctrl_debugconsole_out:
_System_DebugConsole_Out__fast:
        ld bc, bios_sysctrl_debugconsole
        out (c), l
        ret

;
; uint8_t System_DebugConsole_In();
;

; pre-conditions:
;   -
; post-conditions:
;   call-ret, l contains byte received
;   uses hl, bc and a
bios_sysctrl_debugconsole_in:
_System_DebugConsole_In:
        ld bc, bios_sysctrl_debugconsole
        ld hl, 0
        in a, (c)
        ld l, a
        ret
