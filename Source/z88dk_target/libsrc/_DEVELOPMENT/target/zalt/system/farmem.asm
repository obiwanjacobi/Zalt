; https://github.com/z88dk/z88dk/wiki/FarMemory

IF __SCCZ80

;Reading routines have entry ehl = far address address:
lp_gchar:   ;read char
;Exit:   a=l = byte at that location
;        h=0

lp_gint:    ;read 2 byte integer
;Exit:   hl = word at that location (stored little endian)

lp_gptr:
;Exit:  ehl = far pointer at that location

lp_glong:   ;read 4 byte integer
;Exit: dehl = long at that location (l=LSB)

; FA -> FA+5 are 6 bytes presently located in the crt0 file.
lp_gdoub:   ;read 6 byte double
;Exit: Load FA -> FA+5 with the double stored at that location



; Writing routines have entry e'h'l' = far address and the following additional entry parameters:

lp_pchar:   ;write char
;Entry:     l = byte to write

lp_pint:    ;write 2 byte integer
;Entry:    hl = word to write

lp_pptr:    ;write far pointer
;Entry:   ehl = far pointer to write

lp_plong:   ;write 4 byte integer
;Entry:  dehl = long to write

; FA -> FA+5 are 6 bytes presently located in the crt0 file.
lp_pdoub:   ;write double
;Entry:  none
;   write the bytes stored in FA -> FA+5 to the far memory address


;Far pointer calling
;In order to support calling routines located in banked memory:

l_farcallsupport:   ;call far memory
;Entry:     ehl = far address to call.

ENDIF   ;__SCCZ80