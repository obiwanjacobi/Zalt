
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; zalt_00_input_sysctrl  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Character input is retrieved from the System Controller
;
; ;;;;;;;;;;;;;;;;;;;;
; DRIVER CLASS DIAGRAM
; ;;;;;;;;;;;;;;;;;;;;
;
; CHARACTER_00_INPUT (root, abstract)
; ZALT_00_INPUT_SYSCTRL (concrete)
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
; MESSAGES CONSUMED FROM CHARACTER_00_INPUT
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;   * ICHAR_MSG_GETC
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
SECTION code_driver_character_input

PUBLIC zalt_00_input_sysctrl

EXTERN ICHAR_MSG_GETC
EXTERN character_00_input

zalt_00_input_sysctrl:

   cp ICHAR_MSG_GETC
   jr z, zalt_00_input_sysctrl_ichar_msg_getc

   jp character_00_input      ; forward to library

   
zalt_00_input_sysctrl_ichar_msg_getc:

   ;   enter   : none
   ;   exit    : a=hl=char. carry set if error (hl=0 general error, hl=-1 eof)
   
   
   ld bc, $0020
   ; $20 = char-in
   in a, (c)
   ld h, 0
   ld l, a
   
   scf
   ccf
   
   ret
