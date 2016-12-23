
IF !_CLIB_CFG_ASM_
defc _CLIB_CFG_ASM_ = 1

; **********************************************************************
; IF YOU MAKE CHANGES TO THIS FILE YOU MUST RECOMPILE THE ZALT LIBRARIES
; **********************************************************************

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; CLIB CONFIGURATION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Set these flags prior to making libraries


; -------------------------------------------------------------
; -- multi-threading ------------------------------------------
; -------------------------------------------------------------

; Enables multi-threading features of the library.

defc __CLIB_OPT_MULTITHREAD = $00

; bit 0 = $01 = enable locking on heaps
; bit 1 = $02 = enable recursive locks on FILEs
; bit 2 = $04 = enable stdio lock on lists of FILEs
; bit 3 = $08 = enable fcntl lock on fd_table
; bit 4 = $10 = enable fdstruct locks

; Set to zero if you are making traditional single-threaded
; programs.  Setting to zero will reduce code size and
; slightly speed up execution.
;
; When multi-threading is enabled, the program can still
; bypass locking by calling the _unlocked versions of functions
; but if there are synchronization issues, you do so at
; your own risk.
;
; When multi-threading is disabled, there is no difference
; between the _unlocked and regular function entry points.
; However, the locks are still present in the data structures
; and, for example, FILEs can still be locked via flockfile()
; and family.  Note that when multi-threading is disabled,
; the stdio functions will not be blocked by a lock but the
; user program can perform its own synchronization by using
; flockfile() appropriately.


; -------------------------------------------------------------
; -- integer math options -------------------------------------
; -------------------------------------------------------------

; This option affects how multiplications and divisions
; of integers and longs are performed by the compiler
; and the library.

; Setting the value of this flag appropriately allows
; selection of an integer math lib that ranges from
; very fast and very large to very slow and very small.

defc __CLIB_OPT_IMATH = 0

; < 50 = select small integer math library
; > 50 = select fast integer math library

; The specific integer math library selected above
; can be further tailored by choosing options below.

; FAST INTEGER MATH LIBRARY OPTIONS

defc __CLIB_OPT_IMATH_FAST = $0a

; bit 0 = $01 = enable loop unrolling in division
; bit 1 = $02 = enable leading zero elimination in division
; bit 2 = $04 = enable loop unrolling in multiplication
; bit 3 = $08 = enable leading zero elimination in multiplication
; bit 7 = $80 = enable LIA-1 overflow saturation for multiplication

; Notes:
;
; The C standard specifies that unsigned multiplication
; is performed modulo the bit width of the type size
; (ie multiplies "wrap").  In contrast, LIA-1 specifies
; that overflowing multiplies should saturate.  The LIA-1
; option causes multiplications to adopt this behaviour :-
; overflowing multiplies saturate to maximum value and
; errno is set to indicate an overflow condition.  Adopting
; this option not only leads to more correct results but
; also leads to faster multiplication code.
;
; sdcc cannot generate code for LIA-1 mode.

; The following flag allows selection between small+slow
; and large+fast implementations of some integer math
; operations:

defc __CLIB_OPT_IMATH_SELECT = $00

; bit 0 = $01 = choose fast arithmetic shift right operator
; bit 1 = $02 = choose fast logical shift right operator
; bit 2 = $04 = choose fast shift left operator


; -------------------------------------------------------------
; -- text to number conversion --------------------------------
; -------------------------------------------------------------

; Specialized functions are available for fast conversion
; of binary, octal, decimal and hex numbers.
;
; Setting the appropriate bits in this flag will enable
; use of those specialized functions by the library.
;
; Library functions affected:
;
;    _strtoi, _strtou, strtol, strtoul, scanf
;

defc __CLIB_OPT_TXT2NUM = $04

; bit 0 = $01 = enable specialized binary conversion for integers
; bit 1 = $02 = enable specialized octal conversion for integers
; bit 2 = $04 = enable specialized decimal conversion for integers
; bit 3 = $08 = enable specialized hex conversion for integers
;
; bit 4 = $10 = enable specialized binary conversion for longs
; bit 5 = $20 = enable specialized octal conversion for longs
; bit 6 = $40 = enable specialized decimal conversion for longs
; bit 7 = $80 = enable specialized hex conversion for longs

