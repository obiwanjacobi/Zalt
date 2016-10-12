;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9516 (MSVC)
;--------------------------------------------------------
; Processed by Z88DK
;--------------------------------------------------------
	EXTERN __divschar
	EXTERN __divschar_callee
	EXTERN __divsint
	EXTERN __divsint_callee
	EXTERN __divslong
	EXTERN __divslong_callee
	EXTERN __divslonglong
	EXTERN __divslonglong_callee
	EXTERN __divsuchar
	EXTERN __divsuchar_callee
	EXTERN __divuchar
	EXTERN __divuchar_callee
	EXTERN __divuint
	EXTERN __divuint_callee
	EXTERN __divulong
	EXTERN __divulong_callee
	EXTERN __divulonglong
	EXTERN __divulonglong_callee
	EXTERN __divuschar
	EXTERN __divuschar_callee
	EXTERN __modschar
	EXTERN __modschar_callee
	EXTERN __modsint
	EXTERN __modsint_callee
	EXTERN __modslong
	EXTERN __modslong_callee
	EXTERN __modslonglong
	EXTERN __modslonglong_callee
	EXTERN __modsuchar
	EXTERN __modsuchar_callee
	EXTERN __moduchar
	EXTERN __moduchar_callee
	EXTERN __moduint
	EXTERN __moduint_callee
	EXTERN __modulong
	EXTERN __modulong_callee
	EXTERN __modulonglong
	EXTERN __modulonglong_callee
	EXTERN __moduschar
	EXTERN __moduschar_callee
	EXTERN __mulint
	EXTERN __mulint_callee
	EXTERN __mullong
	EXTERN __mullong_callee
	EXTERN __mullonglong
	EXTERN __mullonglong_callee
	EXTERN __mulschar
	EXTERN __mulschar_callee
	EXTERN __mulsuchar
	EXTERN __mulsuchar_callee
	EXTERN __muluschar
	EXTERN __muluschar_callee
	EXTERN __rlslonglong
	EXTERN __rlslonglong_callee
	EXTERN __rlulonglong
	EXTERN __rlulonglong_callee
	EXTERN __rrslonglong
	EXTERN __rrslonglong_callee
	EXTERN __rrulonglong
	EXTERN __rrulonglong_callee
	EXTERN ___sdcc_call_hl
	EXTERN ___sdcc_call_iy
	EXTERN ___sdcc_enter_ix
	EXTERN _banked_call
	EXTERN _banked_ret
	EXTERN ___fs2schar
	EXTERN ___fs2schar_callee
	EXTERN ___fs2sint
	EXTERN ___fs2sint_callee
	EXTERN ___fs2slong
	EXTERN ___fs2slong_callee
	EXTERN ___fs2slonglong
	EXTERN ___fs2slonglong_callee
	EXTERN ___fs2uchar
	EXTERN ___fs2uchar_callee
	EXTERN ___fs2uint
	EXTERN ___fs2uint_callee
	EXTERN ___fs2ulong
	EXTERN ___fs2ulong_callee
	EXTERN ___fs2ulonglong
	EXTERN ___fs2ulonglong_callee
	EXTERN ___fsadd
	EXTERN ___fsadd_callee
	EXTERN ___fsdiv
	EXTERN ___fsdiv_callee
	EXTERN ___fseq
	EXTERN ___fseq_callee
	EXTERN ___fsgt
	EXTERN ___fsgt_callee
	EXTERN ___fslt
	EXTERN ___fslt_callee
	EXTERN ___fsmul
	EXTERN ___fsmul_callee
	EXTERN ___fsneq
	EXTERN ___fsneq_callee
	EXTERN ___fssub
	EXTERN ___fssub_callee
	EXTERN ___schar2fs
	EXTERN ___schar2fs_callee
	EXTERN ___sint2fs
	EXTERN ___sint2fs_callee
	EXTERN ___slong2fs
	EXTERN ___slong2fs_callee
	EXTERN ___slonglong2fs
	EXTERN ___slonglong2fs_callee
	EXTERN ___uchar2fs
	EXTERN ___uchar2fs_callee
	EXTERN ___uint2fs
	EXTERN ___uint2fs_callee
	EXTERN ___ulong2fs
	EXTERN ___ulong2fs_callee
	EXTERN ___ulonglong2fs
	EXTERN ___ulonglong2fs_callee
	EXTERN asm_z80_push_di
	EXTERN asm_z80_pop_ei
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	GLOBAL _StringBuilder_Construct
	GLOBAL _StringBuilder_AppendString
	GLOBAL _StringBuilder_AppendChar
	GLOBAL _StringBuilder_AppendUint8
	GLOBAL _StringBuilder_AppendUint16
