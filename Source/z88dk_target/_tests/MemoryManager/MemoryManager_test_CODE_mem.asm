; Disassembly of the file "C:\Users\marc\Documents\MyProjects\Zalt\Zalt\Source\z88dk_target\_tests\MemoryManager\MemoryManager_test_CODE.bin"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Saturday, 29 of December 2018 at 08:32 AM
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
0030 cd7803    call    0378h
0033 c9        ret     

0034 00        nop     
0035 00        nop     
0036 00        nop     
0037 00        nop     
0038 f3        di      
0039 cde602    call    02e6h
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
0066 cd5e03    call    035eh
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
0086 22be15    ld      (15beh),hl
0089 32bd15    ld      (15bdh),a
008c 3e01      ld      a,01h
008e ed47      ld      i,a
0090 ed5e      im      2
0092 2abe15    ld      hl,(15beh)
0095 f9        ld      sp,hl
0096 fb        ei      
0097 c3c202    jp      02c2h
009a f3        di      
009b f5        push    af
009c 3ac015    ld      a,(15c0h)
009f 3c        inc     a
00a0 32c015    ld      (15c0h),a
00a3 f1        pop     af
00a4 c9        ret     

00a5 f5        push    af
00a6 3ac015    ld      a,(15c0h)
00a9 3d        dec     a
00aa 32c015    ld      (15c0h),a
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
0102 c2023f    jp      nz,3f02h
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
0200 21f215    ld      hl,15f2h
0203 34        inc     (hl)
0204 34        inc     (hl)
0205 21ffff    ld      hl,0ffffh
0208 39        add     hl,sp
0209 119a16    ld      de,169ah
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
0221 cd8803    call    0388h
0224 cd650f    call    0f65h
0227 c3f60d    jp      0df6h
022a e5        push    hl
022b e1        pop     hl
022c 18fe      jr      022ch            ; (-02h)
022e 06aa      ld      b,0aah
0230 21ffff    ld      hl,0ffffh
0233 110010    ld      de,1000h
0236 1802      jr      023ah            ; (+02h)
0238 ed52      sbc     hl,de
023a 78        ld      a,b
023b 77        ld      (hl),a
023c 7e        ld      a,(hl)
023d b8        cp      b
023e 20f8      jr      nz,0238h         ; (-08h)
0240 22be15    ld      (15beh),hl
0243 c9        ret     

0244 44        ld      b,h
0245 4d        ld      c,l
0246 2abe15    ld      hl,(15beh)
0249 37        scf     
024a 3f        ccf     
024b ed42      sbc     hl,bc
024d 54        ld      d,h
024e 5d        ld      e,l
024f 60        ld      h,b
0250 69        ld      l,c
0251 3eff      ld      a,0ffh
0253 43        ld      b,e
0254 1b        dec     de
0255 14        inc     d
0256 77        ld      (hl),a
0257 23        inc     hl
0258 10fc      djnz    0256h            ; (-04h)
025a 15        dec     d
025b 20f9      jr      nz,0256h         ; (-07h)
025d c9        ret     

025e af        xor     a
025f 21c215    ld      hl,15c2h
0262 77        ld      (hl),a
0263 21c315    ld      hl,15c3h
0266 77        ld      (hl),a
0267 c9        ret     

0268 21c215    ld      hl,15c2h
026b 6e        ld      l,(hl)
026c 2600      ld      h,00h
026e c9        ret     

026f 7d        ld      a,l
0270 21c215    ld      hl,15c2h
0273 77        ld      (hl),a
0274 0eff      ld      c,0ffh
0276 060c      ld      b,0ch
0278 ed79      out     (c),a
027a c9        ret     

027b 21c315    ld      hl,15c3h
027e 6e        ld      l,(hl)
027f 2600      ld      h,00h
0281 c9        ret     

0282 7d        ld      a,l
0283 21c315    ld      hl,15c3h
0286 77        ld      (hl),a
0287 0eff      ld      c,0ffh
0289 060d      ld      b,0dh
028b ed79      out     (c),a
028d c9        ret     

028e 3e0e      ld      a,0eh
0290 0eff      ld      c,0ffh
0292 cb00      rlc     b
0294 cb00      rlc     b
0296 cb00      rlc     b
0298 cb00      rlc     b
029a b0        or      b
029b 47        ld      b,a
029c ed51      out     (c),d
029e c9        ret     

029f 3e0e      ld      a,0eh
02a1 0eff      ld      c,0ffh
02a3 cb05      rlc     l
02a5 cb05      rlc     l
02a7 cb05      rlc     l
02a9 cb05      rlc     l
02ab b5        or      l
02ac 47        ld      b,a
02ad ed68      in      l,(c)
02af c9        ret     

02b0 3e0e      ld      a,0eh
02b2 0eff      ld      c,0ffh
02b4 1600      ld      d,00h
02b6 47        ld      b,a
02b7 ed51      out     (c),d
02b9 04        inc     b
02ba ed51      out     (c),d
02bc 14        inc     d
02bd c610      add     a,10h
02bf 30f5      jr      nc,02b6h         ; (-0bh)
02c1 c9        ret     

02c2 cd550f    call    0f55h
02c5 cdda02    call    02dah
02c8 b7        or      a
02c9 2803      jr      z,02ceh          ; (+03h)
02cb cd4c12    call    124ch
02ce cd440f    call    0f44h
02d1 fb        ei      
02d2 ed4d      reti    

02d4 013000    ld      bc,0030h
02d7 ed69      out     (c),l
02d9 c9        ret     

02da 013000    ld      bc,0030h
02dd 210000    ld      hl,0000h
02e0 ed78      in      a,(c)
02e2 6f        ld      l,a
02e3 c9        ret     

02e4 1800      jr      02e6h            ; (+00h)
02e6 ed43e602  ld      (02e6h),bc
02ea ed53e802  ld      (02e8h),de
02ee 22ea02    ld      (02eah),hl
02f1 d9        exx     
02f2 ed43f602  ld      (02f6h),bc
02f6 ed53f802  ld      (02f8h),de
02fa 22fc02    ld      (02fch),hl
02fd d9        exx     
02fe fd22ec02  ld      (02ech),iy
0302 dd22ee02  ld      (02eeh),ix
0306 e1        pop     hl
0307 22f202    ld      (02f2h),hl
030a ed73f002  ld      (02f0h),sp
030e e5        push    hl
030f f5        push    af
0310 e1        pop     hl
0311 22e402    ld      (02e4h),hl
0314 08        ex      af,af'
0315 f5        push    af
0316 e1        pop     hl
0317 22f402    ld      (02f4h),hl
031a 08        ex      af,af'
031b 21c115    ld      hl,15c1h
031e 3601      ld      (hl),01h
0320 2aea02    ld      hl,(02eah)
0323 c9        ret     

0324 ed7bf002  ld      sp,(02f0h)
0328 2af202    ld      hl,(02f2h)
032b e5        push    hl
032c 08        ex      af,af'
032d 2af402    ld      hl,(02f4h)
0330 e5        push    hl
0331 f1        pop     af
0332 08        ex      af,af'
0333 2ae402    ld      hl,(02e4h)
0336 e5        push    hl
0337 f1        pop     af
0338 d9        exx     
0339 ed4bf602  ld      bc,(02f6h)
033d ed5bf802  ld      de,(02f8h)
0341 2afc02    ld      hl,(02fch)
0344 21c115    ld      hl,15c1h
0347 3600      ld      (hl),00h
0349 d9        exx     
034a ed4be602  ld      bc,(02e6h)
034e ed5be802  ld      de,(02e8h)
0352 2aea02    ld      hl,(02eah)
0355 fd2aec02  ld      iy,(02ech)
0359 dd2aee02  ld      ix,(02eeh)
035d c9        ret     

035e 010800    ld      bc,0008h
0361 ed78      in      a,(c)
0363 c8        ret     z

0364 fe02      cp      02h
0366 cc6b03    call    z,036bh
0369 18f6      jr      0361h            ; (-0ah)
036b 1e18      ld      e,18h
036d 21e402    ld      hl,02e4h
0370 7e        ld      a,(hl)
0371 ed79      out     (c),a
0373 23        inc     hl
0374 1d        dec     e
0375 20f9      jr      nz,0370h         ; (-07h)
0377 c9        ret     

0378 f3        di      
0379 cde602    call    02e6h
037c 76        halt    
037d cd2c03    call    032ch
0380 fb        ei      
0381 c9        ret     

0382 7e        ld      a,(hl)
0383 23        inc     hl
0384 66        ld      h,(hl)
0385 6f        ld      l,a
0386 b4        or      h
0387 c9        ret     

0388 5d        ld      e,l
0389 54        ld      d,h
038a e5        push    hl
038b c5        push    bc
038c 0e01      ld      c,01h
038e cd250f    call    0f25h
0391 dadf05    jp      c,05dfh
0394 210600    ld      hl,0006h
0397 19        add     hl,de
0398 eb        ex      de,hl
0399 c1        pop     bc
039a 09        add     hl,bc
039b af        xor     a
039c 2b        dec     hl
039d 77        ld      (hl),a
039e 2b        dec     hl
039f 77        ld      (hl),a
03a0 eb        ex      de,hl
03a1 73        ld      (hl),e
03a2 23        inc     hl
03a3 72        ld      (hl),d
03a4 23        inc     hl
03a5 cd2507    call    0725h
03a8 e1        pop     hl
03a9 c9        ret     

03aa ed5bc415  ld      de,(15c4h)
03ae c3b103    jp      03b1h
03b1 7c        ld      a,h
03b2 b5        or      l
03b3 c8        ret     z

03b4 2b        dec     hl
03b5 56        ld      d,(hl)
03b6 2b        dec     hl
03b7 5e        ld      e,(hl)
03b8 2b        dec     hl
03b9 2b        dec     hl
03ba 7a        ld      a,d
03bb b3        or      e
03bc ca2907    jp      z,0729h
03bf 2b        dec     hl
03c0 2b        dec     hl
03c1 eda0      ldi     
03c3 03        inc     bc
03c4 7e        ld      a,(hl)
03c5 12        ld      (de),a
03c6 1b        dec     de
03c7 2b        dec     hl
03c8 6e        ld      l,(hl)
03c9 67        ld      h,a
03ca 7e        ld      a,(hl)
03cb 23        inc     hl
03cc b6        or      (hl)
03cd c8        ret     z

03ce 23        inc     hl
03cf 23        inc     hl
03d0 23        inc     hl
03d1 73        ld      (hl),e
03d2 23        inc     hl
03d3 72        ld      (hl),d
03d4 c9        ret     

03d5 ed5bc415  ld      de,(15c4h)
03d9 c3dc03    jp      03dch
03dc 7c        ld      a,h
03dd b5        or      l
03de c8        ret     z

03df 010600    ld      bc,0006h
03e2 09        add     hl,bc
03e3 da6206    jp      c,0662h
03e6 4d        ld      c,l
03e7 44        ld      b,h
03e8 210600    ld      hl,0006h
03eb 19        add     hl,de
03ec e5        push    hl
03ed c5        push    bc
03ee 5e        ld      e,(hl)
03ef 23        inc     hl
03f0 56        ld      d,(hl)
03f1 7a        ld      a,d
03f2 b3        or      e
03f3 ca6006    jp      z,0660h
03f6 23        inc     hl
03f7 4e        ld      c,(hl)
03f8 23        inc     hl
03f9 46        ld      b,(hl)
03fa 2b        dec     hl
03fb 2b        dec     hl
03fc 2b        dec     hl
03fd 09        add     hl,bc
03fe eb        ex      de,hl
03ff c1        pop     bc
0400 e5        push    hl
0401 ed52      sbc     hl,de
0403 ed42      sbc     hl,bc
0405 e1        pop     hl
0406 3003      jr      nc,040bh         ; (+03h)
0408 f1        pop     af
0409 18e1      jr      03ech            ; (-1fh)
040b e1        pop     hl
040c c30f04    jp      040fh
040f 7b        ld      a,e
0410 bd        cp      l
0411 2004      jr      nz,0417h         ; (+04h)
0413 7a        ld      a,d
0414 bc        cp      h
0415 2829      jr      z,0440h          ; (+29h)
0417 c5        push    bc
0418 4e        ld      c,(hl)
0419 73        ld      (hl),e
041a 23        inc     hl
041b 46        ld      b,(hl)
041c 72        ld      (hl),d
041d 2b        dec     hl
041e eb        ex      de,hl
041f 71        ld      (hl),c
0420 23        inc     hl
0421 70        ld      (hl),b
0422 2b        dec     hl
0423 0a        ld      a,(bc)
0424 03        inc     bc
0425 b7        or      a
0426 2004      jr      nz,042ch         ; (+04h)
0428 0a        ld      a,(bc)
0429 b7        or      a
042a 2808      jr      z,0434h          ; (+08h)
042c 03        inc     bc
042d 03        inc     bc
042e 03        inc     bc
042f 7d        ld      a,l
0430 02        ld      (bc),a
0431 03        inc     bc
0432 7c        ld      a,h
0433 02        ld      (bc),a
0434 23        inc     hl
0435 23        inc     hl
0436 c1        pop     bc
0437 71        ld      (hl),c
0438 23        inc     hl
0439 70        ld      (hl),b
043a 23        inc     hl
043b 73        ld      (hl),e
043c 23        inc     hl
043d 72        ld      (hl),d
043e 23        inc     hl
043f c9        ret     

0440 23        inc     hl
0441 23        inc     hl
0442 71        ld      (hl),c
0443 23        inc     hl
0444 70        ld      (hl),b
0445 23        inc     hl
0446 23        inc     hl
0447 23        inc     hl
0448 c9        ret     

0449 fe41      cp      41h
044b d8        ret     c

044c fe5b      cp      5bh
044e d0        ret     nc

044f f620      or      20h
0451 c9        ret     

0452 fde3      ex      (sp),iy
0454 cd0907    call    0709h
0457 fde1      pop     iy
0459 c9        ret     

045a fd7e06    ld      a,(iy+06h)
045d e6fc      and     0fch
045f fd7706    ld      (iy+06h),a
0462 c9        ret     

0463 3d        dec     a
0464 ca0506    jp      z,0605h
0467 c3fc05    jp      05fch
046a 7d        ld      a,l
046b e603      and     03h
046d ee01      xor     01h
046f fdb606    or      (iy+06h)
0472 fd7706    ld      (iy+06h),a
0475 37        scf     
0476 c9        ret     

