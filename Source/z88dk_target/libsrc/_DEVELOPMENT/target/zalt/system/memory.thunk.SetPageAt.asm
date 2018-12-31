section code_zalt_lib

; exports
; in-place

; imports
extern memorymanager_bank_page_write



; pre-conditions:
;       call-ret
;       params on stack
; post-conditinos:
;		hl contains page-id
; void MemoryManager_SetPageAt(MemoryPageIndex pageIndex, MemoryPageId pageId)
IF __SDCC
public _MemoryManager_SetPageAt
_MemoryManager_SetPageAt:
    ; two 8-bit parameters are pushed as one pair (16-bits) onto the stack
    ld hl, 2        ; to skip over return address
    add hl, sp      ; hl now points to pageIndex param
    ld b, (hl)      ; pageIndex in b
    inc hl          ; hl now points to pageId param
    ld d, (hl)      ; pageId in d
    ; b => page index, d => page-id
    jp  memorymanager_bank_page_write

ENDIF

IF __SCCZ80
public _MemoryManager_SetPageAt
_MemoryManager_SetPageAt:
    ld hl, 2        ; to skip over return address
    add hl, sp      ; hl now points to pageIndex param
    ld d, (hl)      ; pageId in d
    inc hl          ; msb not used
    inc hl          ; hl now points to pageIndex param
    ld b, (hl)      ; pageIndex in b
    ; b => page index, d => page-id
    jp  memorymanager_bank_page_write

ENDIF