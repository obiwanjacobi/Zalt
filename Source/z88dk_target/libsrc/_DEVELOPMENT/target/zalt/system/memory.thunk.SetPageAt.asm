section code_zalt_lib

; exports
public _MemoryManager_SetPageAt

; imports
extern memorymanager_bank_page_write

; pre-conditions:
;       call-ret
;       hl contains page index (h is 0)
; post-conditinos:
;		hl contains page-id
; void MemoryManager_SetPageAt(MemoryPageIndex pageIndex, MemoryPageId pageId)
_MemoryManager_SetPageAt:
    ; two 8-bit parameters are pushed as one pair (16-bits) onto the stack
    ld hl, 2        ; to skip over return address
    add hl, sp      ; hl now points to pageIndex param
    ld b, (hl)      ; pageIndex in b
    inc hl          ; hl now points to pageId param
    ld d, (hl)      ; pageId in d
    ; b => page index, d => page-id
    jp  memorymanager_bank_page_write