0477 fe0f      cp      0fh
0479 2803      jr      z,047eh          ; (+03h)
047b c38904    jp      0489h
047e 012000    ld      bc,0020h
0481 ed78      in      a,(c)
0483 2600      ld      h,00h
0485 6f        ld      l,a
0486 37        scf     
0487 3f        ccf     
0488 c9        ret     

0489 fe03      cp      03h
048b cad104    jp      z,04d1h
048e fe04      cp      04h
0490 caaf04    jp      z,04afh
0493 fe05      cp      05h
0495 ca0605    jp      z,0506h
0498 fe06      cp      06h
049a ca3005    jp      z,0530h
049d fe08      cp      08h
049f ca2d06    jp      z,062dh
04a2 fe07      cp      07h
04a4 caf104    jp      z,04f1h
04a7 fe09      cp      09h
04a9 ca2d06    jp      z,062dh
04ac c33a06    jp      063ah
04af 4d        ld      c,l
04b0 44        ld      b,h
04b1 11ffff    ld      de,0ffffh
04b4 13        inc     de
04b5 c5        push    bc
04b6 d5        push    de
04b7 3e03      ld      a,03h
04b9 cd0907    call    0709h
04bc d1        pop     de
04bd c1        pop     bc
04be 380e      jr      c,04ceh          ; (+0eh)
04c0 78        ld      a,b
04c1 b1        or      c
04c2 280a      jr      z,04ceh          ; (+0ah)
04c4 0b        dec     bc
04c5 7d        ld      a,l
04c6 d9        exx     
04c7 cdcd07    call    07cdh
04ca d9        exx     
04cb 30e7      jr      nc,04b4h         ; (-19h)
04cd 3f        ccf     
04ce 4b        ld      c,e
04cf 42        ld      b,d
04d0 c9        ret     

04d1 fd7e06    ld      a,(iy+06h)
04d4 e603      and     03h
04d6 c26304    jp      nz,0463h
04d9 3e0f      ld      a,0fh
04db cd0907    call    0709h
04de da6a04    jp      c,046ah
04e1 6f        ld      l,a
04e2 2600      ld      h,00h
04e4 fe0d      cp      0dh
04e6 2802      jr      z,04eah          ; (+02h)
04e8 b7        or      a
04e9 c9        ret     

04ea fdcb0746  bit     0,(iy+07h)
04ee c8        ret     z

04ef 18e8      jr      04d9h            ; (-18h)
04f1 7c        ld      a,h
04f2 b5        or      l
04f3 200a      jr      nz,04ffh         ; (+0ah)
04f5 1c        inc     e
04f6 1d        dec     e
04f7 200b      jr      nz,0504h         ; (+0bh)
04f9 15        dec     d
04fa cac506    jp      z,06c5h
04fd 1805      jr      0504h            ; (+05h)
04ff 7a        ld      a,d
0500 b3        or      e
0501 ca5a04    jp      z,045ah
0504 37        scf     
0505 c9        ret     

0506 d9        exx     
0507 78        ld      a,b
0508 b1        or      c
0509 2812      jr      z,051dh          ; (+12h)
050b 0b        dec     bc
050c c5        push    bc
050d d5        push    de
050e 3e03      ld      a,03h
0510 cd0907    call    0709h
0513 d1        pop     de
0514 c1        pop     bc
0515 380e      jr      c,0525h          ; (+0eh)
0517 12        ld      (de),a
0518 13        inc     de
0519 fe0a      cp      0ah
051b 20ea      jr      nz,0507h         ; (-16h)
051d c5        push    bc
051e d9        exx     
051f c1        pop     bc
0520 ed42      sbc     hl,bc
0522 4d        ld      c,l
0523 44        ld      b,h
0524 c9        ret     

0525 e5        push    hl
0526 c5        push    bc
0527 d9        exx     
0528 c1        pop     bc
0529 ed42      sbc     hl,bc
052b 4d        ld      c,l
052c 44        ld      b,h
052d e1        pop     hl
052e 37        scf     
052f c9        ret     

0530 d9        exx     
0531 79        ld      a,c
0532 fe01      cp      01h
0534 c24d06    jp      nz,064dh
0537 cb7a      bit     7,d
0539 c24d06    jp      nz,064dh
053c 7a        ld      a,d
053d b3        or      e
053e b4        or      h
053f b5        or      l
0540 c8        ret     z

0541 cde507    call    07e5h
0544 d5        push    de
0545 e5        push    hl
0546 3e03      ld      a,03h
0548 cd0907    call    0709h
054b e1        pop     hl
054c d1        pop     de
054d 30ed      jr      nc,053ch         ; (-13h)
054f c34606    jp      0646h
0552 fe20      cp      20h
0554 2803      jr      z,0559h          ; (+03h)
0556 c36205    jp      0562h
0559 79        ld      a,c
055a 012000    ld      bc,0020h
055d ed79      out     (c),a
055f 37        scf     
0560 3f        ccf     
0561 c9        ret     

0562 fe1e      cp      1eh
0564 ca8805    jp      z,0588h
0567 fe02      cp      02h
0569 cac605    jp      z,05c6h
056c fe01      cp      01h
056e cab205    jp      z,05b2h
0571 fe06      cp      06h
0573 ca4d06    jp      z,064dh
0576 fe08      cp      08h
0578 ca2d06    jp      z,062dh
057b fe07      cp      07h
057d caa205    jp      z,05a2h
0580 fe09      cp      09h
0582 ca2d06    jp      z,062dh
0585 c33a06    jp      063ah
0588 fdcb0666  bit     4,(iy+06h)
058c 2810      jr      z,059eh          ; (+10h)
058e 79        ld      a,c
058f fe0d      cp      0dh
0591 c8        ret     z

0592 fe0a      cp      0ah
0594 2008      jr      nz,059eh         ; (+08h)
0596 0e0d      ld      c,0dh
0598 cd9e05    call    059eh
059b d8        ret     c

059c 0e0a      ld      c,0ah
059e 3e20      ld      a,20h
05a0 fde9      jp      (iy)
05a2 7c        ld      a,h
05a3 b5        or      l
05a4 200a      jr      nz,05b0h         ; (+0ah)
05a6 14        inc     d
05a7 15        dec     d
05a8 2006      jr      nz,05b0h         ; (+06h)
05aa 7b        ld      a,e
05ab fe10      cp      10h
05ad cac506    jp      z,06c5h
05b0 37        scf     
05b1 c9        ret     

05b2 d9        exx     
05b3 210000    ld      hl,0000h
05b6 7b        ld      a,e
05b7 d9        exx     
05b8 4f        ld      c,a
05b9 3e1e      ld      a,1eh
05bb cd0907    call    0709h
05be d9        exx     
05bf d8        ret     c

05c0 eda1      cpi     
05c2 eab605    jp      pe,05b6h
05c5 c9        ret     

05c6 d9        exx     
05c7 110000    ld      de,0000h
05ca 7e        ld      a,(hl)
05cb d9        exx     
05cc 4f        ld      c,a
05cd 3e1e      ld      a,1eh
05cf cd0907    call    0709h
05d2 d9        exx     
05d3 3806      jr      c,05dbh          ; (+06h)
05d5 13        inc     de
05d6 eda1      cpi     
05d8 eaca05    jp      pe,05cah
05db d5        push    de
05dc d9        exx     
05dd e1        pop     hl
05de c9        ret     

05df e1        pop     hl
05e0 e1        pop     hl
05e1 cde705    call    05e7h
05e4 23        inc     hl
05e5 c9        ret     

05e6 e1        pop     hl
05e7 2e09      ld      l,09h
05e9 c3f105    jp      05f1h
05ec e1        pop     hl
05ed e1        pop     hl
05ee e1        pop     hl
05ef 2eff      ld      l,0ffh
05f1 2600      ld      h,00h
05f3 228b16    ld      (168bh),hl
05f6 c3fc05    jp      05fch
05f9 e1        pop     hl
05fa e1        pop     hl
05fb e1        pop     hl
05fc 21ffff    ld      hl,0ffffh
05ff 37        scf     
0600 c9        ret     

0601 e1        pop     hl
0602 e1        pop     hl
0603 e1        pop     hl
0604 e1        pop     hl
0605 210000    ld      hl,0000h
0608 37        scf     
0609 c9        ret     

060a e1        pop     hl
060b e1        pop     hl
060c e1        pop     hl
060d cd1306    call    0613h
0610 23        inc     hl
0611 c9        ret     

0612 e1        pop     hl
0613 2e06      ld      l,06h
0615 c3f105    jp      05f1h
0618 e1        pop     hl
0619 cd1f06    call    061fh
061c 23        inc     hl
061d c9        ret     

061e e1        pop     hl
061f 2e0d      ld      l,0dh
0621 c3f105    jp      05f1h
0624 e1        pop     hl
0625 2e01      ld      l,01h
0627 c3f105    jp      05f1h
062a e1        pop     hl
062b e1        pop     hl
062c e1        pop     hl
062d 210000    ld      hl,0000h
0630 37        scf     
0631 3f        ccf     
0632 c9        ret     

0633 e1        pop     hl
0634 2e04      ld      l,04h
0636 c3f105    jp      05f1h
0639 e1        pop     hl
063a cd4006    call    0640h
063d 23        inc     hl
063e c9        ret     

063f e1        pop     hl
0640 2e0b      ld      l,0bh
0642 c3f105    jp      05f1h
0645 e1        pop     hl
0646 110000    ld      de,0000h
0649 c30506    jp      0605h
064c e1        pop     hl
064d 110000    ld      de,0000h
0650 c32d06    jp      062dh
0653 e1        pop     hl
0654 cd5b06    call    065bh
0657 23        inc     hl
0658 c9        ret     

0659 e1        pop     hl
065a e1        pop     hl
065b 2e03      ld      l,03h
065d c3f105    jp      05f1h
0660 e1        pop     hl
0661 e1        pop     hl
0662 cd6806    call    0668h
0665 23        inc     hl
0666 c9        ret     

0667 e1        pop     hl
0668 2e0a      ld      l,0ah
066a c3f105    jp      05f1h
066d d5        push    de
066e cde806    call    06e8h
0671 e1        pop     hl
0672 dafc05    jp      c,05fch
0675 79        ld      a,c
0676 e607      and     07h
0678 37        scf     
0679 2810      jr      z,068bh          ; (+10h)
067b fd7e06    ld      a,(iy+06h)
067e a9        xor     c
067f e607      and     07h
0681 2808      jr      z,068bh          ; (+08h)
0683 cde106    call    06e1h
0686 20f3      jr      nz,067bh         ; (-0dh)
0688 c34006    jp      0640h
068b 59        ld      e,c
068c 50        ld      d,b
068d cdf10d    call    0df1h
0690 381f      jr      c,06b1h          ; (+1fh)
0692 7a        ld      a,d
0693 07        rlca    
0694 07        rlca    
0695 e603      and     03h
0697 2818      jr      z,06b1h          ; (+18h)
0699 3d        dec     a
069a 281e      jr      z,06bah          ; (+1eh)
069c 3d        dec     a
069d 2807      jr      z,06a6h          ; (+07h)
069f 78        ld      a,b
06a0 b1        or      c
06a1 2803      jr      z,06a6h          ; (+03h)
06a3 01ffff    ld      bc,0ffffh
06a6 7a        ld      a,d
06a7 e63f      and     3fh
06a9 57        ld      d,a
06aa 7b        ld      a,e
06ab e6f8      and     0f8h
06ad 5f        ld      e,a
06ae 210000    ld      hl,0000h
06b1 3e07      ld      a,07h
06b3 cd0907    call    0709h
06b6 d0        ret     nc

06b7 c3fc05    jp      05fch
06ba 7b        ld      a,e
06bb fda609    and     (iy+09h)
06be 6f        ld      l,a
06bf 7a        ld      a,d
06c0 fda60a    and     (iy+0ah)
06c3 67        ld      h,a
06c4 c9        ret     

06c5 d8        ret     c

06c6 fd6e06    ld      l,(iy+06h)
06c9 fd6607    ld      h,(iy+07h)
06cc 7b        ld      a,e
06cd a1        and     c
06ce 4f        ld      c,a
06cf 7a        ld      a,d
06d0 a0        and     b
06d1 47        ld      b,a
06d2 7b        ld      a,e
06d3 2f        cpl     
06d4 a5        and     l
06d5 b1        or      c
06d6 fd7706    ld      (iy+06h),a
06d9 7a        ld      a,d
06da 2f        cpl     
06db a4        and     h
06dc b0        or      b
06dd fd7707    ld      (iy+07h),a
06e0 c9        ret     

06e1 fdcb067e  bit     7,(iy+06h)
06e5 c8        ret     z

06e6 af        xor     a
06e7 c9        ret     

06e8 cdf306    call    06f3h
06eb d8        ret     c

06ec ca5406    jp      z,0654h
06ef d5        push    de
06f0 fde1      pop     iy
06f2 c9        ret     

06f3 7c        ld      a,h
06f4 b7        or      a
06f5 c25406    jp      nz,0654h
06f8 7d        ld      a,l
06f9 d603      sub     03h
06fb d25406    jp      nc,0654h
06fe 29        add     hl,hl
06ff 114816    ld      de,1648h
0702 19        add     hl,de
0703 5e        ld      e,(hl)
0704 23        inc     hl
0705 56        ld      d,(hl)
0706 7a        ld      a,d
0707 b3        or      e
0708 c9        ret     

0709 fde9      jp      (iy)
070b e1        pop     hl
070c c9        ret     

070d 77        ld      (hl),a
070e 23        inc     hl
070f 77        ld      (hl),a
0710 23        inc     hl
0711 77        ld      (hl),a
0712 23        inc     hl
0713 77        ld      (hl),a
0714 23        inc     hl
0715 77        ld      (hl),a
0716 23        inc     hl
0717 77        ld      (hl),a
0718 23        inc     hl
0719 77        ld      (hl),a
071a 23        inc     hl
071b 77        ld      (hl),a
071c 23        inc     hl
071d 77        ld      (hl),a
071e 23        inc     hl
071f 77        ld      (hl),a
0720 23        inc     hl
0721 77        ld      (hl),a
0722 23        inc     hl
0723 77        ld      (hl),a
0724 23        inc     hl
0725 77        ld      (hl),a
0726 23        inc     hl
0727 77        ld      (hl),a
0728 23        inc     hl
0729 77        ld      (hl),a
072a 23        inc     hl
072b 77        ld      (hl),a
072c 23        inc     hl
072d c9        ret     