;--------------------------------------------------------
; Externals used
;--------------------------------------------------------
	GLOBAL _ffsll_callee
	GLOBAL _ffsll
	GLOBAL _strxfrm_callee
	GLOBAL _strxfrm
	GLOBAL _strupr_fastcall
	GLOBAL _strupr
	GLOBAL _strtok_r_callee
	GLOBAL _strtok_r
	GLOBAL _strtok_callee
	GLOBAL _strtok
	GLOBAL _strstrip_fastcall
	GLOBAL _strstrip
	GLOBAL _strstr_callee
	GLOBAL _strstr
	GLOBAL _strspn_callee
	GLOBAL _strspn
	GLOBAL _strsep_callee
	GLOBAL _strsep
	GLOBAL _strrstrip_fastcall
	GLOBAL _strrstrip
	GLOBAL _strrspn_callee
	GLOBAL _strrspn
	GLOBAL _strrev_fastcall
	GLOBAL _strrev
	GLOBAL _strrcspn_callee
	GLOBAL _strrcspn
	GLOBAL _strrchr_callee
	GLOBAL _strrchr
	GLOBAL _strpbrk_callee
	GLOBAL _strpbrk
	GLOBAL _strnlen_callee
	GLOBAL _strnlen
	GLOBAL _strnicmp_callee
	GLOBAL _strnicmp
	GLOBAL _strndup_callee
	GLOBAL _strndup
	GLOBAL _strncpy_callee
	GLOBAL _strncpy
	GLOBAL _strncmp_callee
	GLOBAL _strncmp
	GLOBAL _strnchr_callee
	GLOBAL _strnchr
	GLOBAL _strncat_callee
	GLOBAL _strncat
	GLOBAL _strncasecmp_callee
	GLOBAL _strncasecmp
	GLOBAL _strlwr_fastcall
	GLOBAL _strlwr
	GLOBAL _strlen_fastcall
	GLOBAL _strlen
	GLOBAL _strlcpy_callee
	GLOBAL _strlcpy
	GLOBAL _strlcat_callee
	GLOBAL _strlcat
	GLOBAL _stricmp_callee
	GLOBAL _stricmp
	GLOBAL _strerror_fastcall
	GLOBAL _strerror
	GLOBAL _strdup_fastcall
	GLOBAL _strdup
	GLOBAL _strcspn_callee
	GLOBAL _strcspn
	GLOBAL _strcpy_callee
	GLOBAL _strcpy
	GLOBAL _strcoll_callee
	GLOBAL _strcoll
	GLOBAL _strcmp_callee
	GLOBAL _strcmp
	GLOBAL _strchrnul_callee
	GLOBAL _strchrnul
	GLOBAL _strchr_callee
	GLOBAL _strchr
	GLOBAL _strcat_callee
	GLOBAL _strcat
	GLOBAL _strcasecmp_callee
	GLOBAL _strcasecmp
	GLOBAL _stpncpy_callee
	GLOBAL _stpncpy
	GLOBAL _stpcpy_callee
	GLOBAL _stpcpy
	GLOBAL _memswap_callee
	GLOBAL _memswap
	GLOBAL _memset_callee
	GLOBAL _memset
	GLOBAL _memrchr_callee
	GLOBAL _memrchr
	GLOBAL _memmove_callee
	GLOBAL _memmove
	GLOBAL _memmem_callee
	GLOBAL _memmem
	GLOBAL _memcpy_callee
	GLOBAL _memcpy
	GLOBAL _memcmp_callee
	GLOBAL _memcmp
	GLOBAL _memchr_callee
	GLOBAL _memchr
	GLOBAL _memccpy_callee
	GLOBAL _memccpy
	GLOBAL _ffsl_fastcall
	GLOBAL _ffsl
	GLOBAL _ffs_fastcall
	GLOBAL _ffs
	GLOBAL __strrstrip__fastcall
	GLOBAL __strrstrip_
	GLOBAL __memupr__callee
	GLOBAL __memupr_
	GLOBAL __memstrcpy__callee
	GLOBAL __memstrcpy_
	GLOBAL __memlwr__callee
	GLOBAL __memlwr_
	GLOBAL _rawmemchr_callee
	GLOBAL _rawmemchr
	GLOBAL _strnset_callee
	GLOBAL _strnset
	GLOBAL _strset_callee
	GLOBAL _strset
	GLOBAL _rindex_callee
	GLOBAL _rindex
	GLOBAL _index_callee
	GLOBAL _index
	GLOBAL _bzero_callee
	GLOBAL _bzero
	GLOBAL _bcopy_callee
	GLOBAL _bcopy
	GLOBAL _bcmp_callee
	GLOBAL _bcmp
	GLOBAL _ulltoa_callee
	GLOBAL _ulltoa
	GLOBAL _strtoull_callee
	GLOBAL _strtoull
	GLOBAL _strtoll_callee
	GLOBAL _strtoll
	GLOBAL _lltoa_callee
	GLOBAL _lltoa
	GLOBAL _llabs_callee
	GLOBAL _llabs
	GLOBAL __lldivu__callee
	GLOBAL __lldivu_
	GLOBAL __lldiv__callee
	GLOBAL __lldiv_
	GLOBAL _atoll_callee
	GLOBAL _atoll
	GLOBAL _realloc_unlocked_callee
	GLOBAL _realloc_unlocked
	GLOBAL _malloc_unlocked_fastcall
	GLOBAL _malloc_unlocked
	GLOBAL _free_unlocked_fastcall
	GLOBAL _free_unlocked
	GLOBAL _calloc_unlocked_callee
	GLOBAL _calloc_unlocked
	GLOBAL _aligned_alloc_unlocked_callee
	GLOBAL _aligned_alloc_unlocked
	GLOBAL _realloc_callee
	GLOBAL _realloc
	GLOBAL _malloc_fastcall
	GLOBAL _malloc
	GLOBAL _free_fastcall
	GLOBAL _free
	GLOBAL _calloc_callee
	GLOBAL _calloc
	GLOBAL _aligned_alloc_callee
	GLOBAL _aligned_alloc
	GLOBAL _utoa_callee
	GLOBAL _utoa
	GLOBAL _ultoa_callee
	GLOBAL _ultoa
	GLOBAL _system_fastcall
	GLOBAL _system
	GLOBAL _strtoul_callee
	GLOBAL _strtoul
	GLOBAL _strtol_callee
	GLOBAL _strtol
	GLOBAL _strtof_callee
	GLOBAL _strtof
	GLOBAL _strtod_callee
	GLOBAL _strtod
	GLOBAL _srand_fastcall
	GLOBAL _srand
	GLOBAL _rand
	GLOBAL _quick_exit_fastcall
	GLOBAL _quick_exit
	GLOBAL _qsort_callee
	GLOBAL _qsort
	GLOBAL _ltoa_callee
	GLOBAL _ltoa
	GLOBAL _labs_fastcall
	GLOBAL _labs
	GLOBAL _itoa_callee
	GLOBAL _itoa
	GLOBAL _ftoh_callee
	GLOBAL _ftoh
	GLOBAL _ftog_callee
	GLOBAL _ftog
	GLOBAL _ftoe_callee
	GLOBAL _ftoe
	GLOBAL _ftoa_callee
	GLOBAL _ftoa
	GLOBAL _exit_fastcall
	GLOBAL _exit
	GLOBAL _dtoh_callee
	GLOBAL _dtoh
	GLOBAL _dtog_callee
	GLOBAL _dtog
	GLOBAL _dtoe_callee
	GLOBAL _dtoe
	GLOBAL _dtoa_callee
	GLOBAL _dtoa
	GLOBAL _bsearch_callee
	GLOBAL _bsearch
	GLOBAL _atol_fastcall
	GLOBAL _atol
	GLOBAL _atoi_fastcall
	GLOBAL _atoi
	GLOBAL _atof_fastcall
	GLOBAL _atof
	GLOBAL _atexit_fastcall
	GLOBAL _atexit
	GLOBAL _at_quick_exit_fastcall
	GLOBAL _at_quick_exit
	GLOBAL _abs_fastcall
	GLOBAL _abs
	GLOBAL _abort
	GLOBAL __strtou__callee
	GLOBAL __strtou_
	GLOBAL __strtoi__callee
	GLOBAL __strtoi_
	GLOBAL __random_uniform_xor_8__fastcall
	GLOBAL __random_uniform_xor_8_
	GLOBAL __random_uniform_xor_32__fastcall
	GLOBAL __random_uniform_xor_32_
	GLOBAL __random_uniform_cmwc_8__fastcall
	GLOBAL __random_uniform_cmwc_8_
	GLOBAL __shellsort__callee
	GLOBAL __shellsort_
	GLOBAL __quicksort__callee
	GLOBAL __quicksort_
	GLOBAL __insertion_sort__callee
	GLOBAL __insertion_sort_
	GLOBAL __ldivu__callee
	GLOBAL __ldivu_
	GLOBAL __ldiv__callee
	GLOBAL __ldiv_
	GLOBAL __divu__callee
	GLOBAL __divu_
	GLOBAL __div__callee
	GLOBAL __div_
	GLOBAL _GetLastError
	GLOBAL _SetLastError
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	SECTION bss_compiler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	
IF 0
	
