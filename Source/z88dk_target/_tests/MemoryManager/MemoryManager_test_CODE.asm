; Disassembly of the file "C:\Users\marc\Documents\MyProjects\Zalt\Zalt\Source\z88dk_target\_tests\MemoryManager\MemoryManager_test_CODE.bin"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Saturday, 29 of December 2018 at 08:42 AM
; 
0000 f3        di      
0001 c36e00    jp      006eh
0004 00        nop     
0005 00        nop     
0006 00        nop     
0007 00        nop     
0008 c36b00    jp      006bh
000b 00        nop     
000c 00        nop     
000d 00        nop     
000e 00        nop     
000f 00        nop     
0010 c36b00    jp      006bh
0013 00        nop     
0014 00        nop     
0015 00        nop     
0016 00        nop     
0017 00        nop     
0018 c36b00    jp      006bh
001b 00        nop     
001c 00        nop     
001d 00        nop     
001e 00        nop     
001f 00        nop     
0020 c36b00    jp      006bh
0023 00        nop     
0024 00        nop     
0025 00        nop     
0026 00        nop     
0027 00        nop     
0028 c36b00    jp      006bh
002b 00        nop     
002c 00        nop     
002d 00        nop     
002e 00        nop     
002f 00        nop     
0030 cde402    call    02e4h
0033 c9        ret     

0034 00        nop     
0035 00        nop     
0036 00        nop     
0037 00        nop     
0038 f3        di      
0039 cd5202    call    0252h
003c c34200    jp      0042h
003f fb        ei      
0040 ed4d      reti    

0042 76        halt    
0043 c7        rst     00h
0044 00        nop     
0045 00        nop     
0046 00        nop     
0047 00        nop     
0048 00        nop     
0049 00        nop     
004a 00        nop     
004b 00        nop     
004c 00        nop     
004d 00        nop     
004e 00        nop     
004f 00        nop     
0050 00        nop     
0051 00        nop     
0052 00        nop     
0053 00        nop     
0054 00        nop     
0055 00        nop     
0056 00        nop     
0057 00        nop     
0058 00        nop     
0059 00        nop     
005a 00        nop     
005b 00        nop     
005c 00        nop     
005d 00        nop     
005e 00        nop     
005f 00        nop     
0060 00        nop     
0061 00        nop     
0062 00        nop     
0063 00        nop     
0064 00        nop     
0065 00        nop     
0066 cdca02    call    02cah
0069 ed45      retn    

006b f3        di      
006c 76        halt    
006d c9        ret     

006e af        xor     a
006f 47        ld      b,a
0070 4f        ld      c,a
0071 57        ld      d,a
0072 5f        ld      e,a
0073 67        ld      h,a
0074 6f        ld      l,a
0075 dd210000  ld      ix,0000h
0079 fd210000  ld      iy,0000h
007d ed57      ld      a,i
007f b7        or      a
0080 2010      jr      nz,0092h         ; (+10h)
0082 21ffff    ld      hl,0ffffh
0085 af        xor     a
0086 222a15    ld      (152ah),hl
0089 322915    ld      (1529h),a
008c 3e01      ld      a,01h
008e ed47      ld      i,a
0090 ed5e      im      2
0092 2a2a15    ld      hl,(152ah)
0095 f9        ld      sp,hl
0096 fb        ei      
0097 c30002    jp      0200h
009a f3        di      
009b f5        push    af
009c 3a2c15    ld      a,(152ch)
009f 3c        inc     a
00a0 322c15    ld      (152ch),a
00a3 f1        pop     af
00a4 c9        ret     

00a5 f5        push    af
00a6 3a2c15    ld      a,(152ch)
00a9 3d        dec     a
00aa 322c15    ld      (152ch),a
00ad 2002      jr      nz,00b1h         ; (+02h)
00af f1        pop     af
00b0 c9        ret     

00b1 f1        pop     af
00b2 fb        ei      
00b3 c9        ret     

00b4 d1        pop     de
00b5 e1        pop     hl
00b6 7e        ld      a,(hl)
00b7 23        inc     hl
00b8 e5        push    hl
00b9 d5        push    de
00ba c9        ret     

00bb d1        pop     de
00bc e1        pop     hl
00bd 4e        ld      c,(hl)
00be 23        inc     hl
00bf 46        ld      b,(hl)
00c0 23        inc     hl
00c1 e5        push    hl
00c2 d5        push    de
00c3 c9        ret     

00c4 00        nop     
00c5 00        nop     
00c6 00        nop     
00c7 00        nop     
00c8 00        nop     
00c9 00        nop     
00ca 00        nop     
00cb 00        nop     
00cc 00        nop     
00cd 00        nop     
00ce 00        nop     
00cf 00        nop     
00d0 00        nop     
00d1 00        nop     
00d2 00        nop     
00d3 00        nop     
00d4 00        nop     
00d5 00        nop     
00d6 00        nop     
00d7 00        nop     
00d8 00        nop     
00d9 00        nop     
00da 00        nop     
00db 00        nop     
00dc 00        nop     
00dd 00        nop     
00de 00        nop     
00df 00        nop     
00e0 00        nop     
00e1 00        nop     
00e2 00        nop     
00e3 00        nop     
00e4 00        nop     
00e5 00        nop     
00e6 00        nop     
00e7 00        nop     
00e8 00        nop     
00e9 00        nop     
00ea 00        nop     
00eb 00        nop     
00ec 00        nop     
00ed 00        nop     
00ee 00        nop     
00ef 00        nop     
00f0 00        nop     
00f1 00        nop     
00f2 00        nop     
00f3 00        nop     
00f4 00        nop     
00f5 00        nop     
00f6 00        nop     
00f7 00        nop     
00f8 00        nop     
00f9 00        nop     
00fa 00        nop     
00fb 00        nop     
00fc 00        nop     
00fd 00        nop     
00fe 00        nop     
00ff 00        nop     
0100 3f        ccf     
0101 00        nop     
0102 2e02      ld      l,02h
0104 3f        ccf     
0105 00        nop     
0106 3f        ccf     
0107 00        nop     
0108 3f        ccf     
0109 00        nop     
010a 3f        ccf     
010b 00        nop     
010c 3f        ccf     
010d 00        nop     
010e 3f        ccf     
010f 00        nop     
0110 3f        ccf     
0111 00        nop     
0112 3f        ccf     
0113 00        nop     
0114 3f        ccf     
0115 00        nop     
0116 3f        ccf     
0117 00        nop     
0118 3f        ccf     
0119 00        nop     
011a 3f        ccf     
011b 00        nop     
011c 3f        ccf     
011d 00        nop     
011e 3f        ccf     
011f 00        nop     
0120 3f        ccf     
0121 00        nop     
0122 3f        ccf     
0123 00        nop     
0124 3f        ccf     
0125 00        nop     
0126 3f        ccf     
0127 00        nop     
0128 3f        ccf     
0129 00        nop     
012a 3f        ccf     
012b 00        nop     
012c 3f        ccf     
012d 00        nop     
012e 3f        ccf     
012f 00        nop     
0130 3f        ccf     
0131 00        nop     
0132 3f        ccf     
0133 00        nop     
0134 3f        ccf     
0135 00        nop     
0136 3f        ccf     
0137 00        nop     
0138 3f        ccf     
0139 00        nop     
013a 3f        ccf     
013b 00        nop     
013c 3f        ccf     
013d 00        nop     
013e 3f        ccf     
013f 00        nop     
0140 3f        ccf     
0141 00        nop     
0142 3f        ccf     
0143 00        nop     
0144 3f        ccf     
0145 00        nop     
0146 3f        ccf     
0147 00        nop     
0148 3f        ccf     
0149 00        nop     
014a 3f        ccf     
014b 00        nop     
014c 3f        ccf     
014d 00        nop     
014e 3f        ccf     
014f 00        nop     
0150 3f        ccf     
0151 00        nop     
0152 3f        ccf     
0153 00        nop     
0154 3f        ccf     
0155 00        nop     
0156 3f        ccf     
0157 00        nop     
0158 3f        ccf     
0159 00        nop     
015a 3f        ccf     
015b 00        nop     
015c 3f        ccf     
015d 00        nop     
015e 3f        ccf     
015f 00        nop     
0160 3f        ccf     
0161 00        nop     
0162 3f        ccf     
0163 00        nop     
0164 3f        ccf     
0165 00        nop     
0166 3f        ccf     
0167 00        nop     
0168 3f        ccf     
0169 00        nop     
016a 3f        ccf     
016b 00        nop     
016c 3f        ccf     
016d 00        nop     
016e 3f        ccf     
016f 00        nop     
0170 3f        ccf     
0171 00        nop     
0172 3f        ccf     
0173 00        nop     
0174 3f        ccf     
0175 00        nop     
0176 3f        ccf     
0177 00        nop     
0178 3f        ccf     
0179 00        nop     
017a 3f        ccf     
017b 00        nop     
017c 3f        ccf     
017d 00        nop     
017e 3f        ccf     
017f 00        nop     
0180 3f        ccf     
0181 00        nop     
0182 3f        ccf     
0183 00        nop     
0184 3f        ccf     
0185 00        nop     
0186 3f        ccf     
0187 00        nop     
0188 3f        ccf     
0189 00        nop     
018a 3f        ccf     
018b 00        nop     
018c 3f        ccf     
018d 00        nop     
018e 3f        ccf     
018f 00        nop     
0190 3f        ccf     
0191 00        nop     
0192 3f        ccf     
0193 00        nop     
0194 3f        ccf     
0195 00        nop     
0196 3f        ccf     
0197 00        nop     
0198 3f        ccf     
0199 00        nop     
019a 3f        ccf     
019b 00        nop     
019c 3f        ccf     
019d 00        nop     
019e 3f        ccf     
019f 00        nop     
01a0 3f        ccf     
01a1 00        nop     
01a2 3f        ccf     
01a3 00        nop     
01a4 3f        ccf     
01a5 00        nop     
01a6 3f        ccf     
01a7 00        nop     
01a8 3f        ccf     
01a9 00        nop     
01aa 3f        ccf     
01ab 00        nop     
01ac 3f        ccf     
01ad 00        nop     
01ae 3f        ccf     
01af 00        nop     
01b0 3f        ccf     
01b1 00        nop     
01b2 3f        ccf     
01b3 00        nop     
01b4 3f        ccf     
01b5 00        nop     
01b6 3f        ccf     
01b7 00        nop     
01b8 3f        ccf     
01b9 00        nop     
01ba 3f        ccf     
01bb 00        nop     
01bc 3f        ccf     
01bd 00        nop     
01be 3f        ccf     
01bf 00        nop     
01c0 3f        ccf     
01c1 00        nop     
01c2 3f        ccf     
01c3 00        nop     
01c4 3f        ccf     
01c5 00        nop     
01c6 3f        ccf     
01c7 00        nop     
01c8 3f        ccf     
01c9 00        nop     
01ca 3f        ccf     
01cb 00        nop     
01cc 3f        ccf     
01cd 00        nop     
01ce 3f        ccf     
01cf 00        nop     
01d0 3f        ccf     
01d1 00        nop     
01d2 3f        ccf     
01d3 00        nop     
01d4 3f        ccf     
01d5 00        nop     
01d6 3f        ccf     
01d7 00        nop     
01d8 3f        ccf     
01d9 00        nop     
01da 3f        ccf     
01db 00        nop     
01dc 3f        ccf     
01dd 00        nop     
01de 3f        ccf     
01df 00        nop     
01e0 3f        ccf     
01e1 00        nop     
01e2 3f        ccf     
01e3 00        nop     
01e4 3f        ccf     
01e5 00        nop     
01e6 3f        ccf     
01e7 00        nop     
01e8 3f        ccf     
01e9 00        nop     
01ea 3f        ccf     
01eb 00        nop     
01ec 3f        ccf     
01ed 00        nop     
01ee 3f        ccf     
01ef 00        nop     
01f0 3f        ccf     
01f1 00        nop     
01f2 3f        ccf     
01f3 00        nop     
01f4 3f        ccf     
01f5 00        nop     
01f6 3f        ccf     
01f7 00        nop     
01f8 3f        ccf     
01f9 00        nop     
01fa 3f        ccf     
01fb 00        nop     
01fc 3f        ccf     
01fd 00        nop     
01fe 3f        ccf     
01ff 00        nop     
0200 215e15    ld      hl,155eh
0203 34        inc     (hl)
0204 34        inc     (hl)
0205 21ffff    ld      hl,0ffffh
0208 39        add     hl,sp
0209 110616    ld      de,1606h
020c af        xor     a
020d ed52      sbc     hl,de
020f da2a02    jp      c,022ah
0212 010e02    ld      bc,020eh
0215 ed42      sbc     hl,bc
0217 da2a02    jp      c,022ah
021a 010f00    ld      bc,000fh
021d 09        add     hl,bc
021e 4d        ld      c,l
021f 44        ld      b,h
0220 eb        ex      de,hl
0221 cdf402    call    02f4h
0224 cdd10e    call    0ed1h
0227 c3620d    jp      0d62h
022a e5        push    hl
022b e1        pop     hl
022c 18fe      jr      022ch            ; (-02h)
022e cdc10e    call    0ec1h
0231 cd4602    call    0246h
0234 b7        or      a
0235 2803      jr      z,023ah          ; (+03h)
0237 cdbc11    call    11bch
023a cdb00e    call    0eb0h
023d fb        ei      
023e ed4d      reti    

0240 013000    ld      bc,0030h
0243 ed69      out     (c),l
0245 c9        ret     

0246 013000    ld      bc,0030h
0249 210000    ld      hl,0000h
024c ed78      in      a,(c)
024e 6f        ld      l,a
024f c9        ret     

0250 1800      jr      0252h            ; (+00h)
0252 ed435202  ld      (0252h),bc
0256 ed535402  ld      (0254h),de
025a 225602    ld      (0256h),hl
025d d9        exx     
025e ed436202  ld      (0262h),bc
0262 ed536402  ld      (0264h),de
0266 226802    ld      (0268h),hl
0269 d9        exx     
026a fd225802  ld      (0258h),iy
026e dd225a02  ld      (025ah),ix
0272 e1        pop     hl
0273 225e02    ld      (025eh),hl
0276 ed735c02  ld      (025ch),sp
027a e5        push    hl
027b f5        push    af
027c e1        pop     hl
027d 225002    ld      (0250h),hl
0280 08        ex      af,af'
0281 f5        push    af
0282 e1        pop     hl
0283 226002    ld      (0260h),hl
0286 08        ex      af,af'
0287 212d15    ld      hl,152dh
028a 3601      ld      (hl),01h
028c 2a5602    ld      hl,(0256h)
028f c9        ret     

0290 ed7b5c02  ld      sp,(025ch)
0294 2a5e02    ld      hl,(025eh)
0297 e5        push    hl
0298 08        ex      af,af'
0299 2a6002    ld      hl,(0260h)
029c e5        push    hl
029d f1        pop     af
029e 08        ex      af,af'
029f 2a5002    ld      hl,(0250h)
02a2 e5        push    hl
02a3 f1        pop     af
02a4 d9        exx     
02a5 ed4b6202  ld      bc,(0262h)
02a9 ed5b6402  ld      de,(0264h)
02ad 2a6802    ld      hl,(0268h)
02b0 212d15    ld      hl,152dh
02b3 3600      ld      (hl),00h
02b5 d9        exx     
02b6 ed4b5202  ld      bc,(0252h)
02ba ed5b5402  ld      de,(0254h)
02be 2a5602    ld      hl,(0256h)
02c1 fd2a5802  ld      iy,(0258h)
02c5 dd2a5a02  ld      ix,(025ah)
02c9 c9        ret     

02ca 010800    ld      bc,0008h
02cd ed78      in      a,(c)
02cf c8        ret     z

02d0 fe02      cp      02h
02d2 ccd702    call    z,02d7h
02d5 18f6      jr      02cdh            ; (-0ah)
02d7 1e18      ld      e,18h
02d9 215002    ld      hl,0250h
02dc 7e        ld      a,(hl)
02dd ed79      out     (c),a
02df 23        inc     hl
02e0 1d        dec     e
02e1 20f9      jr      nz,02dch         ; (-07h)
02e3 c9        ret     

