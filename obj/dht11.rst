                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module dht11
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _DHT11_Data
                                     12 	.globl _DHT11_Start
                                     13 	.globl _DHTStartDelay
                                     14 	.globl _delayms
                                     15 	.globl _PX3
                                     16 	.globl _EX3
                                     17 	.globl _IE3
                                     18 	.globl _IT3
                                     19 	.globl _PX2
                                     20 	.globl _EX2
                                     21 	.globl _IE2
                                     22 	.globl _IT2
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _T2_CT
                                     30 	.globl _CPRL2
                                     31 	.globl _INT2
                                     32 	.globl _INT3
                                     33 	.globl _P4_3
                                     34 	.globl _P4_2
                                     35 	.globl _P4_1
                                     36 	.globl _P4_0
                                     37 	.globl _T2EX
                                     38 	.globl _T2
                                     39 	.globl _PT2
                                     40 	.globl _ET2
                                     41 	.globl _CY
                                     42 	.globl _AC
                                     43 	.globl _F0
                                     44 	.globl _RS1
                                     45 	.globl _RS0
                                     46 	.globl _OV
                                     47 	.globl _F1
                                     48 	.globl _P
                                     49 	.globl _PS
                                     50 	.globl _PT1
                                     51 	.globl _PX1
                                     52 	.globl _PT0
                                     53 	.globl _PX0
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _EA
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _P1_7
                                     93 	.globl _P1_6
                                     94 	.globl _P1_5
                                     95 	.globl _P1_4
                                     96 	.globl _P1_3
                                     97 	.globl _P1_2
                                     98 	.globl _P1_1
                                     99 	.globl _P1_0
                                    100 	.globl _TF1
                                    101 	.globl _TR1
                                    102 	.globl _TF0
                                    103 	.globl _TR0
                                    104 	.globl _IE1
                                    105 	.globl _IT1
                                    106 	.globl _IE0
                                    107 	.globl _IT0
                                    108 	.globl _P0_7
                                    109 	.globl _P0_6
                                    110 	.globl _P0_5
                                    111 	.globl _P0_4
                                    112 	.globl _P0_3
                                    113 	.globl _P0_2
                                    114 	.globl _P0_1
                                    115 	.globl _P0_0
                                    116 	.globl _P4
                                    117 	.globl _ISP_CONTR
                                    118 	.globl _ISP_TRIG
                                    119 	.globl _ISP_CMD
                                    120 	.globl _ISP_ADDRL
                                    121 	.globl _ISP_ADDRH
                                    122 	.globl _ISP_DATA
                                    123 	.globl _WDT_CONTR
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2MOD
                                    129 	.globl _T2CON
                                    130 	.globl _XICON
                                    131 	.globl _IPH
                                    132 	.globl _SADDR1
                                    133 	.globl _AUXR1
                                    134 	.globl _AUXR
                                    135 	.globl _B
                                    136 	.globl _ACC
                                    137 	.globl _PSW
                                    138 	.globl _IP
                                    139 	.globl _P3
                                    140 	.globl _IE
                                    141 	.globl _P2
                                    142 	.globl _SBUF
                                    143 	.globl _SCON
                                    144 	.globl _P1
                                    145 	.globl _TH1
                                    146 	.globl _TH0
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TMOD
                                    150 	.globl _TCON
                                    151 	.globl _PCON
                                    152 	.globl _DPH
                                    153 	.globl _DPL
                                    154 	.globl _SP
                                    155 	.globl _P0
                                    156 	.globl _check
                                    157 	.globl _subzero
                                    158 	.globl _thef
                                    159 	.globl _the
                                    160 	.globl _hum
                                    161 	.globl _mixdata
                                    162 	.globl _DHT11_Read
                                    163 ;--------------------------------------------------------
                                    164 ; special function registers
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0	=	0x0080
                           000081   169 _SP	=	0x0081
                           000082   170 _DPL	=	0x0082
                           000083   171 _DPH	=	0x0083
                           000087   172 _PCON	=	0x0087
                           000088   173 _TCON	=	0x0088
                           000089   174 _TMOD	=	0x0089
                           00008A   175 _TL0	=	0x008a
                           00008B   176 _TL1	=	0x008b
                           00008C   177 _TH0	=	0x008c
                           00008D   178 _TH1	=	0x008d
                           000090   179 _P1	=	0x0090
                           000098   180 _SCON	=	0x0098
                           000099   181 _SBUF	=	0x0099
                           0000A0   182 _P2	=	0x00a0
                           0000A8   183 _IE	=	0x00a8
                           0000B0   184 _P3	=	0x00b0
                           0000B8   185 _IP	=	0x00b8
                           0000D0   186 _PSW	=	0x00d0
                           0000E0   187 _ACC	=	0x00e0
                           0000F0   188 _B	=	0x00f0
                           00008E   189 _AUXR	=	0x008e
                           0000A2   190 _AUXR1	=	0x00a2
                           0000A9   191 _SADDR1	=	0x00a9
                           0000B7   192 _IPH	=	0x00b7
                           0000C0   193 _XICON	=	0x00c0
                           0000C8   194 _T2CON	=	0x00c8
                           0000C9   195 _T2MOD	=	0x00c9
                           0000CA   196 _RCAP2L	=	0x00ca
                           0000CB   197 _RCAP2H	=	0x00cb
                           0000CC   198 _TL2	=	0x00cc
                           0000CD   199 _TH2	=	0x00cd
                           0000E1   200 _WDT_CONTR	=	0x00e1
                           0000E2   201 _ISP_DATA	=	0x00e2
                           0000E3   202 _ISP_ADDRH	=	0x00e3
                           0000E4   203 _ISP_ADDRL	=	0x00e4
                           0000E5   204 _ISP_CMD	=	0x00e5
                           0000E6   205 _ISP_TRIG	=	0x00e6
                           0000E7   206 _ISP_CONTR	=	0x00e7
                           0000E8   207 _P4	=	0x00e8
                                    208 ;--------------------------------------------------------
                                    209 ; special function bits
                                    210 ;--------------------------------------------------------
                                    211 	.area RSEG    (ABS,DATA)
      000000                        212 	.org 0x0000
                           000080   213 _P0_0	=	0x0080
                           000081   214 _P0_1	=	0x0081
                           000082   215 _P0_2	=	0x0082
                           000083   216 _P0_3	=	0x0083
                           000084   217 _P0_4	=	0x0084
                           000085   218 _P0_5	=	0x0085
                           000086   219 _P0_6	=	0x0086
                           000087   220 _P0_7	=	0x0087
                           000088   221 _IT0	=	0x0088
                           000089   222 _IE0	=	0x0089
                           00008A   223 _IT1	=	0x008a
                           00008B   224 _IE1	=	0x008b
                           00008C   225 _TR0	=	0x008c
                           00008D   226 _TF0	=	0x008d
                           00008E   227 _TR1	=	0x008e
                           00008F   228 _TF1	=	0x008f
                           000090   229 _P1_0	=	0x0090
                           000091   230 _P1_1	=	0x0091
                           000092   231 _P1_2	=	0x0092
                           000093   232 _P1_3	=	0x0093
                           000094   233 _P1_4	=	0x0094
                           000095   234 _P1_5	=	0x0095
                           000096   235 _P1_6	=	0x0096
                           000097   236 _P1_7	=	0x0097
                           000098   237 _RI	=	0x0098
                           000099   238 _TI	=	0x0099
                           00009A   239 _RB8	=	0x009a
                           00009B   240 _TB8	=	0x009b
                           00009C   241 _REN	=	0x009c
                           00009D   242 _SM2	=	0x009d
                           00009E   243 _SM1	=	0x009e
                           00009F   244 _SM0	=	0x009f
                           0000A0   245 _P2_0	=	0x00a0
                           0000A1   246 _P2_1	=	0x00a1
                           0000A2   247 _P2_2	=	0x00a2
                           0000A3   248 _P2_3	=	0x00a3
                           0000A4   249 _P2_4	=	0x00a4
                           0000A5   250 _P2_5	=	0x00a5
                           0000A6   251 _P2_6	=	0x00a6
                           0000A7   252 _P2_7	=	0x00a7
                           0000A8   253 _EX0	=	0x00a8
                           0000A9   254 _ET0	=	0x00a9
                           0000AA   255 _EX1	=	0x00aa
                           0000AB   256 _ET1	=	0x00ab
                           0000AC   257 _ES	=	0x00ac
                           0000AF   258 _EA	=	0x00af
                           0000B0   259 _P3_0	=	0x00b0
                           0000B1   260 _P3_1	=	0x00b1
                           0000B2   261 _P3_2	=	0x00b2
                           0000B3   262 _P3_3	=	0x00b3
                           0000B4   263 _P3_4	=	0x00b4
                           0000B5   264 _P3_5	=	0x00b5
                           0000B6   265 _P3_6	=	0x00b6
                           0000B7   266 _P3_7	=	0x00b7
                           0000B0   267 _RXD	=	0x00b0
                           0000B1   268 _TXD	=	0x00b1
                           0000B2   269 _INT0	=	0x00b2
                           0000B3   270 _INT1	=	0x00b3
                           0000B4   271 _T0	=	0x00b4
                           0000B5   272 _T1	=	0x00b5
                           0000B6   273 _WR	=	0x00b6
                           0000B7   274 _RD	=	0x00b7
                           0000B8   275 _PX0	=	0x00b8
                           0000B9   276 _PT0	=	0x00b9
                           0000BA   277 _PX1	=	0x00ba
                           0000BB   278 _PT1	=	0x00bb
                           0000BC   279 _PS	=	0x00bc
                           0000D0   280 _P	=	0x00d0
                           0000D1   281 _F1	=	0x00d1
                           0000D2   282 _OV	=	0x00d2
                           0000D3   283 _RS0	=	0x00d3
                           0000D4   284 _RS1	=	0x00d4
                           0000D5   285 _F0	=	0x00d5
                           0000D6   286 _AC	=	0x00d6
                           0000D7   287 _CY	=	0x00d7
                           0000AD   288 _ET2	=	0x00ad
                           0000BD   289 _PT2	=	0x00bd
                           000090   290 _T2	=	0x0090
                           000091   291 _T2EX	=	0x0091
                           0000E8   292 _P4_0	=	0x00e8
                           0000E9   293 _P4_1	=	0x00e9
                           0000EA   294 _P4_2	=	0x00ea
                           0000EB   295 _P4_3	=	0x00eb
                           0000EA   296 _INT3	=	0x00ea
                           0000EB   297 _INT2	=	0x00eb
                           0000C8   298 _CPRL2	=	0x00c8
                           0000C9   299 _T2_CT	=	0x00c9
                           0000CA   300 _TR2	=	0x00ca
                           0000CB   301 _EXEN2	=	0x00cb
                           0000CC   302 _TCLK	=	0x00cc
                           0000CD   303 _RCLK	=	0x00cd
                           0000CE   304 _EXF2	=	0x00ce
                           0000CF   305 _TF2	=	0x00cf
                           0000C0   306 _IT2	=	0x00c0
                           0000C1   307 _IE2	=	0x00c1
                           0000C2   308 _EX2	=	0x00c2
                           0000C3   309 _PX2	=	0x00c3
                           0000C4   310 _IT3	=	0x00c4
                           0000C5   311 _IE3	=	0x00c5
                           0000C6   312 _EX3	=	0x00c6
                           0000C7   313 _PX3	=	0x00c7
                                    314 ;--------------------------------------------------------
                                    315 ; overlayable register banks
                                    316 ;--------------------------------------------------------
                                    317 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        318 	.ds 8
                                    319 ;--------------------------------------------------------
                                    320 ; internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area DSEG    (DATA)
      00001C                        323 _mixdata::
      00001C                        324 	.ds 4
      000020                        325 _hum::
      000020                        326 	.ds 2
      000022                        327 _the::
      000022                        328 	.ds 2
      000024                        329 _thef::
      000024                        330 	.ds 2
      000026                        331 _subzero::
      000026                        332 	.ds 2
      000028                        333 _check::
      000028                        334 	.ds 2
                                    335 ;--------------------------------------------------------
                                    336 ; overlayable items in internal ram 
                                    337 ;--------------------------------------------------------
                                    338 	.area	OSEG    (OVR,DATA)
                                    339 	.area	OSEG    (OVR,DATA)
                                    340 ;--------------------------------------------------------
                                    341 ; indirectly addressable internal ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area ISEG    (DATA)
                                    344 ;--------------------------------------------------------
                                    345 ; absolute internal ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area IABS    (ABS,DATA)
                                    348 	.area IABS    (ABS,DATA)
                                    349 ;--------------------------------------------------------
                                    350 ; bit data
                                    351 ;--------------------------------------------------------
                                    352 	.area BSEG    (BIT)
                                    353 ;--------------------------------------------------------
                                    354 ; paged external ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area PSEG    (PAG,XDATA)
                                    357 ;--------------------------------------------------------
                                    358 ; external ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area XSEG    (XDATA)
                                    361 ;--------------------------------------------------------
                                    362 ; absolute external ram data
                                    363 ;--------------------------------------------------------
                                    364 	.area XABS    (ABS,XDATA)
                                    365 ;--------------------------------------------------------
                                    366 ; external initialized ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area XISEG   (XDATA)
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT0 (CODE)
                                    371 	.area GSINIT1 (CODE)
                                    372 	.area GSINIT2 (CODE)
                                    373 	.area GSINIT3 (CODE)
                                    374 	.area GSINIT4 (CODE)
                                    375 	.area GSINIT5 (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area CSEG    (CODE)
                                    379 ;--------------------------------------------------------
                                    380 ; global & static initialisations
                                    381 ;--------------------------------------------------------
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area GSINIT  (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; Home
                                    388 ;--------------------------------------------------------
                                    389 	.area HOME    (CODE)
                                    390 	.area HOME    (CODE)
                                    391 ;--------------------------------------------------------
                                    392 ; code
                                    393 ;--------------------------------------------------------
                                    394 	.area CSEG    (CODE)
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'DHTStartDelay'
                                    397 ;------------------------------------------------------------
                                    398 ;i                         Allocated to registers r7 
                                    399 ;------------------------------------------------------------
                                    400 ;	./src/dht11.c:5: void DHTStartDelay()
                                    401 ;	-----------------------------------------
                                    402 ;	 function DHTStartDelay
                                    403 ;	-----------------------------------------
      00033D                        404 _DHTStartDelay:
                           000007   405 	ar7 = 0x07
                           000006   406 	ar6 = 0x06
                           000005   407 	ar5 = 0x05
                           000004   408 	ar4 = 0x04
                           000003   409 	ar3 = 0x03
                           000002   410 	ar2 = 0x02
                           000001   411 	ar1 = 0x01
                           000000   412 	ar0 = 0x00
                                    413 ;	./src/dht11.c:9: i = 15;
      00033D 7F 0F            [12]  414 	mov	r7,#0x0f
                                    415 ;	./src/dht11.c:10: while (--i);
      00033F                        416 00101$:
      00033F EF               [12]  417 	mov	a,r7
      000340 14               [12]  418 	dec	a
      000341 FF               [12]  419 	mov	r7,a
      000342 70 FB            [24]  420 	jnz	00101$
                                    421 ;	./src/dht11.c:11: }
      000344 22               [24]  422 	ret
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'DHT11_Start'
                                    425 ;------------------------------------------------------------
                                    426 ;	./src/dht11.c:12: void DHT11_Start()
                                    427 ;	-----------------------------------------
                                    428 ;	 function DHT11_Start
                                    429 ;	-----------------------------------------
      000345                        430 _DHT11_Start:
                                    431 ;	./src/dht11.c:14: DHT11=0;
                                    432 ;	assignBit
      000345 C2 A4            [12]  433 	clr	_P2_4
                                    434 ;	./src/dht11.c:15: delayms(20);
      000347 90 00 14         [24]  435 	mov	dptr,#0x0014
      00034A 12 02 EF         [24]  436 	lcall	_delayms
                                    437 ;	./src/dht11.c:16: DHT11=1;
                                    438 ;	assignBit
      00034D D2 A4            [12]  439 	setb	_P2_4
                                    440 ;	./src/dht11.c:17: DHTStartDelay();
      00034F 12 03 3D         [24]  441 	lcall	_DHTStartDelay
                                    442 ;	./src/dht11.c:18: while(!DHT11);
      000352                        443 00101$:
      000352 30 A4 FD         [24]  444 	jnb	_P2_4,00101$
                                    445 ;	./src/dht11.c:19: while(DHT11);
      000355                        446 00104$:
      000355 20 A4 FD         [24]  447 	jb	_P2_4,00104$
                                    448 ;	./src/dht11.c:20: }
      000358 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'DHT11_Data'
                                    452 ;------------------------------------------------------------
                                    453 ;temp                      Allocated to registers r7 
                                    454 ;------------------------------------------------------------
                                    455 ;	./src/dht11.c:21: void DHT11_Data()
                                    456 ;	-----------------------------------------
                                    457 ;	 function DHT11_Data
                                    458 ;	-----------------------------------------
      000359                        459 _DHT11_Data:
                                    460 ;	./src/dht11.c:24: for(temp=0;temp<32;temp++)
      000359 7F 00            [12]  461 	mov	r7,#0x00
      00035B                        462 00122$:
                                    463 ;	./src/dht11.c:26: TL0=0;
      00035B 75 8A 00         [24]  464 	mov	_TL0,#0x00
                                    465 ;	./src/dht11.c:27: while(!DHT11);
      00035E                        466 00101$:
      00035E 30 A4 FD         [24]  467 	jnb	_P2_4,00101$
                                    468 ;	./src/dht11.c:28: TR0=1;
                                    469 ;	assignBit
      000361 D2 8C            [12]  470 	setb	_TR0
                                    471 ;	./src/dht11.c:29: while(DHT11);
      000363                        472 00104$:
      000363 20 A4 FD         [24]  473 	jb	_P2_4,00104$
                                    474 ;	./src/dht11.c:30: TR0=0;
                                    475 ;	assignBit
      000366 C2 8C            [12]  476 	clr	_TR0
                                    477 ;	./src/dht11.c:31: mixdata<<=1;
      000368 E5 1C            [12]  478 	mov	a,_mixdata
      00036A 25 1C            [12]  479 	add	a,_mixdata
      00036C F5 1C            [12]  480 	mov	_mixdata,a
      00036E E5 1D            [12]  481 	mov	a,(_mixdata + 1)
      000370 33               [12]  482 	rlc	a
      000371 F5 1D            [12]  483 	mov	(_mixdata + 1),a
      000373 E5 1E            [12]  484 	mov	a,(_mixdata + 2)
      000375 33               [12]  485 	rlc	a
      000376 F5 1E            [12]  486 	mov	(_mixdata + 2),a
      000378 E5 1F            [12]  487 	mov	a,(_mixdata + 3)
      00037A 33               [12]  488 	rlc	a
      00037B F5 1F            [12]  489 	mov	(_mixdata + 3),a
                                    490 ;	./src/dht11.c:32: if(TL0>dht11_threshold)mixdata|=1;
      00037D E5 8A            [12]  491 	mov	a,_TL0
      00037F 24 C3            [12]  492 	add	a,#0xff - 0x3c
      000381 50 03            [24]  493 	jnc	00123$
      000383 43 1C 01         [24]  494 	orl	_mixdata,#0x01
      000386                        495 00123$:
                                    496 ;	./src/dht11.c:24: for(temp=0;temp<32;temp++)
      000386 0F               [12]  497 	inc	r7
      000387 BF 20 00         [24]  498 	cjne	r7,#0x20,00189$
      00038A                        499 00189$:
      00038A 40 CF            [24]  500 	jc	00122$
                                    501 ;	./src/dht11.c:34: for(temp=0;temp<8;temp++)
      00038C 7F 00            [12]  502 	mov	r7,#0x00
      00038E                        503 00124$:
                                    504 ;	./src/dht11.c:36: TL0=0;
      00038E 75 8A 00         [24]  505 	mov	_TL0,#0x00
                                    506 ;	./src/dht11.c:37: while(!DHT11);
      000391                        507 00110$:
      000391 30 A4 FD         [24]  508 	jnb	_P2_4,00110$
                                    509 ;	./src/dht11.c:38: TR0=1;
                                    510 ;	assignBit
      000394 D2 8C            [12]  511 	setb	_TR0
                                    512 ;	./src/dht11.c:39: while(DHT11);
      000396                        513 00113$:
      000396 20 A4 FD         [24]  514 	jb	_P2_4,00113$
                                    515 ;	./src/dht11.c:40: TR0=0;
                                    516 ;	assignBit
      000399 C2 8C            [12]  517 	clr	_TR0
                                    518 ;	./src/dht11.c:41: check<<=1;
      00039B E5 28            [12]  519 	mov	a,_check
      00039D 25 28            [12]  520 	add	a,_check
      00039F F5 28            [12]  521 	mov	_check,a
      0003A1 E5 29            [12]  522 	mov	a,(_check + 1)
      0003A3 33               [12]  523 	rlc	a
      0003A4 F5 29            [12]  524 	mov	(_check + 1),a
                                    525 ;	./src/dht11.c:42: if(TL0>dht11_threshold)check|=1;
      0003A6 E5 8A            [12]  526 	mov	a,_TL0
      0003A8 24 C3            [12]  527 	add	a,#0xff - 0x3c
      0003AA 50 03            [24]  528 	jnc	00125$
      0003AC 43 28 01         [24]  529 	orl	_check,#0x01
      0003AF                        530 00125$:
                                    531 ;	./src/dht11.c:34: for(temp=0;temp<8;temp++)
      0003AF 0F               [12]  532 	inc	r7
      0003B0 BF 08 00         [24]  533 	cjne	r7,#0x08,00194$
      0003B3                        534 00194$:
      0003B3 40 D9            [24]  535 	jc	00124$
                                    536 ;	./src/dht11.c:44: while(DHT11);
      0003B5                        537 00119$:
      0003B5 20 A4 FD         [24]  538 	jb	_P2_4,00119$
                                    539 ;	./src/dht11.c:45: }
      0003B8 22               [24]  540 	ret
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'DHT11_Read'
                                    543 ;------------------------------------------------------------
                                    544 ;	./src/dht11.c:47: char DHT11_Read(void)
                                    545 ;	-----------------------------------------
                                    546 ;	 function DHT11_Read
                                    547 ;	-----------------------------------------
      0003B9                        548 _DHT11_Read:
                                    549 ;	./src/dht11.c:50: mixdata=0;
      0003B9 E4               [12]  550 	clr	a
      0003BA F5 1C            [12]  551 	mov	_mixdata,a
      0003BC F5 1D            [12]  552 	mov	(_mixdata + 1),a
      0003BE F5 1E            [12]  553 	mov	(_mixdata + 2),a
      0003C0 F5 1F            [12]  554 	mov	(_mixdata + 3),a
                                    555 ;	./src/dht11.c:51: check=0;
      0003C2 F5 28            [12]  556 	mov	_check,a
      0003C4 F5 29            [12]  557 	mov	(_check + 1),a
                                    558 ;	./src/dht11.c:53: DHT11_Start();
      0003C6 12 03 45         [24]  559 	lcall	_DHT11_Start
                                    560 ;	./src/dht11.c:54: DHT11_Data();
      0003C9 12 03 59         [24]  561 	lcall	_DHT11_Data
                                    562 ;	./src/dht11.c:56: hum=(mixdata>>24)&0xff;
      0003CC AF 1F            [24]  563 	mov	r7,(_mixdata + 3)
      0003CE 7E 00            [12]  564 	mov	r6,#0x00
      0003D0 8F 20            [24]  565 	mov	_hum,r7
      0003D2 8E 21            [24]  566 	mov	(_hum + 1),r6
                                    567 ;	./src/dht11.c:57: the=(mixdata>>8)&0xff;
      0003D4 AC 1D            [24]  568 	mov	r4,(_mixdata + 1)
      0003D6 8C 22            [24]  569 	mov	_the,r4
                                    570 ;	1-genFromRTrack replaced	mov	(_the + 1),#0x00
      0003D8 8E 23            [24]  571 	mov	(_the + 1),r6
                                    572 ;	./src/dht11.c:58: thef=(mixdata>>0)&0xf;
      0003DA AC 1C            [24]  573 	mov	r4,_mixdata
      0003DC 74 0F            [12]  574 	mov	a,#0x0f
      0003DE 5C               [12]  575 	anl	a,r4
      0003DF F5 24            [12]  576 	mov	_thef,a
                                    577 ;	1-genFromRTrack replaced	mov	(_thef + 1),#0x00
      0003E1 8E 25            [24]  578 	mov	(_thef + 1),r6
                                    579 ;	./src/dht11.c:60: subzero=(mixdata>>7)&0x1;
      0003E3 E5 1C            [12]  580 	mov	a,_mixdata
      0003E5 23               [12]  581 	rl	a
      0003E6 54 01            [12]  582 	anl	a,#0x01
      0003E8 FD               [12]  583 	mov	r5,a
      0003E9 8D 26            [24]  584 	mov	_subzero,r5
                                    585 ;	1-genFromRTrack replaced	mov	(_subzero + 1),#0x00
      0003EB 8E 27            [24]  586 	mov	(_subzero + 1),r6
                                    587 ;	./src/dht11.c:62: hum+=humcompensate;
                                    588 ;	./src/dht11.c:63: the+=thecompensate;
                                    589 ;	./src/dht11.c:65: if(check!=((mixdata>>24)&0xff)+((mixdata>>16)&0xff)+((mixdata>>8)&0xff)+((mixdata>>0)&0xf))return -1;
      0003ED AD 1E            [24]  590 	mov	r5,(_mixdata + 2)
      0003EF 7C 00            [12]  591 	mov	r4,#0x00
      0003F1 ED               [12]  592 	mov	a,r5
      0003F2 2F               [12]  593 	add	a,r7
      0003F3 FF               [12]  594 	mov	r7,a
      0003F4 EC               [12]  595 	mov	a,r4
      0003F5 3E               [12]  596 	addc	a,r6
      0003F6 FE               [12]  597 	mov	r6,a
      0003F7 AD 1D            [24]  598 	mov	r5,(_mixdata + 1)
      0003F9 7C 00            [12]  599 	mov	r4,#0x00
      0003FB ED               [12]  600 	mov	a,r5
      0003FC 2F               [12]  601 	add	a,r7
      0003FD FF               [12]  602 	mov	r7,a
      0003FE EC               [12]  603 	mov	a,r4
      0003FF 3E               [12]  604 	addc	a,r6
      000400 FE               [12]  605 	mov	r6,a
      000401 AA 1C            [24]  606 	mov	r2,_mixdata
      000403 53 02 0F         [24]  607 	anl	ar2,#0x0f
      000406 7B 00            [12]  608 	mov	r3,#0x00
      000408 7C 00            [12]  609 	mov	r4,#0x00
      00040A 7D 00            [12]  610 	mov	r5,#0x00
      00040C 8F 00            [24]  611 	mov	ar0,r7
      00040E EE               [12]  612 	mov	a,r6
      00040F F9               [12]  613 	mov	r1,a
      000410 33               [12]  614 	rlc	a
      000411 95 E0            [12]  615 	subb	a,acc
      000413 FE               [12]  616 	mov	r6,a
      000414 FF               [12]  617 	mov	r7,a
      000415 EA               [12]  618 	mov	a,r2
      000416 28               [12]  619 	add	a,r0
      000417 FA               [12]  620 	mov	r2,a
      000418 EB               [12]  621 	mov	a,r3
      000419 39               [12]  622 	addc	a,r1
      00041A FB               [12]  623 	mov	r3,a
      00041B EC               [12]  624 	mov	a,r4
      00041C 3E               [12]  625 	addc	a,r6
      00041D FC               [12]  626 	mov	r4,a
      00041E ED               [12]  627 	mov	a,r5
      00041F 3F               [12]  628 	addc	a,r7
      000420 FD               [12]  629 	mov	r5,a
      000421 A8 28            [24]  630 	mov	r0,_check
      000423 E5 29            [12]  631 	mov	a,(_check + 1)
      000425 F9               [12]  632 	mov	r1,a
      000426 33               [12]  633 	rlc	a
      000427 95 E0            [12]  634 	subb	a,acc
      000429 FE               [12]  635 	mov	r6,a
      00042A FF               [12]  636 	mov	r7,a
      00042B E8               [12]  637 	mov	a,r0
      00042C B5 02 0E         [24]  638 	cjne	a,ar2,00109$
      00042F E9               [12]  639 	mov	a,r1
      000430 B5 03 0A         [24]  640 	cjne	a,ar3,00109$
      000433 EE               [12]  641 	mov	a,r6
      000434 B5 04 06         [24]  642 	cjne	a,ar4,00109$
      000437 EF               [12]  643 	mov	a,r7
      000438 B5 05 02         [24]  644 	cjne	a,ar5,00109$
      00043B 80 04            [24]  645 	sjmp	00102$
      00043D                        646 00109$:
      00043D 75 82 FF         [24]  647 	mov	dpl,#0xff
      000440 22               [24]  648 	ret
      000441                        649 00102$:
                                    650 ;	./src/dht11.c:66: return 0;
      000441 75 82 00         [24]  651 	mov	dpl,#0x00
                                    652 ;	./src/dht11.c:67: }
      000444 22               [24]  653 	ret
                                    654 	.area CSEG    (CODE)
                                    655 	.area CONST   (CODE)
                                    656 	.area XINIT   (CODE)
                                    657 	.area CABS    (ABS,CODE)
