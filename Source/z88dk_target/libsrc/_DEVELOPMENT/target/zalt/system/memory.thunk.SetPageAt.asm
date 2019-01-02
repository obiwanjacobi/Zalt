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
    ld b, (hl)      ; pageIndex in b (later in l)
    inc hl          ; hl now points to pageId param
    ld e, (hl)      ; pageId in e
    ld l, b
;        l contains page index (0-15)
;        e contains the page-id to write (0-255)
    jp  memorymanager_bank_page_write

ENDIF


IF __SCCZ80
public _MemoryManager_SetPageAt__callee
_MemoryManager_SetPageAt__callee:
    pop af          ; return address
    pop hl          ; page index
    pop de          ; page id
    push af         ; restore return address
;        l contains page index (0-15)
;        e contains the page-id to write (0-255)
    jp  memorymanager_bank_page_write

public _MemoryManager_SetPageAt
_MemoryManager_SetPageAt:
    ld hl, 2        ; to skip over return address
    add hl, sp      ; hl now points to pageIndex param
    ld b, (hl)      ; pageIndex in b
    inc hl          ; msb not used
    inc hl          ; hl now points to pageIndex param
    ld e, (hl)      ; pageId in d
    ld l, b
;        l contains page index (0-15)
;        e contains the page-id to write (0-255)
    jp  memorymanager_bank_page_write

ENDIF