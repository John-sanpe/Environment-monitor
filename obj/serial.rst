                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _idle
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
                                    153 	.globl _Serial_Init
                                    154 	.globl _putchar
                                    155 	.globl _Serial_Handel
                                    156 ;--------------------------------------------------------
                                    157 ; special function registers
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0	=	0x0080
                           000081   162 _SP	=	0x0081
                           000082   163 _DPL	=	0x0082
                           000083   164 _DPH	=	0x0083
                           000087   165 _PCON	=	0x0087
                           000088   166 _TCON	=	0x0088
                           000089   167 _TMOD	=	0x0089
                           00008A   168 _TL0	=	0x008a
                           00008B   169 _TL1	=	0x008b
                           00008C   170 _TH0	=	0x008c
                           00008D   171 _TH1	=	0x008d
                           000090   172 _P1	=	0x0090
                           000098   173 _SCON	=	0x0098
                           000099   174 _SBUF	=	0x0099
                           0000A0   175 _P2	=	0x00a0
                           0000A8   176 _IE	=	0x00a8
                           0000B0   177 _P3	=	0x00b0
                           0000B8   178 _IP	=	0x00b8
                           0000D0   179 _PSW	=	0x00d0
                           0000E0   180 _ACC	=	0x00e0
                           0000F0   181 _B	=	0x00f0
                           00008E   182 _AUXR	=	0x008e
                           0000A2   183 _AUXR1	=	0x00a2
                           0000A9   184 _SADDR1	=	0x00a9
                           0000B7   185 _IPH	=	0x00b7
                           0000C0   186 _XICON	=	0x00c0
                           0000C8   187 _T2CON	=	0x00c8
                           0000C9   188 _T2MOD	=	0x00c9
                           0000CA   189 _RCAP2L	=	0x00ca
                           0000CB   190 _RCAP2H	=	0x00cb
                           0000CC   191 _TL2	=	0x00cc
                           0000CD   192 _TH2	=	0x00cd
                           0000E1   193 _WDT_CONTR	=	0x00e1
                           0000E2   194 _ISP_DATA	=	0x00e2
                           0000E3   195 _ISP_ADDRH	=	0x00e3
                           0000E4   196 _ISP_ADDRL	=	0x00e4
                           0000E5   197 _ISP_CMD	=	0x00e5
                           0000E6   198 _ISP_TRIG	=	0x00e6
                           0000E7   199 _ISP_CONTR	=	0x00e7
                           0000E8   200 _P4	=	0x00e8
                                    201 ;--------------------------------------------------------
                                    202 ; special function bits
                                    203 ;--------------------------------------------------------
                                    204 	.area RSEG    (ABS,DATA)
      000000                        205 	.org 0x0000
                           000080   206 _P0_0	=	0x0080
                           000081   207 _P0_1	=	0x0081
                           000082   208 _P0_2	=	0x0082
                           000083   209 _P0_3	=	0x0083
                           000084   210 _P0_4	=	0x0084
                           000085   211 _P0_5	=	0x0085
                           000086   212 _P0_6	=	0x0086
                           000087   213 _P0_7	=	0x0087
                           000088   214 _IT0	=	0x0088
                           000089   215 _IE0	=	0x0089
                           00008A   216 _IT1	=	0x008a
                           00008B   217 _IE1	=	0x008b
                           00008C   218 _TR0	=	0x008c
                           00008D   219 _TF0	=	0x008d
                           00008E   220 _TR1	=	0x008e
                           00008F   221 _TF1	=	0x008f
                           000090   222 _P1_0	=	0x0090
                           000091   223 _P1_1	=	0x0091
                           000092   224 _P1_2	=	0x0092
                           000093   225 _P1_3	=	0x0093
                           000094   226 _P1_4	=	0x0094
                           000095   227 _P1_5	=	0x0095
                           000096   228 _P1_6	=	0x0096
                           000097   229 _P1_7	=	0x0097
                           000098   230 _RI	=	0x0098
                           000099   231 _TI	=	0x0099
                           00009A   232 _RB8	=	0x009a
                           00009B   233 _TB8	=	0x009b
                           00009C   234 _REN	=	0x009c
                           00009D   235 _SM2	=	0x009d
                           00009E   236 _SM1	=	0x009e
                           00009F   237 _SM0	=	0x009f
                           0000A0   238 _P2_0	=	0x00a0
                           0000A1   239 _P2_1	=	0x00a1
                           0000A2   240 _P2_2	=	0x00a2
                           0000A3   241 _P2_3	=	0x00a3
                           0000A4   242 _P2_4	=	0x00a4
                           0000A5   243 _P2_5	=	0x00a5
                           0000A6   244 _P2_6	=	0x00a6
                           0000A7   245 _P2_7	=	0x00a7
                           0000A8   246 _EX0	=	0x00a8
                           0000A9   247 _ET0	=	0x00a9
                           0000AA   248 _EX1	=	0x00aa
                           0000AB   249 _ET1	=	0x00ab
                           0000AC   250 _ES	=	0x00ac
                           0000AF   251 _EA	=	0x00af
                           0000B0   252 _P3_0	=	0x00b0
                           0000B1   253 _P3_1	=	0x00b1
                           0000B2   254 _P3_2	=	0x00b2
                           0000B3   255 _P3_3	=	0x00b3
                           0000B4   256 _P3_4	=	0x00b4
                           0000B5   257 _P3_5	=	0x00b5
                           0000B6   258 _P3_6	=	0x00b6
                           0000B7   259 _P3_7	=	0x00b7
                           0000B0   260 _RXD	=	0x00b0
                           0000B1   261 _TXD	=	0x00b1
                           0000B2   262 _INT0	=	0x00b2
                           0000B3   263 _INT1	=	0x00b3
                           0000B4   264 _T0	=	0x00b4
                           0000B5   265 _T1	=	0x00b5
                           0000B6   266 _WR	=	0x00b6
                           0000B7   267 _RD	=	0x00b7
                           0000B8   268 _PX0	=	0x00b8
                           0000B9   269 _PT0	=	0x00b9
                           0000BA   270 _PX1	=	0x00ba
                           0000BB   271 _PT1	=	0x00bb
                           0000BC   272 _PS	=	0x00bc
                           0000D0   273 _P	=	0x00d0
                           0000D1   274 _F1	=	0x00d1
                           0000D2   275 _OV	=	0x00d2
                           0000D3   276 _RS0	=	0x00d3
                           0000D4   277 _RS1	=	0x00d4
                           0000D5   278 _F0	=	0x00d5
                           0000D6   279 _AC	=	0x00d6
                           0000D7   280 _CY	=	0x00d7
                           0000AD   281 _ET2	=	0x00ad
                           0000BD   282 _PT2	=	0x00bd
                           000090   283 _T2	=	0x0090
                           000091   284 _T2EX	=	0x0091
                           0000E8   285 _P4_0	=	0x00e8
                           0000E9   286 _P4_1	=	0x00e9
                           0000EA   287 _P4_2	=	0x00ea
                           0000EB   288 _P4_3	=	0x00eb
                           0000EA   289 _INT3	=	0x00ea
                           0000EB   290 _INT2	=	0x00eb
                           0000C8   291 _CPRL2	=	0x00c8
                           0000C9   292 _T2_CT	=	0x00c9
                           0000CA   293 _TR2	=	0x00ca
                           0000CB   294 _EXEN2	=	0x00cb
                           0000CC   295 _TCLK	=	0x00cc
                           0000CD   296 _RCLK	=	0x00cd
                           0000CE   297 _EXF2	=	0x00ce
                           0000CF   298 _TF2	=	0x00cf
                           0000C0   299 _IT2	=	0x00c0
                           0000C1   300 _IE2	=	0x00c1
                           0000C2   301 _EX2	=	0x00c2
                           0000C3   302 _PX2	=	0x00c3
                           0000C4   303 _IT3	=	0x00c4
                           0000C5   304 _IE3	=	0x00c5
                           0000C6   305 _EX3	=	0x00c6
                           0000C7   306 _PX3	=	0x00c7
                                    307 ;--------------------------------------------------------
                                    308 ; overlayable register banks
                                    309 ;--------------------------------------------------------
                                    310 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        311 	.ds 8
                                    312 ;--------------------------------------------------------
                                    313 ; internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area DSEG    (DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; overlayable items in internal ram 
                                    318 ;--------------------------------------------------------
                                    319 ;--------------------------------------------------------
                                    320 ; indirectly addressable internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area ISEG    (DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; absolute internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area IABS    (ABS,DATA)
                                    327 	.area IABS    (ABS,DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; bit data
                                    330 ;--------------------------------------------------------
                                    331 	.area BSEG    (BIT)
                                    332 ;--------------------------------------------------------
                                    333 ; paged external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area PSEG    (PAG,XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XSEG    (XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; absolute external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XABS    (ABS,XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; external initialized ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XISEG   (XDATA)
                                    348 	.area HOME    (CODE)
                                    349 	.area GSINIT0 (CODE)
                                    350 	.area GSINIT1 (CODE)
                                    351 	.area GSINIT2 (CODE)
                                    352 	.area GSINIT3 (CODE)
                                    353 	.area GSINIT4 (CODE)
                                    354 	.area GSINIT5 (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area CSEG    (CODE)
                                    358 ;--------------------------------------------------------
                                    359 ; global & static initialisations
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; Home
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
                                    369 	.area HOME    (CODE)
                                    370 ;--------------------------------------------------------
                                    371 ; code
                                    372 ;--------------------------------------------------------
                                    373 	.area CSEG    (CODE)
                                    374 ;------------------------------------------------------------
                                    375 ;Allocation info for local variables in function 'Serial_Init'
                                    376 ;------------------------------------------------------------
                                    377 ;	./src/serial.c:2: void Serial_Init()
                                    378 ;	-----------------------------------------
                                    379 ;	 function Serial_Init
                                    380 ;	-----------------------------------------
      0005CA                        381 _Serial_Init:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
                                    390 ;	./src/serial.c:4: TMOD |= 0x20;	//设定定时器1为8位自动重装方式
      0005CA 43 89 20         [24]  391 	orl	_TMOD,#0x20
                                    392 ;	./src/serial.c:5: TL1 = 243;		//设定定时初值
      0005CD 75 8B F3         [24]  393 	mov	_TL1,#0xf3
                                    394 ;	./src/serial.c:6: TH1 = 243;		//设定定时器重装值
      0005D0 75 8D F3         [24]  395 	mov	_TH1,#0xf3
                                    396 ;	./src/serial.c:7: TR1 = 1;		//启动定时器1
                                    397 ;	assignBit
      0005D3 D2 8E            [12]  398 	setb	_TR1
                                    399 ;	./src/serial.c:9: SM0=0;
                                    400 ;	assignBit
      0005D5 C2 9F            [12]  401 	clr	_SM0
                                    402 ;	./src/serial.c:10: SM1=1;
                                    403 ;	assignBit
      0005D7 D2 9E            [12]  404 	setb	_SM1
                                    405 ;	./src/serial.c:11: REN=1;
                                    406 ;	assignBit
      0005D9 D2 9C            [12]  407 	setb	_REN
                                    408 ;	./src/serial.c:12: PCON|=1<<7;
      0005DB 43 87 80         [24]  409 	orl	_PCON,#0x80
                                    410 ;	./src/serial.c:13: }
      0005DE 22               [24]  411 	ret
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'putchar'
                                    414 ;------------------------------------------------------------
                                    415 ;string                    Allocated to registers r6 r7 
                                    416 ;------------------------------------------------------------
                                    417 ;	./src/serial.c:14: int putchar(int string)
                                    418 ;	-----------------------------------------
                                    419 ;	 function putchar
                                    420 ;	-----------------------------------------
      0005DF                        421 _putchar:
      0005DF AE 82            [24]  422 	mov	r6,dpl
      0005E1 AF 83            [24]  423 	mov	r7,dph
                                    424 ;	./src/serial.c:16: SBUF=string;
      0005E3 8E 99            [24]  425 	mov	_SBUF,r6
                                    426 ;	./src/serial.c:17: idle();
      0005E5 C0 07            [24]  427 	push	ar7
      0005E7 C0 06            [24]  428 	push	ar6
      0005E9 12 02 F6         [24]  429 	lcall	_idle
      0005EC D0 06            [24]  430 	pop	ar6
      0005EE D0 07            [24]  431 	pop	ar7
                                    432 ;	./src/serial.c:18: return string;
      0005F0 8E 82            [24]  433 	mov	dpl,r6
      0005F2 8F 83            [24]  434 	mov	dph,r7
                                    435 ;	./src/serial.c:19: }
      0005F4 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'Serial_Handel'
                                    439 ;------------------------------------------------------------
                                    440 ;	./src/serial.c:21: void Serial_Handel() __interrupt 4
                                    441 ;	-----------------------------------------
                                    442 ;	 function Serial_Handel
                                    443 ;	-----------------------------------------
      0005F5                        444 _Serial_Handel:
                                    445 ;	./src/serial.c:23: EA=0;
                                    446 ;	assignBit
      0005F5 C2 AF            [12]  447 	clr	_EA
                                    448 ;	./src/serial.c:24: if(TI==1)
                                    449 ;	./src/serial.c:26: TI=0;
                                    450 ;	assignBit
      0005F7 10 99 02         [24]  451 	jbc	_TI,00115$
      0005FA 80 00            [24]  452 	sjmp	00102$
      0005FC                        453 00115$:
      0005FC                        454 00102$:
                                    455 ;	./src/serial.c:28: if(RI==1)
                                    456 ;	./src/serial.c:30: RI=0;
                                    457 ;	assignBit
      0005FC 10 98 02         [24]  458 	jbc	_RI,00116$
      0005FF 80 00            [24]  459 	sjmp	00104$
      000601                        460 00116$:
      000601                        461 00104$:
                                    462 ;	./src/serial.c:32: EA=1;
                                    463 ;	assignBit
      000601 D2 AF            [12]  464 	setb	_EA
                                    465 ;	./src/serial.c:33: }
      000603 32               [24]  466 	reti
                                    467 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    468 ;	eliminated unneeded push/pop psw
                                    469 ;	eliminated unneeded push/pop dpl
                                    470 ;	eliminated unneeded push/pop dph
                                    471 ;	eliminated unneeded push/pop b
                                    472 ;	eliminated unneeded push/pop acc
                                    473 	.area CSEG    (CODE)
                                    474 	.area CONST   (CODE)
                                    475 	.area XINIT   (CODE)
                                    476 	.area CABS    (ABS,CODE)