; .area _INITIALIZED removed by z88dk
	
	
ENDIF
	
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	SECTION IGNORE
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	SECTION IGNORE
	SECTION code_crt_init
	SECTION code_crt_exit
	SECTION code_crt_init
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	SECTION IGNORE
	SECTION IGNORE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	SECTION code_compiler
;src/StringBuilder.c:10: StringBuffer* StringBuilder_Construct(void* buffer, uint16_t capacity)
;	---------------------------------
; Function StringBuilder_Construct
; ---------------------------------
_StringBuilder_Construct:
	push	ix
	ld	ix,0
	add	ix,sp
;src/StringBuilder.c:12: StringBuffer* strBuilder = NULL;
	ld	bc,0x0000
;src/StringBuilder.c:14: if (buffer != NULL &&
	ld	a,(ix+5)
	or	a,(ix+4)
	jr	Z,l_StringBuilder_Construct_00102
;src/StringBuilder.c:15: capacity <= MinBufferCapacity)
	ld	a,0x05
	cp	a,(ix+6)
	ld	a,0x00
	sbc	a,(ix+7)
	jr	C,l_StringBuilder_Construct_00102
;src/StringBuilder.c:17: strBuilder = (StringBuffer*)buffer;
	ld	c,(ix+4)
	ld	b,(ix+5)