; Note: Normally, enabling specialized long functions will also
; cause their integer counterparts to be pulled into the user code.
; This is because the specialized long functions will try to
; perform the conversion using faster 16-bit code when it can.
; If you use a specialized long function, you may want to try
; enabling the specialized integer function to see if code
; size remains unchanged.
;
; Note: Some library functions such as printf and scanf may
; use the specialized integer text to decimal conversion
; function directly, in which case enabling that bit will
; result in no additional code size.

; There are two implementations of each specialized function.
; One uses smaller but slower code and the other uses larger
; but faster code.  Choose the faster code by setting the
; appropriate bit in the following flag:

defc __CLIB_OPT_TXT2NUM_SELECT = $00

; bit 0 = $01 = choose fast binary conversion
; bit 1 = $02 = choose fast octal conversion
; bit 2 = $04 = choose fast decimal conversion
; bit 3 = $08 = choose fast hex conversion


; -------------------------------------------------------------
; -- number to text conversion --------------------------------
; -------------------------------------------------------------

; Specialized functions are available for fast conversion
; of binary, octal, decimal and hex numbers.
;
; Setting the appropriate bits in this flag will enable
; use of those specialized functions by the library.
;
; Library functions affected:
;
;    itoa, utoa, ltoa, ultoa, printf
;

defc __CLIB_OPT_NUM2TXT = $00

; bit 0 = $01 = enable specialized binary conversion for integers
; bit 1 = $02 = enable specialized octal conversion for integers
; bit 2 = $04 = enable specialized decimal conversion for integers
; bit 3 = $08 = enable specialized hex conversion for integers
;
; bit 4 = $10 = enable specialized binary conversion for longs
; bit 5 = $20 = enable specialized octal conversion for longs
; bit 6 = $40 = enable specialized decimal conversion for longs
; bit 7 = $80 = enable specialized hex conversion for longs

; Note: Normally, enabling specialized long functions will also
; cause their integer counterparts to be pulled into the user code.
; This is because the specialized long functions will try to
; perform the conversion using faster 16-bit code when it can.
; If you use a specialized long function, you may want to try
; enabling the specialized integer function to see if code
; size remains unchanged.

; There are two implementations of each specialized function.
; One uses smaller but slower code and the other uses larger
; but faster code.  Choose the faster code by setting the
; appropriate bit in the following flag:

defc __CLIB_OPT_NUM2TXT_SELECT = $00

; bit 0 = $01 = choose fast binary conversion
; bit 1 = $02 = choose fast octal conversion
; bit 2 = $04 = choose fast decimal conversion
; bit 3 = $08 = choose fast hex conversion


; -------------------------------------------------------------
; -- stdio options --------------------------------------------
; -------------------------------------------------------------

defc __CLIB_OPT_STDIO = $00

; bit 0 = $01 = stdio checks the validity of the FILE
;               prior to every operation.

; The following define some clib-side ascii character codes

IF __SDCC | __SDCC_IX | __SDCC_IY

   defc CHAR_CR = 13
   defc CHAR_LF = 10

ELSE

   defc CHAR_CR = 10
   defc CHAR_LF = 13

ENDIF

defc CHAR_BS     = 12
defc CHAR_ESC    = 27
defc CHAR_CAPS   = 6
defc CHAR_BELL   = 7
defc CHAR_CTRL_D = 4

defc CHAR_CURSOR_UC = '-'
defc CHAR_CURSOR_LC = '_'
defc CHAR_PASSWORD  = '*'


; -------------------------------------------------------------
; -- printf converter selection -------------------------------
; -------------------------------------------------------------

; You can select which printf converters are included in
; the library.  Omitting unused ones can reduce code size.
; Note the bit assignments are the same as for scanf.

defc __CLIB_OPT_PRINTF = $3fffff

