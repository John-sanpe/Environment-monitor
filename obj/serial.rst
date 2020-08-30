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
                                    153 	.globl _Time1_Init
                                    154 	.globl _Serial_Init
                                    155 	.globl _putchar
                                    156 	.globl _Serial_Handel
                                    157 ;--------------------------------------------------------
                                    158 ; special function registers
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           000080   162 _P0	=	0x0080
                           000081   163 _SP	=	0x0081
                           000082   164 _DPL	=	0x0082
                           000083   165 _DPH	=	0x0083
                           000087   166 _PCON	=	0x0087
                           000088   167 _TCON	=	0x0088
                           000089   168 _TMOD	=	0x0089
                           00008A   169 _TL0	=	0x008a
                           00008B   170 _TL1	=	0x008b
                           00008C   171 _TH0	=	0x008c
                           00008D   172 _TH1	=	0x008d
                           000090   173 _P1	=	0x0090
                           000098   174 _SCON	=	0x0098
                           000099   175 _SBUF	=	0x0099
                           0000A0   176 _P2	=	0x00a0
                           0000A8   177 _IE	=	0x00a8
                           0000B0   178 _P3	=	0x00b0
                           0000B8   179 _IP	=	0x00b8
                           0000D0   180 _PSW	=	0x00d0
                           0000E0   181 _ACC	=	0x00e0
                           0000F0   182 _B	=	0x00f0
                           00008E   183 _AUXR	=	0x008e
                           0000A2   184 _AUXR1	=	0x00a2
                           0000A9   185 _SADDR1	=	0x00a9
                           0000B7   186 _IPH	=	0x00b7
                           0000C0   187 _XICON	=	0x00c0
                           0000C8   188 _T2CON	=	0x00c8
                           0000C9   189 _T2MOD	=	0x00c9
                           0000CA   190 _RCAP2L	=	0x00ca
                           0000CB   191 _RCAP2H	=	0x00cb
                           0000CC   192 _TL2	=	0x00cc
                           0000CD   193 _TH2	=	0x00cd
                           0000E1   194 _WDT_CONTR	=	0x00e1
                           0000E2   195 _ISP_DATA	=	0x00e2
                           0000E3   196 _ISP_ADDRH	=	0x00e3
                           0000E4   197 _ISP_ADDRL	=	0x00e4
                           0000E5   198 _ISP_CMD	=	0x00e5
                           0000E6   199 _ISP_TRIG	=	0x00e6
                           0000E7   200 _ISP_CONTR	=	0x00e7
                           0000E8   201 _P4	=	0x00e8
                                    202 ;--------------------------------------------------------
                                    203 ; special function bits
                                    204 ;--------------------------------------------------------
                                    205 	.area RSEG    (ABS,DATA)
      000000                        206 	.org 0x0000
                           000080   207 _P0_0	=	0x0080
                           000081   208 _P0_1	=	0x0081
                           000082   209 _P0_2	=	0x0082
                           000083   210 _P0_3	=	0x0083
                           000084   211 _P0_4	=	0x0084
                           000085   212 _P0_5	=	0x0085
                           000086   213 _P0_6	=	0x0086
                           000087   214 _P0_7	=	0x0087
                           000088   215 _IT0	=	0x0088
                           000089   216 _IE0	=	0x0089
                           00008A   217 _IT1	=	0x008a
                           00008B   218 _IE1	=	0x008b
                           00008C   219 _TR0	=	0x008c
                           00008D   220 _TF0	=	0x008d
                           00008E   221 _TR1	=	0x008e
                           00008F   222 _TF1	=	0x008f
                           000090   223 _P1_0	=	0x0090
                           000091   224 _P1_1	=	0x0091
                           000092   225 _P1_2	=	0x0092
                           000093   226 _P1_3	=	0x0093
                           000094   227 _P1_4	=	0x0094
                           000095   228 _P1_5	=	0x0095
                           000096   229 _P1_6	=	0x0096
                           000097   230 _P1_7	=	0x0097
                           000098   231 _RI	=	0x0098
                           000099   232 _TI	=	0x0099
                           00009A   233 _RB8	=	0x009a
                           00009B   234 _TB8	=	0x009b
                           00009C   235 _REN	=	0x009c
                           00009D   236 _SM2	=	0x009d
                           00009E   237 _SM1	=	0x009e
                           00009F   238 _SM0	=	0x009f
                           0000A0   239 _P2_0	=	0x00a0
                           0000A1   240 _P2_1	=	0x00a1
                           0000A2   241 _P2_2	=	0x00a2
                           0000A3   242 _P2_3	=	0x00a3
                           0000A4   243 _P2_4	=	0x00a4
                           0000A5   244 _P2_5	=	0x00a5
                           0000A6   245 _P2_6	=	0x00a6
                           0000A7   246 _P2_7	=	0x00a7
                           0000A8   247 _EX0	=	0x00a8
                           0000A9   248 _ET0	=	0x00a9
                           0000AA   249 _EX1	=	0x00aa
                           0000AB   250 _ET1	=	0x00ab
                           0000AC   251 _ES	=	0x00ac
                           0000AF   252 _EA	=	0x00af
                           0000B0   253 _P3_0	=	0x00b0
                           0000B1   254 _P3_1	=	0x00b1
                           0000B2   255 _P3_2	=	0x00b2
                           0000B3   256 _P3_3	=	0x00b3
                           0000B4   257 _P3_4	=	0x00b4
                           0000B5   258 _P3_5	=	0x00b5
                           0000B6   259 _P3_6	=	0x00b6
                           0000B7   260 _P3_7	=	0x00b7
                           0000B0   261 _RXD	=	0x00b0
                           0000B1   262 _TXD	=	0x00b1
                           0000B2   263 _INT0	=	0x00b2
                           0000B3   264 _INT1	=	0x00b3
                           0000B4   265 _T0	=	0x00b4
                           0000B5   266 _T1	=	0x00b5
                           0000B6   267 _WR	=	0x00b6
                           0000B7   268 _RD	=	0x00b7
                           0000B8   269 _PX0	=	0x00b8
                           0000B9   270 _PT0	=	0x00b9
                           0000BA   271 _PX1	=	0x00ba
                           0000BB   272 _PT1	=	0x00bb
                           0000BC   273 _PS	=	0x00bc
                           0000D0   274 _P	=	0x00d0
                           0000D1   275 _F1	=	0x00d1
                           0000D2   276 _OV	=	0x00d2
                           0000D3   277 _RS0	=	0x00d3
                           0000D4   278 _RS1	=	0x00d4
                           0000D5   279 _F0	=	0x00d5
                           0000D6   280 _AC	=	0x00d6
                           0000D7   281 _CY	=	0x00d7
                           0000AD   282 _ET2	=	0x00ad
                           0000BD   283 _PT2	=	0x00bd
                           000090   284 _T2	=	0x0090
                           000091   285 _T2EX	=	0x0091
                           0000E8   286 _P4_0	=	0x00e8
                           0000E9   287 _P4_1	=	0x00e9
                           0000EA   288 _P4_2	=	0x00ea
                           0000EB   289 _P4_3	=	0x00eb
                           0000EA   290 _INT3	=	0x00ea
                           0000EB   291 _INT2	=	0x00eb
                           0000C8   292 _CPRL2	=	0x00c8
                           0000C9   293 _T2_CT	=	0x00c9
                           0000CA   294 _TR2	=	0x00ca
                           0000CB   295 _EXEN2	=	0x00cb
                           0000CC   296 _TCLK	=	0x00cc
                           0000CD   297 _RCLK	=	0x00cd
                           0000CE   298 _EXF2	=	0x00ce
                           0000CF   299 _TF2	=	0x00cf
                           0000C0   300 _IT2	=	0x00c0
                           0000C1   301 _IE2	=	0x00c1
                           0000C2   302 _EX2	=	0x00c2
                           0000C3   303 _PX2	=	0x00c3
                           0000C4   304 _IT3	=	0x00c4
                           0000C5   305 _IE3	=	0x00c5
                           0000C6   306 _EX3	=	0x00c6
                           0000C7   307 _PX3	=	0x00c7
                                    308 ;--------------------------------------------------------
                                    309 ; overlayable register banks
                                    310 ;--------------------------------------------------------
                                    311 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        312 	.ds 8
                                    313 ;--------------------------------------------------------
                                    314 ; internal ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area DSEG    (DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; overlayable items in internal ram 
                                    319 ;--------------------------------------------------------
                                    320 ;--------------------------------------------------------
                                    321 ; indirectly addressable internal ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area ISEG    (DATA)
                                    324 ;--------------------------------------------------------
                                    325 ; absolute internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area IABS    (ABS,DATA)
                                    328 	.area IABS    (ABS,DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; bit data
                                    331 ;--------------------------------------------------------
                                    332 	.area BSEG    (BIT)
                                    333 ;--------------------------------------------------------
                                    334 ; paged external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area PSEG    (PAG,XDATA)
                                    337 ;--------------------------------------------------------
                                    338 ; external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area XSEG    (XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; absolute external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XABS    (ABS,XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; external initialized ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XISEG   (XDATA)
                                    349 	.area HOME    (CODE)
                                    350 	.area GSINIT0 (CODE)
                                    351 	.area GSINIT1 (CODE)
                                    352 	.area GSINIT2 (CODE)
                                    353 	.area GSINIT3 (CODE)
                                    354 	.area GSINIT4 (CODE)
                                    355 	.area GSINIT5 (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.area GSFINAL (CODE)
                                    358 	.area CSEG    (CODE)
                                    359 ;--------------------------------------------------------
                                    360 ; global & static initialisations
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 ;--------------------------------------------------------
                                    367 ; Home
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area HOME    (CODE)
                                    371 ;--------------------------------------------------------
                                    372 ; code
                                    373 ;--------------------------------------------------------
                                    374 	.area CSEG    (CODE)
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function 'Time1_Init'
                                    377 ;------------------------------------------------------------
                                    378 ;	./src/serial.c:2: void Time1_Init()
                                    379 ;	-----------------------------------------
                                    380 ;	 function Time1_Init
                                    381 ;	-----------------------------------------
      0005CB                        382 _Time1_Init:
                           000007   383 	ar7 = 0x07
                           000006   384 	ar6 = 0x06
                           000005   385 	ar5 = 0x05
                           000004   386 	ar4 = 0x04
                           000003   387 	ar3 = 0x03
                           000002   388 	ar2 = 0x02
                           000001   389 	ar1 = 0x01
                           000000   390 	ar0 = 0x00
                                    391 ;	./src/serial.c:4: TMOD |= 0x20;	//设定定时器1为8位自动重装方式
      0005CB 43 89 20         [24]  392 	orl	_TMOD,#0x20
                                    393 ;	./src/serial.c:5: TL1 = 243;		//设定定时初值
      0005CE 75 8B F3         [24]  394 	mov	_TL1,#0xf3
                                    395 ;	./src/serial.c:6: TH1 = 243;		//设定定时器重装值
      0005D1 75 8D F3         [24]  396 	mov	_TH1,#0xf3
                                    397 ;	./src/serial.c:7: TR1 = 1;		//启动定时器1
                                    398 ;	assignBit
      0005D4 D2 8E            [12]  399 	setb	_TR1
                                    400 ;	./src/serial.c:8: }
      0005D6 22               [24]  401 	ret
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'Serial_Init'
                                    404 ;------------------------------------------------------------
                                    405 ;	./src/serial.c:9: void Serial_Init()
                                    406 ;	-----------------------------------------
                                    407 ;	 function Serial_Init
                                    408 ;	-----------------------------------------
      0005D7                        409 _Serial_Init:
                                    410 ;	./src/serial.c:11: SM0=0;
                                    411 ;	assignBit
      0005D7 C2 9F            [12]  412 	clr	_SM0
                                    413 ;	./src/serial.c:12: SM1=1;
                                    414 ;	assignBit
      0005D9 D2 9E            [12]  415 	setb	_SM1
                                    416 ;	./src/serial.c:13: REN=1;
                                    417 ;	assignBit
      0005DB D2 9C            [12]  418 	setb	_REN
                                    419 ;	./src/serial.c:14: PCON|=1<<7;
      0005DD 43 87 80         [24]  420 	orl	_PCON,#0x80
                                    421 ;	./src/serial.c:15: }
      0005E0 22               [24]  422 	ret
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'putchar'
                                    425 ;------------------------------------------------------------
                                    426 ;string                    Allocated to registers r6 r7 
                                    427 ;------------------------------------------------------------
                                    428 ;	./src/serial.c:16: int putchar(int string)
                                    429 ;	-----------------------------------------
                                    430 ;	 function putchar
                                    431 ;	-----------------------------------------
      0005E1                        432 _putchar:
      0005E1 AE 82            [24]  433 	mov	r6,dpl
      0005E3 AF 83            [24]  434 	mov	r7,dph
                                    435 ;	./src/serial.c:18: SBUF=string;
      0005E5 8E 99            [24]  436 	mov	_SBUF,r6
                                    437 ;	./src/serial.c:19: idle();
      0005E7 C0 07            [24]  438 	push	ar7
      0005E9 C0 06            [24]  439 	push	ar6
      0005EB 12 03 14         [24]  440 	lcall	_idle
      0005EE D0 06            [24]  441 	pop	ar6
      0005F0 D0 07            [24]  442 	pop	ar7
                                    443 ;	./src/serial.c:20: return string;
      0005F2 8E 82            [24]  444 	mov	dpl,r6
      0005F4 8F 83            [24]  445 	mov	dph,r7
                                    446 ;	./src/serial.c:21: }
      0005F6 22               [24]  447 	ret
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'Serial_Handel'
                                    450 ;------------------------------------------------------------
                                    451 ;	./src/serial.c:23: void Serial_Handel() __interrupt 4
                                    452 ;	-----------------------------------------
                                    453 ;	 function Serial_Handel
                                    454 ;	-----------------------------------------
      0005F7                        455 _Serial_Handel:
                                    456 ;	./src/serial.c:25: EA=0;
                                    457 ;	assignBit
      0005F7 C2 AF            [12]  458 	clr	_EA
                                    459 ;	./src/serial.c:26: if(TI==1)
                                    460 ;	./src/serial.c:28: TI=0;
                                    461 ;	assignBit
      0005F9 10 99 02         [24]  462 	jbc	_TI,00115$
      0005FC 80 00            [24]  463 	sjmp	00102$
      0005FE                        464 00115$:
      0005FE                        465 00102$:
                                    466 ;	./src/serial.c:30: if(RI==1)
                                    467 ;	./src/serial.c:32: RI=0;
                                    468 ;	assignBit
      0005FE 10 98 02         [24]  469 	jbc	_RI,00116$
      000601 80 00            [24]  470 	sjmp	00104$
      000603                        471 00116$:
      000603                        472 00104$:
                                    473 ;	./src/serial.c:34: EA=1;
                                    474 ;	assignBit
      000603 D2 AF            [12]  475 	setb	_EA
                                    476 ;	./src/serial.c:35: }
      000605 32               [24]  477 	reti
                                    478 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    479 ;	eliminated unneeded push/pop psw
                                    480 ;	eliminated unneeded push/pop dpl
                                    481 ;	eliminated unneeded push/pop dph
                                    482 ;	eliminated unneeded push/pop b
                                    483 ;	eliminated unneeded push/pop acc
                                    484 	.area CSEG    (CODE)
                                    485 	.area CONST   (CODE)
                                    486 	.area XINIT   (CODE)
                                    487 	.area CABS    (ABS,CODE)