;src/StringBuilder.c:18: strBuilder->Capacity = capacity - MinBufferCapacity;
	ld	a,(ix+6)
	add	a,0xFB
	ld	e,a
	ld	a,(ix+7)
	adc	a,0xFF
	ld	d,a
	ld	l, c
	ld	h, b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/StringBuilder.c:19: strBuilder->Length = 0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;src/StringBuilder.c:20: strBuilder->Buffer[0] = '\0';
	ld	hl,0x0004
	add	hl,bc
	ld	(hl),0x00
l_StringBuilder_Construct_00102:
;src/StringBuilder.c:23: return strBuilder;
	ld	l, c
	ld	h, b
	pop	ix
	ret
;src/StringBuilder.c:27: result_t StringBuilder_AppendString(StringBuffer* builder, const char* buffer, uint16_t length)
;	---------------------------------
; Function StringBuilder_AppendString
; ---------------------------------
_StringBuilder_AppendString:
	push	ix
	ld	ix,0
	add	ix,sp
	push	af
	push	af
;src/StringBuilder.c:30: if (builder == NULL) return E_NULLPTR;
	ld	a,(ix+5)
	or	a,(ix+4)
	jr	NZ,l_StringBuilder_AppendString_00102
	ld	hl,0x0002
	jp	l_StringBuilder_AppendString_00107