02e4 f3        di      
02e5 cd5202    call    0252h
02e8 76        halt    
02e9 cd9802    call    0298h
02ec fb        ei      
02ed c9        ret     

02ee 7e        ld      a,(hl)
02ef 23        inc     hl
02f0 66        ld      h,(hl)
02f1 6f        ld      l,a
02f2 b4        or      h
02f3 c9        ret     

02f4 5d        ld      e,l
02f5 54        ld      d,h
02f6 e5        push    hl
02f7 c5        push    bc
02f8 0e01      ld      c,01h
02fa cd910e    call    0e91h
02fd da4b05    jp      c,054bh
0300 210600    ld      hl,0006h
0303 19        add     hl,de
0304 eb        ex      de,hl
0305 c1        pop     bc
0306 09        add     hl,bc
0307 af        xor     a
0308 2b        dec     hl
0309 77        ld      (hl),a
030a 2b        dec     hl
030b 77        ld      (hl),a
030c eb        ex      de,hl
030d 73        ld      (hl),e
030e 23        inc     hl
030f 72        ld      (hl),d
0310 23        inc     hl
0311 cd9106    call    0691h
0314 e1        pop     hl
0315 c9        ret     

0316 ed5b3015  ld      de,(1530h)
031a c31d03    jp      031dh
031d 7c        ld      a,h
031e b5        or      l
031f c8        ret     z

0320 2b        dec     hl
0321 56        ld      d,(hl)
0322 2b        dec     hl
0323 5e        ld      e,(hl)
0324 2b        dec     hl
0325 2b        dec     hl
0326 7a        ld      a,d
0327 b3        or      e
0328 ca9506    jp      z,0695h
032b 2b        dec     hl
032c 2b        dec     hl
032d eda0      ldi     
032f 03        inc     bc
0330 7e        ld      a,(hl)
0331 12        ld      (de),a
0332 1b        dec     de
0333 2b        dec     hl
0334 6e        ld      l,(hl)
0335 67        ld      h,a
0336 7e        ld      a,(hl)
0337 23        inc     hl
0338 b6        or      (hl)
0339 c8        ret     z

033a 23        inc     hl
033b 23        inc     hl
033c 23        inc     hl
033d 73        ld      (hl),e
033e 23        inc     hl
033f 72        ld      (hl),d
0340 c9        ret     

0341 ed5b3015  ld      de,(1530h)
0345 c34803    jp      0348h
0348 7c        ld      a,h
0349 b5        or      l
034a c8        ret     z

034b 010600    ld      bc,0006h
034e 09        add     hl,bc
034f dace05    jp      c,05ceh
0352 4d        ld      c,l
0353 44        ld      b,h
0354 210600    ld      hl,0006h
0357 19        add     hl,de
0358 e5        push    hl
0359 c5        push    bc
035a 5e        ld      e,(hl)
035b 23        inc     hl
035c 56        ld      d,(hl)
035d 7a        ld      a,d
035e b3        or      e
035f cacc05    jp      z,05cch
0362 23        inc     hl
0363 4e        ld      c,(hl)
0364 23        inc     hl
0365 46        ld      b,(hl)
0366 2b        dec     hl
0367 2b        dec     hl
0368 2b        dec     hl
0369 09        add     hl,bc
036a eb        ex      de,hl
036b c1        pop     bc
036c e5        push    hl
036d ed52      sbc     hl,de
036f ed42      sbc     hl,bc
0371 e1        pop     hl
0372 3003      jr      nc,0377h         ; (+03h)
0374 f1        pop     af
0375 18e1      jr      0358h            ; (-1fh)
0377 e1        pop     hl
0378 c37b03    jp      037bh
037b 7b        ld      a,e
037c bd        cp      l
037d 2004      jr      nz,0383h         ; (+04h)
037f 7a        ld      a,d
0380 bc        cp      h
0381 2829      jr      z,03ach          ; (+29h)
0383 c5        push    bc
0384 4e        ld      c,(hl)
0385 73        ld      (hl),e
0386 23        inc     hl
0387 46        ld      b,(hl)
0388 72        ld      (hl),d
0389 2b        dec     hl
038a eb        ex      de,hl
038b 71        ld      (hl),c
038c 23        inc     hl
038d 70        ld      (hl),b
038e 2b        dec     hl
038f 0a        ld      a,(bc)
0390 03        inc     bc
0391 b7        or      a
0392 2004      jr      nz,0398h         ; (+04h)
0394 0a        ld      a,(bc)
0395 b7        or      a
0396 2808      jr      z,03a0h          ; (+08h)
0398 03        inc     bc
0399 03        inc     bc
039a 03        inc     bc
039b 7d        ld      a,l
039c 02        ld      (bc),a
039d 03        inc     bc
039e 7c        ld      a,h
039f 02        ld      (bc),a
03a0 23        inc     hl
03a1 23        inc     hl
03a2 c1        pop     bc
03a3 71        ld      (hl),c
03a4 23        inc     hl
03a5 70        ld      (hl),b
03a6 23        inc     hl
03a7 73        ld      (hl),e
03a8 23        inc     hl
03a9 72        ld      (hl),d
03aa 23        inc     hl
03ab c9        ret     

03ac 23        inc     hl
03ad 23        inc     hl
03ae 71        ld      (hl),c
03af 23        inc     hl
03b0 70        ld      (hl),b
03b1 23        inc     hl
03b2 23        inc     hl
03b3 23        inc     hl
03b4 c9        ret     

03b5 fe41      cp      41h
03b7 d8        ret     c

03b8 fe5b      cp      5bh
03ba d0        ret     nc

03bb f620      or      20h
03bd c9        ret     

03be fde3      ex      (sp),iy
03c0 cd7506    call    0675h
03c3 fde1      pop     iy
03c5 c9        ret     

03c6 fd7e06    ld      a,(iy+06h)
03c9 e6fc      and     0fch
03cb fd7706    ld      (iy+06h),a
03ce c9        ret     

03cf 3d        dec     a
03d0 ca7105    jp      z,0571h
03d3 c36805    jp      0568h
03d6 7d        ld      a,l
03d7 e603      and     03h
03d9 ee01      xor     01h
03db fdb606    or      (iy+06h)
03de fd7706    ld      (iy+06h),a
03e1 37        scf     
03e2 c9        ret     

03e3 fe0f      cp      0fh
03e5 2803      jr      z,03eah          ; (+03h)
03e7 c3f503    jp      03f5h
03ea 012000    ld      bc,0020h
03ed ed78      in      a,(c)
03ef 2600      ld      h,00h
03f1 6f        ld      l,a
03f2 37        scf     
03f3 3f        ccf     
03f4 c9        ret     

03f5 fe03      cp      03h
03f7 ca3d04    jp      z,043dh
03fa fe04      cp      04h
03fc ca1b04    jp      z,041bh
03ff fe05      cp      05h
0401 ca7204    jp      z,0472h
0404 fe06      cp      06h
0406 ca9c04    jp      z,049ch
0409 fe08      cp      08h
040b ca9905    jp      z,0599h
040e fe07      cp      07h
0410 ca5d04    jp      z,045dh
0413 fe09      cp      09h
0415 ca9905    jp      z,0599h
0418 c3a605    jp      05a6h
041b 4d        ld      c,l
041c 44        ld      b,h
041d 11ffff    ld      de,0ffffh
0420 13        inc     de
0421 c5        push    bc
0422 d5        push    de
0423 3e03      ld      a,03h
0425 cd7506    call    0675h
0428 d1        pop     de
0429 c1        pop     bc
042a 380e      jr      c,043ah          ; (+0eh)
042c 78        ld      a,b
042d b1        or      c
042e 280a      jr      z,043ah          ; (+0ah)
0430 0b        dec     bc
0431 7d        ld      a,l
0432 d9        exx     
0433 cd3907    call    0739h
0436 d9        exx     
0437 30e7      jr      nc,0420h         ; (-19h)
0439 3f        ccf     
043a 4b        ld      c,e
043b 42        ld      b,d
043c c9        ret     

043d fd7e06    ld      a,(iy+06h)
0440 e603      and     03h
0442 c2cf03    jp      nz,03cfh
0445 3e0f      ld      a,0fh
0447 cd7506    call    0675h
044a dad603    jp      c,03d6h
044d 6f        ld      l,a
044e 2600      ld      h,00h
0450 fe0d      cp      0dh
0452 2802      jr      z,0456h          ; (+02h)
0454 b7        or      a
0455 c9        ret     

0456 fdcb0746  bit     0,(iy+07h)
045a c8        ret     z

045b 18e8      jr      0445h            ; (-18h)
045d 7c        ld      a,h
045e b5        or      l
045f 200a      jr      nz,046bh         ; (+0ah)
0461 1c        inc     e
0462 1d        dec     e
0463 200b      jr      nz,0470h         ; (+0bh)
0465 15        dec     d
0466 ca3106    jp      z,0631h
0469 1805      jr      0470h            ; (+05h)
046b 7a        ld      a,d
046c b3        or      e
046d cac603    jp      z,03c6h
0470 37        scf     
0471 c9        ret     

0472 d9        exx     
0473 78        ld      a,b
0474 b1        or      c
0475 2812      jr      z,0489h          ; (+12h)
0477 0b        dec     bc
0478 c5        push    bc
0479 d5        push    de
047a 3e03      ld      a,03h
047c cd7506    call    0675h
047f d1        pop     de
0480 c1        pop     bc
0481 380e      jr      c,0491h          ; (+0eh)
0483 12        ld      (de),a
0484 13        inc     de
0485 fe0a      cp      0ah
0487 20ea      jr      nz,0473h         ; (-16h)
0489 c5        push    bc
048a d9        exx     
048b c1        pop     bc
048c ed42      sbc     hl,bc
048e 4d        ld      c,l
048f 44        ld      b,h
0490 c9        ret     

0491 e5        push    hl
0492 c5        push    bc
0493 d9        exx     
0494 c1        pop     bc
0495 ed42      sbc     hl,bc
0497 4d        ld      c,l
0498 44        ld      b,h
0499 e1        pop     hl
049a 37        scf     
049b c9        ret     

049c d9        exx     
049d 79        ld      a,c
049e fe01      cp      01h
04a0 c2b905    jp      nz,05b9h
04a3 cb7a      bit     7,d
04a5 c2b905    jp      nz,05b9h
04a8 7a        ld      a,d
04a9 b3        or      e
04aa b4        or      h
04ab b5        or      l
04ac c8        ret     z

04ad cd5107    call    0751h
04b0 d5        push    de
04b1 e5        push    hl
04b2 3e03      ld      a,03h
04b4 cd7506    call    0675h
04b7 e1        pop     hl
04b8 d1        pop     de
04b9 30ed      jr      nc,04a8h         ; (-13h)
04bb c3b205    jp      05b2h
04be fe20      cp      20h
04c0 2803      jr      z,04c5h          ; (+03h)
04c2 c3ce04    jp      04ceh
04c5 79        ld      a,c
04c6 012000    ld      bc,0020h
04c9 ed79      out     (c),a
04cb 37        scf     
04cc 3f        ccf     
04cd c9        ret     

04ce fe1e      cp      1eh
04d0 caf404    jp      z,04f4h
04d3 fe02      cp      02h
04d5 ca3205    jp      z,0532h
04d8 fe01      cp      01h
04da ca1e05    jp      z,051eh
04dd fe06      cp      06h
04df cab905    jp      z,05b9h
04e2 fe08      cp      08h
04e4 ca9905    jp      z,0599h
04e7 fe07      cp      07h
04e9 ca0e05    jp      z,050eh
04ec fe09      cp      09h
04ee ca9905    jp      z,0599h
04f1 c3a605    jp      05a6h
04f4 fdcb0666  bit     4,(iy+06h)
04f8 2810      jr      z,050ah          ; (+10h)
04fa 79        ld      a,c
04fb fe0d      cp      0dh
04fd c8        ret     z

04fe fe0a      cp      0ah
0500 2008      jr      nz,050ah         ; (+08h)
0502 0e0d      ld      c,0dh
0504 cd0a05    call    050ah
0507 d8        ret     c

0508 0e0a      ld      c,0ah
050a 3e20      ld      a,20h
050c fde9      jp      (iy)
050e 7c        ld      a,h
050f b5        or      l
0510 200a      jr      nz,051ch         ; (+0ah)
0512 14        inc     d
0513 15        dec     d
0514 2006      jr      nz,051ch         ; (+06h)
0516 7b        ld      a,e
0517 fe10      cp      10h
0519 ca3106    jp      z,0631h
051c 37        scf     
051d c9        ret     

051e d9        exx     
051f 210000    ld      hl,0000h
0522 7b        ld      a,e
0523 d9        exx     
0524 4f        ld      c,a
0525 3e1e      ld      a,1eh
0527 cd7506    call    0675h
052a d9        exx     
052b d8        ret     c

052c eda1      cpi     
052e ea2205    jp      pe,0522h
0531 c9        ret     

0532 d9        exx     
0533 110000    ld      de,0000h
0536 7e        ld      a,(hl)
0537 d9        exx     
0538 4f        ld      c,a
0539 3e1e      ld      a,1eh
053b cd7506    call    0675h
053e d9        exx     
053f 3806      jr      c,0547h          ; (+06h)
0541 13        inc     de
0542 eda1      cpi     
0544 ea3605    jp      pe,0536h
0547 d5        push    de
0548 d9        exx     
0549 e1        pop     hl
054a c9        ret     

054b e1        pop     hl
054c e1        pop     hl
054d cd5305    call    0553h
0550 23        inc     hl
0551 c9        ret     

0552 e1        pop     hl
0553 2e09      ld      l,09h
0555 c35d05    jp      055dh
0558 e1        pop     hl
0559 e1        pop     hl
055a e1        pop     hl
055b 2eff      ld      l,0ffh
055d 2600      ld      h,00h
055f 22f715    ld      (15f7h),hl
0562 c36805    jp      0568h
0565 e1        pop     hl
0566 e1        pop     hl
0567 e1        pop     hl
0568 21ffff    ld      hl,0ffffh
056b 37        scf     
056c c9        ret     

056d e1        pop     hl
056e e1        pop     hl
056f e1        pop     hl
0570 e1        pop     hl
0571 210000    ld      hl,0000h
0574 37        scf     
0575 c9        ret     

0576 e1        pop     hl
0577 e1        pop     hl
0578 e1        pop     hl
0579 cd7f05    call    057fh
057c 23        inc     hl
057d c9        ret     

057e e1        pop     hl
057f 2e06      ld      l,06h
0581 c35d05    jp      055dh
0584 e1        pop     hl
0585 cd8b05    call    058bh
0588 23        inc     hl
0589 c9        ret     

058a e1        pop     hl
058b 2e0d      ld      l,0dh
058d c35d05    jp      055dh
0590 e1        pop     hl
0591 2e01      ld      l,01h
0593 c35d05    jp      055dh
0596 e1        pop     hl
0597 e1        pop     hl
0598 e1        pop     hl
0599 210000    ld      hl,0000h
059c 37        scf     
059d 3f        ccf     
059e c9        ret     

059f e1        pop     hl
05a0 2e04      ld      l,04h
05a2 c35d05    jp      055dh
05a5 e1        pop     hl
05a6 cdac05    call    05ach
05a9 23        inc     hl
05aa c9        ret     

05ab e1        pop     hl
05ac 2e0b      ld      l,0bh
05ae c35d05    jp      055dh
05b1 e1        pop     hl
05b2 110000    ld      de,0000h
05b5 c37105    jp      0571h
05b8 e1        pop     hl
05b9 110000    ld      de,0000h
05bc c39905    jp      0599h
05bf e1        pop     hl
05c0 cdc705    call    05c7h
05c3 23        inc     hl
05c4 c9        ret     