072e 210000    ld      hl,0000h
0731 1b        dec     de
0732 e5        push    hl
0733 f1        pop     af
0734 13        inc     de
0735 1a        ld      a,(de)
0736 d630      sub     30h
0738 3f        ccf     
0739 d0        ret     nc

073a fe0a      cp      0ah
073c d0        ret     nc

073d e5        push    hl
073e 29        add     hl,hl
073f 3812      jr      c,0753h          ; (+12h)
0741 4d        ld      c,l
0742 44        ld      b,h
0743 29        add     hl,hl
0744 380d      jr      c,0753h          ; (+0dh)
0746 29        add     hl,hl
0747 380a      jr      c,0753h          ; (+0ah)
0749 09        add     hl,bc
074a 3807      jr      c,0753h          ; (+07h)
074c 85        add     a,l
074d 6f        ld      l,a
074e 30e3      jr      nc,0733h         ; (-1dh)
0750 24        inc     h
0751 20e0      jr      nz,0733h         ; (-20h)
0753 e1        pop     hl
0754 37        scf     
0755 c9        ret     

0756 7d        ld      a,l
0757 2f        cpl     
0758 6f        ld      l,a
0759 7c        ld      a,h
075a 2f        cpl     
075b 67        ld      h,a
075c 23        inc     hl
075d c9        ret     

075e cb7c      bit     7,h
0760 c8        ret     z

0761 21ff7f    ld      hl,7fffh
0764 c9        ret     

0765 010001    ld      bc,0100h
0768 c5        push    bc
0769 01f600    ld      bc,00f6h
076c c5        push    bc
076d 019c00    ld      bc,009ch
0770 c5        push    bc
0771 0118fd    ld      bc,0fd18h
0774 c5        push    bc
0775 01f0d8    ld      bc,0d8f0h
0778 380c      jr      c,0786h          ; (+0ch)
077a cd9407    call    0794h
077d fe30      cp      30h
077f 2008      jr      nz,0789h         ; (+08h)
0781 c1        pop     bc
0782 10f6      djnz    077ah            ; (-0ah)
0784 1808      jr      078eh            ; (+08h)
0786 cd9407    call    0794h
0789 12        ld      (de),a
078a 13        inc     de
078b c1        pop     bc
078c 10f8      djnz    0786h            ; (-08h)
078e 7d        ld      a,l
078f c630      add     a,30h
0791 12        ld      (de),a
0792 13        inc     de
0793 c9        ret     

0794 3e2f      ld      a,2fh
0796 3c        inc     a
0797 09        add     hl,bc
0798 38fc      jr      c,0796h          ; (-04h)
079a ed42      sbc     hl,bc
079c c9        ret     

079d cb7a      bit     7,d
079f c8        ret     z

07a0 11ff7f    ld      de,7fffh
07a3 c9        ret     

07a4 19        add     hl,de
07a5 d0        ret     nc

07a6 21ffff    ld      hl,0ffffh
07a9 c9        ret     

07aa 78        ld      a,b
07ab bc        cp      h
07ac d8        ret     c

07ad 2003      jr      nz,07b2h         ; (+03h)
07af 79        ld      a,c
07b0 bd        cp      l
07b1 d8        ret     c

07b2 69        ld      l,c
07b3 60        ld      h,b
07b4 c9        ret     

07b5 7d        ld      a,l
07b6 2f        cpl     
07b7 6f        ld      l,a
07b8 7c        ld      a,h
07b9 2f        cpl     
07ba 67        ld      h,a
07bb 7b        ld      a,e
07bc 2f        cpl     
07bd 5f        ld      e,a
07be 7a        ld      a,d
07bf 2f        cpl     
07c0 57        ld      d,a
07c1 2c        inc     l
07c2 c0        ret     nz

07c3 24        inc     h
07c4 c0        ret     nz

07c5 13        inc     de
07c6 c9        ret     

07c7 09        add     hl,bc
07c8 d0        ret     nc

07c9 21ffff    ld      hl,0ffffh
07cc c9        ret     

07cd e9        jp      (hl)
07ce fe0a      cp      0ah
07d0 3003      jr      nc,07d5h         ; (+03h)
07d2 c630      add     a,30h
07d4 c9        ret     

07d5 c637      add     a,37h
07d7 c9        ret     

07d8 78        ld      a,b
07d9 b7        or      a
07da c0        ret     nz

07db b1        or      c
07dc c8        ret     z

07dd 79        ld      a,c
07de fe25      cp      25h
07e0 d0        ret     nc

07e1 fe02      cp      02h
07e3 3f        ccf     
07e4 c9        ret     

07e5 7c        ld      a,h
07e6 b5        or      l
07e7 2802      jr      z,07ebh          ; (+02h)
07e9 2b        dec     hl
07ea c9        ret     

07eb b3        or      e
07ec 2803      jr      z,07f1h          ; (+03h)
07ee 2b        dec     hl
07ef 1b        dec     de
07f0 c9        ret     

07f1 b2        or      d
07f2 c8        ret     z

07f3 2b        dec     hl
07f4 1b        dec     de
07f5 c9        ret     

07f6 37        scf     
07f7 79        ld      a,c
07f8 d9        exx     
07f9 6f        ld      l,a
07fa 110000    ld      de,0000h
07fd 62        ld      h,d
07fe d40f08    call    nc,080fh
0801 dc0908    call    c,0809h
0804 d9        exx     
0805 7d        ld      a,l
0806 d9        exx     
0807 c9        ret     

0808 d9        exx     
0809 7a        ld      a,d
080a b3        or      e
080b b4        or      h
080c b5        or      l
080d 2842      jr      z,0851h          ; (+42h)
080f af        xor     a
0810 e5        push    hl
0811 d9        exx     
0812 4d        ld      c,l
0813 44        ld      b,h
0814 e1        pop     hl
0815 d5        push    de
0816 eb        ex      de,hl
0817 6f        ld      l,a
0818 67        ld      h,a
0819 d9        exx     
081a c1        pop     bc
081b 6f        ld      l,a
081c 67        ld      h,a
081d 78        ld      a,b
081e 0620      ld      b,20h
0820 d9        exx     
0821 cb11      rl      c
0823 cb10      rl      b
0825 d9        exx     
0826 cb11      rl      c
0828 17        rla     
0829 d9        exx     
082a ed6a      adc     hl,hl
082c d9        exx     
082d ed6a      adc     hl,hl
082f d9        exx     
0830 ed52      sbc     hl,de
0832 d9        exx     
0833 ed52      sbc     hl,de
0835 3005      jr      nc,083ch         ; (+05h)
0837 d9        exx     
0838 19        add     hl,de
0839 d9        exx     
083a ed5a      adc     hl,de
083c 3f        ccf     
083d 10e1      djnz    0820h            ; (-1fh)
083f d9        exx     
0840 cb11      rl      c
0842 cb10      rl      b
0844 d9        exx     
0845 cb11      rl      c
0847 17        rla     
0848 e5        push    hl
0849 d9        exx     
084a d1        pop     de
084b c5        push    bc
084c d9        exx     
084d e1        pop     hl
084e 59        ld      e,c
084f 57        ld      d,a
0850 c9        ret     

0851 1b        dec     de
0852 c33406    jp      0634h
0855 eb        ex      de,hl
0856 7a        ld      a,d
0857 b3        or      e
0858 2832      jr      z,088ch          ; (+32h)
085a 14        inc     d
085b 15        dec     d
085c 281c      jr      z,087ah          ; (+1ch)
085e 7d        ld      a,l
085f 6c        ld      l,h
0860 2600      ld      h,00h
0862 0608      ld      b,08h
0864 17        rla     
0865 ed6a      adc     hl,hl
0867 ed52      sbc     hl,de
0869 3001      jr      nc,086ch         ; (+01h)
086b 19        add     hl,de
086c 3f        ccf     
086d 10f5      djnz    0864h            ; (-0bh)
086f 17        rla     
0870 50        ld      d,b
0871 5f        ld      e,a
0872 eb        ex      de,hl
0873 b7        or      a
0874 c9        ret     

0875 eb        ex      de,hl
0876 1c        inc     e
0877 1d        dec     e
0878 2812      jr      z,088ch          ; (+12h)
087a af        xor     a
087b 57        ld      d,a
087c 0610      ld      b,10h
087e 29        add     hl,hl
087f 17        rla     
0880 3803      jr      c,0885h          ; (+03h)
0882 bb        cp      e
0883 3802      jr      c,0887h          ; (+02h)
0885 93        sub     e
0886 2c        inc     l
0887 10f5      djnz    087eh            ; (-0bh)
0889 5f        ld      e,a
088a b7        or      a
088b c9        ret     

088c eb        ex      de,hl
088d c33406    jp      0634h
0890 cda00a    call    0aa0h
0893 4d        ld      c,l
0894 44        ld      b,h
0895 c39808    jp      0898h
0898 fd2a5f16  ld      iy,(165fh)
089c c39f08    jp      089fh
089f cda70a    call    0aa7h
08a2 d8        ret     c

08a3 21d4ff    ld      hl,0ffd4h
08a6 39        add     hl,sp
08a7 f9        ld      sp,hl
08a8 c5        push    bc
08a9 d9        exx     
08aa 210000    ld      hl,0000h
08ad d9        exx     
08ae 6b        ld      l,e
08af 62        ld      h,d
08b0 0e25      ld      c,25h
08b2 cd6b0e    call    0e6bh
08b5 e5        push    hl
08b6 b7        or      a
08b7 ed52      sbc     hl,de
08b9 4d        ld      c,l
08ba 44        ld      b,h
08bb eb        ex      de,hl
08bc c4cd0d    call    nz,0dcdh
08bf d1        pop     de
08c0 da570a    jp      c,0a57h
08c3 1a        ld      a,(de)
08c4 b7        or      a
08c5 280b      jr      z,08d2h          ; (+0bh)
08c7 13        inc     de
08c8 1a        ld      a,(de)
08c9 fe25      cp      25h
08cb 201c      jr      nz,08e9h         ; (+1ch)
08cd 6b        ld      l,e
08ce 62        ld      h,d
08cf 23        inc     hl
08d0 18de      jr      08b0h            ; (-22h)
08d2 212e00    ld      hl,002eh
08d5 39        add     hl,sp
08d6 f9        ld      sp,hl
08d7 d9        exx     
08d8 e5        push    hl
08d9 d9        exx     
08da e1        pop     hl
08db b7        or      a
08dc c35e07    jp      075eh
08df 2b        dec     hl
08e0 40        ld      b,b
08e1 2020      jr      nz,0903h         ; (+20h)
08e3 23        inc     hl
08e4 1030      djnz    0916h            ; (+30h)
08e6 08        ex      af,af'
08e7 2d        dec     l
08e8 04        inc     b
08e9 1b        dec     de
08ea 0e00      ld      c,00h
08ec 13        inc     de
08ed 1a        ld      a,(de)
08ee 21df08    ld      hl,08dfh
08f1 0605      ld      b,05h
08f3 be        cp      (hl)
08f4 23        inc     hl
08f5 2821      jr      z,0918h          ; (+21h)
08f7 23        inc     hl
08f8 10f9      djnz    08f3h            ; (-07h)
08fa fd7105    ld      (iy+05h),c
08fd fe2a      cp      2ah
08ff 201c      jr      nz,091dh         ; (+1ch)
0901 e1        pop     hl
0902 13        inc     de
0903 d5        push    de
0904 cd9b0a    call    0a9bh
0907 eb        ex      de,hl
0908 cb7c      bit     7,h
090a 2807      jr      z,0913h          ; (+07h)
090c cd5607    call    0756h
090f fdcb05d6  set     2,(iy+05h)
0913 e3        ex      (sp),hl
0914 eb        ex      de,hl
0915 e5        push    hl
0916 1812      jr      092ah            ; (+12h)
0918 7e        ld      a,(hl)
0919 b1        or      c
091a 4f        ld      c,a
091b 18cf      jr      08ech            ; (-31h)
091d cd2e07    call    072eh
0920 da540a    jp      c,0a54h
0923 cb7c      bit     7,h
0925 c2540a    jp      nz,0a54h
0928 e3        ex      (sp),hl
0929 e5        push    hl
092a 210100    ld      hl,0001h
092d 1a        ld      a,(de)
092e fe2e      cp      2eh
0930 202c      jr      nz,095eh         ; (+2ch)
0932 fdcb05c6  set     0,(iy+05h)
0936 13        inc     de
0937 1a        ld      a,(de)
0938 fe2a      cp      2ah
093a 2017      jr      nz,0953h         ; (+17h)
093c e1        pop     hl
093d 13        inc     de
093e d5        push    de
093f cd9b0a    call    0a9bh
0942 eb        ex      de,hl
0943 cb7c      bit     7,h
0945 2807      jr      z,094eh          ; (+07h)
0947 210100    ld      hl,0001h
094a fdcb0586  res     0,(iy+05h)
094e e3        ex      (sp),hl
094f eb        ex      de,hl
0950 e5        push    hl
0951 180d      jr      0960h            ; (+0dh)
0953 cd2e07    call    072eh
0956 da530a    jp      c,0a53h
0959 cb7c      bit     7,h
095b c2530a    jp      nz,0a53h
095e e3        ex      (sp),hl
095f e5        push    hl
0960 cd6d0a    call    0a6dh
0963 1a        ld      a,(de)
0964 13        inc     de
0965 fe49      cp      49h
0967 2830      jr      z,0999h          ; (+30h)
0969 47        ld      b,a
096a 79        ld      a,c
096b e630      and     30h
096d d610      sub     10h
096f 3019      jr      nc,098ah         ; (+19h)
0971 21f509    ld      hl,09f5h
0974 cdd809    call    09d8h
0977 3827      jr      c,09a0h          ; (+27h)
0979 21ec09    ld      hl,09ech
097c cdd809    call    09d8h
097f 381f      jr      c,09a0h          ; (+1fh)
0981 cd0d06    call    060dh
0984 213200    ld      hl,0032h
0987 c35a0a    jp      0a5ah
098a 20ed      jr      nz,0979h         ; (-13h)
098c 211a0a    ld      hl,0a1ah
098f cdd809    call    09d8h
0992 30e5      jr      nc,0979h         ; (-1bh)
0994 013f0a    ld      bc,0a3fh
0997 180a      jr      09a3h            ; (+0ah)
0999 214f0b    ld      hl,0b4fh
099c 3e80      ld      a,80h
099e 18f4      jr      0994h            ; (-0ch)
09a0 01440a    ld      bc,0a44h
09a3 cb6f      bit     5,a
09a5 2804      jr      z,09abh          ; (+04h)
09a7 fdcb05ce  set     1,(iy+05h)
09ab cb67      bit     4,a
09ad 2804      jr      z,09b3h          ; (+04h)
09af fdcb05a6  res     4,(iy+05h)
09b3 e6c0      and     0c0h
09b5 fd7704    ld      (iy+04h),a
09b8 e3        ex      (sp),hl
09b9 e5        push    hl
09ba 210f00    ld      hl,000fh
09bd 39        add     hl,sp
09be 72        ld      (hl),d
09bf 2b        dec     hl
09c0 73        ld      (hl),e
09c1 2b        dec     hl
09c2 d1        pop     de
09c3 72        ld      (hl),d
09c4 2b        dec     hl
09c5 73        ld      (hl),e
09c6 2b        dec     hl
09c7 70        ld      (hl),b
09c8 2b        dec     hl
09c9 71        ld      (hl),c
09ca 2b        dec     hl
09cb 4d        ld      c,l
09cc 44        ld      b,h
09cd 210a00    ld      hl,000ah
09d0 09        add     hl,bc
09d1 7c        ld      a,h
09d2 02        ld      (bc),a
09d3 0b        dec     bc
09d4 7d        ld      a,l
09d5 02        ld      (bc),a
09d6 eb        ex      de,hl
09d7 c9        ret     

