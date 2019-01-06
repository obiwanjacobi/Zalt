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
public memorymanager_page_indexfromaddress
public memorymanager_page_fromaddress
public memorymanager_page_basefromindex

; imports
extern memorymanager_bank_id_var
extern memorymanager_bank_ioid_var



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
    sla l               ; shift table index to hi nibble
    sla l
    sla l
    sla l
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
    sla l               ; shift table index to hi nibble
    sla l
    sla l
    sla l
    or a, l             ; add table index to function code
    ld b, a             ; transfer result from a back to b
    in l, (c)           ; read from the mem-map ram port (b->msb, c->lsb io address)
    ret


; converts the address in hl into a pageIndex (hl)
; pre-conditions:
;       call-ret
;       hl contains cpu address ptr
; post-conditions:
;       hl contains page index (0-15)
memorymanager_page_indexfromaddress:
    srl h
    srl h
    srl h
    srl h
    ld l, h
    ld h, 0
    ret


; converts the pageId (l) into a page base address (hl)
; pre-conditions:
;       call-ret
;       l contains page id (0-255)
; post-conditions:
;       hl contains base ptr
memorymanager_page_basefromindex:
    sla l
    sla l
    sla l
    sla l
    ld h, l
    ld l, 0
    ret


; converts the address in hl into a pageId (hl)
; pre-conditions:
;       call-ret
;       hl contains cpu address ptr
; post-conditions:
;       hl contains page id (0-255)
memorymanager_page_fromaddress:
    call memorymanager_page_indexfromaddress
    call memorymanager_page_read
    ret


; Writes all mem-map table data values for the current active mem-map table
; to select memory bank 0, for both the read and the write tables.
; pre-conditions:
;      call-ret
; memorymanager_memmaptable_current_init:
;     ld a, memorymanager_memmapio_data_readtable
;     ld c, memorymanager_memmapio_lsb
;     ld d, 0
; .memmapinit_nexttableindex
;     ld b, a             ; transfer result
;     out (c), d          ; write to the mem-map ram port (b->msb, c->lsb io address)
;     inc b               ; select mem-map write-table
;     out (c), d
;     inc d
;     add a, $10          ; add 1 to the table index nibble
;     jr nc, memmapinit_nexttableindex
;     ret