05c5 e1        pop     hl
05c6 e1        pop     hl
05c7 2e03      ld      l,03h
05c9 c35d05    jp      055dh
05cc e1        pop     hl
05cd e1        pop     hl
05ce cdd405    call    05d4h
05d1 23        inc     hl
05d2 c9        ret     

05d3 e1        pop     hl
05d4 2e0a      ld      l,0ah
05d6 c35d05    jp      055dh
05d9 d5        push    de
05da cd5406    call    0654h
05dd e1        pop     hl
05de da6805    jp      c,0568h
05e1 79        ld      a,c
05e2 e607      and     07h
05e4 37        scf     
05e5 2810      jr      z,05f7h          ; (+10h)
05e7 fd7e06    ld      a,(iy+06h)
05ea a9        xor     c
05eb e607      and     07h
05ed 2808      jr      z,05f7h          ; (+08h)
05ef cd4d06    call    064dh
05f2 20f3      jr      nz,05e7h         ; (-0dh)
05f4 c3ac05    jp      05ach
05f7 59        ld      e,c
05f8 50        ld      d,b
05f9 cd5d0d    call    0d5dh
05fc 381f      jr      c,061dh          ; (+1fh)
05fe 7a        ld      a,d
05ff 07        rlca    
0600 07        rlca    
0601 e603      and     03h
0603 2818      jr      z,061dh          ; (+18h)
0605 3d        dec     a
0606 281e      jr      z,0626h          ; (+1eh)
0608 3d        dec     a
0609 2807      jr      z,0612h          ; (+07h)
060b 78        ld      a,b
060c b1        or      c
060d 2803      jr      z,0612h          ; (+03h)
060f 01ffff    ld      bc,0ffffh
0612 7a        ld      a,d
0613 e63f      and     3fh
0615 57        ld      d,a
0616 7b        ld      a,e
0617 e6f8      and     0f8h
0619 5f        ld      e,a
061a 210000    ld      hl,0000h
061d 3e07      ld      a,07h
061f cd7506    call    0675h
0622 d0        ret     nc

0623 c36805    jp      0568h
0626 7b        ld      a,e
0627 fda609    and     (iy+09h)
062a 6f        ld      l,a
062b 7a        ld      a,d
062c fda60a    and     (iy+0ah)
062f 67        ld      h,a
0630 c9        ret     

0631 d8        ret     c

0632 fd6e06    ld      l,(iy+06h)
0635 fd6607    ld      h,(iy+07h)
0638 7b        ld      a,e
0639 a1        and     c
063a 4f        ld      c,a
063b 7a        ld      a,d
063c a0        and     b
063d 47        ld      b,a
063e 7b        ld      a,e
063f 2f        cpl     
0640 a5        and     l
0641 b1        or      c
0642 fd7706    ld      (iy+06h),a
0645 7a        ld      a,d
0646 2f        cpl     
0647 a4        and     h
0648 b0        or      b
0649 fd7707    ld      (iy+07h),a
064c c9        ret     

064d fdcb067e  bit     7,(iy+06h)
0651 c8        ret     z

0652 af        xor     a
0653 c9        ret     

0654 cd5f06    call    065fh
0657 d8        ret     c

0658 cac005    jp      z,05c0h
065b d5        push    de
065c fde1      pop     iy
065e c9        ret     

065f 7c        ld      a,h
0660 b7        or      a
0661 c2c005    jp      nz,05c0h
0664 7d        ld      a,l
0665 d603      sub     03h
0667 d2c005    jp      nc,05c0h
066a 29        add     hl,hl
066b 11b415    ld      de,15b4h
066e 19        add     hl,de
066f 5e        ld      e,(hl)
0670 23        inc     hl
0671 56        ld      d,(hl)
0672 7a        ld      a,d
0673 b3        or      e
0674 c9        ret     

0675 fde9      jp      (iy)
0677 e1        pop     hl
0678 c9        ret     

0679 77        ld      (hl),a
067a 23        inc     hl
067b 77        ld      (hl),a
067c 23        inc     hl
067d 77        ld      (hl),a
067e 23        inc     hl
067f 77        ld      (hl),a
0680 23        inc     hl
0681 77        ld      (hl),a
0682 23        inc     hl
0683 77        ld      (hl),a
0684 23        inc     hl
0685 77        ld      (hl),a
0686 23        inc     hl
0687 77        ld      (hl),a
0688 23        inc     hl
0689 77        ld      (hl),a
068a 23        inc     hl
068b 77        ld      (hl),a
068c 23        inc     hl
068d 77        ld      (hl),a
068e 23        inc     hl
068f 77        ld      (hl),a
0690 23        inc     hl
0691 77        ld      (hl),a
0692 23        inc     hl
0693 77        ld      (hl),a
0694 23        inc     hl
0695 77        ld      (hl),a
0696 23        inc     hl
0697 77        ld      (hl),a
0698 23        inc     hl
0699 c9        ret     

069a 210000    ld      hl,0000h
069d 1b        dec     de
069e e5        push    hl
069f f1        pop     af
06a0 13        inc     de
06a1 1a        ld      a,(de)
06a2 d630      sub     30h
06a4 3f        ccf     
06a5 d0        ret     nc

06a6 fe0a      cp      0ah
06a8 d0        ret     nc

06a9 e5        push    hl
06aa 29        add     hl,hl
06ab 3812      jr      c,06bfh          ; (+12h)
06ad 4d        ld      c,l
06ae 44        ld      b,h
06af 29        add     hl,hl
06b0 380d      jr      c,06bfh          ; (+0dh)
06b2 29        add     hl,hl
06b3 380a      jr      c,06bfh          ; (+0ah)
06b5 09        add     hl,bc
06b6 3807      jr      c,06bfh          ; (+07h)
06b8 85        add     a,l
06b9 6f        ld      l,a
06ba 30e3      jr      nc,069fh         ; (-1dh)
06bc 24        inc     h
06bd 20e0      jr      nz,069fh         ; (-20h)
06bf e1        pop     hl
06c0 37        scf     
06c1 c9        ret     

06c2 7d        ld      a,l
06c3 2f        cpl     
06c4 6f        ld      l,a
06c5 7c        ld      a,h
06c6 2f        cpl     
06c7 67        ld      h,a
06c8 23        inc     hl
06c9 c9        ret     

06ca cb7c      bit     7,h
06cc c8        ret     z

06cd 21ff7f    ld      hl,7fffh
06d0 c9        ret     

06d1 010001    ld      bc,0100h
06d4 c5        push    bc
06d5 01f600    ld      bc,00f6h
06d8 c5        push    bc
06d9 019c00    ld      bc,009ch
06dc c5        push    bc
06dd 0118fd    ld      bc,0fd18h
06e0 c5        push    bc
06e1 01f0d8    ld      bc,0d8f0h
06e4 380c      jr      c,06f2h          ; (+0ch)
06e6 cd0007    call    0700h
06e9 fe30      cp      30h
06eb 2008      jr      nz,06f5h         ; (+08h)
06ed c1        pop     bc
06ee 10f6      djnz    06e6h            ; (-0ah)
06f0 1808      jr      06fah            ; (+08h)
06f2 cd0007    call    0700h
06f5 12        ld      (de),a
06f6 13        inc     de
06f7 c1        pop     bc
06f8 10f8      djnz    06f2h            ; (-08h)
06fa 7d        ld      a,l
06fb c630      add     a,30h
06fd 12        ld      (de),a
06fe 13        inc     de
06ff c9        ret     

0700 3e2f      ld      a,2fh
0702 3c        inc     a
0703 09        add     hl,bc
0704 38fc      jr      c,0702h          ; (-04h)
0706 ed42      sbc     hl,bc
0708 c9        ret     

0709 cb7a      bit     7,d
070b c8        ret     z

070c 11ff7f    ld      de,7fffh
070f c9        ret     

0710 19        add     hl,de
0711 d0        ret     nc

0712 21ffff    ld      hl,0ffffh
0715 c9        ret     

0716 78        ld      a,b
0717 bc        cp      h
0718 d8        ret     c

0719 2003      jr      nz,071eh         ; (+03h)
071b 79        ld      a,c
071c bd        cp      l
071d d8        ret     c

071e 69        ld      l,c
071f 60        ld      h,b
0720 c9        ret     

0721 7d        ld      a,l
0722 2f        cpl     
0723 6f        ld      l,a
0724 7c        ld      a,h
0725 2f        cpl     
0726 67        ld      h,a
0727 7b        ld      a,e
0728 2f        cpl     
0729 5f        ld      e,a
072a 7a        ld      a,d
072b 2f        cpl     
072c 57        ld      d,a
072d 2c        inc     l
072e c0        ret     nz

072f 24        inc     h
0730 c0        ret     nz

0731 13        inc     de
0732 c9        ret     

0733 09        add     hl,bc
0734 d0        ret     nc

0735 21ffff    ld      hl,0ffffh
0738 c9        ret     

0739 e9        jp      (hl)
073a fe0a      cp      0ah
073c 3003      jr      nc,0741h         ; (+03h)
073e c630      add     a,30h
0740 c9        ret     

0741 c637      add     a,37h
0743 c9        ret     

0744 78        ld      a,b
0745 b7        or      a
0746 c0        ret     nz

0747 b1        or      c
0748 c8        ret     z

0749 79        ld      a,c
074a fe25      cp      25h
074c d0        ret     nc

074d fe02      cp      02h
074f 3f        ccf     
0750 c9        ret     

0751 7c        ld      a,h
0752 b5        or      l
0753 2802      jr      z,0757h          ; (+02h)
0755 2b        dec     hl
0756 c9        ret     

0757 b3        or      e
0758 2803      jr      z,075dh          ; (+03h)
075a 2b        dec     hl
075b 1b        dec     de
075c c9        ret     

075d b2        or      d
075e c8        ret     z

075f 2b        dec     hl
0760 1b        dec     de
0761 c9        ret     

0762 37        scf     
0763 79        ld      a,c
0764 d9        exx     
0765 6f        ld      l,a
0766 110000    ld      de,0000h
0769 62        ld      h,d
076a d47b07    call    nc,077bh
076d dc7507    call    c,0775h
0770 d9        exx     
0771 7d        ld      a,l
0772 d9        exx     
0773 c9        ret     

0774 d9        exx     
0775 7a        ld      a,d
0776 b3        or      e
0777 b4        or      h
0778 b5        or      l
0779 2842      jr      z,07bdh          ; (+42h)
077b af        xor     a
077c e5        push    hl
077d d9        exx     
077e 4d        ld      c,l
077f 44        ld      b,h
0780 e1        pop     hl
0781 d5        push    de
0782 eb        ex      de,hl
0783 6f        ld      l,a
0784 67        ld      h,a
0785 d9        exx     
0786 c1        pop     bc
0787 6f        ld      l,a
0788 67        ld      h,a
0789 78        ld      a,b
078a 0620      ld      b,20h
078c d9        exx     
078d cb11      rl      c
078f cb10      rl      b
0791 d9        exx     
0792 cb11      rl      c
0794 17        rla     
0795 d9        exx     
0796 ed6a      adc     hl,hl
0798 d9        exx     
0799 ed6a      adc     hl,hl
079b d9        exx     
079c ed52      sbc     hl,de
079e d9        exx     
079f ed52      sbc     hl,de
07a1 3005      jr      nc,07a8h         ; (+05h)
07a3 d9        exx     
07a4 19        add     hl,de
07a5 d9        exx     
07a6 ed5a      adc     hl,de
07a8 3f        ccf     
07a9 10e1      djnz    078ch            ; (-1fh)
07ab d9        exx     
07ac cb11      rl      c
07ae cb10      rl      b
07b0 d9        exx     
07b1 cb11      rl      c
07b3 17        rla     
07b4 e5        push    hl
07b5 d9        exx     
07b6 d1        pop     de
07b7 c5        push    bc
07b8 d9        exx     
07b9 e1        pop     hl
07ba 59        ld      e,c
07bb 57        ld      d,a
07bc c9        ret     

07bd 1b        dec     de
07be c3a005    jp      05a0h
07c1 eb        ex      de,hl
07c2 7a        ld      a,d
07c3 b3        or      e
07c4 2832      jr      z,07f8h          ; (+32h)
07c6 14        inc     d
07c7 15        dec     d
07c8 281c      jr      z,07e6h          ; (+1ch)
07ca 7d        ld      a,l
07cb 6c        ld      l,h
07cc 2600      ld      h,00h
07ce 0608      ld      b,08h
07d0 17        rla     
07d1 ed6a      adc     hl,hl
07d3 ed52      sbc     hl,de
07d5 3001      jr      nc,07d8h         ; (+01h)
07d7 19        add     hl,de
07d8 3f        ccf     
07d9 10f5      djnz    07d0h            ; (-0bh)
07db 17        rla     
07dc 50        ld      d,b
07dd 5f        ld      e,a
07de eb        ex      de,hl
07df b7        or      a
07e0 c9        ret     

07e1 eb        ex      de,hl
07e2 1c        inc     e
07e3 1d        dec     e
07e4 2812      jr      z,07f8h          ; (+12h)
07e6 af        xor     a
07e7 57        ld      d,a
07e8 0610      ld      b,10h
07ea 29        add     hl,hl
07eb 17        rla     
07ec 3803      jr      c,07f1h          ; (+03h)
07ee bb        cp      e
07ef 3802      jr      c,07f3h          ; (+02h)
07f1 93        sub     e
07f2 2c        inc     l
07f3 10f5      djnz    07eah            ; (-0bh)
07f5 5f        ld      e,a
07f6 b7        or      a
07f7 c9        ret     

07f8 eb        ex      de,hl
07f9 c3a005    jp      05a0h
07fc cd0c0a    call    0a0ch
07ff 4d        ld      c,l
0800 44        ld      b,h
0801 c30408    jp      0804h
0804 fd2acb15  ld      iy,(15cbh)
0808 c30b08    jp      080bh
080b cd130a    call    0a13h
080e d8        ret     c