; bit 0 =  $      01 = enable %d
; bit 1 =  $      02 = enable %u
; bit 2 =  $      04 = enable %x
; bit 3 =  $      08 = enable %X
; bit 4 =  $      10 = enable %o
; bit 5 =  $      20 = enable %n
; bit 6 =  $      40 = enable %i
; bit 7 =  $      80 = enable %p
; bit 8 =  $     100 = enable %B
; bit 9 =  $     200 = enable %s
; bit 10 = $     400 = enable %c
; bit 11 = $     800 = enable %I
; bit 12 = $    1000 = enable %ld
; bit 13 = $    2000 = enable %lu
; bit 14 = $    4000 = enable %lx
; bit 15 = $    8000 = enable %lX
; bit 16 = $   10000 = enable %lo
; bit 17 = $   20000 = enable %ln
; bit 18 = $   40000 = enable %li
; bit 19 = $   80000 = enable %lp
; bit 20 = $  100000 = enable %lB
; bit 21 = $  200000 = ignored
; bit 22 = $  400000 = enable %a
; bit 23 = $  800000 = enable %A
; bit 24 = $ 1000000 = enable %e
; bit 25 = $ 2000000 = enable %E
; bit 26 = $ 4000000 = enable %f
; bit 27 = $ 8000000 = enable %F
; bit 28 = $10000000 = enable %g
; bit 29 = $20000000 = enable %G
;
; Setting to zero will remove the % logic from printf
; entirely, meaning printf can only be used to output
; format text to the stream.


; -------------------------------------------------------------
; -- scanf converter selection --------------------------------
; -------------------------------------------------------------

; You can select which scanf converters are included in
; the library.  Omitting unused ones can reduce code size.
; Note the bit assignments are the same as for printf.

defc __CLIB_OPT_SCANF = $ffffffff

; bit 0 =  $    01 = enable %d
; bit 1 =  $    02 = enable %u
; bit 2 =  $    04 = enable %x
; bit 3 =  $    08 = enable %x (duplicate)
; bit 4 =  $    10 = enable %o
; bit 5 =  $    20 = enable %n
; bit 6 =  $    40 = enable %i
; bit 7 =  $    80 = enable %p
; bit 8 =  $   100 = enable %B
; bit 9 =  $   200 = enable %s
; bit 10 = $   400 = enable %c
; bit 11 = $   800 = enable %I
; bit 12 = $  1000 = enable %ld
; bit 13 = $  2000 = enable %lu
; bit 14 = $  4000 = enable %lx
; bit 15 = $  8000 = enable %lx (duplicate)
; bit 16 = $ 10000 = enable %lo
; bit 17 = $ 20000 = enable %ln
; bit 18 = $ 40000 = enable %li
; bit 19 = $ 80000 = enable %lp
; bit 20 = $100000 = enable %lB
; bit 21 = $200000 = enable %[
;
; Setting to zero will remove the % logic from scanf
; entirely, meaning scanf can only be used to match
; format text against the stream.


; -------------------------------------------------------------
; -- stdlib options -------------------------------------------
; -------------------------------------------------------------

; Select whether fast memset and fast memcpy are enabled.
; For copies of minimum size unrolled loops will be used.

defc __CLIB_OPT_FASTCOPY = $00

; bit 0 = $01 = enable fast memcpy
; bit 1 = $02 = enable fast memset
; bit 5 = $20 = enable fast ldir for some library functions
; bit 6 = $40 = enable self-modifying fast ldir implementation for the library
;         (faster but makes code non-reentrant)
; bit 7 = $80 = self-modifying l_fast_memcpy_smc made available for user code only
;         (does not enable self-modifying code for the lib; bit 6 set also makes available)

; Select whether strtod() and atof() include code to parse
; hex floats and nan/inf strings.

defc __CLIB_OPT_STRTOD = $00

; bit 0 = $01 = enable parsing of nan/inf strings
; bit 1 = $02 = enable parsing of hex floats

; Select which sorting algorithm is used by qsort()

defc __CLIB_OPT_SORT = 1

; 0 = insertion sort
; 1 = shell sort
; 2 = quick sort

; Some sorting algorithms have selectable options.

defc __CLIB_OPT_SORT_QSORT = $0c

; bit 10 = pivot selection
;          $00 = pivot is middle item
;          $01 = pivot is random item
; bit  2 = $04 = enable insertion sort for small partitions
; bit  3 = $08 = enable equal items distribution


; -------------------------------------------------------------
; -- error strings --------------------------------------------
; -------------------------------------------------------------

defc __CLIB_OPT_ERROR = $01

; bit 0 = $01 = enable error strings
; bit 1 = $02 = select verbose error strings

; Set to zero to reduce binary footprint.

ENDIF