09d8 7e        ld      a,(hl)
09d9 23        inc     hl
09da b7        or      a
09db c8        ret     z

09dc b8        cp      b
09dd 2805      jr      z,09e4h          ; (+05h)
09df 23        inc     hl
09e0 23        inc     hl
09e1 23        inc     hl
09e2 18f4      jr      09d8h            ; (-0ch)
09e4 7e        ld      a,(hl)
09e5 23        inc     hl
09e6 46        ld      b,(hl)
09e7 23        inc     hl
09e8 66        ld      h,(hl)
09e9 68        ld      l,b
09ea 37        scf     
09eb c9        ret     

09ec 73        ld      (hl),e
09ed 80        add     a,b
09ee 56        ld      d,(hl)
09ef 0d        dec     c
09f0 63        ld      h,e
09f1 80        add     a,b
09f2 1f        rra     
09f3 0b        dec     bc
09f4 00        nop     
09f5 64        ld      h,h
09f6 d0        ret     nc

09f7 49        ld      c,c
09f8 0b        dec     bc
09f9 75        ld      (hl),l
09fa 90        sub     b
09fb b0        or      b
09fc 0d        dec     c
09fd 78        ld      a,b
09fe 00        nop     
09ff b6        or      (hl)
0a00 0d        dec     c
0a01 58        ld      e,b
0a02 80        add     a,b
0a03 b6        or      (hl)
0a04 0d        dec     c
0a05 6f        ld      l,a
0a06 a0        and     b
0a07 360d      ld      (hl),0dh
0a09 6e        ld      l,(hl)
0a0a 80        add     a,b
0a0b f8        ret     m

0a0c 0b        dec     bc
0a0d 69        ld      l,c
0a0e d0        ret     nc

0a0f 49        ld      c,c
0a10 0b        dec     bc
0a11 70        ld      (hl),b
0a12 80        add     a,b
0a13 3c        inc     a
0a14 0d        dec     c
0a15 42        ld      b,d
0a16 90        sub     b
0a17 19        add     hl,de
0a18 0b        dec     bc
0a19 00        nop     
0a1a 64        ld      h,h
0a1b d0        ret     nc

0a1c b1        or      c
0a1d 0b        dec     bc
0a1e 75        ld      (hl),l
0a1f 90        sub     b
0a20 ec0b78    call    pe,780bh
0a23 00        nop     
0a24 f20b58    jp      p,580bh
0a27 80        add     a,b
0a28 f20b6f    jp      p,6f0bh
0a2b a0        and     b
0a2c cc0b6e    call    z,6e0bh
0a2f 80        add     a,b
0a30 b7        or      a
0a31 0b        dec     bc
0a32 69        ld      l,c
0a33 d0        ret     nc

0a34 b1        or      c
0a35 0b        dec     bc
0a36 70        ld      (hl),b
0a37 80        add     a,b
0a38 d20b42    jp      nc,420bh
0a3b 90        sub     b
0a3c ab        xor     e
0a3d 0b        dec     bc
0a3e 00        nop     
0a3f c1        pop     bc
0a40 03        inc     bc
0a41 03        inc     bc
0a42 1801      jr      0a45h            ; (+01h)
0a44 c1        pop     bc
0a45 03        inc     bc
0a46 03        inc     bc
0a47 d1        pop     de
0a48 381e      jr      c,0a68h          ; (+1eh)
0a4a 21f8ff    ld      hl,0fff8h
0a4d 39        add     hl,sp
0a4e f9        ld      sp,hl
0a4f c5        push    bc
0a50 c3ae08    jp      08aeh
0a53 c1        pop     bc
0a54 cd1906    call    0619h
0a57 212e00    ld      hl,002eh
0a5a 39        add     hl,sp
0a5b f9        ld      sp,hl
0a5c d9        exx     
0a5d e5        push    hl
0a5e d9        exx     
0a5f e1        pop     hl
0a60 cd5e07    call    075eh
0a63 23        inc     hl
0a64 37        scf     
0a65 c35607    jp      0756h
0a68 212400    ld      hl,0024h
0a6b 18ed      jr      0a5ah            ; (-13h)
0a6d 218f0a    ld      hl,0a8fh
0a70 0606      ld      b,06h
0a72 1a        ld      a,(de)
0a73 be        cp      (hl)
0a74 23        inc     hl
0a75 2806      jr      z,0a7dh          ; (+06h)
0a77 23        inc     hl
0a78 10f9      djnz    0a73h            ; (-07h)
0a7a 0e00      ld      c,00h
0a7c c9        ret     

0a7d 4e        ld      c,(hl)
0a7e 13        inc     de
0a7f fe6c      cp      6ch
0a81 2803      jr      z,0a86h          ; (+03h)
0a83 fe68      cp      68h
0a85 c0        ret     nz

0a86 47        ld      b,a
0a87 1a        ld      a,(de)
0a88 b8        cp      b
0a89 c0        ret     nz

0a8a 13        inc     de
0a8b 79        ld      a,c
0a8c 87        add     a,a
0a8d 4f        ld      c,a
0a8e c9        ret     

0a8f 6c        ld      l,h
0a90 104c      djnz    0adeh            ; (+4ch)
0a92 016802    ld      bc,0268h
0a95 6a        ld      l,d
0a96 08        ex      af,af'
0a97 74        ld      (hl),h
0a98 40        ld      b,b
0a99 7a        ld      a,d
0a9a 80        add     a,b
0a9b 5e        ld      e,(hl)
0a9c 23        inc     hl
0a9d 56        ld      d,(hl)
0a9e 23        inc     hl
0a9f c9        ret     

0aa0 210400    ld      hl,0004h
0aa3 39        add     hl,sp
0aa4 c39b0a    jp      0a9bh
0aa7 fd7e03    ld      a,(iy+03h)
0aaa e688      and     88h
0aac fe80      cp      80h
0aae 2014      jr      nz,0ac4h         ; (+14h)
0ab0 fdcb044e  bit     1,(iy+04h)
0ab4 c8        ret     z

0ab5 c5        push    bc
0ab6 d5        push    de
0ab7 e5        push    hl
0ab8 cdd30a    call    0ad3h
0abb e1        pop     hl
0abc d1        pop     de
0abd c1        pop     bc
0abe fd360400  ld      (iy+04h),00h
0ac2 b7        or      a
0ac3 c9        ret     

0ac4 e608      and     08h
0ac6 c2fc05    jp      nz,05fch
0ac9 c32506    jp      0625h
0acc fd7d      ld      a,iyl
0ace fdb4      or      iyh
0ad0 ca080b    jp      z,0b08h
0ad3 fdcb035e  bit     3,(iy+03h)
0ad7 c2fc05    jp      nz,05fch
0ada fdcb044e  bit     1,(iy+04h)
0ade 281d      jr      z,0afdh          ; (+1dh)
0ae0 fdcb0446  bit     0,(iy+04h)
0ae4 2817      jr      z,0afdh          ; (+17h)
0ae6 fdcb0486  res     0,(iy+04h)
0aea fdcb03a6  res     4,(iy+03h)
0aee 0e01      ld      c,01h
0af0 21ffff    ld      hl,0ffffh
0af3 5d        ld      e,l
0af4 54        ld      d,h
0af5 d9        exx     
0af6 0e01      ld      c,01h
0af8 3e06      ld      a,06h
0afa cd0907    call    0709h
0afd 3e08      ld      a,08h
0aff cd0907    call    0709h
0b02 d22d06    jp      nc,062dh
0b05 c3fc05    jp      05fch
0b08 218116    ld      hl,1681h
0b0b cd8203    call    0382h
0b0e e5        push    hl
0b0f fde1      pop     iy
0b11 c8        ret     z

0b12 e5        push    hl
0b13 cdd30a    call    0ad3h
0b16 e1        pop     hl
0b17 18f2      jr      0b0bh            ; (-0eh)
0b19 010200    ld      bc,0002h
0b1c c31f0c    jp      0c1fh
0b1f d1        pop     de
0b20 cd440b    call    0b44h
0b23 fdcb0556  bit     2,(iy+05h)
0b27 200d      jr      nz,0b36h         ; (+0dh)
0b29 e3        ex      (sp),hl
0b2a cd3d0b    call    0b3dh
0b2d d1        pop     de
0b2e e1        pop     hl
0b2f d8        ret     c

0b30 010100    ld      bc,0001h
0b33 c3c60d    jp      0dc6h
0b36 5d        ld      e,l
0b37 cd300b    call    0b30h
0b3a e1        pop     hl
0b3b d1        pop     de
0b3c d8        ret     c

0b3d 7c        ld      a,h
0b3e b5        or      l
0b3f c8        ret     z

0b40 2b        dec     hl
0b41 c3c20d    jp      0dc2h
0b44 7e        ld      a,(hl)
0b45 23        inc     hl
0b46 66        ld      h,(hl)
0b47 6f        ld      l,a
0b48 c9        ret     

0b49 010a00    ld      bc,000ah
0b4c c30b0c    jp      0c0bh
0b4f 4b        ld      c,e
0b50 42        ld      b,d
0b51 cd9b0a    call    0a9bh
0b54 cd440b    call    0b44h
0b57 d5        push    de
0b58 59        ld      e,c
0b59 50        ld      d,b
0b5a e5        push    hl
0b5b 6c        ld      l,h
0b5c 2600      ld      h,00h
0b5e cda20b    call    0ba2h
0b61 e1        pop     hl
0b62 2600      ld      h,00h
0b64 cda20b    call    0ba2h
0b67 e1        pop     hl
0b68 e5        push    hl
0b69 6c        ld      l,h
0b6a 2600      ld      h,00h
0b6c cda20b    call    0ba2h
0b6f e1        pop     hl
0b70 2600      ld      h,00h
0b72 cda20b    call    0ba2h
0b75 1b        dec     de
0b76 eb        ex      de,hl
0b77 c1        pop     bc
0b78 d1        pop     de
0b79 c1        pop     bc
0b7a ed42      sbc     hl,bc
0b7c eb        ex      de,hl
0b7d ed52      sbc     hl,de
0b7f 3003      jr      nc,0b84h         ; (+03h)
0b81 210000    ld      hl,0000h
0b84 fdcb0556  bit     2,(iy+05h)
0b88 200b      jr      nz,0b95h         ; (+0bh)
0b8a c5        push    bc
0b8b d5        push    de
0b8c cdc20d    call    0dc2h
0b8f c1        pop     bc
0b90 e1        pop     hl
0b91 d2cd0d    jp      nc,0dcdh
0b94 c9        ret     

0b95 e5        push    hl
0b96 69        ld      l,c
0b97 60        ld      h,b
0b98 4b        ld      c,e
0b99 42        ld      b,d
0b9a cdcd0d    call    0dcdh
0b9d c1        pop     bc
0b9e d2c40d    jp      nc,0dc4h
0ba1 c9        ret     

0ba2 b7        or      a
0ba3 cd6507    call    0765h
0ba6 3e2e      ld      a,2eh
0ba8 12        ld      (de),a
0ba9 13        inc     de
0baa c9        ret     

0bab 010200    ld      bc,0002h
0bae c30d0d    jp      0d0dh
0bb1 010a00    ld      bc,000ah
0bb4 c3f30c    jp      0cf3h
0bb7 d1        pop     de
0bb8 d1        pop     de
0bb9 d1        pop     de
0bba cd440b    call    0b44h
0bbd b4        or      h
0bbe c8        ret     z

0bbf d9        exx     
0bc0 e5        push    hl
0bc1 d9        exx     
0bc2 d1        pop     de
0bc3 af        xor     a
0bc4 73        ld      (hl),e
0bc5 23        inc     hl
0bc6 72        ld      (hl),d
0bc7 23        inc     hl
0bc8 77        ld      (hl),a
0bc9 23        inc     hl
0bca 77        ld      (hl),a
0bcb c9        ret     

0bcc 010800    ld      bc,0008h
0bcf c30d0d    jp      0d0dh
0bd2 fd7e05    ld      a,(iy+05h)
0bd5 cb3f      srl     a
0bd7 3805      jr      c,0bdeh          ; (+05h)
0bd9 c1        pop     bc
0bda 010600    ld      bc,0006h
0bdd c5        push    bc
0bde 37        scf     
0bdf 8f        adc     a,a
0be0 e60d      and     0dh
0be2 fd7705    ld      (iy+05h),a
0be5 fd360480  ld      (iy+04h),80h
0be9 c3f20b    jp      0bf2h
0bec 010a00    ld      bc,000ah
0bef c30d0d    jp      0d0dh
0bf2 011000    ld      bc,0010h
0bf5 c30d0d    jp      0d0dh
0bf8 d1        pop     de
0bf9 d1        pop     de
0bfa d1        pop     de
0bfb cd440b    call    0b44h
0bfe b4        or      h
0bff c8        ret     z

