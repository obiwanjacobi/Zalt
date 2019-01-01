dnl############################################################
dnl##           ZALT_CRT_0.ASM.M4 - CUSTOM TARGET            ##
dnl############################################################
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                  zalt standalone target                   ;;
;;    generated by target/zalt/startup/zalt_crt_0.asm.m4     ;;
;;                                                           ;;
;;                  flat 64k address space*                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *) for now

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL SYMBOLS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "config_zalt_public.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CRT AND CLIB CONFIGURATION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "../crt_defaults.inc"
include "crt_config.inc"
include(`../crt_rules.inc')
include(`zalt_rules.inc')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL SYMBOLS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;include(`../clib_const.m4')
;include "clib_target_constants.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SET UP MEMORY MODEL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include(`crt_memory_map.inc')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; INSTANTIATE DRIVERS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
dnl   these are m4 comments and not rendered to the output
dnl############################################################
dnl## LIST OF AVAILABLE DRIVERS WITH STATIC INSTANTIATORS #####
dnl############################################################
dnl
dnl## input streams
dnl#include(`../driver/character/zalt_00_input_sysctrl.m4')
dnl
dnl## output streams
dnl#include(`../driver/character/zalt_00_output_sysctrl.m4')
dnl
dnl## file dup
dnl#include(`../../m4_file_dup.m4')dnl
dnl
dnl## empty fd slot
dnl#include(`../../m4_file_absent.m4')dnl
dnl
dnl############################################################
dnl## INSTANTIATE DRIVERS #####################################
dnl############################################################
dnl

include(`../clib_instantiate_begin.m4')

;; fd=0, stdin

include(`driver/character/zalt_00_input_sysctrl.m4')
m4_zalt_00_input_sysctrl(_stdin, 0x0100)

;; fd=1, stdout

include(`driver/character/zalt_00_output_sysctrl.m4')
m4_zalt_00_output_sysctrl(_stdout, 0x0010)

;; fd=2, stderr

include(`../m4_file_dup.m4')
m4_file_dup(_stderr, 0x80, __i_fcntl_fdstruct_1)

include(`../clib_instantiate_end.m4')


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; STARTUP ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

section CODE

; exports
public __Start, __Exit

; imports
extern _main

;**************************************************************
IF __crt_org_code = 0
;**************************************************************

   ; address = 0x0000
   ; page0 has a fixed org
   include "startup/page0.asm"
   include "startup/memory.asm"
   
;**************************************************************
ENDIF
;**************************************************************

__Start:
   ; parse command line
   ; (optional)

   ; initialize data section
   include "../clib_init_data.inc"

   ; initialize bss section
   include "../clib_init_bss.inc"

section code_crt_init          ; user and library initialization
section code_crt_main

   ; call user program
    call _main                  ; hl = return status
   	
   ; run registered exit() functions
   IF __clib_exit_stack_size > 0
      EXTERN asm_exit
      jp asm_exit              ; exit function jumps to __Exit
   ENDIF

__Exit:
   ; abort(), exit(), quickexit() can be called from anywhere
   ; so the stack may be unbalanced here
   push hl                     ; hl = return status

section code_crt_exit          ; user and library cleanup
section code_crt_return

   ; close files   
   include "../clib_close.inc"

   pop hl                      ; hl = return status

   ; exit program
zalt_oblivian:
   ; perhaps we need something to break into the System Controller?
	jr zalt_oblivian

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; RUNTIME VARS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

section BSS_UNINITIALIZED

; place any uninitialized data here (eg saved stack pointer)
; bss and data section initialization will not touch it

include "../clib_variables.inc"
;include "clib_target_variables.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLIB STUBS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "../clib_stubs.inc"
