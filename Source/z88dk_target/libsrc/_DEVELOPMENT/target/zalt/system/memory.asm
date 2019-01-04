;
; contains routines for managing ram memory
;
section code_zalt_system


; exports
public memorymanager_memmap_reginit
public memorymanager_bank_get
public memorymanager_bank_set
public memorymanager_bank_getio
public memorymanager_bank_setio
public memorymanager_page_write
public memorymanager_page_read

; imports
extern memorymanager_bank_id_var
extern memorymanager_bank_ioid_var


; the data that is used to fill memory on reset
defc    bios_memory_fill_opcode     =  $FF      ; rst $38
defc    bios_memory_page_size       =  $1000    ; 4k page size

; Determines the top of RAM in 4k blocks
; pre-conditions:
;      call-ret
; post-conditions:
;        bios_var_ram_top is initialized
; bios_memory_determine_top:
;     ld b, @10101010                    ; init test value
;     ld hl, $FFFF                    ; start ram test at 64k top
;     ld de, bios_memory_page_size    ; test at page-size intervals
;     jr memdettop_entry
; .memdettop_loop
;     sbc hl, de                    ; lower ram test address
; .memdettop_entry
;     ld a, b                        ; init register a with test value
;     ld (hl), a                    ; write test value into ram
;     ld a, (hl)                    ; read back
;     cp a, b                        ; is it the same (ram is present)
;     jr nz, memdettop_loop         ; if not, try again at lower address
;     ld (bios_var_ram_top), hl    ; store ram-top in bios variable
;     ret

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



;
;
; Memory Manager
; - manages the memory map ram content.
; 
; The memory map is a ram that is addressed by A12-A15 of the CPU (A0-A3)
; and two tableaddress registers (latches) (A4-A11). A mem-map table is the 
; 16 bytes that are targeted by (CPU A12-15) and translates to the value for
; the memory address MA12-MA19. These are used to decode memory addresses and
; enable these memory chips at certain ranges (usually 64k). The table address
; registers select individual tables. For now only one mem-map table is active.


; mem-page struct def
; alloc mem-page structs for available memory (256 max)
; keep track of current active mem-map table
; mem-map table address conversion (table index = A12-A15)


; Memory Map IO Addresses:
;    $0FFF - $FFFF        -> hi nibble of msb is mem-map table index
;                        -> lo nibble of msb is io register address:
;    111x: mem-map data (rd/wr)
;         x => read/write tables (0=rd/1=wr)
;     1100: mem-map table
;    1101: mem-map io table


; memory manage function codes
defc memorymanager_memmapio_data_writetable     =    $0F
defc memorymanager_memmapio_data_readtable      =    $0E
defc memorymanager_memmapio_tableaddr           =    $0C
defc memorymanager_memmapio_iotableaddr         =    $0D
defc memorymanager_memmapio_lsb                 =    $FF


; Initializes the mem-map table address registers for mem and io.
; This should probably be done by the System Controller...
; pre-conditions:
;      call-ret
memorymanager_memmap_reginit:
    xor a, a                                ; a=0
    ld hl, memorymanager_bank_id_var
    ld (hl), a                              ; reset var
    ld hl, memorymanager_bank_ioid_var
    ld (hl), a                              ; reset var
    ;ld c, memorymanager_memmapio_lsb       ; construct io address in bc
    ;ld b, memorymanager_memmapio_tableaddr
    ;out (c), a
    ;ld b, memorymanager_memmapio_iotableaddr
    ;out (c), a
    ret

; pre-conditions:
;        call-ret
; post-conditinos:
;        returns hl contains bank-id
memorymanager_bank_get:
    ld hl, memorymanager_bank_id_var
    ld l, (hl)
    ld h, 0
    ret


; pre-conditions:
;        call-ret
;        hl contains bank id (0-255)
memorymanager_bank_set:
    ld a, l
    ld hl, memorymanager_bank_id_var
    ld (hl), a                              ; store latest choice
    ld c, memorymanager_memmapio_lsb        ; construct io address in bc
    ld b, memorymanager_memmapio_tableaddr
    out (c), a
    ret    


; pre-conditions:
;        call-ret
; post-conditinos:
;        returns hl contains bank-id (for io)
memorymanager_bank_getio:
    ld hl, memorymanager_bank_ioid_var
    ld l, (hl)
    ld h, 0
    ret


; pre-conditions:
;        call-ret
;        hl contains bank id (0-255)
memorymanager_bank_setio:
    ld a, l
    ld hl, memorymanager_bank_ioid_var
    ld (hl), a                              ; store latest choice
    ld c, memorymanager_memmapio_lsb        ; construct io address in bc
    ld b, memorymanager_memmapio_iotableaddr
    out (c), a
    ret    


; Write a mem-map table (bank) data (page-id) value (e) to the current active mem-map table
; at the specified table index (l).
; pre-conditions:
;      call-ret
;        l contains page index (0-15)
;        e contains the page-id to write (0-255)
; post-conditions:
;       uses: af, bc, e, l
memorymanager_page_write:
    ld a, memorymanager_memmapio_data_readtable
    ld c, memorymanager_memmapio_lsb
    rlc l               ; shift table index to hi nibble
    rlc l
    rlc l
    rlc l
    or a, l             ; add table index to function code
    ld b, a             ; transfer result from a back to b
    out (c), e          ; write to the mem-map ram port (b->msb, c->lsb io address)
    ret


; Read a mem-map table (bank) data (page-id) from the current active mem-map table
; at the specified table index (l).
; pre-conditions:
;      call-ret
;        hl contains page index (0-15)
; post-conditions:
;        hl contains page-id
memorymanager_page_read:
    ld a, memorymanager_memmapio_data_readtable
    ld c, memorymanager_memmapio_lsb
    rlc l               ; shift table index to hi nibble
    rlc l
    rlc l
    rlc l
    or a, l             ; add table index to function code
    ld b, a             ; transfer result from a back to b
    in l, (c)           ; read from the mem-map ram port (b->msb, c->lsb io address)
    ret


; Writes all mem-map table data values for the current active mem-map table
; to select memory bank 0, for both the read and the write tables.
; pre-conditions:
;      call-ret
memorymanager_memmaptable_current_init:
    ld a, memorymanager_memmapio_data_readtable
    ld c, memorymanager_memmapio_lsb
    ld d, 0
.memmapinit_nexttableindex
    ld b, a             ; transfer result
    out (c), d          ; write to the mem-map ram port (b->msb, c->lsb io address)
    inc b               ; select mem-map write-table
    out (c), d
    inc d
    add a, $10          ; add 1 to the table index nibble
    jr nc, memmapinit_nexttableindex
    ret
