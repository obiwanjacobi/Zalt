;
; contains routines for managing ram memory
;
section code_zalt_system


public bios_memory_fill


; the data that is used to fill memory on reset
defc    bios_memory_fill_opcode     =  $FF      ; rst $38
defc    bios_memory_page_size       =  $1000    ; 4k page size


; Initializes ram with fill data starting at address pointed to by register hl.
; pre-conditions:
;      call-ret, hl: start address
;        bios_var_ram_top has been initialized
; post-conditions:
;        Ram is initialized with RST$38 ($FF)
; bios_memory_init:
;     ld b, h                        ; save hl
;     ld c, l                        ; ld bc, hl
;     ld hl, (bios_var_ram_top)    ; load ram-top address
;     scf                            ; set carry flag / toggle carry flag
;     ccf                            ; to make sure sbc operations is valid
;     sbc hl, bc                    ; length = ram-top - start-address
    
;     ld d, h                        ; setup block length for call
;     ld e, l                        ; ld de, hl
;     ld h, b                        ; setup start address for call
;     ld l, c                        ; ld hl, bc
    
    ; VVVV fall through to fill routine for entire ram VVVV

; Fills ram with init-value starting at hl for de number of bytes.
; pre-conditions:
;      call-ret 
;        hl: start address
;        de: number of bytes
bios_memory_fill:
    ld a, bios_memory_fill_opcode    ; value to write into memory
    
    ld b, e                    ; lsb in b for djnz instruction
    dec de                    ; decrement whole count (with carry) before  ...
    inc d                    ; add one msb outer loop iteration
.memfill_loop
    ld (hl), a                ; write value into ram pos
    inc hl                    ; next ram pos address
    djnz memfill_loop        ; lsb inner loop
    dec d                    ; decrement msb
    jr nz, memfill_loop        ; msb outer loop
    ret