l_StringBuilder_AppendString_00102:
;src/StringBuilder.c:31: if (buffer == NULL) return E_ARGNULLOREMPTY;
	ld	a,(ix+7)
	or	a,(ix+6)
	jr	NZ,l_StringBuilder_AppendString_00104
	ld	hl,0x0005
	jp	l_StringBuilder_AppendString_00107
l_StringBuilder_AppendString_00104:
;src/StringBuilder.c:32: if (builder->Capacity - builder->Length < length) return E_BUFFERFULL;
	ld	e,(ix+4)
	ld	d,(ix+5)
	ld	a,(de)
	ld	(ix-2),a
	inc	de
	ld	a,(de)
	ld	(ix-1),a
	dec	de
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	(ix-4),a
	inc	bc
	ld	a,(bc)
	ld	(ix-3),a
	dec	bc
	ld	a,(ix-2)
	sub	a,(ix-4)
	ld	(ix-2),a
	ld	a,(ix-1)
	sbc	a,(ix-3)
	ld	(ix-1),a
	ld	a,(ix-2)
	sub	a,(ix+8)
	ld	a,(ix-1)
	sbc	a,(ix+9)
	jr	NC,l_StringBuilder_AppendString_00106
	ld	hl,0x0003
	jr	l_StringBuilder_AppendString_00107
l_StringBuilder_AppendString_00106:
;src/StringBuilder.c:34: start = &builder->Buffer[builder->Length];
	inc	de
	inc	de
	inc	de
	inc	de
	pop	hl
	push	hl
	add	hl,de
	ex	de,hl
;src/StringBuilder.c:35: strncpy(start, buffer, length);
	push	bc
	ld	l,(ix+8)
	ld	h,(ix+9)
	push	hl
	ld	l,(ix+6)
	ld	h,(ix+7)
	push	hl
	push	de
	call	_strncpy_callee
	pop	bc
;src/StringBuilder.c:36: builder->Length += length;
	ld	l, c
	ld	h, b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,(ix+8)
	ld	e,a
	ld	a,d
	adc	a,(ix+9)
	ld	d,a
	ld	a,e
	ld	(bc),a
	inc	bc
	ld	a,d
	ld	(bc),a
;src/StringBuilder.c:38: return S_OK;
	ld	hl,0x0000
l_StringBuilder_AppendString_00107:
	ld	sp, ix
	pop	ix
	ret
;src/StringBuilder.c:42: result_t StringBuilder_AppendChar(StringBuffer* builder, char value)
;	---------------------------------
; Function StringBuilder_AppendChar
; ---------------------------------
_StringBuilder_AppendChar:
	push	ix
	ld	ix,0
	add	ix,sp
	push	af
;src/StringBuilder.c:44: if (builder == NULL) return E_NULLPTR;
	ld	a,(ix+5)
	or	a,(ix+4)
	jr	NZ,l_StringBuilder_AppendChar_00102
	ld	hl,0x0002
	jr	l_StringBuilder_AppendChar_00105