0c00 d9        exx     
0c01 e5        push    hl
0c02 d9        exx     
0c03 d1        pop     de
0c04 cd9d07    call    079dh
0c07 73        ld      (hl),e
0c08 23        inc     hl
0c09 72        ld      (hl),d
0c0a c9        ret     

0c0b cd440b    call    0b44h
0c0e b4        or      h
0c0f ca330c    jp      z,0c33h
0c12 cb7c      bit     7,h
0c14 2810      jr      z,0c26h          ; (+10h)
0c16 fdcb05fe  set     7,(iy+05h)
0c1a cd5607    call    0756h
0c1d 1807      jr      0c26h            ; (+07h)
0c1f cd440b    call    0b44h
0c22 b4        or      h
0c23 ca330c    jp      z,0c33h
0c26 d5        push    de
0c27 fde5      push    iy
0c29 79        ld      a,c
0c2a cd4b0e    call    0e4bh
0c2d fde1      pop     iy
0c2f d1        pop     de
0c30 c3400c    jp      0c40h
0c33 4d        ld      c,l
0c34 44        ld      b,h
0c35 d1        pop     de
0c36 e1        pop     hl
0c37 ed52      sbc     hl,de
0c39 3038      jr      nc,0c73h         ; (+38h)
0c3b 210000    ld      hl,0000h
0c3e 1833      jr      0c73h            ; (+33h)
0c40 b7        or      a
0c41 ed52      sbc     hl,de
0c43 4d        ld      c,l
0c44 44        ld      b,h
0c45 e1        pop     hl
0c46 5d        ld      e,l
0c47 54        ld      d,h
0c48 cdaa07    call    07aah
0c4b eb        ex      de,hl
0c4c b7        or      a
0c4d ed42      sbc     hl,bc
0c4f 3003      jr      nc,0c54h         ; (+03h)
0c51 210000    ld      hl,0000h
0c54 fd7e05    ld      a,(iy+05h)
0c57 e6e0      and     0e0h
0c59 2801      jr      z,0c5ch          ; (+01h)
0c5b 13        inc     de
0c5c fdcb0566  bit     4,(iy+05h)
0c60 2808      jr      z,0c6ah          ; (+08h)
0c62 13        inc     de
0c63 fdcb054e  bit     1,(iy+05h)
0c67 2001      jr      nz,0c6ah         ; (+01h)
0c69 13        inc     de
0c6a e3        ex      (sp),hl
0c6b ed52      sbc     hl,de
0c6d 3003      jr      nc,0c72h         ; (+03h)
0c6f 210000    ld      hl,0000h
0c72 d1        pop     de
0c73 fd7e05    ld      a,(iy+05h)
0c76 e60d      and     0dh
0c78 fe08      cp      08h
0c7a 2007      jr      nz,0c83h         ; (+07h)
0c7c cda407    call    07a4h
0c7f eb        ex      de,hl
0c80 210000    ld      hl,0000h
0c83 d5        push    de
0c84 fdcb0556  bit     2,(iy+05h)
0c88 205f      jr      nz,0ce9h         ; (+5fh)
0c8a c5        push    bc
0c8b cdc20d    call    0dc2h
0c8e c1        pop     bc
0c8f d1        pop     de
0c90 e1        pop     hl
0c91 d8        ret     c

0c92 78        ld      a,b
0c93 b1        or      c
0c94 284f      jr      z,0ce5h          ; (+4fh)
0c96 2b        dec     hl
0c97 2b        dec     hl
0c98 2b        dec     hl
0c99 c5        push    bc
0c9a d5        push    de
0c9b 5d        ld      e,l
0c9c 54        ld      d,h
0c9d fdcb0476  bit     6,(iy+04h)
0ca1 c4990d    call    nz,0d99h
0ca4 fdcb0566  bit     4,(iy+05h)
0ca8 2814      jr      z,0cbeh          ; (+14h)
0caa 3630      ld      (hl),30h
0cac fdcb054e  bit     1,(iy+05h)
0cb0 200b      jr      nz,0cbdh         ; (+0bh)
0cb2 23        inc     hl
0cb3 3678      ld      (hl),78h
0cb5 fdcb047e  bit     7,(iy+04h)
0cb9 2802      jr      z,0cbdh          ; (+02h)
0cbb 3658      ld      (hl),58h
0cbd 23        inc     hl
0cbe b7        or      a
0cbf ed52      sbc     hl,de
0cc1 4d        ld      c,l
0cc2 44        ld      b,h
0cc3 eb        ex      de,hl
0cc4 e5        push    hl
0cc5 cdcd0d    call    0dcdh
0cc8 d1        pop     de
0cc9 3805      jr      c,0cd0h          ; (+05h)
0ccb c1        pop     bc
0ccc d5        push    de
0ccd cdbe0d    call    0dbeh
0cd0 e1        pop     hl
0cd1 c1        pop     bc
0cd2 d8        ret     c

0cd3 23        inc     hl
0cd4 23        inc     hl
0cd5 23        inc     hl
0cd6 fdcb047e  bit     7,(iy+04h)
0cda c2cd0d    jp      nz,0dcdh
0cdd c5        push    bc
0cde cd850e    call    0e85h
0ce1 c1        pop     bc
0ce2 c3cd0d    jp      0dcdh
0ce5 eb        ex      de,hl
0ce6 c3bc0d    jp      0dbch
0ce9 d1        pop     de
0cea e3        ex      (sp),hl
0ceb cd920c    call    0c92h
0cee c1        pop     bc
0cef d2c40d    jp      nc,0dc4h
0cf2 c9        ret     

0cf3 d5        push    de
0cf4 cd9b0a    call    0a9bh
0cf7 cd440b    call    0b44h
0cfa b4        or      h
0cfb b3        or      e
0cfc b2        or      d
0cfd 2833      jr      z,0d32h          ; (+33h)
0cff eb        ex      de,hl
0d00 cb7a      bit     7,d
0d02 2816      jr      z,0d1ah          ; (+16h)
0d04 fdcb05fe  set     7,(iy+05h)
0d08 cdb507    call    07b5h
0d0b 180d      jr      0d1ah            ; (+0dh)
0d0d d5        push    de
0d0e cd9b0a    call    0a9bh
0d11 cd440b    call    0b44h
0d14 b4        or      h
0d15 b3        or      e
0d16 b2        or      d
0d17 2819      jr      z,0d32h          ; (+19h)
0d19 eb        ex      de,hl
0d1a fde3      ex      (sp),iy
0d1c d9        exx     
0d1d c5        push    bc
0d1e d5        push    de
0d1f e5        push    hl
0d20 d9        exx     
0d21 79        ld      a,c
0d22 cd240e    call    0e24h
0d25 d9        exx     
0d26 e1        pop     hl
0d27 d1        pop     de
0d28 c1        pop     bc
0d29 d9        exx     
0d2a fde5      push    iy
0d2c d1        pop     de
0d2d fde1      pop     iy
0d2f c3400c    jp      0c40h
0d32 d1        pop     de
0d33 c3330c    jp      0c33h
0d36 010800    ld      bc,0008h
0d39 c31f0c    jp      0c1fh
0d3c fd7e05    ld      a,(iy+05h)
0d3f cb3f      srl     a
0d41 3805      jr      c,0d48h          ; (+05h)
0d43 c1        pop     bc
0d44 010400    ld      bc,0004h
0d47 c5        push    bc
0d48 37        scf     
0d49 8f        adc     a,a
0d4a e60d      and     0dh
0d4c fd7705    ld      (iy+05h),a
0d4f fd360480  ld      (iy+04h),80h
0d53 c3b60d    jp      0db6h
0d56 cd440b    call    0b44h
0d59 c1        pop     bc
0d5a b4        or      h
0d5b 2003      jr      nz,0d60h         ; (+03h)
0d5d 21920d    ld      hl,0d92h
0d60 fdcb0546  bit     0,(iy+05h)
0d64 2003      jr      nz,0d69h         ; (+03h)
0d66 01ffff    ld      bc,0ffffh
0d69 cd750e    call    0e75h
0d6c eb        ex      de,hl
0d6d e3        ex      (sp),hl
0d6e ed52      sbc     hl,de
0d70 3003      jr      nc,0d75h         ; (+03h)
0d72 210000    ld      hl,0000h
0d75 fdcb0556  bit     2,(iy+05h)
0d79 200b      jr      nz,0d86h         ; (+0bh)
0d7b d5        push    de
0d7c cdc20d    call    0dc2h
0d7f c1        pop     bc
0d80 e1        pop     hl
0d81 d1        pop     de
0d82 d2cd0d    jp      nc,0dcdh
0d85 c9        ret     

0d86 e3        ex      (sp),hl
0d87 4b        ld      c,e
0d88 42        ld      b,d
0d89 cdcd0d    call    0dcdh
0d8c c1        pop     bc
0d8d d1        pop     de
0d8e d2c40d    jp      nc,0dc4h
0d91 c9        ret     

0d92 3c        inc     a
0d93 6e        ld      l,(hl)
0d94 75        ld      (hl),l
0d95 6c        ld      l,h
0d96 6c        ld      l,h
0d97 3e00      ld      a,00h
0d99 fd7e05    ld      a,(iy+05h)
0d9c 87        add     a,a
0d9d 3004      jr      nc,0da3h         ; (+04h)
0d9f 362d      ld      (hl),2dh
0da1 23        inc     hl
0da2 c9        ret     

0da3 87        add     a,a
0da4 3004      jr      nc,0daah         ; (+04h)
0da6 362b      ld      (hl),2bh
0da8 23        inc     hl
0da9 c9        ret     

0daa 87        add     a,a
0dab d0        ret     nc

0dac 3620      ld      (hl),20h
0dae 23        inc     hl
0daf c9        ret     

0db0 010a00    ld      bc,000ah
0db3 c31f0c    jp      0c1fh
0db6 011000    ld      bc,0010h
0db9 c31f0c    jp      0c1fh
0dbc 4d        ld      c,l
0dbd 44        ld      b,h
0dbe 1e30      ld      e,30h
0dc0 1804      jr      0dc6h            ; (+04h)
0dc2 4d        ld      c,l
0dc3 44        ld      b,h
0dc4 1e20      ld      e,20h
0dc6 78        ld      a,b
0dc7 b1        or      c
0dc8 c8        ret     z

0dc9 3e01      ld      a,01h
0dcb 1805      jr      0dd2h            ; (+05h)
0dcd 78        ld      a,b
0dce b1        or      c
0dcf c8        ret     z

0dd0 3e02      ld      a,02h
0dd2 c5        push    bc
0dd3 d9        exx     
0dd4 e3        ex      (sp),hl
0dd5 cd0907    call    0709h
0dd8 e5        push    hl
0dd9 d9        exx     
0dda e1        pop     hl
0ddb c1        pop     bc
0ddc 3809      jr      c,0de7h          ; (+09h)
0dde cdc707    call    07c7h
0de1 b7        or      a
0de2 e5        push    hl
0de3 d9        exx     
0de4 e1        pop     hl
0de5 d9        exx     
0de6 c9        ret     

0de7 fdcb03de  set     3,(iy+03h)
0deb cdc707    call    07c7h
0dee 37        scf     
0def 18f1      jr      0de2h            ; (-0fh)
0df1 4e        ld      c,(hl)
0df2 23        inc     hl
0df3 46        ld      b,(hl)
0df4 23        inc     hl
0df5 c9        ret     

0df6 118d16    ld      de,168dh
0df9 1a        ld      a,(de)
0dfa b7        or      a
0dfb ca2a02    jp      z,022ah
0dfe e5        push    hl
0dff 6f        ld      l,a
0e00 2600      ld      h,00h
0e02 29        add     hl,hl
0e03 19        add     hl,de
0e04 47        ld      b,a
0e05 56        ld      d,(hl)
0e06 2b        dec     hl
0e07 5e        ld      e,(hl)
0e08 2b        dec     hl
0e09 c5        push    bc
0e0a e5        push    hl
0e0b eb        ex      de,hl
0e0c cdcd07    call    07cdh
0e0f e1        pop     hl
0e10 c1        pop     bc
0e11 10f2      djnz    0e05h            ; (-0eh)
0e13 e1        pop     hl
0e14 c32a02    jp      022ah
0e17 fd7c      ld      a,iyh
0e19 fdb5      or      iyl
0e1b ca0506    jp      z,0605h
0e1e cdd807    call    07d8h
0e21 d20d06    jp      nc,060dh
0e24 af        xor     a
0e25 f5        push    af
0e26 c5        push    bc
0e27 cdf707    call    07f7h
0e2a c1        pop     bc
0e2b cdce07    call    07ceh
0e2e 37        scf     
0e2f f5        push    af
0e30 7a        ld      a,d
0e31 b3        or      e
0e32 b4        or      h
0e33 b5        or      l
0e34 20f0      jr      nz,0e26h         ; (-10h)
0e36 fde5      push    iy
0e38 e1        pop     hl
0e39 f1        pop     af
0e3a 77        ld      (hl),a
0e3b 23        inc     hl
0e3c 38fb      jr      c,0e39h          ; (-05h)
0e3e 2b        dec     hl
0e3f c9        ret     

0e40 7a        ld      a,d
0e41 b3        or      e
0e42 ca0506    jp      z,0605h
0e45 cdd807    call    07d8h
0e48 d20d06    jp      nc,060dh
0e4b d5        push    de
0e4c fde1      pop     iy
0e4e 59        ld      e,c
0e4f 50        ld      d,b
0e50 af        xor     a
0e51 f5        push    af
0e52 d5        push    de
0e53 cd7a08    call    087ah
0e56 7b        ld      a,e
0e57 d1        pop     de
0e58 cdce07    call    07ceh
0e5b 37        scf     
0e5c f5        push    af
0e5d 7c        ld      a,h
0e5e b5        or      l
0e5f 20f1      jr      nz,0e52h         ; (-0fh)
0e61 fde5      push    iy
0e63 e1        pop     hl
0e64 f1        pop     af
0e65 77        ld      (hl),a
0e66 23        inc     hl
0e67 38fb      jr      c,0e64h          ; (-05h)
0e69 2b        dec     hl
0e6a c9        ret     