080f 21d4ff    ld      hl,0ffd4h
0812 39        add     hl,sp
0813 f9        ld      sp,hl
0814 c5        push    bc
0815 d9        exx     
0816 210000    ld      hl,0000h
0819 d9        exx     
081a 6b        ld      l,e
081b 62        ld      h,d
081c 0e25      ld      c,25h
081e cdd70d    call    0dd7h
0821 e5        push    hl
0822 b7        or      a
0823 ed52      sbc     hl,de
0825 4d        ld      c,l
0826 44        ld      b,h
0827 eb        ex      de,hl
0828 c4390d    call    nz,0d39h
082b d1        pop     de
082c dac309    jp      c,09c3h
082f 1a        ld      a,(de)
0830 b7        or      a
0831 280b      jr      z,083eh          ; (+0bh)
0833 13        inc     de
0834 1a        ld      a,(de)
0835 fe25      cp      25h
0837 201c      jr      nz,0855h         ; (+1ch)
0839 6b        ld      l,e
083a 62        ld      h,d
083b 23        inc     hl
083c 18de      jr      081ch            ; (-22h)
083e 212e00    ld      hl,002eh
0841 39        add     hl,sp
0842 f9        ld      sp,hl
0843 d9        exx     
0844 e5        push    hl
0845 d9        exx     
0846 e1        pop     hl
0847 b7        or      a
0848 c3ca06    jp      06cah
084b 2b        dec     hl
084c 40        ld      b,b
084d 2020      jr      nz,086fh         ; (+20h)
084f 23        inc     hl
0850 1030      djnz    0882h            ; (+30h)
0852 08        ex      af,af'
0853 2d        dec     l
0854 04        inc     b
0855 1b        dec     de
0856 0e00      ld      c,00h
0858 13        inc     de
0859 1a        ld      a,(de)
085a 214b08    ld      hl,084bh
085d 0605      ld      b,05h
085f be        cp      (hl)
0860 23        inc     hl
0861 2821      jr      z,0884h          ; (+21h)
0863 23        inc     hl
0864 10f9      djnz    085fh            ; (-07h)
0866 fd7105    ld      (iy+05h),c
0869 fe2a      cp      2ah
086b 201c      jr      nz,0889h         ; (+1ch)
086d e1        pop     hl
086e 13        inc     de
086f d5        push    de
0870 cd070a    call    0a07h
0873 eb        ex      de,hl
0874 cb7c      bit     7,h
0876 2807      jr      z,087fh          ; (+07h)
0878 cdc206    call    06c2h
087b fdcb05d6  set     2,(iy+05h)
087f e3        ex      (sp),hl
0880 eb        ex      de,hl
0881 e5        push    hl
0882 1812      jr      0896h            ; (+12h)
0884 7e        ld      a,(hl)
0885 b1        or      c
0886 4f        ld      c,a
0887 18cf      jr      0858h            ; (-31h)
0889 cd9a06    call    069ah
088c dac009    jp      c,09c0h
088f cb7c      bit     7,h
0891 c2c009    jp      nz,09c0h
0894 e3        ex      (sp),hl
0895 e5        push    hl
0896 210100    ld      hl,0001h
0899 1a        ld      a,(de)
089a fe2e      cp      2eh
089c 202c      jr      nz,08cah         ; (+2ch)
089e fdcb05c6  set     0,(iy+05h)
08a2 13        inc     de
08a3 1a        ld      a,(de)
08a4 fe2a      cp      2ah
08a6 2017      jr      nz,08bfh         ; (+17h)
08a8 e1        pop     hl
08a9 13        inc     de
08aa d5        push    de
08ab cd070a    call    0a07h
08ae eb        ex      de,hl
08af cb7c      bit     7,h
08b1 2807      jr      z,08bah          ; (+07h)
08b3 210100    ld      hl,0001h
08b6 fdcb0586  res     0,(iy+05h)
08ba e3        ex      (sp),hl
08bb eb        ex      de,hl
08bc e5        push    hl
08bd 180d      jr      08cch            ; (+0dh)
08bf cd9a06    call    069ah
08c2 dabf09    jp      c,09bfh
08c5 cb7c      bit     7,h
08c7 c2bf09    jp      nz,09bfh
08ca e3        ex      (sp),hl
08cb e5        push    hl
08cc cdd909    call    09d9h
08cf 1a        ld      a,(de)
08d0 13        inc     de
08d1 fe49      cp      49h
08d3 2830      jr      z,0905h          ; (+30h)
08d5 47        ld      b,a
08d6 79        ld      a,c
08d7 e630      and     30h
08d9 d610      sub     10h
08db 3019      jr      nc,08f6h         ; (+19h)
08dd 216109    ld      hl,0961h
08e0 cd4409    call    0944h
08e3 3827      jr      c,090ch          ; (+27h)
08e5 215809    ld      hl,0958h
08e8 cd4409    call    0944h
08eb 381f      jr      c,090ch          ; (+1fh)
08ed cd7905    call    0579h
08f0 213200    ld      hl,0032h
08f3 c3c609    jp      09c6h
08f6 20ed      jr      nz,08e5h         ; (-13h)
08f8 218609    ld      hl,0986h
08fb cd4409    call    0944h
08fe 30e5      jr      nc,08e5h         ; (-1bh)
0900 01ab09    ld      bc,09abh
0903 180a      jr      090fh            ; (+0ah)
0905 21bb0a    ld      hl,0abbh
0908 3e80      ld      a,80h
090a 18f4      jr      0900h            ; (-0ch)
090c 01b009    ld      bc,09b0h
090f cb6f      bit     5,a
0911 2804      jr      z,0917h          ; (+04h)
0913 fdcb05ce  set     1,(iy+05h)
0917 cb67      bit     4,a
0919 2804      jr      z,091fh          ; (+04h)
091b fdcb05a6  res     4,(iy+05h)
091f e6c0      and     0c0h
0921 fd7704    ld      (iy+04h),a
0924 e3        ex      (sp),hl
0925 e5        push    hl
0926 210f00    ld      hl,000fh
0929 39        add     hl,sp
092a 72        ld      (hl),d
092b 2b        dec     hl
092c 73        ld      (hl),e
092d 2b        dec     hl
092e d1        pop     de
092f 72        ld      (hl),d
0930 2b        dec     hl
0931 73        ld      (hl),e
0932 2b        dec     hl
0933 70        ld      (hl),b
0934 2b        dec     hl
0935 71        ld      (hl),c
0936 2b        dec     hl
0937 4d        ld      c,l
0938 44        ld      b,h
0939 210a00    ld      hl,000ah
093c 09        add     hl,bc
093d 7c        ld      a,h
093e 02        ld      (bc),a
093f 0b        dec     bc
0940 7d        ld      a,l
0941 02        ld      (bc),a
0942 eb        ex      de,hl
0943 c9        ret     

0944 7e        ld      a,(hl)
0945 23        inc     hl
0946 b7        or      a
0947 c8        ret     z

0948 b8        cp      b
0949 2805      jr      z,0950h          ; (+05h)
094b 23        inc     hl
094c 23        inc     hl
094d 23        inc     hl
094e 18f4      jr      0944h            ; (-0ch)
0950 7e        ld      a,(hl)
0951 23        inc     hl
0952 46        ld      b,(hl)
0953 23        inc     hl
0954 66        ld      h,(hl)
0955 68        ld      l,b
0956 37        scf     
0957 c9        ret     

0958 73        ld      (hl),e
0959 80        add     a,b
095a c20c63    jp      nz,630ch
095d 80        add     a,b
095e 8b        adc     a,e
095f 0a        ld      a,(bc)
0960 00        nop     
0961 64        ld      h,h
0962 d0        ret     nc

0963 b5        or      l
0964 0a        ld      a,(bc)
0965 75        ld      (hl),l
0966 90        sub     b
0967 1c        inc     e
0968 0d        dec     c
0969 78        ld      a,b
096a 00        nop     
096b 220d58    ld      (580dh),hl
096e 80        add     a,b
096f 220d6f    ld      (6f0dh),hl
0972 a0        and     b
0973 a2        and     d
0974 0c        inc     c
0975 6e        ld      l,(hl)
0976 80        add     a,b
0977 64        ld      h,h
0978 0b        dec     bc
0979 69        ld      l,c
097a d0        ret     nc

097b b5        or      l
097c 0a        ld      a,(bc)
097d 70        ld      (hl),b
097e 80        add     a,b
097f a8        xor     b
0980 0c        inc     c
0981 42        ld      b,d
0982 90        sub     b
0983 85        add     a,l
0984 0a        ld      a,(bc)
0985 00        nop     
0986 64        ld      h,h
0987 d0        ret     nc

0988 1d        dec     e
0989 0b        dec     bc
098a 75        ld      (hl),l
098b 90        sub     b
098c 58        ld      e,b
098d 0b        dec     bc
098e 78        ld      a,b
098f 00        nop     
0990 5e        ld      e,(hl)
0991 0b        dec     bc
0992 58        ld      e,b
0993 80        add     a,b
0994 5e        ld      e,(hl)
0995 0b        dec     bc
0996 6f        ld      l,a
0997 a0        and     b
0998 380b      jr      c,09a5h          ; (+0bh)
099a 6e        ld      l,(hl)
099b 80        add     a,b
099c 23        inc     hl
099d 0b        dec     bc
099e 69        ld      l,c
099f d0        ret     nc

09a0 1d        dec     e
09a1 0b        dec     bc
09a2 70        ld      (hl),b
09a3 80        add     a,b
09a4 3e0b      ld      a,0bh
09a6 42        ld      b,d
09a7 90        sub     b
09a8 17        rla     
09a9 0b        dec     bc
09aa 00        nop     
09ab c1        pop     bc
09ac 03        inc     bc
09ad 03        inc     bc
09ae 1801      jr      09b1h            ; (+01h)
09b0 c1        pop     bc
09b1 03        inc     bc
09b2 03        inc     bc
09b3 d1        pop     de
09b4 381e      jr      c,09d4h          ; (+1eh)
09b6 21f8ff    ld      hl,0fff8h
09b9 39        add     hl,sp
09ba f9        ld      sp,hl
09bb c5        push    bc
09bc c31a08    jp      081ah
09bf c1        pop     bc
09c0 cd8505    call    0585h
09c3 212e00    ld      hl,002eh
09c6 39        add     hl,sp
09c7 f9        ld      sp,hl
09c8 d9        exx     
09c9 e5        push    hl
09ca d9        exx     
09cb e1        pop     hl
09cc cdca06    call    06cah
09cf 23        inc     hl
09d0 37        scf     
09d1 c3c206    jp      06c2h
09d4 212400    ld      hl,0024h
09d7 18ed      jr      09c6h            ; (-13h)
09d9 21fb09    ld      hl,09fbh
09dc 0606      ld      b,06h
09de 1a        ld      a,(de)
09df be        cp      (hl)
09e0 23        inc     hl
09e1 2806      jr      z,09e9h          ; (+06h)
09e3 23        inc     hl
09e4 10f9      djnz    09dfh            ; (-07h)
09e6 0e00      ld      c,00h
09e8 c9        ret     

09e9 4e        ld      c,(hl)
09ea 13        inc     de
09eb fe6c      cp      6ch
09ed 2803      jr      z,09f2h          ; (+03h)
09ef fe68      cp      68h
09f1 c0        ret     nz

09f2 47        ld      b,a
09f3 1a        ld      a,(de)
09f4 b8        cp      b
09f5 c0        ret     nz

09f6 13        inc     de
09f7 79        ld      a,c
09f8 87        add     a,a
09f9 4f        ld      c,a
09fa c9        ret     

09fb 6c        ld      l,h
09fc 104c      djnz    0a4ah            ; (+4ch)
09fe 016802    ld      bc,0268h
0a01 6a        ld      l,d
0a02 08        ex      af,af'
0a03 74        ld      (hl),h
0a04 40        ld      b,b
0a05 7a        ld      a,d
0a06 80        add     a,b
0a07 5e        ld      e,(hl)
0a08 23        inc     hl
0a09 56        ld      d,(hl)
0a0a 23        inc     hl
0a0b c9        ret     

0a0c 210400    ld      hl,0004h
0a0f 39        add     hl,sp
0a10 c3070a    jp      0a07h
0a13 fd7e03    ld      a,(iy+03h)
0a16 e688      and     88h
0a18 fe80      cp      80h
0a1a 2014      jr      nz,0a30h         ; (+14h)
0a1c fdcb044e  bit     1,(iy+04h)
0a20 c8        ret     z

0a21 c5        push    bc
0a22 d5        push    de
0a23 e5        push    hl
0a24 cd3f0a    call    0a3fh
0a27 e1        pop     hl
0a28 d1        pop     de
0a29 c1        pop     bc
0a2a fd360400  ld      (iy+04h),00h
0a2e b7        or      a
0a2f c9        ret     

0a30 e608      and     08h
0a32 c26805    jp      nz,0568h
0a35 c39105    jp      0591h
0a38 fd7d      ld      a,iyl
0a3a fdb4      or      iyh
0a3c ca740a    jp      z,0a74h
0a3f fdcb035e  bit     3,(iy+03h)
0a43 c26805    jp      nz,0568h
0a46 fdcb044e  bit     1,(iy+04h)
0a4a 281d      jr      z,0a69h          ; (+1dh)
0a4c fdcb0446  bit     0,(iy+04h)
0a50 2817      jr      z,0a69h          ; (+17h)
0a52 fdcb0486  res     0,(iy+04h)
0a56 fdcb03a6  res     4,(iy+03h)
0a5a 0e01      ld      c,01h
0a5c 21ffff    ld      hl,0ffffh
0a5f 5d        ld      e,l
0a60 54        ld      d,h
0a61 d9        exx     
0a62 0e01      ld      c,01h
0a64 3e06      ld      a,06h
0a66 cd7506    call    0675h
0a69 3e08      ld      a,08h
0a6b cd7506    call    0675h
0a6e d29905    jp      nc,0599h
0a71 c36805    jp      0568h
0a74 21ed15    ld      hl,15edh
0a77 cdee02    call    02eeh
0a7a e5        push    hl
0a7b fde1      pop     iy
0a7d c8        ret     z

0a7e e5        push    hl
0a7f cd3f0a    call    0a3fh
0a82 e1        pop     hl
0a83 18f2      jr      0a77h            ; (-0eh)
0a85 010200    ld      bc,0002h
0a88 c38b0b    jp      0b8bh
0a8b d1        pop     de
0a8c cdb00a    call    0ab0h
0a8f fdcb0556  bit     2,(iy+05h)
0a93 200d      jr      nz,0aa2h         ; (+0dh)
0a95 e3        ex      (sp),hl
0a96 cda90a    call    0aa9h
0a99 d1        pop     de
0a9a e1        pop     hl
0a9b d8        ret     c

0a9c 010100    ld      bc,0001h
0a9f c3320d    jp      0d32h
0aa2 5d        ld      e,l
0aa3 cd9c0a    call    0a9ch
0aa6 e1        pop     hl
0aa7 d1        pop     de
0aa8 d8        ret     c

0aa9 7c        ld      a,h
0aaa b5        or      l
0aab c8        ret     z

0aac 2b        dec     hl
0aad c32e0d    jp      0d2eh
0ab0 7e        ld      a,(hl)
0ab1 23        inc     hl
0ab2 66        ld      h,(hl)
0ab3 6f        ld      l,a
0ab4 c9        ret     

0ab5 010a00    ld      bc,000ah
0ab8 c3770b    jp      0b77h
0abb 4b        ld      c,e
0abc 42        ld      b,d
0abd cd070a    call    0a07h
0ac0 cdb00a    call    0ab0h
0ac3 d5        push    de
0ac4 59        ld      e,c
0ac5 50        ld      d,b
0ac6 e5        push    hl
0ac7 6c        ld      l,h
0ac8 2600      ld      h,00h
0aca cd0e0b    call    0b0eh
0acd e1        pop     hl
0ace 2600      ld      h,00h
0ad0 cd0e0b    call    0b0eh
0ad3 e1        pop     hl
0ad4 e5        push    hl
0ad5 6c        ld      l,h
0ad6 2600      ld      h,00h
0ad8 cd0e0b    call    0b0eh
0adb e1        pop     hl
0adc 2600      ld      h,00h
0ade cd0e0b    call    0b0eh
0ae1 1b        dec     de
0ae2 eb        ex      de,hl
0ae3 c1        pop     bc
0ae4 d1        pop     de
0ae5 c1        pop     bc
0ae6 ed42      sbc     hl,bc
0ae8 eb        ex      de,hl
0ae9 ed52      sbc     hl,de
0aeb 3003      jr      nc,0af0h         ; (+03h)
0aed 210000    ld      hl,0000h
0af0 fdcb0556  bit     2,(iy+05h)
0af4 200b      jr      nz,0b01h         ; (+0bh)
0af6 c5        push    bc
0af7 d5        push    de
0af8 cd2e0d    call    0d2eh
0afb c1        pop     bc
0afc e1        pop     hl
0afd d2390d    jp      nc,0d39h
0b00 c9        ret     

0b01 e5        push    hl
0b02 69        ld      l,c
0b03 60        ld      h,b
0b04 4b        ld      c,e
0b05 42        ld      b,d
0b06 cd390d    call    0d39h
0b09 c1        pop     bc
0b0a d2300d    jp      nc,0d30h
0b0d c9        ret     

0b0e b7        or      a
0b0f cdd106    call    06d1h
0b12 3e2e      ld      a,2eh
0b14 12        ld      (de),a
0b15 13        inc     de
0b16 c9        ret     

0b17 010200    ld      bc,0002h
0b1a c3790c    jp      0c79h
0b1d 010a00    ld      bc,000ah
0b20 c35f0c    jp      0c5fh
0b23 d1        pop     de
0b24 d1        pop     de
0b25 d1        pop     de
0b26 cdb00a    call    0ab0h
0b29 b4        or      h
0b2a c8        ret     z

