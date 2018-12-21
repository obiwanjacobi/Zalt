
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; zalt_00_output_sysctrl ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Character output is sent via the System Controller
;
; ;;;;;;;;;;;;;;;;;;;;
; DRIVER CLASS DIAGRAM
; ;;;;;;;;;;;;;;;;;;;;
;
; CHARACTER_00_OUTPUT (root, abstract)
; ZALT_00_OUTPUT_SYSCTRL (concrete)
;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MESSAGES CONSUMED FROM STDIO
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; * STDIO_MSG_PUTC
; * STDIO_MSG_WRIT
; * STDIO_MSG_SEEK
; * STDIO_MSG_FLSH
; * STDIO_MSG_ICTL
; * STDIO_MSG_CLOS
;
; Others result in enotsup_zc.
;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MESSAGES CONSUMED FROM CHARACTER_00_OUPUT
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;   * OCHAR_MSG_PUTC
;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; IOCTLs UNDERSTOOD BY THIS DRIVER
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;
; BYTES RESERVED IN FDSTRUCT
; ;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; offset (wrt FDSTRUCT.JP)  description
;
;  8..13                    mutex

SECTION code_driver
SECTION code_driver_character_output

PUBLIC zalt_00_output_sysctrl

EXTERN OCHAR_MSG_PUTC
EXTERN character_00_output

zalt_00_output_sysctrl:

   cp OCHAR_MSG_PUTC
   jr z, zalt_00_output_sysctrl_ochar_msg_putc

   jp character_00_output      ; forward to library



zalt_00_output_sysctrl_ochar_msg_putc:

   ;   enter   :  c = char
   ;   exit    : carry set if error
   ;   can use : af, bc, de, hl, af'

   ld a, c
   
   ld bc, bios_sysctrl_terminal
   out (c), a
   
   scf
   ccf
   
   ret
