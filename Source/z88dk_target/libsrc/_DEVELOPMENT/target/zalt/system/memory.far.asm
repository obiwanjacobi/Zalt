; https://github.com/z88dk/z88dk/wiki/FarMemory

IF __SCCZ80
section code_zalt_system

; exports
public lp_gchar
public lp_gint
public lp_gptr
public lp_glong
public lp_gdoub
public lp_pchar
public lp_pint
public lp_pptr
public lp_plong
public lp_pdoub
public l_farcall
public FA;

; imports
extern memorymanager_page_read
extern memorymanager_page_write
extern memorymanager_page_indexfromaddress
;extern FA


; FA -> FA+5 are 6 bytes presently located in the crt0 file.


;Reading routines have entry ehl = far address address:
;   hl  => points to the CPU memory. This also indicates where the PageId has to be mapped to.
;   e   => contains the pageId of where the target (function or data) resides.

;
; !! >> NOTE: These routines assume that the bankId for io is the same as the selected bankId << !!
;


; setup the correct page for address in hl
; pre-conditions:
;       call-ret (uses exx)
;       hl contains address
;       e contains pageId
; post-conditions:
;       memory changed to far ptr ehl
;       params prepared for teardown call
memorymanager_farmem_read_setup:
    pop bc              ; return address
    push hl             ; param address
    push de             ; param pageId
    exx

; TODO: inline the called memorymanager fn's and optimize further

    pop bc              ; param pageId
    pop hl              ; param address
    ; hl = address => l = pageIndex
    call memorymanager_page_indexfromaddress    ; l contains pageIndex
    ld d, l                                     ; save pageIndex for later
    ; l = pageIndex => l = pageId
    call memorymanager_page_read                ; read current pageId
    ld e, l                                     ; transfer pageId (lsb only)
    push de                                     ; prepare pageId (e) and pageIndex (d) for teardown
    ld l, d                                     ; restore pageIndex in hl
    ld e, c                         ; param pageId 
    ; l = pageIndex, e = pageId
    call memorymanager_page_write

    exx
    push bc             ; return address
    ret


; restores the pageId at the pageIndex (prepared there by setup)
; pre-conditions:
;       call-ret (uses exx)
;       dehl contains lp_x function result; not touched
;       stack contains pageIndex (hi) and pageId (lo)
; post-conditions:
;       memory restored to original pageId
memorymanager_farmem_teardown:
    pop bc          ; return address
    exx
    pop de
    ld l, d
    ; l = pageIndex, e = pageId
    call memorymanager_page_write
    exx
    push bc         ; return address
    ret




memorymanager_farmem_write_setup:
    ret

;
; -----------------------------------------------------------------------------
;

;read char
;Exit:   a=l = byte at that location (h=0)
lp_gchar:
    call memorymanager_farmem_read_setup
    ld l, (hl)
    ld a, l
    ld h, 0
    call memorymanager_farmem_teardown
    ret;


;read 2 byte integer
;Exit:   hl = word at that location (stored little endian)
lp_gint:
    call memorymanager_farmem_read_setup
    ld e, (hl)
    inc hl
    ld d, (hl)
    ex de, hl
    call memorymanager_farmem_teardown
    ret;

; reads 3-byte far ptr
;Exit:  ehl = far pointer at that location
lp_gptr:
    call memorymanager_farmem_read_setup
    ld e, (hl)
    inc hl
    ld d, (hl)
    inc hl
    ld c, (hl)
    ex de, hl
    ld e, c
    call memorymanager_farmem_teardown
    ret


;read 4 byte integer
;Exit: dehl = long at that location (l=LSB)
lp_glong:
    call memorymanager_farmem_read_setup
    ld e, (hl)
    inc hl
    ld d, (hl)
    inc hl
    ld c, (hl)
    inc hl
    ld b, (hl)
    ex de, hl
    ld e, c
    ld d, b
    call memorymanager_farmem_teardown
    ret


;read 6 byte double
;Exit: Load FA -> FA+5 with the double stored at that location
lp_gdoub:
    call memorymanager_farmem_read_setup
    ld de, FA
    ld bc, 6
    ldir
    call memorymanager_farmem_teardown
    ret


; Writing routines have entry e'h'l' = far address:
;   h'l' => points to the CPU memory. This also indicates where the PageId has to be mapped to.
;   e'  => contains the pageId of where the target (function or data) resides.

;write char
;Entry:     l = byte to write
lp_pchar:
    call memorymanager_farmem_write_setup
    call memorymanager_farmem_teardown
    ret


;write 2 byte integer
;Entry:    hl = word to write
lp_pint:
    call memorymanager_farmem_write_setup
    call memorymanager_farmem_teardown
    ret


;write 3-byte far pointer
;Entry:   ehl = far pointer to write
lp_pptr:
    call memorymanager_farmem_write_setup
    call memorymanager_farmem_teardown
    ret


;write 4 byte integer
;Entry:  dehl = long to write
lp_plong:
    call memorymanager_farmem_write_setup
    call memorymanager_farmem_teardown
    ret


;write double
;Entry:  none
;   write the bytes stored in FA -> FA+5 to the far memory address
lp_pdoub:
    call memorymanager_farmem_write_setup
    call memorymanager_farmem_teardown
    ret


;Far pointer calling
;In order to support calling routines located in banked memory:

;call far memory
;Entry:     ehl = far address to call.
l_farcall:
    call memorymanager_farmem_write_setup
    call memorymanager_farmem_teardown
    ret


section code_zalt_data
; seems like FA is nowhere to be found
FA:
    defb 6, $00

ENDIF   ;__SCCZ80