0b2b d9        exx     
0b2c e5        push    hl
0b2d d9        exx     
0b2e d1        pop     de
0b2f af        xor     a
0b30 73        ld      (hl),e
0b31 23        inc     hl
0b32 72        ld      (hl),d
0b33 23        inc     hl
0b34 77        ld      (hl),a
0b35 23        inc     hl
0b36 77        ld      (hl),a
0b37 c9        ret     

0b38 010800    ld      bc,0008h
0b3b c3790c    jp      0c79h
0b3e fd7e05    ld      a,(iy+05h)
0b41 cb3f      srl     a
0b43 3805      jr      c,0b4ah          ; (+05h)
0b45 c1        pop     bc
0b46 010600    ld      bc,0006h
0b49 c5        push    bc
0b4a 37        scf     
0b4b 8f        adc     a,a
0b4c e60d      and     0dh
0b4e fd7705    ld      (iy+05h),a
0b51 fd360480  ld      (iy+04h),80h
0b55 c35e0b    jp      0b5eh
0b58 010a00    ld      bc,000ah
0b5b c3790c    jp      0c79h
0b5e 011000    ld      bc,0010h
0b61 c3790c    jp      0c79h
0b64 d1        pop     de
0b65 d1        pop     de
0b66 d1        pop     de
0b67 cdb00a    call    0ab0h
0b6a b4        or      h
0b6b c8        ret     z

0b6c d9        exx     
0b6d e5        push    hl
0b6e d9        exx     
0b6f d1        pop     de
0b70 cd0907    call    0709h
0b73 73        ld      (hl),e
0b74 23        inc     hl
0b75 72        ld      (hl),d
0b76 c9        ret     

0b77 cdb00a    call    0ab0h
0b7a b4        or      h
0b7b ca9f0b    jp      z,0b9fh
0b7e cb7c      bit     7,h
0b80 2810      jr      z,0b92h          ; (+10h)
0b82 fdcb05fe  set     7,(iy+05h)
0b86 cdc206    call    06c2h
0b89 1807      jr      0b92h            ; (+07h)
0b8b cdb00a    call    0ab0h
0b8e b4        or      h
0b8f ca9f0b    jp      z,0b9fh
0b92 d5        push    de
0b93 fde5      push    iy
0b95 79        ld      a,c
0b96 cdb70d    call    0db7h
0b99 fde1      pop     iy
0b9b d1        pop     de
0b9c c3ac0b    jp      0bach
0b9f 4d        ld      c,l
0ba0 44        ld      b,h
0ba1 d1        pop     de
0ba2 e1        pop     hl
0ba3 ed52      sbc     hl,de
0ba5 3038      jr      nc,0bdfh         ; (+38h)
0ba7 210000    ld      hl,0000h
0baa 1833      jr      0bdfh            ; (+33h)
0bac b7        or      a
0bad ed52      sbc     hl,de
0baf 4d        ld      c,l
0bb0 44        ld      b,h
0bb1 e1        pop     hl
0bb2 5d        ld      e,l
0bb3 54        ld      d,h
0bb4 cd1607    call    0716h
0bb7 eb        ex      de,hl
0bb8 b7        or      a
0bb9 ed42      sbc     hl,bc
0bbb 3003      jr      nc,0bc0h         ; (+03h)
0bbd 210000    ld      hl,0000h
0bc0 fd7e05    ld      a,(iy+05h)
0bc3 e6e0      and     0e0h
0bc5 2801      jr      z,0bc8h          ; (+01h)
0bc7 13        inc     de
0bc8 fdcb0566  bit     4,(iy+05h)
0bcc 2808      jr      z,0bd6h          ; (+08h)
0bce 13        inc     de
0bcf fdcb054e  bit     1,(iy+05h)
0bd3 2001      jr      nz,0bd6h         ; (+01h)
0bd5 13        inc     de
0bd6 e3        ex      (sp),hl
0bd7 ed52      sbc     hl,de
0bd9 3003      jr      nc,0bdeh         ; (+03h)
0bdb 210000    ld      hl,0000h
0bde d1        pop     de
0bdf fd7e05    ld      a,(iy+05h)
0be2 e60d      and     0dh
0be4 fe08      cp      08h
0be6 2007      jr      nz,0befh         ; (+07h)
0be8 cd1007    call    0710h
0beb eb        ex      de,hl
0bec 210000    ld      hl,0000h
0bef d5        push    de
0bf0 fdcb0556  bit     2,(iy+05h)
0bf4 205f      jr      nz,0c55h         ; (+5fh)
0bf6 c5        push    bc
0bf7 cd2e0d    call    0d2eh
0bfa c1        pop     bc
0bfb d1        pop     de
0bfc e1        pop     hl
0bfd d8        ret     c

0bfe 78        ld      a,b
0bff b1        or      c
0c00 284f      jr      z,0c51h          ; (+4fh)
0c02 2b        dec     hl
0c03 2b        dec     hl
0c04 2b        dec     hl
0c05 c5        push    bc
0c06 d5        push    de
0c07 5d        ld      e,l
0c08 54        ld      d,h
0c09 fdcb0476  bit     6,(iy+04h)
0c0d c4050d    call    nz,0d05h
0c10 fdcb0566  bit     4,(iy+05h)
0c14 2814      jr      z,0c2ah          ; (+14h)
0c16 3630      ld      (hl),30h
0c18 fdcb054e  bit     1,(iy+05h)
0c1c 200b      jr      nz,0c29h         ; (+0bh)
0c1e 23        inc     hl
0c1f 3678      ld      (hl),78h
0c21 fdcb047e  bit     7,(iy+04h)
0c25 2802      jr      z,0c29h          ; (+02h)
0c27 3658      ld      (hl),58h
0c29 23        inc     hl
0c2a b7        or      a
0c2b ed52      sbc     hl,de
0c2d 4d        ld      c,l
0c2e 44        ld      b,h
0c2f eb        ex      de,hl
0c30 e5        push    hl
0c31 cd390d    call    0d39h
0c34 d1        pop     de
0c35 3805      jr      c,0c3ch          ; (+05h)
0c37 c1        pop     bc
0c38 d5        push    de
0c39 cd2a0d    call    0d2ah
0c3c e1        pop     hl
0c3d c1        pop     bc
0c3e d8        ret     c

0c3f 23        inc     hl
0c40 23        inc     hl
0c41 23        inc     hl
0c42 fdcb047e  bit     7,(iy+04h)
0c46 c2390d    jp      nz,0d39h
0c49 c5        push    bc
0c4a cdf10d    call    0df1h
0c4d c1        pop     bc
0c4e c3390d    jp      0d39h
0c51 eb        ex      de,hl
0c52 c3280d    jp      0d28h
0c55 d1        pop     de
0c56 e3        ex      (sp),hl
0c57 cdfe0b    call    0bfeh
0c5a c1        pop     bc
0c5b d2300d    jp      nc,0d30h
0c5e c9        ret     

0c5f d5        push    de
0c60 cd070a    call    0a07h
0c63 cdb00a    call    0ab0h
0c66 b4        or      h
0c67 b3        or      e
0c68 b2        or      d
0c69 2833      jr      z,0c9eh          ; (+33h)
0c6b eb        ex      de,hl
0c6c cb7a      bit     7,d
0c6e 2816      jr      z,0c86h          ; (+16h)
0c70 fdcb05fe  set     7,(iy+05h)
0c74 cd2107    call    0721h
0c77 180d      jr      0c86h            ; (+0dh)
0c79 d5        push    de
0c7a cd070a    call    0a07h
0c7d cdb00a    call    0ab0h
0c80 b4        or      h
0c81 b3        or      e
0c82 b2        or      d
0c83 2819      jr      z,0c9eh          ; (+19h)
0c85 eb        ex      de,hl
0c86 fde3      ex      (sp),iy
0c88 d9        exx     
0c89 c5        push    bc
0c8a d5        push    de
0c8b e5        push    hl
0c8c d9        exx     
0c8d 79        ld      a,c
0c8e cd900d    call    0d90h
0c91 d9        exx     
0c92 e1        pop     hl
0c93 d1        pop     de
0c94 c1        pop     bc
0c95 d9        exx     
0c96 fde5      push    iy
0c98 d1        pop     de
0c99 fde1      pop     iy
0c9b c3ac0b    jp      0bach
0c9e d1        pop     de
0c9f c39f0b    jp      0b9fh
0ca2 010800    ld      bc,0008h
0ca5 c38b0b    jp      0b8bh
0ca8 fd7e05    ld      a,(iy+05h)
0cab cb3f      srl     a
0cad 3805      jr      c,0cb4h          ; (+05h)
0caf c1        pop     bc
0cb0 010400    ld      bc,0004h
0cb3 c5        push    bc
0cb4 37        scf     
0cb5 8f        adc     a,a
0cb6 e60d      and     0dh
0cb8 fd7705    ld      (iy+05h),a
0cbb fd360480  ld      (iy+04h),80h
0cbf c3220d    jp      0d22h
0cc2 cdb00a    call    0ab0h
0cc5 c1        pop     bc
0cc6 b4        or      h
0cc7 2003      jr      nz,0ccch         ; (+03h)
0cc9 21fe0c    ld      hl,0cfeh
0ccc fdcb0546  bit     0,(iy+05h)
0cd0 2003      jr      nz,0cd5h         ; (+03h)
0cd2 01ffff    ld      bc,0ffffh
0cd5 cde10d    call    0de1h
0cd8 eb        ex      de,hl
0cd9 e3        ex      (sp),hl
0cda ed52      sbc     hl,de
0cdc 3003      jr      nc,0ce1h         ; (+03h)
0cde 210000    ld      hl,0000h
0ce1 fdcb0556  bit     2,(iy+05h)
0ce5 200b      jr      nz,0cf2h         ; (+0bh)
0ce7 d5        push    de
0ce8 cd2e0d    call    0d2eh
0ceb c1        pop     bc
0cec e1        pop     hl
0ced d1        pop     de
0cee d2390d    jp      nc,0d39h
0cf1 c9        ret     

0cf2 e3        ex      (sp),hl
0cf3 4b        ld      c,e
0cf4 42        ld      b,d
0cf5 cd390d    call    0d39h
0cf8 c1        pop     bc
0cf9 d1        pop     de
0cfa d2300d    jp      nc,0d30h
0cfd c9        ret     

0cfe 3c        inc     a
0cff 6e        ld      l,(hl)
0d00 75        ld      (hl),l
0d01 6c        ld      l,h
0d02 6c        ld      l,h
0d03 3e00      ld      a,00h
0d05 fd7e05    ld      a,(iy+05h)
0d08 87        add     a,a
0d09 3004      jr      nc,0d0fh         ; (+04h)
0d0b 362d      ld      (hl),2dh
0d0d 23        inc     hl
0d0e c9        ret     

0d0f 87        add     a,a
0d10 3004      jr      nc,0d16h         ; (+04h)
0d12 362b      ld      (hl),2bh
0d14 23        inc     hl
0d15 c9        ret     

0d16 87        add     a,a
0d17 d0        ret     nc

0d18 3620      ld      (hl),20h
0d1a 23        inc     hl
0d1b c9        ret     

0d1c 010a00    ld      bc,000ah
0d1f c38b0b    jp      0b8bh
0d22 011000    ld      bc,0010h
0d25 c38b0b    jp      0b8bh
0d28 4d        ld      c,l
0d29 44        ld      b,h
0d2a 1e30      ld      e,30h
0d2c 1804      jr      0d32h            ; (+04h)
0d2e 4d        ld      c,l
0d2f 44        ld      b,h
0d30 1e20      ld      e,20h
0d32 78        ld      a,b
0d33 b1        or      c
0d34 c8        ret     z

0d35 3e01      ld      a,01h
0d37 1805      jr      0d3eh            ; (+05h)
0d39 78        ld      a,b
0d3a b1        or      c
0d3b c8        ret     z

0d3c 3e02      ld      a,02h
0d3e c5        push    bc
0d3f d9        exx     
0d40 e3        ex      (sp),hl
0d41 cd7506    call    0675h
0d44 e5        push    hl
0d45 d9        exx     
0d46 e1        pop     hl
0d47 c1        pop     bc
0d48 3809      jr      c,0d53h          ; (+09h)
0d4a cd3307    call    0733h
0d4d b7        or      a
0d4e e5        push    hl
0d4f d9        exx     
0d50 e1        pop     hl
0d51 d9        exx     
0d52 c9        ret     

0d53 fdcb03de  set     3,(iy+03h)
0d57 cd3307    call    0733h
0d5a 37        scf     
0d5b 18f1      jr      0d4eh            ; (-0fh)
0d5d 4e        ld      c,(hl)
0d5e 23        inc     hl
0d5f 46        ld      b,(hl)
0d60 23        inc     hl
0d61 c9        ret     

0d62 11f915    ld      de,15f9h
0d65 1a        ld      a,(de)
0d66 b7        or      a
0d67 ca2a02    jp      z,022ah
0d6a e5        push    hl
0d6b 6f        ld      l,a
0d6c 2600      ld      h,00h
0d6e 29        add     hl,hl
0d6f 19        add     hl,de
0d70 47        ld      b,a
0d71 56        ld      d,(hl)
0d72 2b        dec     hl
0d73 5e        ld      e,(hl)
0d74 2b        dec     hl
0d75 c5        push    bc
0d76 e5        push    hl
0d77 eb        ex      de,hl
0d78 cd3907    call    0739h
0d7b e1        pop     hl
0d7c c1        pop     bc
0d7d 10f2      djnz    0d71h            ; (-0eh)
0d7f e1        pop     hl
0d80 c32a02    jp      022ah
0d83 fd7c      ld      a,iyh
0d85 fdb5      or      iyl
0d87 ca7105    jp      z,0571h
0d8a cd4407    call    0744h
0d8d d27905    jp      nc,0579h
0d90 af        xor     a
0d91 f5        push    af
0d92 c5        push    bc
0d93 cd6307    call    0763h
0d96 c1        pop     bc
0d97 cd3a07    call    073ah
0d9a 37        scf     
0d9b f5        push    af
0d9c 7a        ld      a,d
0d9d b3        or      e
0d9e b4        or      h
0d9f b5        or      l
0da0 20f0      jr      nz,0d92h         ; (-10h)
0da2 fde5      push    iy
0da4 e1        pop     hl
0da5 f1        pop     af
0da6 77        ld      (hl),a
0da7 23        inc     hl
0da8 38fb      jr      c,0da5h          ; (-05h)
0daa 2b        dec     hl
0dab c9        ret     

0dac 7a        ld      a,d
0dad b3        or      e
0dae ca7105    jp      z,0571h
0db1 cd4407    call    0744h
0db4 d27905    jp      nc,0579h
0db7 d5        push    de
0db8 fde1      pop     iy
0dba 59        ld      e,c
0dbb 50        ld      d,b
0dbc af        xor     a
0dbd f5        push    af
0dbe d5        push    de
0dbf cde607    call    07e6h
0dc2 7b        ld      a,e
0dc3 d1        pop     de
0dc4 cd3a07    call    073ah
0dc7 37        scf     
0dc8 f5        push    af
0dc9 7c        ld      a,h
0dca b5        or      l
0dcb 20f1      jr      nz,0dbeh         ; (-0fh)
0dcd fde5      push    iy
0dcf e1        pop     hl
0dd0 f1        pop     af
0dd1 77        ld      (hl),a
0dd2 23        inc     hl
0dd3 38fb      jr      c,0dd0h          ; (-05h)
0dd5 2b        dec     hl
0dd6 c9        ret     

0dd7 7e        ld      a,(hl)
0dd8 b9        cp      c
0dd9 c8        ret     z

0dda 23        inc     hl
0ddb b7        or      a
0ddc 20f9      jr      nz,0dd7h         ; (-07h)
0dde 2b        dec     hl
0ddf 37        scf     
0de0 c9        ret     

0de1 5d        ld      e,l
0de2 54        ld      d,h
0de3 78        ld      a,b
0de4 b1        or      c
0de5 ca9905    jp      z,0599h
0de8 af        xor     a
0de9 edb1      cpir    
0deb 2001      jr      nz,0deeh         ; (+01h)
0ded 37        scf     
0dee ed52      sbc     hl,de
0df0 c9        ret     

