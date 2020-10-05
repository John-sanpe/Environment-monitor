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
                                     11 	.globl _printf
                                     12 	.globl _PX3
                                     13 	.globl _EX3
                                     14 	.globl _IE3
                                     15 	.globl _IT3
                                     16 	.globl _PX2
                                     17 	.globl _EX2
                                     18 	.globl _IE2
                                     19 	.globl _IT2
                                     20 	.globl _TF2
                                     21 	.globl _EXF2
                                     22 	.globl _RCLK
                                     23 	.globl _TCLK
                                     24 	.globl _EXEN2
                                     25 	.globl _TR2
                                     26 	.globl _T2_CT
                                     27 	.globl _CPRL2
                                     28 	.globl _INT2
                                     29 	.globl _INT3
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _T2EX
                                     35 	.globl _T2
                                     36 	.globl _PT2
                                     37 	.globl _ET2
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _PS
                                     47 	.globl _PT1
                                     48 	.globl _PX1
                                     49 	.globl _PT0
                                     50 	.globl _PX0
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _EA
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _P4
                                    114 	.globl _ISP_CONTR
                                    115 	.globl _ISP_TRIG
                                    116 	.globl _ISP_CMD
                                    117 	.globl _ISP_ADDRL
                                    118 	.globl _ISP_ADDRH
                                    119 	.globl _ISP_DATA
                                    120 	.globl _WDT_CONTR
                                    121 	.globl _TH2
                                    122 	.globl _TL2
                                    123 	.globl _RCAP2H
                                    124 	.globl _RCAP2L
                                    125 	.globl _T2MOD
                                    126 	.globl _T2CON
                                    127 	.globl _XICON
                                    128 	.globl _IPH
                                    129 	.globl _SADDR1
                                    130 	.globl _AUXR1
                                    131 	.globl _AUXR
                                    132 	.globl _B
                                    133 	.globl _ACC
                                    134 	.globl _PSW
                                    135 	.globl _IP
                                    136 	.globl _P3
                                    137 	.globl _IE
                                    138 	.globl _P2
                                    139 	.globl _SBUF
                                    140 	.globl _SCON
                                    141 	.globl _P1
                                    142 	.globl _TH1
                                    143 	.globl _TH0
                                    144 	.globl _TL1
                                    145 	.globl _TL0
                                    146 	.globl _TMOD
                                    147 	.globl _TCON
                                    148 	.globl _PCON
                                    149 	.globl _DPH
                                    150 	.globl _DPL
                                    151 	.globl _SP
                                    152 	.globl _P0
                                    153 	.globl _th2rl
                                    154 	.globl _tl2rl
                                    155 	.globl _tm
                                    156 	.globl _delayms
                                    157 	.globl _Int_Init
                                    158 	.globl _idle
                                    159 	.globl _Time0_Init
                                    160 	.globl _Time2_Init
                                    161 	.globl _delayserver
                                    162 ;--------------------------------------------------------
                                    163 ; special function registers
                                    164 ;--------------------------------------------------------
                                    165 	.area RSEG    (ABS,DATA)
      000000                        166 	.org 0x0000
                           000080   167 _P0	=	0x0080
                           000081   168 _SP	=	0x0081
                           000082   169 _DPL	=	0x0082
                           000083   170 _DPH	=	0x0083
                           000087   171 _PCON	=	0x0087
                           000088   172 _TCON	=	0x0088
                           000089   173 _TMOD	=	0x0089
                           00008A   174 _TL0	=	0x008a
                           00008B   175 _TL1	=	0x008b
                           00008C   176 _TH0	=	0x008c
                           00008D   177 _TH1	=	0x008d
                           000090   178 _P1	=	0x0090
                           000098   179 _SCON	=	0x0098
                           000099   180 _SBUF	=	0x0099
                           0000A0   181 _P2	=	0x00a0
                           0000A8   182 _IE	=	0x00a8
                           0000B0   183 _P3	=	0x00b0
                           0000B8   184 _IP	=	0x00b8
                           0000D0   185 _PSW	=	0x00d0
                           0000E0   186 _ACC	=	0x00e0
                           0000F0   187 _B	=	0x00f0
                           00008E   188 _AUXR	=	0x008e
                           0000A2   189 _AUXR1	=	0x00a2
                           0000A9   190 _SADDR1	=	0x00a9
                           0000B7   191 _IPH	=	0x00b7
                           0000C0   192 _XICON	=	0x00c0
                           0000C8   193 _T2CON	=	0x00c8
                           0000C9   194 _T2MOD	=	0x00c9
                           0000CA   195 _RCAP2L	=	0x00ca
                           0000CB   196 _RCAP2H	=	0x00cb
                           0000CC   197 _TL2	=	0x00cc
                           0000CD   198 _TH2	=	0x00cd
                           0000E1   199 _WDT_CONTR	=	0x00e1
                           0000E2   200 _ISP_DATA	=	0x00e2
                           0000E3   201 _ISP_ADDRH	=	0x00e3
                           0000E4   202 _ISP_ADDRL	=	0x00e4
                           0000E5   203 _ISP_CMD	=	0x00e5
                           0000E6   204 _ISP_TRIG	=	0x00e6
                           0000E7   205 _ISP_CONTR	=	0x00e7
                           0000E8   206 _P4	=	0x00e8
                                    207 ;--------------------------------------------------------
                                    208 ; special function bits
                                    209 ;--------------------------------------------------------
                                    210 	.area RSEG    (ABS,DATA)
      000000                        211 	.org 0x0000
                           000080   212 _P0_0	=	0x0080
                           000081   213 _P0_1	=	0x0081
                           000082   214 _P0_2	=	0x0082
                           000083   215 _P0_3	=	0x0083
                           000084   216 _P0_4	=	0x0084
                           000085   217 _P0_5	=	0x0085
                           000086   218 _P0_6	=	0x0086
                           000087   219 _P0_7	=	0x0087
                           000088   220 _IT0	=	0x0088
                           000089   221 _IE0	=	0x0089
                           00008A   222 _IT1	=	0x008a
                           00008B   223 _IE1	=	0x008b
                           00008C   224 _TR0	=	0x008c
                           00008D   225 _TF0	=	0x008d
                           00008E   226 _TR1	=	0x008e
                           00008F   227 _TF1	=	0x008f
                           000090   228 _P1_0	=	0x0090
                           000091   229 _P1_1	=	0x0091
                           000092   230 _P1_2	=	0x0092
                           000093   231 _P1_3	=	0x0093
                           000094   232 _P1_4	=	0x0094
                           000095   233 _P1_5	=	0x0095
                           000096   234 _P1_6	=	0x0096
                           000097   235 _P1_7	=	0x0097
                           000098   236 _RI	=	0x0098
                           000099   237 _TI	=	0x0099
                           00009A   238 _RB8	=	0x009a
                           00009B   239 _TB8	=	0x009b
                           00009C   240 _REN	=	0x009c
                           00009D   241 _SM2	=	0x009d
                           00009E   242 _SM1	=	0x009e
                           00009F   243 _SM0	=	0x009f
                           0000A0   244 _P2_0	=	0x00a0
                           0000A1   245 _P2_1	=	0x00a1
                           0000A2   246 _P2_2	=	0x00a2
                           0000A3   247 _P2_3	=	0x00a3
                           0000A4   248 _P2_4	=	0x00a4
                           0000A5   249 _P2_5	=	0x00a5
                           0000A6   250 _P2_6	=	0x00a6
                           0000A7   251 _P2_7	=	0x00a7
                           0000A8   252 _EX0	=	0x00a8
                           0000A9   253 _ET0	=	0x00a9
                           0000AA   254 _EX1	=	0x00aa
                           0000AB   255 _ET1	=	0x00ab
                           0000AC   256 _ES	=	0x00ac
                           0000AF   257 _EA	=	0x00af
                           0000B0   258 _P3_0	=	0x00b0
                           0000B1   259 _P3_1	=	0x00b1
                           0000B2   260 _P3_2	=	0x00b2
                           0000B3   261 _P3_3	=	0x00b3
                           0000B4   262 _P3_4	=	0x00b4
                           0000B5   263 _P3_5	=	0x00b5
                           0000B6   264 _P3_6	=	0x00b6
                           0000B7   265 _P3_7	=	0x00b7
                           0000B0   266 _RXD	=	0x00b0
                           0000B1   267 _TXD	=	0x00b1
                           0000B2   268 _INT0	=	0x00b2
                           0000B3   269 _INT1	=	0x00b3
                           0000B4   270 _T0	=	0x00b4
                           0000B5   271 _T1	=	0x00b5
                           0000B6   272 _WR	=	0x00b6
                           0000B7   273 _RD	=	0x00b7
                           0000B8   274 _PX0	=	0x00b8
                           0000B9   275 _PT0	=	0x00b9
                           0000BA   276 _PX1	=	0x00ba
                           0000BB   277 _PT1	=	0x00bb
                           0000BC   278 _PS	=	0x00bc
                           0000D0   279 _P	=	0x00d0
                           0000D1   280 _F1	=	0x00d1
                           0000D2   281 _OV	=	0x00d2
                           0000D3   282 _RS0	=	0x00d3
                           0000D4   283 _RS1	=	0x00d4
                           0000D5   284 _F0	=	0x00d5
                           0000D6   285 _AC	=	0x00d6
                           0000D7   286 _CY	=	0x00d7
                           0000AD   287 _ET2	=	0x00ad
                           0000BD   288 _PT2	=	0x00bd
                           000090   289 _T2	=	0x0090
                           000091   290 _T2EX	=	0x0091
                           0000E8   291 _P4_0	=	0x00e8
                           0000E9   292 _P4_1	=	0x00e9
                           0000EA   293 _P4_2	=	0x00ea
                           0000EB   294 _P4_3	=	0x00eb
                           0000EA   295 _INT3	=	0x00ea
                           0000EB   296 _INT2	=	0x00eb
                           0000C8   297 _CPRL2	=	0x00c8
                           0000C9   298 _T2_CT	=	0x00c9
                           0000CA   299 _TR2	=	0x00ca
                           0000CB   300 _EXEN2	=	0x00cb
                           0000CC   301 _TCLK	=	0x00cc
                           0000CD   302 _RCLK	=	0x00cd
                           0000CE   303 _EXF2	=	0x00ce
                           0000CF   304 _TF2	=	0x00cf
                           0000C0   305 _IT2	=	0x00c0
                           0000C1   306 _IE2	=	0x00c1
                           0000C2   307 _EX2	=	0x00c2
                           0000C3   308 _PX2	=	0x00c3
                           0000C4   309 _IT3	=	0x00c4
                           0000C5   310 _IE3	=	0x00c5
                           0000C6   311 _EX3	=	0x00c6
                           0000C7   312 _PX3	=	0x00c7
                                    313 ;--------------------------------------------------------
                                    314 ; overlayable register banks
                                    315 ;--------------------------------------------------------
                                    316 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        317 	.ds 8
                                    318 ;--------------------------------------------------------
                                    319 ; internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area DSEG    (DATA)
      00001A                        322 _tm::
      00001A                        323 	.ds 2
      00001C                        324 _tl2rl::
      00001C                        325 	.ds 1
      00001D                        326 _th2rl::
      00001D                        327 	.ds 1
                                    328 ;--------------------------------------------------------
                                    329 ; overlayable items in internal ram 
                                    330 ;--------------------------------------------------------
                                    331 ;--------------------------------------------------------
                                    332 ; indirectly addressable internal ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area ISEG    (DATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute internal ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area IABS    (ABS,DATA)
                                    339 	.area IABS    (ABS,DATA)
                                    340 ;--------------------------------------------------------
                                    341 ; bit data
                                    342 ;--------------------------------------------------------
                                    343 	.area BSEG    (BIT)
                                    344 ;--------------------------------------------------------
                                    345 ; paged external ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area PSEG    (PAG,XDATA)
                                    348 ;--------------------------------------------------------
                                    349 ; external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XSEG    (XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; absolute external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XABS    (ABS,XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; external initialized ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XISEG   (XDATA)
                                    360 	.area HOME    (CODE)
                                    361 	.area GSINIT0 (CODE)
                                    362 	.area GSINIT1 (CODE)
                                    363 	.area GSINIT2 (CODE)
                                    364 	.area GSINIT3 (CODE)
                                    365 	.area GSINIT4 (CODE)
                                    366 	.area GSINIT5 (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area CSEG    (CODE)
                                    370 ;--------------------------------------------------------
                                    371 ; global & static initialisations
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.area GSFINAL (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 ;--------------------------------------------------------
                                    378 ; Home
                                    379 ;--------------------------------------------------------
                                    380 	.area HOME    (CODE)
                                    381 	.area HOME    (CODE)
                                    382 ;--------------------------------------------------------
                                    383 ; code
                                    384 ;--------------------------------------------------------
                                    385 	.area CSEG    (CODE)
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'delayms'
                                    388 ;------------------------------------------------------------
                                    389 ;ms                        Allocated to registers r6 r7 
                                    390 ;------------------------------------------------------------
                                    391 ;	./src/control.c:6: void delayms(unsigned int ms)
                                    392 ;	-----------------------------------------
                                    393 ;	 function delayms
                                    394 ;	-----------------------------------------
      0002EC                        395 _delayms:
                           000007   396 	ar7 = 0x07
                           000006   397 	ar6 = 0x06
                           000005   398 	ar5 = 0x05
                           000004   399 	ar4 = 0x04
                           000003   400 	ar3 = 0x03
                           000002   401 	ar2 = 0x02
                           000001   402 	ar1 = 0x01
                           000000   403 	ar0 = 0x00
      0002EC AE 82            [24]  404 	mov	r6,dpl
      0002EE AF 83            [24]  405 	mov	r7,dph
                                    406 ;	./src/control.c:8: RCAP2L = tl2rl;
      0002F0 85 1C CA         [24]  407 	mov	_RCAP2L,_tl2rl
                                    408 ;	./src/control.c:9: RCAP2H = th2rl;
      0002F3 85 1D CB         [24]  409 	mov	_RCAP2H,_th2rl
                                    410 ;	./src/control.c:10: TL2    = tl2rl;		
      0002F6 85 1C CC         [24]  411 	mov	_TL2,_tl2rl
                                    412 ;	./src/control.c:11: TH2    = th2rl;
      0002F9 85 1D CD         [24]  413 	mov	_TH2,_th2rl
                                    414 ;	./src/control.c:12: tm=ms;
      0002FC 8E 1A            [24]  415 	mov	_tm,r6
      0002FE 8F 1B            [24]  416 	mov	(_tm + 1),r7
                                    417 ;	./src/control.c:13: TR2=1;
                                    418 ;	assignBit
      000300 D2 CA            [12]  419 	setb	_TR2
                                    420 ;	./src/control.c:14: while(!(tm==0))idle();
      000302                        421 00101$:
      000302 E5 1A            [12]  422 	mov	a,_tm
      000304 45 1B            [12]  423 	orl	a,(_tm + 1)
      000306 60 05            [24]  424 	jz	00103$
      000308 12 03 17         [24]  425 	lcall	_idle
      00030B 80 F5            [24]  426 	sjmp	00101$
      00030D                        427 00103$:
                                    428 ;	./src/control.c:15: TR2=0;
                                    429 ;	assignBit
      00030D C2 CA            [12]  430 	clr	_TR2
                                    431 ;	./src/control.c:17: }
      00030F 22               [24]  432 	ret
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'Int_Init'
                                    435 ;------------------------------------------------------------
                                    436 ;	./src/control.c:19: void Int_Init()
                                    437 ;	-----------------------------------------
                                    438 ;	 function Int_Init
                                    439 ;	-----------------------------------------
      000310                        440 _Int_Init:
                                    441 ;	./src/control.c:21: EA=1;
                                    442 ;	assignBit
      000310 D2 AF            [12]  443 	setb	_EA
                                    444 ;	./src/control.c:22: ES=1;
                                    445 ;	assignBit
      000312 D2 AC            [12]  446 	setb	_ES
                                    447 ;	./src/control.c:23: ET2=1;
                                    448 ;	assignBit
      000314 D2 AD            [12]  449 	setb	_ET2
                                    450 ;	./src/control.c:24: }
      000316 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'idle'
                                    454 ;------------------------------------------------------------
                                    455 ;	./src/control.c:26: void idle()
                                    456 ;	-----------------------------------------
                                    457 ;	 function idle
                                    458 ;	-----------------------------------------
      000317                        459 _idle:
                                    460 ;	./src/control.c:28: PCON|=1<<0;   //cpu sleep
      000317 43 87 01         [24]  461 	orl	_PCON,#0x01
                                    462 ;	./src/control.c:29: }
      00031A 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'Time0_Init'
                                    466 ;------------------------------------------------------------
                                    467 ;	./src/control.c:31: void Time0_Init()
                                    468 ;	-----------------------------------------
                                    469 ;	 function Time0_Init
                                    470 ;	-----------------------------------------
      00031B                        471 _Time0_Init:
                                    472 ;	./src/control.c:33: TMOD|= 0x02;
      00031B 43 89 02         [24]  473 	orl	_TMOD,#0x02
                                    474 ;	./src/control.c:34: }
      00031E 22               [24]  475 	ret
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'Time2_Init'
                                    478 ;------------------------------------------------------------
                                    479 ;load                      Allocated to registers 
                                    480 ;------------------------------------------------------------
                                    481 ;	./src/control.c:36: void Time2_Init()
                                    482 ;	-----------------------------------------
                                    483 ;	 function Time2_Init
                                    484 ;	-----------------------------------------
      00031F                        485 _Time2_Init:
                                    486 ;	./src/control.c:39: th2rl = load/255;
      00031F 75 1D F9         [24]  487 	mov	_th2rl,#0xf9
                                    488 ;	./src/control.c:40: tl2rl = load%255;
      000322 75 1C 29         [24]  489 	mov	_tl2rl,#0x29
                                    490 ;	./src/control.c:41: printf("%d%d\n",tl2rl,th2rl);
      000325 74 F9            [12]  491 	mov	a,#0xf9
      000327 C0 E0            [24]  492 	push	acc
      000329 E4               [12]  493 	clr	a
      00032A C0 E0            [24]  494 	push	acc
      00032C 74 29            [12]  495 	mov	a,#0x29
      00032E C0 E0            [24]  496 	push	acc
      000330 E4               [12]  497 	clr	a
      000331 C0 E0            [24]  498 	push	acc
      000333 74 14            [12]  499 	mov	a,#___str_0
      000335 C0 E0            [24]  500 	push	acc
      000337 74 11            [12]  501 	mov	a,#(___str_0 >> 8)
      000339 C0 E0            [24]  502 	push	acc
      00033B 74 80            [12]  503 	mov	a,#0x80
      00033D C0 E0            [24]  504 	push	acc
      00033F 12 06 D9         [24]  505 	lcall	_printf
      000342 E5 81            [12]  506 	mov	a,sp
      000344 24 F9            [12]  507 	add	a,#0xf9
      000346 F5 81            [12]  508 	mov	sp,a
                                    509 ;	./src/control.c:42: }
      000348 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'delayserver'
                                    513 ;------------------------------------------------------------
                                    514 ;	./src/control.c:44: void delayserver() __interrupt 5
                                    515 ;	-----------------------------------------
                                    516 ;	 function delayserver
                                    517 ;	-----------------------------------------
      000349                        518 _delayserver:
      000349 C0 E0            [24]  519 	push	acc
      00034B C0 D0            [24]  520 	push	psw
                                    521 ;	./src/control.c:46: tm--;
      00034D 15 1A            [12]  522 	dec	_tm
      00034F 74 FF            [12]  523 	mov	a,#0xff
      000351 B5 1A 02         [24]  524 	cjne	a,_tm,00103$
      000354 15 1B            [12]  525 	dec	(_tm + 1)
      000356                        526 00103$:
                                    527 ;	./src/control.c:47: TF2=0;
                                    528 ;	assignBit
      000356 C2 CF            [12]  529 	clr	_TF2
                                    530 ;	./src/control.c:48: }
      000358 D0 D0            [24]  531 	pop	psw
      00035A D0 E0            [24]  532 	pop	acc
      00035C 32               [24]  533 	reti
                                    534 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    535 ;	eliminated unneeded push/pop dpl
                                    536 ;	eliminated unneeded push/pop dph
                                    537 ;	eliminated unneeded push/pop b
                                    538 	.area CSEG    (CODE)
                                    539 	.area CONST   (CODE)
                                    540 	.area CONST   (CODE)
      001114                        541 ___str_0:
      001114 25 64 25 64            542 	.ascii "%d%d"
      001118 0A                     543 	.db 0x0a
      001119 00                     544 	.db 0x00
                                    545 	.area CSEG    (CODE)
                                    546 	.area XINIT   (CODE)
                                    547 	.area CABS    (ABS,CODE)