0e6b 7e        ld      a,(hl)
0e6c b9        cp      c
0e6d c8        ret     z

0e6e 23        inc     hl
0e6f b7        or      a
0e70 20f9      jr      nz,0e6bh         ; (-07h)
0e72 2b        dec     hl
0e73 37        scf     
0e74 c9        ret     

0e75 5d        ld      e,l
0e76 54        ld      d,h
0e77 78        ld      a,b
0e78 b1        or      c
0e79 ca2d06    jp      z,062dh
0e7c af        xor     a
0e7d edb1      cpir    
0e7f 2001      jr      nz,0e82h         ; (+01h)
0e81 37        scf     
0e82 ed52      sbc     hl,de
0e84 c9        ret     

0e85 78        ld      a,b
0e86 b1        or      c
0e87 c8        ret     z

0e88 e5        push    hl
0e89 7e        ld      a,(hl)
0e8a cd4904    call    0449h
0e8d 77        ld      (hl),a
0e8e eda1      cpi     
0e90 ea890e    jp      pe,0e89h
0e93 e1        pop     hl
0e94 c9        ret     

0e95 e1        pop     hl
0e96 d1        pop     de
0e97 e3        ex      (sp),hl
0e98 c3d00e    jp      0ed0h
0e9b e1        pop     hl
0e9c d1        pop     de
0e9d e3        ex      (sp),hl
0e9e c3b80e    jp      0eb8h
0ea1 f1        pop     af
0ea2 d1        pop     de
0ea3 e1        pop     hl
0ea4 c1        pop     bc
0ea5 f5        push    af
0ea6 c30c0f    jp      0f0ch
0ea9 f1        pop     af
0eaa d1        pop     de
0eab e1        pop     hl
0eac c1        pop     bc
0ead f5        push    af
0eae c3ec0e    jp      0eech
0eb1 f1        pop     af
0eb2 e1        pop     hl
0eb3 c1        pop     bc
0eb4 f5        push    af
0eb5 c3750e    jp      0e75h
0eb8 7e        ld      a,(hl)
0eb9 cd4904    call    0449h
0ebc 4f        ld      c,a
0ebd 1a        ld      a,(de)
0ebe cd4904    call    0449h
0ec1 b9        cp      c
0ec2 2009      jr      nz,0ecdh         ; (+09h)
0ec4 13        inc     de
0ec5 23        inc     hl
0ec6 b7        or      a
0ec7 20ef      jr      nz,0eb8h         ; (-11h)
0ec9 1b        dec     de
0eca 6f        ld      l,a
0ecb 67        ld      h,a
0ecc c9        ret     

0ecd 91        sub     c
0ece 67        ld      h,a
0ecf c9        ret     

0ed0 1a        ld      a,(de)
0ed1 eda1      cpi     
0ed3 2008      jr      nz,0eddh         ; (+08h)
0ed5 13        inc     de
0ed6 b7        or      a
0ed7 20f7      jr      nz,0ed0h         ; (-09h)
0ed9 1b        dec     de
0eda 6f        ld      l,a
0edb 67        ld      h,a
0edc c9        ret     

0edd 2b        dec     hl
0ede 96        sub     (hl)
0edf 67        ld      h,a
0ee0 c9        ret     

0ee1 af        xor     a
0ee2 4f        ld      c,a
0ee3 47        ld      b,a
0ee4 edb1      cpir    
0ee6 21ffff    ld      hl,0ffffh
0ee9 ed42      sbc     hl,bc
0eeb c9        ret     

0eec 78        ld      a,b
0eed b1        or      c
0eee 2815      jr      z,0f05h          ; (+15h)
0ef0 7e        ld      a,(hl)
0ef1 cd4904    call    0449h
0ef4 fd6f      ld      iyl,a
0ef6 1a        ld      a,(de)
0ef7 cd4904    call    0449h
0efa fdbd      cp      iyl
0efc 200a      jr      nz,0f08h         ; (+0ah)
0efe 13        inc     de
0eff 23        inc     hl
0f00 0b        dec     bc
0f01 b7        or      a
0f02 20e8      jr      nz,0eech         ; (-18h)
0f04 1b        dec     de
0f05 6f        ld      l,a
0f06 67        ld      h,a
0f07 c9        ret     

0f08 fd95      sub     iyl
0f0a 67        ld      h,a
0f0b c9        ret     

0f0c 78        ld      a,b
0f0d b1        or      c
0f0e 280d      jr      z,0f1dh          ; (+0dh)
0f10 1a        ld      a,(de)
0f11 eda1      cpi     
0f13 200c      jr      nz,0f21h         ; (+0ch)
0f15 e21d0f    jp      po,0f1dh
0f18 13        inc     de
0f19 b7        or      a
0f1a 20f4      jr      nz,0f10h         ; (-0ch)
0f1c 1b        dec     de
0f1d 210000    ld      hl,0000h
0f20 c9        ret     

0f21 2b        dec     hl
0f22 96        sub     (hl)
0f23 67        ld      h,a
0f24 c9        ret     

0f25 79        ld      a,c
0f26 e6f8      and     0f8h
0f28 2015      jr      nz,0f3fh         ; (+15h)
0f2a 79        ld      a,c
0f2b e607      and     07h
0f2d 2810      jr      z,0f3fh          ; (+10h)
0f2f af        xor     a
0f30 cd2107    call    0721h
0f33 2b        dec     hl
0f34 2b        dec     hl
0f35 2b        dec     hl
0f36 36fe      ld      (hl),0feh
0f38 2b        dec     hl
0f39 2b        dec     hl
0f3a 71        ld      (hl),c
0f3b 210000    ld      hl,0000h
0f3e c9        ret     

0f3f 210100    ld      hl,0001h
0f42 37        scf     
0f43 c9        ret     

0f44 e1        pop     hl
0f45 d9        exx     
0f46 dde1      pop     ix
0f48 fde1      pop     iy
0f4a e1        pop     hl
0f4b d1        pop     de
0f4c c1        pop     bc
0f4d f1        pop     af
0f4e 08        ex      af,af'
0f4f d9        exx     
0f50 d1        pop     de
0f51 c1        pop     bc
0f52 f1        pop     af
0f53 e3        ex      (sp),hl
0f54 c9        ret     

0f55 e3        ex      (sp),hl
0f56 f5        push    af
0f57 c5        push    bc
0f58 d5        push    de
0f59 d9        exx     
0f5a 08        ex      af,af'
0f5b f5        push    af
0f5c c5        push    bc
0f5d d5        push    de
0f5e e5        push    hl
0f5f fde5      push    iy
0f61 dde5      push    ix
0f63 d9        exx     
0f64 e9        jp      (hl)
0f65 21af15    ld      hl,15afh
0f68 e5        push    hl
0f69 cd9008    call    0890h
0f6c f1        pop     af
0f6d c9        ret     

0f6e dde5      push    ix
0f70 dd210000  ld      ix,0000h
0f74 dd39      add     ix,sp
0f76 210300    ld      hl,0003h
0f79 e5        push    hl
0f7a 218816    ld      hl,1688h
0f7d 4e        ld      c,(hl)
0f7e 23        inc     hl
0f7f 46        ld      b,(hl)
0f80 c5        push    bc
0f81 dd6e04    ld      l,(ix+04h)
0f84 dd6605    ld      h,(ix+05h)
0f87 e5        push    hl
0f88 cd6b14    call    146bh
0f8b f1        pop     af
0f8c f1        pop     af
0f8d f1        pop     af
0f8e 4d        ld      c,l
0f8f 7c        ld      a,h
0f90 b1        or      c
0f91 2008      jr      nz,0f9bh         ; (+08h)
0f93 21b615    ld      hl,15b6h
0f96 6e        ld      l,(hl)
0f97 2600      ld      h,00h
0f99 1803      jr      0f9eh            ; (+03h)
0f9b 210000    ld      hl,0000h
0f9e dde1      pop     ix
0fa0 c9        ret     

0fa1 dde5      push    ix
0fa3 dd210000  ld      ix,0000h
0fa7 dd39      add     ix,sp
0fa9 dd7e05    ld      a,(ix+05h)
0fac ddb604    or      (ix+04h)
0faf 2009      jr      nz,0fbah         ; (+09h)
0fb1 2e10      ld      l,10h
0fb3 cda512    call    12a5h
0fb6 2e00      ld      l,00h
0fb8 1832      jr      0fech            ; (+32h)
0fba dd4e04    ld      c,(ix+04h)
0fbd dd4605    ld      b,(ix+05h)
0fc0 03        inc     bc
0fc1 03        inc     bc
0fc2 dd7e0a    ld      a,(ix+0ah)
0fc5 ddb609    or      (ix+09h)
0fc8 2007      jr      nz,0fd1h         ; (+07h)
0fca 3e03      ld      a,03h
0fcc 02        ld      (bc),a
0fcd 2e10      ld      l,10h
0fcf 181b      jr      0fech            ; (+1bh)
0fd1 dd5e09    ld      e,(ix+09h)
0fd4 dd560a    ld      d,(ix+0ah)
0fd7 dd7e08    ld      a,(ix+08h)
0fda 12        ld      (de),a
0fdb dd7e09    ld      a,(ix+09h)
0fde 219316    ld      hl,1693h
0fe1 77        ld      (hl),a
0fe2 dd7e0a    ld      a,(ix+0ah)
0fe5 23        inc     hl
0fe6 77        ld      (hl),a
0fe7 3e02      ld      a,02h
0fe9 02        ld      (bc),a
0fea 2e00      ld      l,00h
0fec dde1      pop     ix
0fee c9        ret     

0fef dde5      push    ix
0ff1 dd210000  ld      ix,0000h
0ff5 dd39      add     ix,sp
0ff7 21f6ff    ld      hl,0fff6h
0ffa 39        add     hl,sp
0ffb f9        ld      sp,hl
0ffc dd4e04    ld      c,(ix+04h)
0fff dd4605    ld      b,(ix+05h)
1002 69        ld      l,c
1003 60        ld      h,b
1004 3603      ld      (hl),03h
1006 23        inc     hl
1007 3600      ld      (hl),00h
1009 78        ld      a,b
100a b1        or      c
100b 200b      jr      nz,1018h         ; (+0bh)
100d 2e10      ld      l,10h
100f cda512    call    12a5h
1012 210000    ld      hl,0000h
1015 c31511    jp      1115h
1018 03        inc     bc
1019 03        inc     bc
101a dd7e07    ld      a,(ix+07h)
101d ddb606    or      (ix+06h)
1020 2010      jr      nz,1032h         ; (+10h)
1022 c5        push    bc
1023 2e10      ld      l,10h
1025 cda512    call    12a5h
1028 c1        pop     bc
1029 3e03      ld      a,03h
102b 02        ld      (bc),a
102c 210000    ld      hl,0000h
102f c31511    jp      1115h
1032 dd7e09    ld      a,(ix+09h)
1035 ddb608    or      (ix+08h)
1038 2010      jr      nz,104ah         ; (+10h)
103a c5        push    bc
103b 2e13      ld      l,13h
103d cda512    call    12a5h
1040 c1        pop     bc
1041 3e03      ld      a,03h
1043 02        ld      (bc),a
1044 210000    ld      hl,0000h
1047 c31511    jp      1115h
104a dd7e0b    ld      a,(ix+0bh)
104d ddb60a    or      (ix+0ah)
1050 2010      jr      nz,1062h         ; (+10h)
1052 c5        push    bc
1053 2e14      ld      l,14h
1055 cda512    call    12a5h
1058 c1        pop     bc
1059 3e03      ld      a,03h
105b 02        ld      (bc),a
105c 210000    ld      hl,0000h
105f c31511    jp      1115h
1062 dd7e06    ld      a,(ix+06h)
1065 dd77f8    ld      (ix-08h),a
1068 dd7e07    ld      a,(ix+07h)
106b dd77f9    ld      (ix-07h),a
106e dd6ef8    ld      l,(ix-08h)
1071 dd66f9    ld      h,(ix-07h)
1074 5e        ld      e,(hl)
1075 cb4b      bit     1,e
1077 2010      jr      nz,1089h         ; (+10h)
1079 c5        push    bc
107a 2e18      ld      l,18h
107c cda512    call    12a5h
107f c1        pop     bc
1080 3e03      ld      a,03h
1082 02        ld      (bc),a
1083 210000    ld      hl,0000h
1086 c31511    jp      1115h
1089 dd7e06    ld      a,(ix+06h)
108c dd77f6    ld      (ix-0ah),a
108f dd7e07    ld      a,(ix+07h)
1092 dd77f7    ld      (ix-09h),a
1095 1e00      ld      e,00h
1097 dd73fc    ld      (ix-04h),e
109a dd36fd00  ld      (ix-03h),00h
109e 7b        ld      a,e
109f d605      sub     05h
10a1 3051      jr      nc,10f4h         ; (+51h)
10a3 dd7efc    ld      a,(ix-04h)
10a6 dd960a    sub     (ix+0ah)
10a9 dd7efd    ld      a,(ix-03h)
10ac dd9e0b    sbc     a,(ix+0bh)
10af 3043      jr      nc,10f4h         ; (+43h)
10b1 dd7ef6    ld      a,(ix-0ah)
10b4 c607      add     a,07h
10b6 57        ld      d,a
10b7 dd7ef7    ld      a,(ix-09h)
10ba ce00      adc     a,00h
10bc 6f        ld      l,a
10bd 7a        ld      a,d
10be 83        add     a,e
10bf dd77fa    ld      (ix-06h),a
10c2 7d        ld      a,l
10c3 ce00      adc     a,00h
10c5 dd77fb    ld      (ix-05h),a
10c8 dd6efa    ld      l,(ix-06h)
10cb dd66fb    ld      h,(ix-05h)
10ce 56        ld      d,(hl)
10cf 7a        ld      a,d
10d0 b7        or      a
10d1 2821      jr      z,10f4h          ; (+21h)
10d3 dd7e08    ld      a,(ix+08h)
10d6 83        add     a,e
10d7 dd77fe    ld      (ix-02h),a
10da dd7e09    ld      a,(ix+09h)
10dd ce00      adc     a,00h
10df dd77ff    ld      (ix-01h),a
10e2 dd6efe    ld      l,(ix-02h)
10e5 dd66ff    ld      h,(ix-01h)
10e8 72        ld      (hl),d
10e9 dd6efa    ld      l,(ix-06h)
10ec dd66fb    ld      h,(ix-05h)
10ef 3600      ld      (hl),00h
10f1 1c        inc     e
10f2 18a3      jr      1097h            ; (-5dh)
10f4 3e02      ld      a,02h
10f6 02        ld      (bc),a
10f7 dd4ef8    ld      c,(ix-08h)
10fa dd46f9    ld      b,(ix-07h)
10fd 03        inc     bc
10fe 03        inc     bc
10ff 03        inc     bc
1100 69        ld      l,c
1101 60        ld      h,b
1102 7e        ld      a,(hl)
1103 23        inc     hl
1104 66        ld      h,(hl)
1105 6f        ld      l,a
1106 1600      ld      d,00h
1108 19        add     hl,de
1109 eb        ex      de,hl
110a 7b        ld      a,e
110b 02        ld      (bc),a
110c 03        inc     bc
110d 7a        ld      a,d
110e 02        ld      (bc),a
110f dd6efc    ld      l,(ix-04h)
1112 dd66fd    ld      h,(ix-03h)
1115 ddf9      ld      sp,ix
1117 dde1      pop     ix
1119 c9        ret     