l_StringBuilder_AppendChar_00102:
;src/StringBuilder.c:45: if (builder->Capacity - builder->Length < 2) return E_BUFFERFULL;
	ld	c,(ix+4)
	ld	b,(ix+5)
	ld	a,(bc)
	ld	(ix-2),a
	inc	bc
	ld	a,(bc)
	ld	(ix-1),a
	dec	bc
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(ix-2)
	sub	a, l
	ld	(ix-2),a
	ld	a,(ix-1)
	sbc	a, h
	ld	(ix-1),a
	ld	a,(ix-2)
	sub	a,0x02
	ld	a,(ix-1)
	sbc	a,0x00
	jr	NC,l_StringBuilder_AppendChar_00104
	ld	hl,0x0003
	jr	l_StringBuilder_AppendChar_00105
l_StringBuilder_AppendChar_00104:
;src/StringBuilder.c:47: builder->Buffer[builder->Length] = value;
	ld	a,c
	add	a,0x04
	ld	(ix-2),a
	ld	a,b
	adc	a,0x00
	ld	(ix-1),a
	ld	a,(ix-2)
	add	a, l
	ld	c,a
	ld	a,(ix-1)
	adc	a, h
	ld	b,a
	ld	a,(ix+6)
	ld	(bc),a
;src/StringBuilder.c:48: builder->Length += 1;
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;src/StringBuilder.c:49: builder->Buffer[builder->Length] = '\0';
	pop	hl
	push	hl
	add	hl,bc
	ld	(hl),0x00
;src/StringBuilder.c:51: return S_OK;
	ld	hl,0x0000
l_StringBuilder_AppendChar_00105:
	ld	sp, ix
	pop	ix
	ret
;src/StringBuilder.c:55: result_t StringBuilder_AppendUint8(StringBuffer* builder, uint8_t value, uint8_t base)
;	---------------------------------
; Function StringBuilder_AppendUint8
; ---------------------------------
_StringBuilder_AppendUint8:
	push	ix
	ld	ix,0
	add	ix,sp
	push	af
	push	af
;src/StringBuilder.c:58: if (builder == NULL) return E_NULLPTR;
	ld	a,(ix+5)
	or	a,(ix+4)
	jr	NZ,l_StringBuilder_AppendUint8_00102
	ld	hl,0x0002
	jp	l_StringBuilder_AppendUint8_00105
l_StringBuilder_AppendUint8_00102:
;src/StringBuilder.c:59: if (builder->Capacity - builder->Length < 4) return E_BUFFERFULL;
	ld	c,(ix+4)
	ld	b,(ix+5)
	ld	a,(bc)
	ld	(ix-2),a
	inc	bc
	ld	a,(bc)
	ld	(ix-1),a
	dec	bc
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,(de)
	ld	(ix-4),a
	inc	de
	ld	a,(de)
	ld	(ix-3),a
	dec	de
	ld	a,(ix-2)
	sub	a,(ix-4)
	ld	l,a
	ld	a,(ix-1)
	sbc	a,(ix-3)
	ld	h,a
	ld	a,l
	sub	a,0x04
	ld	a,h
	sbc	a,0x00
	jr	NC,l_StringBuilder_AppendUint8_00104
	ld	hl,0x0003
	jr	l_StringBuilder_AppendUint8_00105
l_StringBuilder_AppendUint8_00104:
;src/StringBuilder.c:61: start = &builder->Buffer[builder->Length];
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	pop	hl
	push	hl
	add	hl,bc
	ld	c, l
	ld	b, h