0df1 78        ld      a,b
0df2 b1        or      c
0df3 c8        ret     z

0df4 e5        push    hl
0df5 7e        ld      a,(hl)
0df6 cdb503    call    03b5h
0df9 77        ld      (hl),a
0dfa eda1      cpi     
0dfc eaf50d    jp      pe,0df5h
0dff e1        pop     hl
0e00 c9        ret     

0e01 e1        pop     hl
0e02 d1        pop     de
0e03 e3        ex      (sp),hl
0e04 c33c0e    jp      0e3ch
0e07 e1        pop     hl
0e08 d1        pop     de
0e09 e3        ex      (sp),hl
0e0a c3240e    jp      0e24h
0e0d f1        pop     af
0e0e d1        pop     de
0e0f e1        pop     hl
0e10 c1        pop     bc
0e11 f5        push    af
0e12 c3780e    jp      0e78h
0e15 f1        pop     af
0e16 d1        pop     de
0e17 e1        pop     hl
0e18 c1        pop     bc
0e19 f5        push    af
0e1a c3580e    jp      0e58h
0e1d f1        pop     af
0e1e e1        pop     hl
0e1f c1        pop     bc
0e20 f5        push    af
0e21 c3e10d    jp      0de1h
0e24 7e        ld      a,(hl)
0e25 cdb503    call    03b5h
0e28 4f        ld      c,a
0e29 1a        ld      a,(de)
0e2a cdb503    call    03b5h
0e2d b9        cp      c
0e2e 2009      jr      nz,0e39h         ; (+09h)
0e30 13        inc     de
0e31 23        inc     hl
0e32 b7        or      a
0e33 20ef      jr      nz,0e24h         ; (-11h)
0e35 1b        dec     de
0e36 6f        ld      l,a
0e37 67        ld      h,a
0e38 c9        ret     

0e39 91        sub     c
0e3a 67        ld      h,a
0e3b c9        ret     

0e3c 1a        ld      a,(de)
0e3d eda1      cpi     
0e3f 2008      jr      nz,0e49h         ; (+08h)
0e41 13        inc     de
0e42 b7        or      a
0e43 20f7      jr      nz,0e3ch         ; (-09h)
0e45 1b        dec     de
0e46 6f        ld      l,a
0e47 67        ld      h,a
0e48 c9        ret     

0e49 2b        dec     hl
0e4a 96        sub     (hl)
0e4b 67        ld      h,a
0e4c c9        ret     

0e4d af        xor     a
0e4e 4f        ld      c,a
0e4f 47        ld      b,a
0e50 edb1      cpir    
0e52 21ffff    ld      hl,0ffffh
0e55 ed42      sbc     hl,bc
0e57 c9        ret     

0e58 78        ld      a,b
0e59 b1        or      c
0e5a 2815      jr      z,0e71h          ; (+15h)
0e5c 7e        ld      a,(hl)
0e5d cdb503    call    03b5h
0e60 fd6f      ld      iyl,a
0e62 1a        ld      a,(de)
0e63 cdb503    call    03b5h
0e66 fdbd      cp      iyl
0e68 200a      jr      nz,0e74h         ; (+0ah)
0e6a 13        inc     de
0e6b 23        inc     hl
0e6c 0b        dec     bc
0e6d b7        or      a
0e6e 20e8      jr      nz,0e58h         ; (-18h)
0e70 1b        dec     de
0e71 6f        ld      l,a
0e72 67        ld      h,a
0e73 c9        ret     

0e74 fd95      sub     iyl
0e76 67        ld      h,a
0e77 c9        ret     

0e78 78        ld      a,b
0e79 b1        or      c
0e7a 280d      jr      z,0e89h          ; (+0dh)
0e7c 1a        ld      a,(de)
0e7d eda1      cpi     
0e7f 200c      jr      nz,0e8dh         ; (+0ch)
0e81 e2890e    jp      po,0e89h
0e84 13        inc     de
0e85 b7        or      a
0e86 20f4      jr      nz,0e7ch         ; (-0ch)
0e88 1b        dec     de
0e89 210000    ld      hl,0000h
0e8c c9        ret     

0e8d 2b        dec     hl
0e8e 96        sub     (hl)
0e8f 67        ld      h,a
0e90 c9        ret     

0e91 79        ld      a,c
0e92 e6f8      and     0f8h
0e94 2015      jr      nz,0eabh         ; (+15h)
0e96 79        ld      a,c
0e97 e607      and     07h
0e99 2810      jr      z,0eabh          ; (+10h)
0e9b af        xor     a
0e9c cd8d06    call    068dh
0e9f 2b        dec     hl
0ea0 2b        dec     hl
0ea1 2b        dec     hl
0ea2 36fe      ld      (hl),0feh
0ea4 2b        dec     hl
0ea5 2b        dec     hl
0ea6 71        ld      (hl),c
0ea7 210000    ld      hl,0000h
0eaa c9        ret     

0eab 210100    ld      hl,0001h
0eae 37        scf     
0eaf c9        ret     

0eb0 e1        pop     hl
0eb1 d9        exx     
0eb2 dde1      pop     ix
0eb4 fde1      pop     iy
0eb6 e1        pop     hl
0eb7 d1        pop     de
0eb8 c1        pop     bc
0eb9 f1        pop     af
0eba 08        ex      af,af'
0ebb d9        exx     
0ebc d1        pop     de
0ebd c1        pop     bc
0ebe f1        pop     af
0ebf e3        ex      (sp),hl
0ec0 c9        ret     

0ec1 e3        ex      (sp),hl
0ec2 f5        push    af
0ec3 c5        push    bc
0ec4 d5        push    de
0ec5 d9        exx     
0ec6 08        ex      af,af'
0ec7 f5        push    af
0ec8 c5        push    bc
0ec9 d5        push    de
0eca e5        push    hl
0ecb fde5      push    iy
0ecd dde5      push    ix
0ecf d9        exx     
0ed0 e9        jp      (hl)
0ed1 211b15    ld      hl,151bh
0ed4 e5        push    hl
0ed5 cdfc07    call    07fch
0ed8 f1        pop     af
0ed9 c9        ret     

0eda dde5      push    ix
0edc dd210000  ld      ix,0000h
0ee0 dd39      add     ix,sp
0ee2 210300    ld      hl,0003h
0ee5 e5        push    hl
0ee6 21f415    ld      hl,15f4h
0ee9 4e        ld      c,(hl)
0eea 23        inc     hl
0eeb 46        ld      b,(hl)
0eec c5        push    bc
0eed dd6e04    ld      l,(ix+04h)
0ef0 dd6605    ld      h,(ix+05h)
0ef3 e5        push    hl
0ef4 cdd713    call    13d7h
0ef7 f1        pop     af
0ef8 f1        pop     af
0ef9 f1        pop     af
0efa 4d        ld      c,l
0efb 7c        ld      a,h
0efc b1        or      c
0efd 2008      jr      nz,0f07h         ; (+08h)
0eff 212215    ld      hl,1522h
0f02 6e        ld      l,(hl)
0f03 2600      ld      h,00h
0f05 1803      jr      0f0ah            ; (+03h)
0f07 210000    ld      hl,0000h
0f0a dde1      pop     ix
0f0c c9        ret     

0f0d dde5      push    ix
0f0f dd210000  ld      ix,0000h
0f13 dd39      add     ix,sp
0f15 dd7e05    ld      a,(ix+05h)
0f18 ddb604    or      (ix+04h)
0f1b 2009      jr      nz,0f26h         ; (+09h)
0f1d 2e10      ld      l,10h
0f1f cd1512    call    1215h
0f22 2e00      ld      l,00h
0f24 1832      jr      0f58h            ; (+32h)
0f26 dd4e04    ld      c,(ix+04h)
0f29 dd4605    ld      b,(ix+05h)
0f2c 03        inc     bc
0f2d 03        inc     bc
0f2e dd7e0a    ld      a,(ix+0ah)
0f31 ddb609    or      (ix+09h)
0f34 2007      jr      nz,0f3dh         ; (+07h)
0f36 3e03      ld      a,03h
0f38 02        ld      (bc),a
0f39 2e10      ld      l,10h
0f3b 181b      jr      0f58h            ; (+1bh)
0f3d dd5e09    ld      e,(ix+09h)
0f40 dd560a    ld      d,(ix+0ah)
0f43 dd7e08    ld      a,(ix+08h)
0f46 12        ld      (de),a
0f47 dd7e09    ld      a,(ix+09h)
0f4a 21ff15    ld      hl,15ffh
0f4d 77        ld      (hl),a
0f4e dd7e0a    ld      a,(ix+0ah)
0f51 23        inc     hl
0f52 77        ld      (hl),a
0f53 3e02      ld      a,02h
0f55 02        ld      (bc),a
0f56 2e00      ld      l,00h
0f58 dde1      pop     ix
0f5a c9        ret     

0f5b dde5      push    ix
0f5d dd210000  ld      ix,0000h
0f61 dd39      add     ix,sp
0f63 21f6ff    ld      hl,0fff6h
0f66 39        add     hl,sp
0f67 f9        ld      sp,hl
0f68 dd4e04    ld      c,(ix+04h)
0f6b dd4605    ld      b,(ix+05h)
0f6e 69        ld      l,c
0f6f 60        ld      h,b
0f70 3603      ld      (hl),03h
0f72 23        inc     hl
0f73 3600      ld      (hl),00h
0f75 78        ld      a,b
0f76 b1        or      c
0f77 200b      jr      nz,0f84h         ; (+0bh)
0f79 2e10      ld      l,10h
0f7b cd1512    call    1215h
0f7e 210000    ld      hl,0000h
0f81 c38110    jp      1081h
0f84 03        inc     bc
0f85 03        inc     bc
0f86 dd7e07    ld      a,(ix+07h)
0f89 ddb606    or      (ix+06h)
0f8c 2010      jr      nz,0f9eh         ; (+10h)
0f8e c5        push    bc
0f8f 2e10      ld      l,10h
0f91 cd1512    call    1215h
0f94 c1        pop     bc
0f95 3e03      ld      a,03h
0f97 02        ld      (bc),a
0f98 210000    ld      hl,0000h
0f9b c38110    jp      1081h
0f9e dd7e09    ld      a,(ix+09h)
0fa1 ddb608    or      (ix+08h)
0fa4 2010      jr      nz,0fb6h         ; (+10h)
0fa6 c5        push    bc
0fa7 2e13      ld      l,13h
0fa9 cd1512    call    1215h
0fac c1        pop     bc
0fad 3e03      ld      a,03h
0faf 02        ld      (bc),a
0fb0 210000    ld      hl,0000h
0fb3 c38110    jp      1081h
0fb6 dd7e0b    ld      a,(ix+0bh)
0fb9 ddb60a    or      (ix+0ah)
0fbc 2010      jr      nz,0fceh         ; (+10h)
0fbe c5        push    bc
0fbf 2e14      ld      l,14h
0fc1 cd1512    call    1215h
0fc4 c1        pop     bc
0fc5 3e03      ld      a,03h
0fc7 02        ld      (bc),a
0fc8 210000    ld      hl,0000h
0fcb c38110    jp      1081h
0fce dd7e06    ld      a,(ix+06h)
0fd1 dd77fc    ld      (ix-04h),a
0fd4 dd7e07    ld      a,(ix+07h)
0fd7 dd77fd    ld      (ix-03h),a
0fda dd6efc    ld      l,(ix-04h)
0fdd dd66fd    ld      h,(ix-03h)
0fe0 5e        ld      e,(hl)
0fe1 cb4b      bit     1,e
0fe3 2010      jr      nz,0ff5h         ; (+10h)
0fe5 c5        push    bc
0fe6 2e18      ld      l,18h
0fe8 cd1512    call    1215h
0feb c1        pop     bc
0fec 3e03      ld      a,03h
0fee 02        ld      (bc),a
0fef 210000    ld      hl,0000h
0ff2 c38110    jp      1081h
0ff5 dd7e06    ld      a,(ix+06h)
0ff8 dd77f6    ld      (ix-0ah),a
0ffb dd7e07    ld      a,(ix+07h)
0ffe dd77f7    ld      (ix-09h),a
1001 1e00      ld      e,00h
1003 dd73fe    ld      (ix-02h),e
1006 dd36ff00  ld      (ix-01h),00h
100a 7b        ld      a,e
100b d605      sub     05h
100d 3051      jr      nc,1060h         ; (+51h)
100f dd7efe    ld      a,(ix-02h)
1012 dd960a    sub     (ix+0ah)
1015 dd7eff    ld      a,(ix-01h)
1018 dd9e0b    sbc     a,(ix+0bh)
101b 3043      jr      nc,1060h         ; (+43h)
101d dd7ef6    ld      a,(ix-0ah)
1020 c607      add     a,07h
1022 57        ld      d,a
1023 dd7ef7    ld      a,(ix-09h)
1026 ce00      adc     a,00h
1028 6f        ld      l,a
1029 7a        ld      a,d
102a 83        add     a,e
102b dd77fa    ld      (ix-06h),a
102e 7d        ld      a,l
102f ce00      adc     a,00h
1031 dd77fb    ld      (ix-05h),a
1034 dd6efa    ld      l,(ix-06h)
1037 dd66fb    ld      h,(ix-05h)
103a 56        ld      d,(hl)
103b 7a        ld      a,d
103c b7        or      a
103d 2821      jr      z,1060h          ; (+21h)
103f dd7e08    ld      a,(ix+08h)
1042 83        add     a,e
1043 dd77f8    ld      (ix-08h),a
1046 dd7e09    ld      a,(ix+09h)
1049 ce00      adc     a,00h
104b dd77f9    ld      (ix-07h),a
104e dd6ef8    ld      l,(ix-08h)
1051 dd66f9    ld      h,(ix-07h)
1054 72        ld      (hl),d
1055 dd6efa    ld      l,(ix-06h)
1058 dd66fb    ld      h,(ix-05h)
105b 3600      ld      (hl),00h
105d 1c        inc     e
105e 18a3      jr      1003h            ; (-5dh)
1060 3e02      ld      a,02h
1062 02        ld      (bc),a
1063 dd4efc    ld      c,(ix-04h)
1066 dd46fd    ld      b,(ix-03h)
1069 03        inc     bc
106a 03        inc     bc
106b 03        inc     bc
106c 69        ld      l,c
106d 60        ld      h,b
106e 7e        ld      a,(hl)
106f 23        inc     hl
1070 66        ld      h,(hl)
1071 6f        ld      l,a
1072 1600      ld      d,00h
1074 19        add     hl,de
1075 eb        ex      de,hl
1076 7b        ld      a,e
1077 02        ld      (bc),a
1078 03        inc     bc
1079 7a        ld      a,d
107a 02        ld      (bc),a
107b dd6efe    ld      l,(ix-02h)
107e dd66ff    ld      h,(ix-01h)
1081 ddf9      ld      sp,ix
1083 dde1      pop     ix
1085 c9        ret     