111a dde5      push    ix
111c dd210000  ld      ix,0000h
1120 dd39      add     ix,sp
1122 f5        push    af
1123 f5        push    af
1124 dd4e04    ld      c,(ix+04h)
1127 dd4605    ld      b,(ix+05h)
112a 59        ld      e,c
112b 50        ld      d,b
112c 13        inc     de
112d 13        inc     de
112e 3e03      ld      a,03h
1130 12        ld      (de),a
1131 78        ld      a,b
1132 b1        or      c
1133 200b      jr      nz,1140h         ; (+0bh)
1135 2e10      ld      l,10h
1137 cda512    call    12a5h
113a 210000    ld      hl,0000h
113d c3f711    jp      11f7h
1140 dd7e07    ld      a,(ix+07h)
1143 ddb606    or      (ix+06h)
1146 2010      jr      nz,1158h         ; (+10h)
1148 d5        push    de
1149 2e10      ld      l,10h
114b cda512    call    12a5h
114e d1        pop     de
114f 3e03      ld      a,03h
1151 12        ld      (de),a
1152 210000    ld      hl,0000h
1155 c3f711    jp      11f7h
1158 dd7e09    ld      a,(ix+09h)
115b ddb608    or      (ix+08h)
115e 2010      jr      nz,1170h         ; (+10h)
1160 d5        push    de
1161 2e13      ld      l,13h
1163 cda512    call    12a5h
1166 d1        pop     de
1167 3e03      ld      a,03h
1169 12        ld      (de),a
116a 210000    ld      hl,0000h
116d c3f711    jp      11f7h
1170 dd7e0b    ld      a,(ix+0bh)
1173 ddb60a    or      (ix+0ah)
1176 200f      jr      nz,1187h         ; (+0fh)
1178 d5        push    de
1179 2e14      ld      l,14h
117b cda512    call    12a5h
117e d1        pop     de
117f 3e03      ld      a,03h
1181 12        ld      (de),a
1182 210000    ld      hl,0000h
1185 1870      jr      11f7h            ; (+70h)
1187 dd7e06    ld      a,(ix+06h)
118a dd77fc    ld      (ix-04h),a
118d dd7e07    ld      a,(ix+07h)
1190 dd77fd    ld      (ix-03h),a
1193 e1        pop     hl
1194 e5        push    hl
1195 4e        ld      c,(hl)
1196 cb51      bit     2,c
1198 200f      jr      nz,11a9h         ; (+0fh)
119a d5        push    de
119b 2e18      ld      l,18h
119d cda512    call    12a5h
11a0 d1        pop     de
11a1 3e03      ld      a,03h
11a3 12        ld      (de),a
11a4 210000    ld      hl,0000h
11a7 184e      jr      11f7h            ; (+4eh)
11a9 010000    ld      bc,0000h
11ac 79        ld      a,c
11ad dd960a    sub     (ix+0ah)
11b0 78        ld      a,b
11b1 dd9e0b    sbc     a,(ix+0bh)
11b4 301f      jr      nc,11d5h         ; (+1fh)
11b6 dd7e08    ld      a,(ix+08h)
11b9 81        add     a,c
11ba dd77fe    ld      (ix-02h),a
11bd dd7e09    ld      a,(ix+09h)
11c0 88        adc     a,b
11c1 dd77ff    ld      (ix-01h),a
11c4 dd6efe    ld      l,(ix-02h)
11c7 dd66ff    ld      h,(ix-01h)
11ca 6e        ld      l,(hl)
11cb c5        push    bc
11cc d5        push    de
11cd cdd402    call    02d4h
11d0 d1        pop     de
11d1 c1        pop     bc
11d2 03        inc     bc
11d3 18d7      jr      11ach            ; (-29h)
11d5 3e02      ld      a,02h
11d7 12        ld      (de),a
11d8 c1        pop     bc
11d9 c5        push    bc
11da 03        inc     bc
11db 03        inc     bc
11dc 03        inc     bc
11dd 69        ld      l,c
11de 60        ld      h,b
11df 5e        ld      e,(hl)
11e0 23        inc     hl
11e1 56        ld      d,(hl)
11e2 7b        ld      a,e
11e3 dd860a    add     a,(ix+0ah)
11e6 5f        ld      e,a
11e7 7a        ld      a,d
11e8 dd8e0b    adc     a,(ix+0bh)
11eb 57        ld      d,a
11ec 7b        ld      a,e
11ed 02        ld      (bc),a
11ee 03        inc     bc
11ef 7a        ld      a,d
11f0 02        ld      (bc),a
11f1 dd6e0a    ld      l,(ix+0ah)
11f4 dd660b    ld      h,(ix+0bh)
11f7 ddf9      ld      sp,ix
11f9 dde1      pop     ix
11fb c9        ret     

11fc 4d        ld      c,l
11fd 7c        ld      a,h
11fe 47        ld      b,a
11ff b5        or      l
1200 200a      jr      nz,120ch         ; (+0ah)
1202 2e10      ld      l,10h
1204 cda512    call    12a5h
1207 210000    ld      hl,0000h
120a 183f      jr      124bh            ; (+3fh)
120c 219316    ld      hl,1693h
120f af        xor     a
1210 77        ld      (hl),a
1211 23        inc     hl
1212 77        ld      (hl),a
1213 59        ld      e,c
1214 50        ld      d,b
1215 13        inc     de
1216 3e6e      ld      a,6eh
1218 12        ld      (de),a
1219 13        inc     de
121a 3e0f      ld      a,0fh
121c 12        ld      (de),a
121d 59        ld      e,c
121e 50        ld      d,b
121f 13        inc     de
1220 13        inc     de
1221 13        inc     de
1222 3ea1      ld      a,0a1h
1224 12        ld      (de),a
1225 13        inc     de
1226 3e0f      ld      a,0fh
1228 12        ld      (de),a
1229 210500    ld      hl,0005h
122c 09        add     hl,bc
122d af        xor     a
122e 77        ld      (hl),a
122f 23        inc     hl
1230 77        ld      (hl),a
1231 210700    ld      hl,0007h
1234 09        add     hl,bc
1235 eb        ex      de,hl
1236 3eef      ld      a,0efh
1238 12        ld      (de),a
1239 13        inc     de
123a 3e0f      ld      a,0fh
123c 12        ld      (de),a
123d 210900    ld      hl,0009h
1240 09        add     hl,bc
1241 eb        ex      de,hl
1242 3e1a      ld      a,1ah
1244 12        ld      (de),a
1245 13        inc     de
1246 3e11      ld      a,11h
1248 12        ld      (de),a
1249 69        ld      l,c
124a 60        ld      h,b
124b c9        ret     

124c 4d        ld      c,l
124d 219416    ld      hl,1694h
1250 7e        ld      a,(hl)
1251 2b        dec     hl
1252 b6        or      (hl)
1253 284f      jr      z,12a4h          ; (+4fh)
1255 219416    ld      hl,1694h
1258 2b        dec     hl
1259 5e        ld      e,(hl)
125a 23        inc     hl
125b 56        ld      d,(hl)
125c 210700    ld      hl,0007h
125f 19        add     hl,de
1260 7e        ld      a,(hl)
1261 b7        or      a
1262 2001      jr      nz,1265h         ; (+01h)
1264 71        ld      (hl),c
1265 219416    ld      hl,1694h
1268 2b        dec     hl
1269 5e        ld      e,(hl)
126a 23        inc     hl
126b 56        ld      d,(hl)
126c 210800    ld      hl,0008h
126f 19        add     hl,de
1270 7e        ld      a,(hl)
1271 b7        or      a
1272 2001      jr      nz,1275h         ; (+01h)
1274 71        ld      (hl),c
1275 219416    ld      hl,1694h
1278 2b        dec     hl
1279 5e        ld      e,(hl)
127a 23        inc     hl
127b 56        ld      d,(hl)
127c 210900    ld      hl,0009h
127f 19        add     hl,de
1280 7e        ld      a,(hl)
1281 b7        or      a
1282 2001      jr      nz,1285h         ; (+01h)
1284 71        ld      (hl),c
1285 219416    ld      hl,1694h
1288 2b        dec     hl
1289 5e        ld      e,(hl)
128a 23        inc     hl
128b 56        ld      d,(hl)
128c 210a00    ld      hl,000ah
128f 19        add     hl,de
1290 7e        ld      a,(hl)
1291 b7        or      a
1292 2001      jr      nz,1295h         ; (+01h)
1294 71        ld      (hl),c
1295 219416    ld      hl,1694h
1298 2b        dec     hl
1299 5e        ld      e,(hl)
129a 23        inc     hl
129b 56        ld      d,(hl)
129c 210b00    ld      hl,000bh
129f 19        add     hl,de
12a0 7e        ld      a,(hl)
12a1 b7        or      a
12a2 c0        ret     nz

12a3 71        ld      (hl),c
12a4 c9        ret     

12a5 4d        ld      c,l
12a6 c5        push    bc
12a7 cdcc12    call    12cch
12aa eb        ex      de,hl
12ab c1        pop     bc
12ac 13        inc     de
12ad 79        ld      a,c
12ae 12        ld      (de),a
12af c9        ret     

12b0 cdcc12    call    12cch
12b3 23        inc     hl
12b4 6e        ld      l,(hl)
12b5 c9        ret     

12b6 219516    ld      hl,1695h
12b9 3601      ld      (hl),01h
12bb 2e00      ld      l,00h
12bd cd1a13    call    131ah
12c0 4d        ld      c,l
12c1 44        ld      b,h
12c2 ed439716  ld      (1697h),bc
12c6 219616    ld      hl,1696h
12c9 3600      ld      (hl),00h
12cb c9        ret     

12cc 219516    ld      hl,1695h
12cf c9        ret     

12d0 7c        ld      a,h
12d1 b5        or      l
12d2 2809      jr      z,12ddh          ; (+09h)
12d4 2e10      ld      l,10h
12d6 cda512    call    12a5h
12d9 2e00      ld      l,00h
12db 1801      jr      12deh            ; (+01h)
12dd 6e        ld      l,(hl)
12de c9        ret     

12df 7c        ld      a,h
12e0 b5        or      l
12e1 280a      jr      z,12edh          ; (+0ah)
12e3 2e10      ld      l,10h
12e5 cda512    call    12a5h
12e8 210000    ld      hl,0000h
12eb 1806      jr      12f3h            ; (+06h)
12ed 23        inc     hl
12ee 23        inc     hl
12ef 4e        ld      c,(hl)
12f0 23        inc     hl
12f1 66        ld      h,(hl)
12f2 69        ld      l,c
12f3 c9        ret     

12f4 4d        ld      c,l
12f5 44        ld      b,h
12f6 78        ld      a,b
12f7 b1        or      c
12f8 2005      jr      nz,12ffh         ; (+05h)
12fa 210000    ld      hl,0000h
12fd 180a      jr      1309h            ; (+0ah)
12ff 2a9716    ld      hl,(1697h)
1302 c5        push    bc
1303 e5        push    hl
1304 cd2013    call    1320h
1307 f1        pop     af
1308 f1        pop     af
1309 c9        ret     

130a 4d        ld      c,l
130b 44        ld      b,h
130c 78        ld      a,b
130d b1        or      c
130e c8        ret     z

130f 2a9716    ld      hl,(1697h)
1312 c5        push    bc
1313 e5        push    hl
1314 cd5e13    call    135eh
1317 f1        pop     af
1318 f1        pop     af
1319 c9        ret     

131a 4d        ld      c,l
131b 219916    ld      hl,1699h
131e 71        ld      (hl),c
131f c9        ret     

1320 dde5      push    ix
1322 dd210000  ld      ix,0000h
1326 dd39      add     ix,sp
1328 dd7e05    ld      a,(ix+05h)
132b ddb604    or      (ix+04h)
132e 200a      jr      nz,133ah         ; (+0ah)
1330 2e10      ld      l,10h
1332 cda512    call    12a5h
1335 210000    ld      hl,0000h
1338 1821      jr      135bh            ; (+21h)
133a dd7e04    ld      a,(ix+04h)
133d d699      sub     99h
133f 2007      jr      nz,1348h         ; (+07h)
1341 dd7e05    ld      a,(ix+05h)
1344 d616      sub     16h
1346 280a      jr      z,1352h          ; (+0ah)
1348 2e1b      ld      l,1bh
134a cda512    call    12a5h
134d 210000    ld      hl,0000h
1350 1809      jr      135bh            ; (+09h)
1352 dd6e06    ld      l,(ix+06h)
1355 dd6607    ld      h,(ix+07h)
1358 cdd503    call    03d5h
135b dde1      pop     ix
135d c9        ret     