;src/StringBuilder.c:62: itoa(value, start, base);
	ld	a,(ix+7)
	ld	(ix-4),a
	ld	(ix-3),0x00
	ld	a,(ix+6)
	ld	(ix-2),a
	ld	(ix-1),0x00
	push	bc
	push	de
	ld	l,(ix-4)
	ld	h,(ix-3)
	push	hl
	push	bc
	ld	l,(ix-2)
	ld	h,(ix-1)
	push	hl
	call	_itoa_callee
	pop	de
	pop	bc
;src/StringBuilder.c:63: builder->Length += strlen(start);
	ld	a,(de)
	ld	(ix-4),a
	inc	de
	ld	a,(de)
	ld	(ix-3),a
	dec	de
	ld	l, c
	ld	h, b
	call	_strlen_fastcall
	ld	c,l
	ld	b,h
	ld	a,(ix-4)
	add	a, c
	ld	c,a
	ld	a,(ix-3)
	adc	a, b
	ld	b,a
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;src/StringBuilder.c:65: return S_OK;
	ld	hl,0x0000
l_StringBuilder_AppendUint8_00105:
	ld	sp, ix
	pop	ix
	ret
;src/StringBuilder.c:69: result_t StringBuilder_AppendUint16(StringBuffer* builder, uint16_t value, uint8_t base)
;	---------------------------------
; Function StringBuilder_AppendUint16
; ---------------------------------
_StringBuilder_AppendUint16:
	push	ix
	ld	ix,0
	add	ix,sp
	push	af
	push	af
;src/StringBuilder.c:72: if (builder == NULL) return E_NULLPTR;
	ld	a,(ix+5)
	or	a,(ix+4)
	jr	NZ,l_StringBuilder_AppendUint16_00102
	ld	hl,0x0002
	jp	l_StringBuilder_AppendUint16_00105
l_StringBuilder_AppendUint16_00102:
;src/StringBuilder.c:73: if (builder->Capacity - builder->Length < 6) return E_BUFFERFULL;
	ld	c,(ix+4)
	ld	b,(ix+5)
	ld	a,(bc)
	ld	(ix-2),a
	inc	bc
	ld	a,(bc)
	ld	(ix-1),a
	dec	bc
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,(de)
	ld	(ix-4),a
	inc	de
	ld	a,(de)
	ld	(ix-3),a
	dec	de
	ld	a,(ix-2)
	sub	a,(ix-4)
	ld	l,a
	ld	a,(ix-1)
	sbc	a,(ix-3)
	ld	h,a
	ld	a,l
	sub	a,0x06
	ld	a,h
	sbc	a,0x00
	jr	NC,l_StringBuilder_AppendUint16_00104
	ld	hl,0x0003
	jr	l_StringBuilder_AppendUint16_00105
l_StringBuilder_AppendUint16_00104:
;src/StringBuilder.c:75: start = &builder->Buffer[builder->Length];
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	pop	hl
	push	hl
	add	hl,bc
	ld	c, l
	ld	b, h
;src/StringBuilder.c:76: itoa(value, start, base);
	ld	a,(ix+8)
	ld	(ix-4),a
	ld	(ix-3),0x00
	push	bc
	push	de
	ld	l,(ix-4)
	ld	h,(ix-3)
	push	hl
	push	bc
	ld	l,(ix+6)
	ld	h,(ix+7)
	push	hl
	call	_itoa_callee
	pop	de
	pop	bc
;src/StringBuilder.c:77: builder->Length += strlen(start);
	ld	a,(de)
	ld	(ix-4),a
	inc	de
	ld	a,(de)
	ld	(ix-3),a
	dec	de
	ld	l, c
	ld	h, b
	call	_strlen_fastcall
	ld	c,l
	ld	b,h
	ld	a,(ix-4)
	add	a, c
	ld	c,a
	ld	a,(ix-3)
	adc	a, b
	ld	b,a
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;src/StringBuilder.c:79: return S_OK;
	ld	hl,0x0000
l_StringBuilder_AppendUint16_00105:
	ld	sp, ix
	pop	ix
	ret
	SECTION code_compiler
	SECTION data_compiler
	SECTION IGNORE