1086 dde5      push    ix
1088 dd210000  ld      ix,0000h
108c dd39      add     ix,sp
108e f5        push    af
108f f5        push    af
1090 dd4e04    ld      c,(ix+04h)
1093 dd4605    ld      b,(ix+05h)
1096 59        ld      e,c
1097 50        ld      d,b
1098 13        inc     de
1099 13        inc     de
109a 3e03      ld      a,03h
109c 12        ld      (de),a
109d 78        ld      a,b
109e b1        or      c
109f 200b      jr      nz,10ach         ; (+0bh)
10a1 2e10      ld      l,10h
10a3 cd1512    call    1215h
10a6 210000    ld      hl,0000h
10a9 c36711    jp      1167h
10ac dd7e07    ld      a,(ix+07h)
10af ddb606    or      (ix+06h)
10b2 2010      jr      nz,10c4h         ; (+10h)
10b4 d5        push    de
10b5 2e10      ld      l,10h
10b7 cd1512    call    1215h
10ba d1        pop     de
10bb 3e03      ld      a,03h
10bd 12        ld      (de),a
10be 210000    ld      hl,0000h
10c1 c36711    jp      1167h
10c4 dd7e09    ld      a,(ix+09h)
10c7 ddb608    or      (ix+08h)
10ca 2010      jr      nz,10dch         ; (+10h)
10cc d5        push    de
10cd 2e13      ld      l,13h
10cf cd1512    call    1215h
10d2 d1        pop     de
10d3 3e03      ld      a,03h
10d5 12        ld      (de),a
10d6 210000    ld      hl,0000h
10d9 c36711    jp      1167h
10dc dd7e0b    ld      a,(ix+0bh)
10df ddb60a    or      (ix+0ah)
10e2 200f      jr      nz,10f3h         ; (+0fh)
10e4 d5        push    de
10e5 2e14      ld      l,14h
10e7 cd1512    call    1215h
10ea d1        pop     de
10eb 3e03      ld      a,03h
10ed 12        ld      (de),a
10ee 210000    ld      hl,0000h
10f1 1874      jr      1167h            ; (+74h)
10f3 dd7e06    ld      a,(ix+06h)
10f6 dd77fe    ld      (ix-02h),a
10f9 dd7e07    ld      a,(ix+07h)
10fc dd77ff    ld      (ix-01h),a
10ff dd6efe    ld      l,(ix-02h)
1102 dd66ff    ld      h,(ix-01h)
1105 4e        ld      c,(hl)
1106 cb51      bit     2,c
1108 200f      jr      nz,1119h         ; (+0fh)
110a d5        push    de
110b 2e18      ld      l,18h
110d cd1512    call    1215h
1110 d1        pop     de
1111 3e03      ld      a,03h
1113 12        ld      (de),a
1114 210000    ld      hl,0000h
1117 184e      jr      1167h            ; (+4eh)
1119 010000    ld      bc,0000h
111c 79        ld      a,c
111d dd960a    sub     (ix+0ah)
1120 78        ld      a,b
1121 dd9e0b    sbc     a,(ix+0bh)
1124 301b      jr      nc,1141h         ; (+1bh)
1126 dd7e08    ld      a,(ix+08h)
1129 81        add     a,c
112a dd77fc    ld      (ix-04h),a
112d dd7e09    ld      a,(ix+09h)
1130 88        adc     a,b
1131 dd77fd    ld      (ix-03h),a
1134 e1        pop     hl
1135 e5        push    hl
1136 6e        ld      l,(hl)
1137 c5        push    bc
1138 d5        push    de
1139 cd4002    call    0240h
113c d1        pop     de
113d c1        pop     bc
113e 03        inc     bc
113f 18db      jr      111ch            ; (-25h)
1141 3e02      ld      a,02h
1143 12        ld      (de),a
1144 dd4efe    ld      c,(ix-02h)
1147 dd46ff    ld      b,(ix-01h)
114a 03        inc     bc
114b 03        inc     bc
114c 03        inc     bc
114d 69        ld      l,c
114e 60        ld      h,b
114f 5e        ld      e,(hl)
1150 23        inc     hl
1151 56        ld      d,(hl)
1152 7b        ld      a,e
1153 dd860a    add     a,(ix+0ah)
1156 5f        ld      e,a
1157 7a        ld      a,d
1158 dd8e0b    adc     a,(ix+0bh)
115b 57        ld      d,a
115c 7b        ld      a,e
115d 02        ld      (bc),a
115e 03        inc     bc
115f 7a        ld      a,d
1160 02        ld      (bc),a
1161 dd6e0a    ld      l,(ix+0ah)
1164 dd660b    ld      h,(ix+0bh)
1167 ddf9      ld      sp,ix
1169 dde1      pop     ix
116b c9        ret     

116c 4d        ld      c,l
116d 7c        ld      a,h
116e 47        ld      b,a
116f b5        or      l
1170 200a      jr      nz,117ch         ; (+0ah)
1172 2e10      ld      l,10h
1174 cd1512    call    1215h
1177 210000    ld      hl,0000h
117a 183f      jr      11bbh            ; (+3fh)
117c 21ff15    ld      hl,15ffh
117f af        xor     a
1180 77        ld      (hl),a
1181 23        inc     hl
1182 77        ld      (hl),a
1183 59        ld      e,c
1184 50        ld      d,b
1185 13        inc     de
1186 3eda      ld      a,0dah
1188 12        ld      (de),a
1189 13        inc     de
118a 3e0e      ld      a,0eh
118c 12        ld      (de),a
118d 59        ld      e,c
118e 50        ld      d,b
118f 13        inc     de
1190 13        inc     de
1191 13        inc     de
1192 3e0d      ld      a,0dh
1194 12        ld      (de),a
1195 13        inc     de
1196 3e0f      ld      a,0fh
1198 12        ld      (de),a
1199 210500    ld      hl,0005h
119c 09        add     hl,bc
119d af        xor     a
119e 77        ld      (hl),a
119f 23        inc     hl
11a0 77        ld      (hl),a
11a1 210700    ld      hl,0007h
11a4 09        add     hl,bc
11a5 eb        ex      de,hl
11a6 3e5b      ld      a,5bh
11a8 12        ld      (de),a
11a9 13        inc     de
11aa 3e0f      ld      a,0fh
11ac 12        ld      (de),a
11ad 210900    ld      hl,0009h
11b0 09        add     hl,bc
11b1 eb        ex      de,hl
11b2 3e86      ld      a,86h
11b4 12        ld      (de),a
11b5 13        inc     de
11b6 3e10      ld      a,10h
11b8 12        ld      (de),a
11b9 69        ld      l,c
11ba 60        ld      h,b
11bb c9        ret     

11bc 4d        ld      c,l
11bd 210016    ld      hl,1600h
11c0 7e        ld      a,(hl)
11c1 2b        dec     hl
11c2 b6        or      (hl)
11c3 284f      jr      z,1214h          ; (+4fh)
11c5 210016    ld      hl,1600h
11c8 2b        dec     hl
11c9 5e        ld      e,(hl)
11ca 23        inc     hl
11cb 56        ld      d,(hl)
11cc 210700    ld      hl,0007h
11cf 19        add     hl,de
11d0 7e        ld      a,(hl)
11d1 b7        or      a
11d2 2001      jr      nz,11d5h         ; (+01h)
11d4 71        ld      (hl),c
11d5 210016    ld      hl,1600h
11d8 2b        dec     hl
11d9 5e        ld      e,(hl)
11da 23        inc     hl
11db 56        ld      d,(hl)
11dc 210800    ld      hl,0008h
11df 19        add     hl,de
11e0 7e        ld      a,(hl)
11e1 b7        or      a
11e2 2001      jr      nz,11e5h         ; (+01h)
11e4 71        ld      (hl),c
11e5 210016    ld      hl,1600h
11e8 2b        dec     hl
11e9 5e        ld      e,(hl)
11ea 23        inc     hl
11eb 56        ld      d,(hl)
11ec 210900    ld      hl,0009h
11ef 19        add     hl,de
11f0 7e        ld      a,(hl)
11f1 b7        or      a
11f2 2001      jr      nz,11f5h         ; (+01h)
11f4 71        ld      (hl),c
11f5 210016    ld      hl,1600h
11f8 2b        dec     hl
11f9 5e        ld      e,(hl)
11fa 23        inc     hl
11fb 56        ld      d,(hl)
11fc 210a00    ld      hl,000ah
11ff 19        add     hl,de
1200 7e        ld      a,(hl)
1201 b7        or      a
1202 2001      jr      nz,1205h         ; (+01h)
1204 71        ld      (hl),c
1205 210016    ld      hl,1600h
1208 2b        dec     hl
1209 5e        ld      e,(hl)
120a 23        inc     hl
120b 56        ld      d,(hl)
120c 210b00    ld      hl,000bh
120f 19        add     hl,de
1210 7e        ld      a,(hl)
1211 b7        or      a
1212 c0        ret     nz

1213 71        ld      (hl),c
1214 c9        ret     

1215 4d        ld      c,l
1216 c5        push    bc
1217 cd3c12    call    123ch
121a eb        ex      de,hl
121b c1        pop     bc
121c 13        inc     de
121d 79        ld      a,c
121e 12        ld      (de),a
121f c9        ret     

1220 cd3c12    call    123ch
1223 23        inc     hl
1224 6e        ld      l,(hl)
1225 c9        ret     

1226 210116    ld      hl,1601h
1229 3601      ld      (hl),01h
122b 2e00      ld      l,00h
122d cd8a12    call    128ah
1230 4d        ld      c,l
1231 44        ld      b,h
1232 ed430316  ld      (1603h),bc
1236 210216    ld      hl,1602h
1239 3600      ld      (hl),00h
123b c9        ret     

123c 210116    ld      hl,1601h
123f c9        ret     

1240 7c        ld      a,h
1241 b5        or      l
1242 2809      jr      z,124dh          ; (+09h)
1244 2e10      ld      l,10h
1246 cd1512    call    1215h
1249 2e00      ld      l,00h
124b 1801      jr      124eh            ; (+01h)
124d 6e        ld      l,(hl)
124e c9        ret     

124f 7c        ld      a,h
1250 b5        or      l
1251 280a      jr      z,125dh          ; (+0ah)
1253 2e10      ld      l,10h
1255 cd1512    call    1215h
1258 210000    ld      hl,0000h
125b 1806      jr      1263h            ; (+06h)
125d 23        inc     hl
125e 23        inc     hl
125f 4e        ld      c,(hl)
1260 23        inc     hl
1261 66        ld      h,(hl)
1262 69        ld      l,c
1263 c9        ret     

1264 4d        ld      c,l
1265 44        ld      b,h
1266 78        ld      a,b
1267 b1        or      c
1268 2005      jr      nz,126fh         ; (+05h)
126a 210000    ld      hl,0000h
126d 180a      jr      1279h            ; (+0ah)
126f 2a0316    ld      hl,(1603h)
1272 c5        push    bc
1273 e5        push    hl
1274 cd9012    call    1290h
1277 f1        pop     af
1278 f1        pop     af
1279 c9        ret     

127a 4d        ld      c,l
127b 44        ld      b,h
127c 78        ld      a,b
127d b1        or      c
127e c8        ret     z

127f 2a0316    ld      hl,(1603h)
1282 c5        push    bc
1283 e5        push    hl
1284 cdce12    call    12ceh
1287 f1        pop     af
1288 f1        pop     af
1289 c9        ret     

128a 4d        ld      c,l
128b 210516    ld      hl,1605h
128e 71        ld      (hl),c
128f c9        ret     

1290 dde5      push    ix
1292 dd210000  ld      ix,0000h
1296 dd39      add     ix,sp
1298 dd7e05    ld      a,(ix+05h)
129b ddb604    or      (ix+04h)
129e 200a      jr      nz,12aah         ; (+0ah)
12a0 2e10      ld      l,10h
12a2 cd1512    call    1215h
12a5 210000    ld      hl,0000h
12a8 1821      jr      12cbh            ; (+21h)
12aa dd7e04    ld      a,(ix+04h)
12ad d605      sub     05h
12af 2007      jr      nz,12b8h         ; (+07h)
12b1 dd7e05    ld      a,(ix+05h)
12b4 d616      sub     16h
12b6 280a      jr      z,12c2h          ; (+0ah)
12b8 2e1b      ld      l,1bh
12ba cd1512    call    1215h
12bd 210000    ld      hl,0000h
12c0 1809      jr      12cbh            ; (+09h)
12c2 dd6e06    ld      l,(ix+06h)
12c5 dd6607    ld      h,(ix+07h)
12c8 cd4103    call    0341h
12cb dde1      pop     ix
12cd c9        ret     

12ce dde5      push    ix
12d0 dd210000  ld      ix,0000h
12d4 dd39      add     ix,sp
12d6 dd7e05    ld      a,(ix+05h)
12d9 ddb604    or      (ix+04h)
12dc 2007      jr      nz,12e5h         ; (+07h)
12de 2e10      ld      l,10h
12e0 cd1512    call    1215h
12e3 182d      jr      1312h            ; (+2dh)
12e5 dd7e07    ld      a,(ix+07h)
12e8 ddb606    or      (ix+06h)
12eb 2007      jr      nz,12f4h         ; (+07h)
12ed 2e13      ld      l,13h
12ef cd1512    call    1215h
12f2 181e      jr      1312h            ; (+1eh)
12f4 dd7e04    ld      a,(ix+04h)
12f7 d605      sub     05h
12f9 2007      jr      nz,1302h         ; (+07h)
12fb dd7e05    ld      a,(ix+05h)
12fe d616      sub     16h
1300 2807      jr      z,1309h          ; (+07h)
1302 2e1b      ld      l,1bh
1304 cd1512    call    1215h
1307 1809      jr      1312h            ; (+09h)
1309 dd6e06    ld      l,(ix+06h)
130c dd6607    ld      h,(ix+07h)
130f cd1603    call    0316h
1312 dde1      pop     ix
1314 c9        ret     

1315 dde5      push    ix
1317 dd210000  ld      ix,0000h
131b dd39      add     ix,sp
131d 21f8ff    ld      hl,0fff8h
1320 39        add     hl,sp
1321 f9        ld      sp,hl
1322 dd7e08    ld      a,(ix+08h)
1325 c6ff      add     a,0ffh
1327 dd77f8    ld      (ix-08h),a
132a dd7e09    ld      a,(ix+09h)
132d ceff      adc     a,0ffh
132f dd77f9    ld      (ix-07h),a
1332 dd7e05    ld      a,(ix+05h)
1335 ddb604    or      (ix+04h)
1338 200b      jr      nz,1345h         ; (+0bh)
133a 2e10      ld      l,10h
133c cd1512    call    1215h
133f 210000    ld      hl,0000h
1342 c3d213    jp      13d2h
1345 dd7e07    ld      a,(ix+07h)
1348 ddb606    or      (ix+06h)
134b 200b      jr      nz,1358h         ; (+0bh)
134d 2e13      ld      l,13h
134f cd1512    call    1215h
1352 210000    ld      hl,0000h
1355 c3d213    jp      13d2h
1358 dd7e09    ld      a,(ix+09h)
135b ddb608    or      (ix+08h)
135e 200a      jr      nz,136ah         ; (+0ah)
1360 2e14      ld      l,14h
1362 cd1512    call    1215h
1365 210000    ld      hl,0000h
1368 1868      jr      13d2h            ; (+68h)
136a 110000    ld      de,0000h
136d dd73fc    ld      (ix-04h),e
1370 dd72fd    ld      (ix-03h),d
1373 dd7e06    ld      a,(ix+06h)
1376 83        add     a,e
1377 4f        ld      c,a
1378 dd7e07    ld      a,(ix+07h)
137b 8a        adc     a,d
137c 47        ld      b,a
137d 210100    ld      hl,0001h
1380 19        add     hl,de
1381 dd75fa    ld      (ix-06h),l
1384 dd74fb    ld      (ix-05h),h
1387 dd7efc    ld      a,(ix-04h)
138a dd96f8    sub     (ix-08h)
138d dd7efd    ld      a,(ix-03h)
1390 dd9ef9    sbc     a,(ix-07h)
1393 3026      jr      nc,13bbh         ; (+26h)
1395 dd7e04    ld      a,(ix+04h)
1398 83        add     a,e
1399 dd77fe    ld      (ix-02h),a
139c dd7e05    ld      a,(ix+05h)
139f 8a        adc     a,d
13a0 dd77ff    ld      (ix-01h),a
13a3 dd6efe    ld      l,(ix-02h)
13a6 dd66ff    ld      h,(ix-01h)
13a9 7e        ld      a,(hl)
13aa 02        ld      (bc),a
13ab dd6efe    ld      l,(ix-02h)
13ae dd66ff    ld      h,(ix-01h)
13b1 7e        ld      a,(hl)
13b2 b7        or      a
13b3 2806      jr      z,13bbh          ; (+06h)
13b5 c1        pop     bc
13b6 d1        pop     de
13b7 d5        push    de
13b8 c5        push    bc
13b9 18b2      jr      136dh            ; (-4eh)
13bb dd7ef8    ld      a,(ix-08h)
13be dd96fc    sub     (ix-04h)
13c1 200e      jr      nz,13d1h         ; (+0eh)
13c3 dd7ef9    ld      a,(ix-07h)
13c6 dd96fd    sub     (ix-03h)
13c9 2006      jr      nz,13d1h         ; (+06h)
13cb af        xor     a
13cc 02        ld      (bc),a
13cd c1        pop     bc
13ce d1        pop     de
13cf d5        push    de
13d0 c5        push    bc
13d1 eb        ex      de,hl
13d2 ddf9      ld      sp,ix
13d4 dde1      pop     ix
13d6 c9        ret     

