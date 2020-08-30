                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module control
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _PX3
                                     12 	.globl _EX3
                                     13 	.globl _IE3
                                     14 	.globl _IT3
                                     15 	.globl _PX2
                                     16 	.globl _EX2
                                     17 	.globl _IE2
                                     18 	.globl _IT2
                                     19 	.globl _TF2
                                     20 	.globl _EXF2
                                     21 	.globl _RCLK
                                     22 	.globl _TCLK
                                     23 	.globl _EXEN2
                                     24 	.globl _TR2
                                     25 	.globl _T2_CT
                                     26 	.globl _CPRL2
                                     27 	.globl _INT2
                                     28 	.globl _INT3
                                     29 	.globl _P4_3
                                     30 	.globl _P4_2
                                     31 	.globl _P4_1
                                     32 	.globl _P4_0
                                     33 	.globl _T2EX
                                     34 	.globl _T2
                                     35 	.globl _PT2
                                     36 	.globl _ET2
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _F1
                                     44 	.globl _P
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _P4
                                    113 	.globl _ISP_CONTR
                                    114 	.globl _ISP_TRIG
                                    115 	.globl _ISP_CMD
                                    116 	.globl _ISP_ADDRL
                                    117 	.globl _ISP_ADDRH
                                    118 	.globl _ISP_DATA
                                    119 	.globl _WDT_CONTR
                                    120 	.globl _TH2
                                    121 	.globl _TL2
                                    122 	.globl _RCAP2H
                                    123 	.globl _RCAP2L
                                    124 	.globl _T2MOD
                                    125 	.globl _T2CON
                                    126 	.globl _XICON
                                    127 	.globl _IPH
                                    128 	.globl _SADDR1
                                    129 	.globl _AUXR1
                                    130 	.globl _AUXR
                                    131 	.globl _B
                                    132 	.globl _ACC
                                    133 	.globl _PSW
                                    134 	.globl _IP
                                    135 	.globl _P3
                                    136 	.globl _IE
                                    137 	.globl _P2
                                    138 	.globl _SBUF
                                    139 	.globl _SCON
                                    140 	.globl _P1
                                    141 	.globl _TH1
                                    142 	.globl _TH0
                                    143 	.globl _TL1
                                    144 	.globl _TL0
                                    145 	.globl _TMOD
                                    146 	.globl _TCON
                                    147 	.globl _PCON
                                    148 	.globl _DPH
                                    149 	.globl _DPL
                                    150 	.globl _SP
                                    151 	.globl _P0
                                    152 	.globl _tm
                                    153 	.globl _delayms
                                    154 	.globl _Int_Init
                                    155 	.globl _idle
                                    156 	.globl _Time0_Init
                                    157 	.globl _Time2_Init
                                    158 	.globl _delayserver
                                    159 ;--------------------------------------------------------
                                    160 ; special function registers
                                    161 ;--------------------------------------------------------
                                    162 	.area RSEG    (ABS,DATA)
      000000                        163 	.org 0x0000
                           000080   164 _P0	=	0x0080
                           000081   165 _SP	=	0x0081
                           000082   166 _DPL	=	0x0082
                           000083   167 _DPH	=	0x0083
                           000087   168 _PCON	=	0x0087
                           000088   169 _TCON	=	0x0088
                           000089   170 _TMOD	=	0x0089
                           00008A   171 _TL0	=	0x008a
                           00008B   172 _TL1	=	0x008b
                           00008C   173 _TH0	=	0x008c
                           00008D   174 _TH1	=	0x008d
                           000090   175 _P1	=	0x0090
                           000098   176 _SCON	=	0x0098
                           000099   177 _SBUF	=	0x0099
                           0000A0   178 _P2	=	0x00a0
                           0000A8   179 _IE	=	0x00a8
                           0000B0   180 _P3	=	0x00b0
                           0000B8   181 _IP	=	0x00b8
                           0000D0   182 _PSW	=	0x00d0
                           0000E0   183 _ACC	=	0x00e0
                           0000F0   184 _B	=	0x00f0
                           00008E   185 _AUXR	=	0x008e
                           0000A2   186 _AUXR1	=	0x00a2
                           0000A9   187 _SADDR1	=	0x00a9
                           0000B7   188 _IPH	=	0x00b7
                           0000C0   189 _XICON	=	0x00c0
                           0000C8   190 _T2CON	=	0x00c8
                           0000C9   191 _T2MOD	=	0x00c9
                           0000CA   192 _RCAP2L	=	0x00ca
                           0000CB   193 _RCAP2H	=	0x00cb
                           0000CC   194 _TL2	=	0x00cc
                           0000CD   195 _TH2	=	0x00cd
                           0000E1   196 _WDT_CONTR	=	0x00e1
                           0000E2   197 _ISP_DATA	=	0x00e2
                           0000E3   198 _ISP_ADDRH	=	0x00e3
                           0000E4   199 _ISP_ADDRL	=	0x00e4
                           0000E5   200 _ISP_CMD	=	0x00e5
                           0000E6   201 _ISP_TRIG	=	0x00e6
                           0000E7   202 _ISP_CONTR	=	0x00e7
                           0000E8   203 _P4	=	0x00e8
                                    204 ;--------------------------------------------------------
                                    205 ; special function bits
                                    206 ;--------------------------------------------------------
                                    207 	.area RSEG    (ABS,DATA)
      000000                        208 	.org 0x0000
                           000080   209 _P0_0	=	0x0080
                           000081   210 _P0_1	=	0x0081
                           000082   211 _P0_2	=	0x0082
                           000083   212 _P0_3	=	0x0083
                           000084   213 _P0_4	=	0x0084
                           000085   214 _P0_5	=	0x0085
                           000086   215 _P0_6	=	0x0086
                           000087   216 _P0_7	=	0x0087
                           000088   217 _IT0	=	0x0088
                           000089   218 _IE0	=	0x0089
                           00008A   219 _IT1	=	0x008a
                           00008B   220 _IE1	=	0x008b
                           00008C   221 _TR0	=	0x008c
                           00008D   222 _TF0	=	0x008d
                           00008E   223 _TR1	=	0x008e
                           00008F   224 _TF1	=	0x008f
                           000090   225 _P1_0	=	0x0090
                           000091   226 _P1_1	=	0x0091
                           000092   227 _P1_2	=	0x0092
                           000093   228 _P1_3	=	0x0093
                           000094   229 _P1_4	=	0x0094
                           000095   230 _P1_5	=	0x0095
                           000096   231 _P1_6	=	0x0096
                           000097   232 _P1_7	=	0x0097
                           000098   233 _RI	=	0x0098
                           000099   234 _TI	=	0x0099
                           00009A   235 _RB8	=	0x009a
                           00009B   236 _TB8	=	0x009b
                           00009C   237 _REN	=	0x009c
                           00009D   238 _SM2	=	0x009d
                           00009E   239 _SM1	=	0x009e
                           00009F   240 _SM0	=	0x009f
                           0000A0   241 _P2_0	=	0x00a0
                           0000A1   242 _P2_1	=	0x00a1
                           0000A2   243 _P2_2	=	0x00a2
                           0000A3   244 _P2_3	=	0x00a3
                           0000A4   245 _P2_4	=	0x00a4
                           0000A5   246 _P2_5	=	0x00a5
                           0000A6   247 _P2_6	=	0x00a6
                           0000A7   248 _P2_7	=	0x00a7
                           0000A8   249 _EX0	=	0x00a8
                           0000A9   250 _ET0	=	0x00a9
                           0000AA   251 _EX1	=	0x00aa
                           0000AB   252 _ET1	=	0x00ab
                           0000AC   253 _ES	=	0x00ac
                           0000AF   254 _EA	=	0x00af
                           0000B0   255 _P3_0	=	0x00b0
                           0000B1   256 _P3_1	=	0x00b1
                           0000B2   257 _P3_2	=	0x00b2
                           0000B3   258 _P3_3	=	0x00b3
                           0000B4   259 _P3_4	=	0x00b4
                           0000B5   260 _P3_5	=	0x00b5
                           0000B6   261 _P3_6	=	0x00b6
                           0000B7   262 _P3_7	=	0x00b7
                           0000B0   263 _RXD	=	0x00b0
                           0000B1   264 _TXD	=	0x00b1
                           0000B2   265 _INT0	=	0x00b2
                           0000B3   266 _INT1	=	0x00b3
                           0000B4   267 _T0	=	0x00b4
                           0000B5   268 _T1	=	0x00b5
                           0000B6   269 _WR	=	0x00b6
                           0000B7   270 _RD	=	0x00b7
                           0000B8   271 _PX0	=	0x00b8
                           0000B9   272 _PT0	=	0x00b9
                           0000BA   273 _PX1	=	0x00ba
                           0000BB   274 _PT1	=	0x00bb
                           0000BC   275 _PS	=	0x00bc
                           0000D0   276 _P	=	0x00d0
                           0000D1   277 _F1	=	0x00d1
                           0000D2   278 _OV	=	0x00d2
                           0000D3   279 _RS0	=	0x00d3
                           0000D4   280 _RS1	=	0x00d4
                           0000D5   281 _F0	=	0x00d5
                           0000D6   282 _AC	=	0x00d6
                           0000D7   283 _CY	=	0x00d7
                           0000AD   284 _ET2	=	0x00ad
                           0000BD   285 _PT2	=	0x00bd
                           000090   286 _T2	=	0x0090
                           000091   287 _T2EX	=	0x0091
                           0000E8   288 _P4_0	=	0x00e8
                           0000E9   289 _P4_1	=	0x00e9
                           0000EA   290 _P4_2	=	0x00ea
                           0000EB   291 _P4_3	=	0x00eb
                           0000EA   292 _INT3	=	0x00ea
                           0000EB   293 _INT2	=	0x00eb
                           0000C8   294 _CPRL2	=	0x00c8
                           0000C9   295 _T2_CT	=	0x00c9
                           0000CA   296 _TR2	=	0x00ca
                           0000CB   297 _EXEN2	=	0x00cb
                           0000CC   298 _TCLK	=	0x00cc
                           0000CD   299 _RCLK	=	0x00cd
                           0000CE   300 _EXF2	=	0x00ce
                           0000CF   301 _TF2	=	0x00cf
                           0000C0   302 _IT2	=	0x00c0
                           0000C1   303 _IE2	=	0x00c1
                           0000C2   304 _EX2	=	0x00c2
                           0000C3   305 _PX2	=	0x00c3
                           0000C4   306 _IT3	=	0x00c4
                           0000C5   307 _IE3	=	0x00c5
                           0000C6   308 _EX3	=	0x00c6
                           0000C7   309 _PX3	=	0x00c7
                                    310 ;--------------------------------------------------------
                                    311 ; overlayable register banks
                                    312 ;--------------------------------------------------------
                                    313 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        314 	.ds 8
                                    315 ;--------------------------------------------------------
                                    316 ; internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area DSEG    (DATA)
      00001A                        319 _tm::
      00001A                        320 	.ds 2
                                    321 ;--------------------------------------------------------
                                    322 ; overlayable items in internal ram 
                                    323 ;--------------------------------------------------------
                                    324 ;--------------------------------------------------------
                                    325 ; indirectly addressable internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area ISEG    (DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; absolute internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area IABS    (ABS,DATA)
                                    332 	.area IABS    (ABS,DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; bit data
                                    335 ;--------------------------------------------------------
                                    336 	.area BSEG    (BIT)
                                    337 ;--------------------------------------------------------
                                    338 ; paged external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area PSEG    (PAG,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XSEG    (XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; absolute external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XABS    (ABS,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; external initialized ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XISEG   (XDATA)
                                    353 	.area HOME    (CODE)
                                    354 	.area GSINIT0 (CODE)
                                    355 	.area GSINIT1 (CODE)
                                    356 	.area GSINIT2 (CODE)
                                    357 	.area GSINIT3 (CODE)
                                    358 	.area GSINIT4 (CODE)
                                    359 	.area GSINIT5 (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area CSEG    (CODE)
                                    363 ;--------------------------------------------------------
                                    364 ; global & static initialisations
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 ;--------------------------------------------------------
                                    371 ; Home
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
                                    374 	.area HOME    (CODE)
                                    375 ;--------------------------------------------------------
                                    376 ; code
                                    377 ;--------------------------------------------------------
                                    378 	.area CSEG    (CODE)
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'delayms'
                                    381 ;------------------------------------------------------------
                                    382 ;ms                        Allocated to registers r6 r7 
                                    383 ;------------------------------------------------------------
                                    384 ;	./src/control.c:4: void delayms(unsigned int ms)
                                    385 ;	-----------------------------------------
                                    386 ;	 function delayms
                                    387 ;	-----------------------------------------
      0002EF                        388 _delayms:
                           000007   389 	ar7 = 0x07
                           000006   390 	ar6 = 0x06
                           000005   391 	ar5 = 0x05
                           000004   392 	ar4 = 0x04
                           000003   393 	ar3 = 0x03
                           000002   394 	ar2 = 0x02
                           000001   395 	ar1 = 0x01
                           000000   396 	ar0 = 0x00
      0002EF AE 82            [24]  397 	mov	r6,dpl
      0002F1 AF 83            [24]  398 	mov	r7,dph
                                    399 ;	./src/control.c:6: TL2 = 0x30;		
      0002F3 75 CC 30         [24]  400 	mov	_TL2,#0x30
                                    401 ;	./src/control.c:7: TH2 = 0xF8;
      0002F6 75 CD F8         [24]  402 	mov	_TH2,#0xf8
                                    403 ;	./src/control.c:8: tm=ms;
      0002F9 8E 1A            [24]  404 	mov	_tm,r6
      0002FB 8F 1B            [24]  405 	mov	(_tm + 1),r7
                                    406 ;	./src/control.c:9: TR2=1;
                                    407 ;	assignBit
      0002FD D2 CA            [12]  408 	setb	_TR2
                                    409 ;	./src/control.c:10: while(!(tm==0))idle();
      0002FF                        410 00101$:
      0002FF E5 1A            [12]  411 	mov	a,_tm
      000301 45 1B            [12]  412 	orl	a,(_tm + 1)
      000303 60 05            [24]  413 	jz	00103$
      000305 12 03 14         [24]  414 	lcall	_idle
      000308 80 F5            [24]  415 	sjmp	00101$
      00030A                        416 00103$:
                                    417 ;	./src/control.c:11: TR2=0;
                                    418 ;	assignBit
      00030A C2 CA            [12]  419 	clr	_TR2
                                    420 ;	./src/control.c:13: }
      00030C 22               [24]  421 	ret
                                    422 ;------------------------------------------------------------
                                    423 ;Allocation info for local variables in function 'Int_Init'
                                    424 ;------------------------------------------------------------
                                    425 ;	./src/control.c:15: void Int_Init()
                                    426 ;	-----------------------------------------
                                    427 ;	 function Int_Init
                                    428 ;	-----------------------------------------
      00030D                        429 _Int_Init:
                                    430 ;	./src/control.c:17: EA=1;
                                    431 ;	assignBit
      00030D D2 AF            [12]  432 	setb	_EA
                                    433 ;	./src/control.c:18: ET2=1;
                                    434 ;	assignBit
      00030F D2 AD            [12]  435 	setb	_ET2
                                    436 ;	./src/control.c:19: ES=1;
                                    437 ;	assignBit
      000311 D2 AC            [12]  438 	setb	_ES
                                    439 ;	./src/control.c:20: }
      000313 22               [24]  440 	ret
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'idle'
                                    443 ;------------------------------------------------------------
                                    444 ;	./src/control.c:22: void idle()
                                    445 ;	-----------------------------------------
                                    446 ;	 function idle
                                    447 ;	-----------------------------------------
      000314                        448 _idle:
                                    449 ;	./src/control.c:24: PCON|=1<<0;
      000314 43 87 01         [24]  450 	orl	_PCON,#0x01
                                    451 ;	./src/control.c:25: }
      000317 22               [24]  452 	ret
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'Time0_Init'
                                    455 ;------------------------------------------------------------
                                    456 ;	./src/control.c:27: void Time0_Init()
                                    457 ;	-----------------------------------------
                                    458 ;	 function Time0_Init
                                    459 ;	-----------------------------------------
      000318                        460 _Time0_Init:
                                    461 ;	./src/control.c:29: TMOD|= 0x02;
      000318 43 89 02         [24]  462 	orl	_TMOD,#0x02
                                    463 ;	./src/control.c:30: }
      00031B 22               [24]  464 	ret
                                    465 ;------------------------------------------------------------
                                    466 ;Allocation info for local variables in function 'Time2_Init'
                                    467 ;------------------------------------------------------------
                                    468 ;	./src/control.c:31: void Time2_Init()
                                    469 ;	-----------------------------------------
                                    470 ;	 function Time2_Init
                                    471 ;	-----------------------------------------
      00031C                        472 _Time2_Init:
                                    473 ;	./src/control.c:33: RCAP2L = 0x30;
      00031C 75 CA 30         [24]  474 	mov	_RCAP2L,#0x30
                                    475 ;	./src/control.c:34: RCAP2H = 0xF8;
      00031F 75 CB F8         [24]  476 	mov	_RCAP2H,#0xf8
                                    477 ;	./src/control.c:35: TL2 = 0x30;		
      000322 75 CC 30         [24]  478 	mov	_TL2,#0x30
                                    479 ;	./src/control.c:36: TH2 = 0xF8;
      000325 75 CD F8         [24]  480 	mov	_TH2,#0xf8
                                    481 ;	./src/control.c:37: }
      000328 22               [24]  482 	ret
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'delayserver'
                                    485 ;------------------------------------------------------------
                                    486 ;	./src/control.c:39: void delayserver() __interrupt 5
                                    487 ;	-----------------------------------------
                                    488 ;	 function delayserver
                                    489 ;	-----------------------------------------
      000329                        490 _delayserver:
      000329 C0 E0            [24]  491 	push	acc
      00032B C0 D0            [24]  492 	push	psw
                                    493 ;	./src/control.c:41: tm--;
      00032D 15 1A            [12]  494 	dec	_tm
      00032F 74 FF            [12]  495 	mov	a,#0xff
      000331 B5 1A 02         [24]  496 	cjne	a,_tm,00103$
      000334 15 1B            [12]  497 	dec	(_tm + 1)
      000336                        498 00103$:
                                    499 ;	./src/control.c:42: TF2=0;
                                    500 ;	assignBit
      000336 C2 CF            [12]  501 	clr	_TF2
                                    502 ;	./src/control.c:43: }
      000338 D0 D0            [24]  503 	pop	psw
      00033A D0 E0            [24]  504 	pop	acc
      00033C 32               [24]  505 	reti
                                    506 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    507 ;	eliminated unneeded push/pop dpl
                                    508 ;	eliminated unneeded push/pop dph
                                    509 ;	eliminated unneeded push/pop b
                                    510 	.area CSEG    (CODE)
                                    511 	.area CONST   (CODE)
                                    512 	.area XINIT   (CODE)
                                    513 	.area CABS    (ABS,CODE)