135e dde5      push    ix
1360 dd210000  ld      ix,0000h
1364 dd39      add     ix,sp
1366 dd7e05    ld      a,(ix+05h)
1369 ddb604    or      (ix+04h)
136c 2007      jr      nz,1375h         ; (+07h)
136e 2e10      ld      l,10h
1370 cda512    call    12a5h
1373 182d      jr      13a2h            ; (+2dh)
1375 dd7e07    ld      a,(ix+07h)
1378 ddb606    or      (ix+06h)
137b 2007      jr      nz,1384h         ; (+07h)
137d 2e13      ld      l,13h
137f cda512    call    12a5h
1382 181e      jr      13a2h            ; (+1eh)
1384 dd7e04    ld      a,(ix+04h)
1387 d699      sub     99h
1389 2007      jr      nz,1392h         ; (+07h)
138b dd7e05    ld      a,(ix+05h)
138e d616      sub     16h
1390 2807      jr      z,1399h          ; (+07h)
1392 2e1b      ld      l,1bh
1394 cda512    call    12a5h
1397 1809      jr      13a2h            ; (+09h)
1399 dd6e06    ld      l,(ix+06h)
139c dd6607    ld      h,(ix+07h)
139f cdaa03    call    03aah
13a2 dde1      pop     ix
13a4 c9        ret     

13a5 dde5      push    ix
13a7 dd210000  ld      ix,0000h
13ab dd39      add     ix,sp
13ad 21f8ff    ld      hl,0fff8h
13b0 39        add     hl,sp
13b1 f9        ld      sp,hl
13b2 dd7e08    ld      a,(ix+08h)
13b5 c6ff      add     a,0ffh
13b7 dd77f8    ld      (ix-08h),a
13ba dd7e09    ld      a,(ix+09h)
13bd ceff      adc     a,0ffh
13bf dd77f9    ld      (ix-07h),a
13c2 dd7e05    ld      a,(ix+05h)
13c5 ddb604    or      (ix+04h)
13c8 200b      jr      nz,13d5h         ; (+0bh)
13ca 2e10      ld      l,10h
13cc cda512    call    12a5h
13cf 210000    ld      hl,0000h
13d2 c36614    jp      1466h
13d5 dd7e07    ld      a,(ix+07h)
13d8 ddb606    or      (ix+06h)
13db 200b      jr      nz,13e8h         ; (+0bh)
13dd 2e13      ld      l,13h
13df cda512    call    12a5h
13e2 210000    ld      hl,0000h
13e5 c36614    jp      1466h
13e8 dd7e09    ld      a,(ix+09h)
13eb ddb608    or      (ix+08h)
13ee 200a      jr      nz,13fah         ; (+0ah)
13f0 2e14      ld      l,14h
13f2 cda512    call    12a5h
13f5 210000    ld      hl,0000h
13f8 186c      jr      1466h            ; (+6ch)
13fa 110000    ld      de,0000h
13fd dd73fe    ld      (ix-02h),e
1400 dd72ff    ld      (ix-01h),d
1403 dd7e06    ld      a,(ix+06h)
1406 83        add     a,e
1407 4f        ld      c,a
1408 dd7e07    ld      a,(ix+07h)
140b 8a        adc     a,d
140c 47        ld      b,a
140d 210100    ld      hl,0001h
1410 19        add     hl,de
1411 dd75fc    ld      (ix-04h),l
1414 dd74fd    ld      (ix-03h),h
1417 dd7efe    ld      a,(ix-02h)
141a dd96f8    sub     (ix-08h)
141d dd7eff    ld      a,(ix-01h)
1420 dd9ef9    sbc     a,(ix-07h)
1423 3028      jr      nc,144dh         ; (+28h)
1425 dd7e04    ld      a,(ix+04h)
1428 83        add     a,e
1429 dd77fa    ld      (ix-06h),a
142c dd7e05    ld      a,(ix+05h)
142f 8a        adc     a,d
1430 dd77fb    ld      (ix-05h),a
1433 dd6efa    ld      l,(ix-06h)
1436 dd66fb    ld      h,(ix-05h)
1439 7e        ld      a,(hl)
143a 02        ld      (bc),a
143b dd6efa    ld      l,(ix-06h)
143e dd66fb    ld      h,(ix-05h)
1441 7e        ld      a,(hl)
1442 b7        or      a
1443 2808      jr      z,144dh          ; (+08h)
1445 dd5efc    ld      e,(ix-04h)
1448 dd56fd    ld      d,(ix-03h)
144b 18b0      jr      13fdh            ; (-50h)
144d dd7ef8    ld      a,(ix-08h)
1450 dd96fe    sub     (ix-02h)
1453 2010      jr      nz,1465h         ; (+10h)
1455 dd7ef9    ld      a,(ix-07h)
1458 dd96ff    sub     (ix-01h)
145b 2008      jr      nz,1465h         ; (+08h)
145d af        xor     a
145e 02        ld      (bc),a
145f dd5efc    ld      e,(ix-04h)
1462 dd56fd    ld      d,(ix-03h)
1465 eb        ex      de,hl
1466 ddf9      ld      sp,ix
1468 dde1      pop     ix
146a c9        ret     

146b dde5      push    ix
146d dd210000  ld      ix,0000h
1471 dd39      add     ix,sp
1473 dd7e05    ld      a,(ix+05h)
1476 ddb604    or      (ix+04h)
1479 200a      jr      nz,1485h         ; (+0ah)
147b 2e10      ld      l,10h
147d cda512    call    12a5h
1480 210000    ld      hl,0000h
1483 1845      jr      14cah            ; (+45h)
1485 dd7e07    ld      a,(ix+07h)
1488 ddb606    or      (ix+06h)
148b 200a      jr      nz,1497h         ; (+0ah)
148d 2e13      ld      l,13h
148f cda512    call    12a5h
1492 210000    ld      hl,0000h
1495 1833      jr      14cah            ; (+33h)
1497 dd7e09    ld      a,(ix+09h)
149a ddb608    or      (ix+08h)
149d 2013      jr      nz,14b2h         ; (+13h)
149f dd6e06    ld      l,(ix+06h)
14a2 dd6607    ld      h,(ix+07h)
14a5 e5        push    hl
14a6 dd6e04    ld      l,(ix+04h)
14a9 dd6605    ld      h,(ix+05h)
14ac e5        push    hl
14ad cd9b0e    call    0e9bh
14b0 1818      jr      14cah            ; (+18h)
14b2 dd6e08    ld      l,(ix+08h)
14b5 dd6609    ld      h,(ix+09h)
14b8 e5        push    hl
14b9 dd6e06    ld      l,(ix+06h)
14bc dd6607    ld      h,(ix+07h)
14bf e5        push    hl
14c0 dd6e04    ld      l,(ix+04h)
14c3 dd6605    ld      h,(ix+05h)
14c6 e5        push    hl
14c7 cda90e    call    0ea9h
14ca dde1      pop     ix
14cc c9        ret     

14cd dde5      push    ix
14cf dd210000  ld      ix,0000h
14d3 dd39      add     ix,sp
14d5 dd7e05    ld      a,(ix+05h)
14d8 ddb604    or      (ix+04h)
14db 200a      jr      nz,14e7h         ; (+0ah)
14dd 2e10      ld      l,10h
14df cda512    call    12a5h
14e2 210000    ld      hl,0000h
14e5 1845      jr      152ch            ; (+45h)
14e7 dd7e07    ld      a,(ix+07h)
14ea ddb606    or      (ix+06h)
14ed 200a      jr      nz,14f9h         ; (+0ah)
14ef 2e13      ld      l,13h
14f1 cda512    call    12a5h
14f4 210000    ld      hl,0000h
14f7 1833      jr      152ch            ; (+33h)
14f9 dd7e09    ld      a,(ix+09h)
14fc ddb608    or      (ix+08h)
14ff 2013      jr      nz,1514h         ; (+13h)
1501 dd6e06    ld      l,(ix+06h)
1504 dd6607    ld      h,(ix+07h)
1507 e5        push    hl
1508 dd6e04    ld      l,(ix+04h)
150b dd6605    ld      h,(ix+05h)
150e e5        push    hl
150f cd950e    call    0e95h
1512 1818      jr      152ch            ; (+18h)
1514 dd6e08    ld      l,(ix+08h)
1517 dd6609    ld      h,(ix+09h)
151a e5        push    hl
151b dd6e06    ld      l,(ix+06h)
151e dd6607    ld      h,(ix+07h)
1521 e5        push    hl
1522 dd6e04    ld      l,(ix+04h)
1525 dd6605    ld      h,(ix+05h)
1528 e5        push    hl
1529 cda10e    call    0ea1h
152c dde1      pop     ix
152e c9        ret     

152f dde5      push    ix
1531 dd210000  ld      ix,0000h
1535 dd39      add     ix,sp
1537 dd7e05    ld      a,(ix+05h)
153a ddb604    or      (ix+04h)
153d 200a      jr      nz,1549h         ; (+0ah)
153f 2e10      ld      l,10h
1541 cda512    call    12a5h
1544 210000    ld      hl,0000h
1547 1824      jr      156dh            ; (+24h)
1549 dd7e07    ld      a,(ix+07h)
154c ddb606    or      (ix+06h)
154f 200b      jr      nz,155ch         ; (+0bh)
1551 dd6e04    ld      l,(ix+04h)
1554 dd6605    ld      h,(ix+05h)
1557 cde10e    call    0ee1h
155a 1811      jr      156dh            ; (+11h)
155c dd6e06    ld      l,(ix+06h)
155f dd6607    ld      h,(ix+07h)
1562 e5        push    hl
1563 dd6e04    ld      l,(ix+04h)
1566 dd6605    ld      h,(ix+05h)
1569 e5        push    hl
156a cdb10e    call    0eb1h
156d dde1      pop     ix
156f c9        ret     

1570 09        add     hl,bc
1571 45        ld      b,l
1572 4e        ld      c,(hl)
1573 4f        ld      c,a
1574 4c        ld      c,h
1575 43        ld      b,e
1576 4b        ld      c,e
1577 00        nop     
1578 0645      ld      b,45h
157a 49        ld      c,c
157b 4e        ld      c,(hl)
157c 56        ld      d,(hl)
157d 41        ld      b,c
157e 4c        ld      c,h
157f 00        nop     
1580 0d        dec     c
1581 45        ld      b,l
1582 52        ld      d,d
1583 41        ld      b,c
1584 4e        ld      c,(hl)
1585 47        ld      b,a
1586 45        ld      b,l
1587 00        nop     
1588 014541    ld      bc,4145h
158b 43        ld      b,e
158c 43        ld      b,e
158d 45        ld      b,l
158e 53        ld      d,e
158f 00        nop     
1590 04        inc     b
1591 45        ld      b,l
1592 44        ld      b,h
1593 4f        ld      c,a
1594 4d        ld      c,l
1595 00        nop     
1596 0b        dec     bc
1597 45        ld      b,l
1598 4e        ld      c,(hl)
1599 4f        ld      c,a
159a 54        ld      d,h
159b 53        ld      d,e
159c 55        ld      d,l
159d 50        ld      d,b
159e 00        nop     
159f 03        inc     bc
15a0 45        ld      b,l
15a1 42        ld      b,d
15a2 44        ld      b,h
15a3 46        ld      b,(hl)
15a4 44        ld      b,h
15a5 00        nop     
15a6 0a        ld      a,(bc)
15a7 45        ld      b,l
15a8 4e        ld      c,(hl)
15a9 4f        ld      c,a
15aa 4d        ld      c,l
15ab 45        ld      b,l
15ac 4d        ld      c,l
15ad 00        nop     
15ae 00        nop     
15af 54        ld      d,h
15b0 65        ld      h,l
15b1 73        ld      (hl),e
15b2 74        ld      (hl),h
15b3 21000b    ld      hl,0b00h
15b6 0c        inc     c
15b7 63        ld      h,e
15b8 6f        ld      l,a
15b9 6e        ld      l,(hl)
15ba 00        nop     
15bb 00        nop     
15bc 00        nop     
15bd 00        nop     
15be 00        nop     
15bf 00        nop     
15c0 00        nop     
15c1 00        nop     
15c2 00        nop     
15c3 00        nop     
15c4 9a        sbc     a,d
15c5 16c8      ld      d,0c8h
15c7 15        dec     d
15c8 00        nop     
15c9 0100fe    ld      bc,0fe00h
15cc 00        nop     
15cd 00        nop     
15ce e5        push    hl
15cf 15        dec     d
15d0 17        rla     
15d1 00        nop     
15d2 00        nop     
15d3 00        nop     
15d4 cd5204    call    0452h
15d7 c37704    jp      0477h
15da 03        inc     bc
15db 02        ld      (bc),a
15dc 010001    ld      bc,0100h
15df 00        nop     
15e0 0100fe    ld      bc,0fe00h
15e3 00        nop     
15e4 00        nop     
15e5 fc1517    call    m,1715h
15e8 00        nop     
15e9 ce15      adc     a,15h
15eb cd5204    call    0452h
15ee c35205    jp      0552h
15f1 04        inc     b
15f2 02        ld      (bc),a
15f3 02        ld      (bc),a
15f4 1000      djnz    15f6h            ; (+00h)
15f6 00        nop     
15f7 0100fe    ld      bc,0fe00h
15fa 00        nop     
15fb 00        nop     
15fc 46        ld      b,(hl)
15fd 1600      ld      d,00h
15ff 00        nop     
1600 e5        push    hl
1601 15        dec     d
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
1648 d415eb    call    nc,0eb15h
164b 15        dec     d
164c eb        ex      de,hl
164d 15        dec     d
164e 52        ld      d,d
164f 1600      ld      d,00h
1651 00        nop     
1652 c3d415    jp      15d4h
1655 40        ld      b,b
1656 02        ld      (bc),a
1657 00        nop     
1658 00        nop     
1659 00        nop     
165a 02        ld      (bc),a
165b 00        nop     
165c fe00      cp      00h
165e 00        nop     
165f 63        ld      h,e
1660 1650      ld      d,50h
1662 16c3      ld      d,0c3h
1664 eb        ex      de,hl
1665 15        dec     d
1666 80        add     a,b
1667 00        nop     
1668 00        nop     
1669 00        nop     
166a 00        nop     
166b 02        ld      (bc),a
166c 00        nop     
166d fe00      cp      00h
166f 00        nop     
1670 74        ld      (hl),h
1671 1661      ld      d,61h
1673 16c3      ld      d,0c3h
1675 eb        ex      de,hl
1676 15        dec     d
1677 80        add     a,b
1678 00        nop     
1679 00        nop     
167a 00        nop     
167b 00        nop     
167c 02        ld      (bc),a
167d 00        nop     
167e fe00      cp      00h
1680 00        nop     
1681 72        ld      (hl),d
1682 1600      ld      d,00h
1684 00        nop     
1685 83        add     a,e
1686 1601      ld      d,01h
1688 b7        or      a
1689 15        dec     d
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