13d7 dde5      push    ix
13d9 dd210000  ld      ix,0000h
13dd dd39      add     ix,sp
13df dd7e05    ld      a,(ix+05h)
13e2 ddb604    or      (ix+04h)
13e5 200a      jr      nz,13f1h         ; (+0ah)
13e7 2e10      ld      l,10h
13e9 cd1512    call    1215h
13ec 210000    ld      hl,0000h
13ef 1845      jr      1436h            ; (+45h)
13f1 dd7e07    ld      a,(ix+07h)
13f4 ddb606    or      (ix+06h)
13f7 200a      jr      nz,1403h         ; (+0ah)
13f9 2e13      ld      l,13h
13fb cd1512    call    1215h
13fe 210000    ld      hl,0000h
1401 1833      jr      1436h            ; (+33h)
1403 dd7e09    ld      a,(ix+09h)
1406 ddb608    or      (ix+08h)
1409 2013      jr      nz,141eh         ; (+13h)
140b dd6e06    ld      l,(ix+06h)
140e dd6607    ld      h,(ix+07h)
1411 e5        push    hl
1412 dd6e04    ld      l,(ix+04h)
1415 dd6605    ld      h,(ix+05h)
1418 e5        push    hl
1419 cd070e    call    0e07h
141c 1818      jr      1436h            ; (+18h)
141e dd6e08    ld      l,(ix+08h)
1421 dd6609    ld      h,(ix+09h)
1424 e5        push    hl
1425 dd6e06    ld      l,(ix+06h)
1428 dd6607    ld      h,(ix+07h)
142b e5        push    hl
142c dd6e04    ld      l,(ix+04h)
142f dd6605    ld      h,(ix+05h)
1432 e5        push    hl
1433 cd150e    call    0e15h
1436 dde1      pop     ix
1438 c9        ret     

1439 dde5      push    ix
143b dd210000  ld      ix,0000h
143f dd39      add     ix,sp
1441 dd7e05    ld      a,(ix+05h)
1444 ddb604    or      (ix+04h)
1447 200a      jr      nz,1453h         ; (+0ah)
1449 2e10      ld      l,10h
144b cd1512    call    1215h
144e 210000    ld      hl,0000h
1451 1845      jr      1498h            ; (+45h)
1453 dd7e07    ld      a,(ix+07h)
1456 ddb606    or      (ix+06h)
1459 200a      jr      nz,1465h         ; (+0ah)
145b 2e13      ld      l,13h
145d cd1512    call    1215h
1460 210000    ld      hl,0000h
1463 1833      jr      1498h            ; (+33h)
1465 dd7e09    ld      a,(ix+09h)
1468 ddb608    or      (ix+08h)
146b 2013      jr      nz,1480h         ; (+13h)
146d dd6e06    ld      l,(ix+06h)
1470 dd6607    ld      h,(ix+07h)
1473 e5        push    hl
1474 dd6e04    ld      l,(ix+04h)
1477 dd6605    ld      h,(ix+05h)
147a e5        push    hl
147b cd010e    call    0e01h
147e 1818      jr      1498h            ; (+18h)
1480 dd6e08    ld      l,(ix+08h)
1483 dd6609    ld      h,(ix+09h)
1486 e5        push    hl
1487 dd6e06    ld      l,(ix+06h)
148a dd6607    ld      h,(ix+07h)
148d e5        push    hl
148e dd6e04    ld      l,(ix+04h)
1491 dd6605    ld      h,(ix+05h)
1494 e5        push    hl
1495 cd0d0e    call    0e0dh
1498 dde1      pop     ix
149a c9        ret     

149b dde5      push    ix
149d dd210000  ld      ix,0000h
14a1 dd39      add     ix,sp
14a3 dd7e05    ld      a,(ix+05h)
14a6 ddb604    or      (ix+04h)
14a9 200a      jr      nz,14b5h         ; (+0ah)
14ab 2e10      ld      l,10h
14ad cd1512    call    1215h
14b0 210000    ld      hl,0000h
14b3 1824      jr      14d9h            ; (+24h)
14b5 dd7e07    ld      a,(ix+07h)
14b8 ddb606    or      (ix+06h)
14bb 200b      jr      nz,14c8h         ; (+0bh)
14bd dd6e04    ld      l,(ix+04h)
14c0 dd6605    ld      h,(ix+05h)
14c3 cd4d0e    call    0e4dh
14c6 1811      jr      14d9h            ; (+11h)
14c8 dd6e06    ld      l,(ix+06h)
14cb dd6607    ld      h,(ix+07h)
14ce e5        push    hl
14cf dd6e04    ld      l,(ix+04h)
14d2 dd6605    ld      h,(ix+05h)
14d5 e5        push    hl
14d6 cd1d0e    call    0e1dh
14d9 dde1      pop     ix
14db c9        ret     

14dc 09        add     hl,bc
14dd 45        ld      b,l
14de 4e        ld      c,(hl)
14df 4f        ld      c,a
14e0 4c        ld      c,h
14e1 43        ld      b,e
14e2 4b        ld      c,e
14e3 00        nop     
14e4 0645      ld      b,45h
14e6 49        ld      c,c
14e7 4e        ld      c,(hl)
14e8 56        ld      d,(hl)
14e9 41        ld      b,c
14ea 4c        ld      c,h
14eb 00        nop     
14ec 0d        dec     c
14ed 45        ld      b,l
14ee 52        ld      d,d
14ef 41        ld      b,c
14f0 4e        ld      c,(hl)
14f1 47        ld      b,a
14f2 45        ld      b,l
14f3 00        nop     
14f4 014541    ld      bc,4145h
14f7 43        ld      b,e
14f8 43        ld      b,e
14f9 45        ld      b,l
14fa 53        ld      d,e
14fb 00        nop     
14fc 04        inc     b
14fd 45        ld      b,l
14fe 44        ld      b,h
14ff 4f        ld      c,a
1500 4d        ld      c,l
1501 00        nop     
1502 0b        dec     bc
1503 45        ld      b,l
1504 4e        ld      c,(hl)
1505 4f        ld      c,a
1506 54        ld      d,h
1507 53        ld      d,e
1508 55        ld      d,l
1509 50        ld      d,b
150a 00        nop     
150b 03        inc     bc
150c 45        ld      b,l
150d 42        ld      b,d
150e 44        ld      b,h
150f 46        ld      b,(hl)
1510 44        ld      b,h
1511 00        nop     
1512 0a        ld      a,(bc)
1513 45        ld      b,l
1514 4e        ld      c,(hl)
1515 4f        ld      c,a
1516 4d        ld      c,l
1517 45        ld      b,l
1518 4d        ld      c,l
1519 00        nop     
151a 00        nop     
151b 54        ld      d,h
151c 65        ld      h,l
151d 73        ld      (hl),e
151e 74        ld      (hl),h
151f 21000b    ld      hl,0b00h
1522 0c        inc     c
1523 63        ld      h,e
1524 6f        ld      l,a
1525 6e        ld      l,(hl)
1526 00        nop     
1527 00        nop     
1528 00        nop     
1529 00        nop     
152a 00        nop     
152b 00        nop     
152c 00        nop     
152d 00        nop     
152e 00        nop     
152f 00        nop     
1530 0616      ld      b,16h
1532 34        inc     (hl)
1533 15        dec     d
1534 00        nop     
1535 0100fe    ld      bc,0fe00h
1538 00        nop     
1539 00        nop     
153a 51        ld      d,c
153b 15        dec     d
153c 17        rla     
153d 00        nop     
153e 00        nop     
153f 00        nop     
1540 cdbe03    call    03beh
1543 c3e303    jp      03e3h
1546 03        inc     bc
1547 02        ld      (bc),a
1548 010001    ld      bc,0100h
154b 00        nop     
154c 0100fe    ld      bc,0fe00h
154f 00        nop     
1550 00        nop     
1551 68        ld      l,b
1552 15        dec     d
1553 17        rla     
1554 00        nop     
1555 3a15cd    ld      a,(0cd15h)
1558 be        cp      (hl)
1559 03        inc     bc
155a c3be04    jp      04beh
155d 04        inc     b
155e 02        ld      (bc),a
155f 02        ld      (bc),a
1560 1000      djnz    1562h            ; (+00h)
1562 00        nop     
1563 0100fe    ld      bc,0fe00h
1566 00        nop     
1567 00        nop     
1568 b2        or      d
1569 15        dec     d
156a 00        nop     
156b 00        nop     
156c 51        ld      d,c
156d 15        dec     d
156e 00        nop     
156f 00        nop     
1570 00        nop     
1571 00        nop     
1572 00        nop     
1573 00        nop     
1574 00        nop     
1575 00        nop     
1576 00        nop     
1577 00        nop     
1578 00        nop     
1579 00        nop     
157a 00        nop     
157b 00        nop     
157c 00        nop     
157d 00        nop     
157e 00        nop     
157f 00        nop     
1580 00        nop     
1581 00        nop     
1582 00        nop     
1583 00        nop     
1584 00        nop     
1585 00        nop     
1586 00        nop     
1587 00        nop     
1588 00        nop     
1589 00        nop     
158a 00        nop     
158b 00        nop     
158c 00        nop     
158d 00        nop     
158e 00        nop     
158f 00        nop     
1590 00        nop     
1591 00        nop     
1592 00        nop     
1593 00        nop     
1594 00        nop     
1595 00        nop     
1596 00        nop     
1597 00        nop     
1598 00        nop     
1599 00        nop     
159a 00        nop     
159b 00        nop     
159c 00        nop     
159d 00        nop     
159e 00        nop     
159f 00        nop     
15a0 00        nop     
15a1 00        nop     
15a2 00        nop     
15a3 00        nop     
15a4 00        nop     
15a5 00        nop     
15a6 00        nop     
15a7 00        nop     
15a8 00        nop     
15a9 00        nop     
15aa 00        nop     
15ab 00        nop     
15ac 00        nop     
15ad 00        nop     
15ae 00        nop     
15af 00        nop     
15b0 00        nop     
15b1 00        nop     
15b2 00        nop     
15b3 00        nop     
15b4 40        ld      b,b
15b5 15        dec     d
15b6 57        ld      d,a
15b7 15        dec     d
15b8 57        ld      d,a
15b9 15        dec     d
15ba be        cp      (hl)
15bb 15        dec     d
15bc 00        nop     
15bd 00        nop     
15be c34015    jp      1540h
15c1 40        ld      b,b
15c2 02        ld      (bc),a
15c3 00        nop     
15c4 00        nop     
15c5 00        nop     
15c6 02        ld      (bc),a
15c7 00        nop     
15c8 fe00      cp      00h
15ca 00        nop     
15cb cf        rst     08h
15cc 15        dec     d
15cd bc        cp      h
15ce 15        dec     d
15cf c35715    jp      1557h
15d2 80        add     a,b
15d3 00        nop     
15d4 00        nop     
15d5 00        nop     
15d6 00        nop     
15d7 02        ld      (bc),a
15d8 00        nop     
15d9 fe00      cp      00h
15db 00        nop     
15dc e0        ret     po

15dd 15        dec     d
15de cd15c3    call    0c315h
15e1 57        ld      d,a
15e2 15        dec     d
15e3 80        add     a,b
15e4 00        nop     
15e5 00        nop     
15e6 00        nop     
15e7 00        nop     
15e8 02        ld      (bc),a
15e9 00        nop     
15ea fe00      cp      00h
15ec 00        nop     
15ed de15      sbc     a,15h
15ef 00        nop     
15f0 00        nop     
15f1 ef        rst     28h
15f2 15        dec     d
15f3 012315    ld      bc,1523h
15f6 00        nop     
15f7 00        nop     
15f8 00        nop     
15f9 00        nop     
15fa 00        nop     
15fb 00        nop     
15fc 00        nop     
15fd 00        nop     
15fe 00        nop     
15ff 00        nop     
1600 00        nop     
1601 00        nop     
1602 00        nop     
1603 00        nop     
1604 00        nop     
1605 00        nop     
1606 00        nop     
1607 00        nop     
1608 00        nop     
1609 00        nop     
160a 00        nop     
160b 00        nop     
160c 00        nop     
160d 00        nop     
160e 00        nop     
160f 00        nop     
1610 00        nop     
1611 00        nop     
1612 00        nop     
1613 00        nop     
1614 00        nop     
1615 00        nop     
1616 00        nop     
1617 00        nop     
1618 00        nop     
1619 00        nop     
161a 00        nop     
161b 00        nop     
161c 00        nop     
161d 00        nop     
161e 00        nop     
161f 00        nop     
1620 00        nop     
1621 00        nop     
1622 00        nop     
1623 00        nop     
1624 00        nop     
1625 00        nop     
1626 00        nop     
1627 00        nop     
1628 00        nop     
1629 00        nop     
162a 00        nop     
162b 00        nop     
162c 00        nop     
162d 00        nop     
162e 00        nop     
162f 00        nop     
1630 00        nop     
1631 00        nop     
1632 00        nop     
1633 00        nop     
1634 00        nop     
1635 00        nop     
1636 00        nop     
1637 00        nop     
1638 00        nop     
1639 00        nop     
163a 00        nop     
163b 00        nop     
163c 00        nop     
163d 00        nop     
163e 00        nop     
163f 00        nop     
1640 00        nop     
1641 00        nop     
1642 00        nop     
1643 00        nop     
1644 00        nop     
1645 00        nop     
1646 00        nop     
1647 00        nop     
1648 00        nop     
1649 00        nop     
164a 00        nop     
164b 00        nop     
164c 00        nop     
164d 00        nop     
164e 00        nop     
164f 00        nop     
1650 00        nop     
1651 00        nop     
1652 00        nop     
1653 00        nop     
1654 00        nop     
1655 00        nop     
1656 00        nop     
1657 00        nop     
1658 00        nop     
1659 00        nop     
165a 00        nop     
165b 00        nop     
165c 00        nop     
165d 00        nop     
165e 00        nop     
165f 00        nop     
1660 00        nop     
1661 00        nop     
1662 00        nop     
1663 00        nop     
1664 00        nop     
1665 00        nop     
1666 00        nop     
1667 00        nop     
1668 00        nop     
1669 00        nop     
166a 00        nop     
166b 00        nop     
166c 00        nop     
166d 00        nop     
166e 00        nop     
166f 00        nop     
1670 00        nop     
1671 00        nop     
1672 00        nop     
1673 00        nop     
1674 00        nop     
1675 00        nop     
1676 00        nop     
1677 00        nop     
1678 00        nop     
1679 00        nop     
167a 00        nop     
167b 00        nop     
167c 00        nop     
167d 00        nop     
167e 00        nop     
167f 00        nop     
1680 00        nop     
1681 00        nop     
1682 00        nop     
1683 00        nop     
1684 00        nop     
1685 00        nop     
1686 00        nop     
1687 00        nop     
1688 00        nop     
1689 00        nop     
168a 00        nop     
168b 00        nop     
168c 00        nop     
168d 00        nop     
168e 00        nop     
168f 00        nop     
1690 00        nop     
1691 00        nop     
1692 00        nop     
1693 00        nop     
1694 00        nop     
1695 00        nop     
1696 00        nop     
1697 00        nop     
1698 00        nop     
1699 00        nop     
