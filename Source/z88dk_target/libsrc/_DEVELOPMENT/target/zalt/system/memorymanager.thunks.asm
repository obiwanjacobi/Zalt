;
; c entry points
;
section code_zalt_lib


; exports
public _MemoryManager_Bank_Select__fast
public _MemoryManager_Bank_Selected
public _MemoryManager_Bank_SetId__fast
public _MemoryManager_Bank_Id
public _MemoryManager_Page_At__fast
public _MemoryManager_Page_IndexFromAddress__fast
public _MemoryManager_Page_IdFromAddress__fast
public _MemoryManager_Page_BasePtr__fast
public _MemoryManager_FarPtr_Construct__fast

; imports
extern memorymanager_bank_get
extern memorymanager_bank_set
extern memorymanager_bank_getio
extern memorymanager_bank_setio
extern memorymanager_page_read
extern memorymanager_page_indexfromaddress
extern memorymanager_page_fromaddress
extern memorymanager_page_basefromindex
extern memorymanager_farmem_construct


; MemoryBankId MemoryManager_Bank_Selected()
; pre-conditions:
;        call-ret
; post-conditinos:
;        hl contains bank-id
defc _MemoryManager_Bank_Selected = memorymanager_bank_get


; void MemoryManager_Bank_Select__fast(MemoryBankId bankId);
; pre-conditions:
;        call-ret
;        hl contains bank id (0-255)
defc _MemoryManager_Bank_Select__fast = memorymanager_bank_set


; MemoryBankId MemoryManager_Bank_Id();
; pre-conditions:
;        call-ret
; post-conditinos:
;        hl contains bank-id (for io)
defc _MemoryManager_Bank_Id = memorymanager_bank_getio


; void MemoryManager_Bank_SetId__fast(MemoryBankId bankId);
; pre-conditions:
;        call-ret
;        hl contains bank id (0-255)
defc _MemoryManager_Bank_SetId__fast = memorymanager_bank_setio


; MemoryPageId MemoryManager_Page_At__fast(MemoryPageIndex pageIndex);
; Read a mem-map table (bank) data (page-id) value (a) from the current active mem-map table
; at the specified table index (b).
; pre-conditions:
;      call-ret
;        hl contains page index (0-15)
; post-conditinos:
;        hl contains page-id
defc _MemoryManager_Page_At__fast = memorymanager_page_read


; MemoryPageIndex MemoryManager_Page_IndexFromAddress__fast(ptr_t address);
; converts the pageIndex in hl into a pageId (hl)
; pre-conditions:
;       call-ret
;       hl contains cpu address ptr
; post-conditions:
;       hl contains page index (0-15)
defc _MemoryManager_Page_IndexFromAddress__fast = memorymanager_page_indexfromaddress


; converts the address in hl into a pageId (hl)
; pre-conditions:
;       call-ret
;       hl contains cpu address ptr
; post-conditions:
;       hl contains page id (0-255)
defc _MemoryManager_Page_IdFromAddress__fast = memorymanager_page_fromaddress


; converts the pageId (l) into a page base address (hl)
; pre-conditions:
;       call-ret
;       l contains page id (0-255)
; post-conditions:
;       hl contains base ptr
defc _MemoryManager_Page_BasePtr__fast = memorymanager_page_basefromindex



; Creates a far ptr from a regular ptr (hl).
; pre-conditions:
;      call-ret
;        hl regular ptr
; post-conditions:
;       ehl contains far ptr
defc _MemoryManager_FarPtr_Construct__fast = memorymanager_farmem_construct
