                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _debug
                                     13 	.globl _show_time
                                     14 	.globl _show_info
                                     15 	.globl _show_data
                                     16 	.globl _show_base
                                     17 	.globl _print_boot
                                     18 	.globl _Boot_Test
                                     19 	.globl _show_error
                                     20 	.globl _Lcd1602_Init
                                     21 	.globl _Lcd1602_Clean
                                     22 	.globl _Lcd1602_PrintCust
                                     23 	.globl _Lcd1602_Print
                                     24 	.globl _Lcd1602_PrintNumber
                                     25 	.globl _Wdt_Runsign
                                     26 	.globl _Wdt_Clean
                                     27 	.globl _Wdt_Init
                                     28 	.globl _Time1_Init
                                     29 	.globl _Serial_Init
                                     30 	.globl _DHT11_Read
                                     31 	.globl _Time2_Init
                                     32 	.globl _Time0_Init
                                     33 	.globl _Int_Init
                                     34 	.globl _delayms
                                     35 	.globl _printf
                                     36 	.globl _PX3
                                     37 	.globl _EX3
                                     38 	.globl _IE3
                                     39 	.globl _IT3
                                     40 	.globl _PX2
                                     41 	.globl _EX2
                                     42 	.globl _IE2
                                     43 	.globl _IT2
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _T2_CT
                                     51 	.globl _CPRL2
                                     52 	.globl _INT2
                                     53 	.globl _INT3
                                     54 	.globl _P4_3
                                     55 	.globl _P4_2
                                     56 	.globl _P4_1
                                     57 	.globl _P4_0
                                     58 	.globl _T2EX
                                     59 	.globl _T2
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _P4
                                    138 	.globl _ISP_CONTR
                                    139 	.globl _ISP_TRIG
                                    140 	.globl _ISP_CMD
                                    141 	.globl _ISP_ADDRL
                                    142 	.globl _ISP_ADDRH
                                    143 	.globl _ISP_DATA
                                    144 	.globl _WDT_CONTR
                                    145 	.globl _TH2
                                    146 	.globl _TL2
                                    147 	.globl _RCAP2H
                                    148 	.globl _RCAP2L
                                    149 	.globl _T2MOD
                                    150 	.globl _T2CON
                                    151 	.globl _XICON
                                    152 	.globl _IPH
                                    153 	.globl _SADDR1
                                    154 	.globl _AUXR1
                                    155 	.globl _AUXR
                                    156 	.globl _B
                                    157 	.globl _ACC
                                    158 	.globl _PSW
                                    159 	.globl _IP
                                    160 	.globl _P3
                                    161 	.globl _IE
                                    162 	.globl _P2
                                    163 	.globl _SBUF
                                    164 	.globl _SCON
                                    165 	.globl _P1
                                    166 	.globl _TH1
                                    167 	.globl _TH0
                                    168 	.globl _TL1
                                    169 	.globl _TL0
                                    170 	.globl _TMOD
                                    171 	.globl _TCON
                                    172 	.globl _PCON
                                    173 	.globl _DPH
                                    174 	.globl _DPL
                                    175 	.globl _SP
                                    176 	.globl _P0
                                    177 	.globl _time
                                    178 ;--------------------------------------------------------
                                    179 ; special function registers
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           000080   183 _P0	=	0x0080
                           000081   184 _SP	=	0x0081
                           000082   185 _DPL	=	0x0082
                           000083   186 _DPH	=	0x0083
                           000087   187 _PCON	=	0x0087
                           000088   188 _TCON	=	0x0088
                           000089   189 _TMOD	=	0x0089
                           00008A   190 _TL0	=	0x008a
                           00008B   191 _TL1	=	0x008b
                           00008C   192 _TH0	=	0x008c
                           00008D   193 _TH1	=	0x008d
                           000090   194 _P1	=	0x0090
                           000098   195 _SCON	=	0x0098
                           000099   196 _SBUF	=	0x0099
                           0000A0   197 _P2	=	0x00a0
                           0000A8   198 _IE	=	0x00a8
                           0000B0   199 _P3	=	0x00b0
                           0000B8   200 _IP	=	0x00b8
                           0000D0   201 _PSW	=	0x00d0
                           0000E0   202 _ACC	=	0x00e0
                           0000F0   203 _B	=	0x00f0
                           00008E   204 _AUXR	=	0x008e
                           0000A2   205 _AUXR1	=	0x00a2
                           0000A9   206 _SADDR1	=	0x00a9
                           0000B7   207 _IPH	=	0x00b7
                           0000C0   208 _XICON	=	0x00c0
                           0000C8   209 _T2CON	=	0x00c8
                           0000C9   210 _T2MOD	=	0x00c9
                           0000CA   211 _RCAP2L	=	0x00ca
                           0000CB   212 _RCAP2H	=	0x00cb
                           0000CC   213 _TL2	=	0x00cc
                           0000CD   214 _TH2	=	0x00cd
                           0000E1   215 _WDT_CONTR	=	0x00e1
                           0000E2   216 _ISP_DATA	=	0x00e2
                           0000E3   217 _ISP_ADDRH	=	0x00e3
                           0000E4   218 _ISP_ADDRL	=	0x00e4
                           0000E5   219 _ISP_CMD	=	0x00e5
                           0000E6   220 _ISP_TRIG	=	0x00e6
                           0000E7   221 _ISP_CONTR	=	0x00e7
                           0000E8   222 _P4	=	0x00e8
                                    223 ;--------------------------------------------------------
                                    224 ; special function bits
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           000080   228 _P0_0	=	0x0080
                           000081   229 _P0_1	=	0x0081
                           000082   230 _P0_2	=	0x0082
                           000083   231 _P0_3	=	0x0083
                           000084   232 _P0_4	=	0x0084
                           000085   233 _P0_5	=	0x0085
                           000086   234 _P0_6	=	0x0086
                           000087   235 _P0_7	=	0x0087
                           000088   236 _IT0	=	0x0088
                           000089   237 _IE0	=	0x0089
                           00008A   238 _IT1	=	0x008a
                           00008B   239 _IE1	=	0x008b
                           00008C   240 _TR0	=	0x008c
                           00008D   241 _TF0	=	0x008d
                           00008E   242 _TR1	=	0x008e
                           00008F   243 _TF1	=	0x008f
                           000090   244 _P1_0	=	0x0090
                           000091   245 _P1_1	=	0x0091
                           000092   246 _P1_2	=	0x0092
                           000093   247 _P1_3	=	0x0093
                           000094   248 _P1_4	=	0x0094
                           000095   249 _P1_5	=	0x0095
                           000096   250 _P1_6	=	0x0096
                           000097   251 _P1_7	=	0x0097
                           000098   252 _RI	=	0x0098
                           000099   253 _TI	=	0x0099
                           00009A   254 _RB8	=	0x009a
                           00009B   255 _TB8	=	0x009b
                           00009C   256 _REN	=	0x009c
                           00009D   257 _SM2	=	0x009d
                           00009E   258 _SM1	=	0x009e
                           00009F   259 _SM0	=	0x009f
                           0000A0   260 _P2_0	=	0x00a0
                           0000A1   261 _P2_1	=	0x00a1
                           0000A2   262 _P2_2	=	0x00a2
                           0000A3   263 _P2_3	=	0x00a3
                           0000A4   264 _P2_4	=	0x00a4
                           0000A5   265 _P2_5	=	0x00a5
                           0000A6   266 _P2_6	=	0x00a6
                           0000A7   267 _P2_7	=	0x00a7
                           0000A8   268 _EX0	=	0x00a8
                           0000A9   269 _ET0	=	0x00a9
                           0000AA   270 _EX1	=	0x00aa
                           0000AB   271 _ET1	=	0x00ab
                           0000AC   272 _ES	=	0x00ac
                           0000AF   273 _EA	=	0x00af
                           0000B0   274 _P3_0	=	0x00b0
                           0000B1   275 _P3_1	=	0x00b1
                           0000B2   276 _P3_2	=	0x00b2
                           0000B3   277 _P3_3	=	0x00b3
                           0000B4   278 _P3_4	=	0x00b4
                           0000B5   279 _P3_5	=	0x00b5
                           0000B6   280 _P3_6	=	0x00b6
                           0000B7   281 _P3_7	=	0x00b7
                           0000B0   282 _RXD	=	0x00b0
                           0000B1   283 _TXD	=	0x00b1
                           0000B2   284 _INT0	=	0x00b2
                           0000B3   285 _INT1	=	0x00b3
                           0000B4   286 _T0	=	0x00b4
                           0000B5   287 _T1	=	0x00b5
                           0000B6   288 _WR	=	0x00b6
                           0000B7   289 _RD	=	0x00b7
                           0000B8   290 _PX0	=	0x00b8
                           0000B9   291 _PT0	=	0x00b9
                           0000BA   292 _PX1	=	0x00ba
                           0000BB   293 _PT1	=	0x00bb
                           0000BC   294 _PS	=	0x00bc
                           0000D0   295 _P	=	0x00d0
                           0000D1   296 _F1	=	0x00d1
                           0000D2   297 _OV	=	0x00d2
                           0000D3   298 _RS0	=	0x00d3
                           0000D4   299 _RS1	=	0x00d4
                           0000D5   300 _F0	=	0x00d5
                           0000D6   301 _AC	=	0x00d6
                           0000D7   302 _CY	=	0x00d7
                           0000AD   303 _ET2	=	0x00ad
                           0000BD   304 _PT2	=	0x00bd
                           000090   305 _T2	=	0x0090
                           000091   306 _T2EX	=	0x0091
                           0000E8   307 _P4_0	=	0x00e8
                           0000E9   308 _P4_1	=	0x00e9
                           0000EA   309 _P4_2	=	0x00ea
                           0000EB   310 _P4_3	=	0x00eb
                           0000EA   311 _INT3	=	0x00ea
                           0000EB   312 _INT2	=	0x00eb
                           0000C8   313 _CPRL2	=	0x00c8
                           0000C9   314 _T2_CT	=	0x00c9
                           0000CA   315 _TR2	=	0x00ca
                           0000CB   316 _EXEN2	=	0x00cb
                           0000CC   317 _TCLK	=	0x00cc
                           0000CD   318 _RCLK	=	0x00cd
                           0000CE   319 _EXF2	=	0x00ce
                           0000CF   320 _TF2	=	0x00cf
                           0000C0   321 _IT2	=	0x00c0
                           0000C1   322 _IE2	=	0x00c1
                           0000C2   323 _EX2	=	0x00c2
                           0000C3   324 _PX2	=	0x00c3
                           0000C4   325 _IT3	=	0x00c4
                           0000C5   326 _IE3	=	0x00c5
                           0000C6   327 _EX3	=	0x00c6
                           0000C7   328 _PX3	=	0x00c7
                                    329 ;--------------------------------------------------------
                                    330 ; overlayable register banks
                                    331 ;--------------------------------------------------------
                                    332 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        333 	.ds 8
                                    334 ;--------------------------------------------------------
                                    335 ; internal ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area DSEG    (DATA)
      000008                        338 _time::
      000008                        339 	.ds 2
      00000A                        340 _load:
      00000A                        341 	.ds 8
      000012                        342 _temperature:
      000012                        343 	.ds 8
                                    344 ;--------------------------------------------------------
                                    345 ; overlayable items in internal ram 
                                    346 ;--------------------------------------------------------
                                    347 ;--------------------------------------------------------
                                    348 ; Stack segment in internal ram 
                                    349 ;--------------------------------------------------------
                                    350 	.area	SSEG
      00006D                        351 __start__stack:
      00006D                        352 	.ds	1
                                    353 
                                    354 ;--------------------------------------------------------
                                    355 ; indirectly addressable internal ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area ISEG    (DATA)
                                    358 ;--------------------------------------------------------
                                    359 ; absolute internal ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area IABS    (ABS,DATA)
                                    362 	.area IABS    (ABS,DATA)
                                    363 ;--------------------------------------------------------
                                    364 ; bit data
                                    365 ;--------------------------------------------------------
                                    366 	.area BSEG    (BIT)
                                    367 ;--------------------------------------------------------
                                    368 ; paged external ram data
                                    369 ;--------------------------------------------------------
                                    370 	.area PSEG    (PAG,XDATA)
                                    371 ;--------------------------------------------------------
                                    372 ; external ram data
                                    373 ;--------------------------------------------------------
                                    374 	.area XSEG    (XDATA)
                                    375 ;--------------------------------------------------------
                                    376 ; absolute external ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area XABS    (ABS,XDATA)
                                    379 ;--------------------------------------------------------
                                    380 ; external initialized ram data
                                    381 ;--------------------------------------------------------
                                    382 	.area XISEG   (XDATA)
                                    383 	.area HOME    (CODE)
                                    384 	.area GSINIT0 (CODE)
                                    385 	.area GSINIT1 (CODE)
                                    386 	.area GSINIT2 (CODE)
                                    387 	.area GSINIT3 (CODE)
                                    388 	.area GSINIT4 (CODE)
                                    389 	.area GSINIT5 (CODE)
                                    390 	.area GSINIT  (CODE)
                                    391 	.area GSFINAL (CODE)
                                    392 	.area CSEG    (CODE)
                                    393 ;--------------------------------------------------------
                                    394 ; interrupt vector 
                                    395 ;--------------------------------------------------------
                                    396 	.area HOME    (CODE)
      000000                        397 __interrupt_vect:
      000000 02 00 31         [24]  398 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  399 	reti
      000004                        400 	.ds	7
      00000B 32               [24]  401 	reti
      00000C                        402 	.ds	7
      000013 32               [24]  403 	reti
      000014                        404 	.ds	7
      00001B 32               [24]  405 	reti
      00001C                        406 	.ds	7
      000023 02 05 F7         [24]  407 	ljmp	_Serial_Handel
      000026                        408 	.ds	5
      00002B 02 03 29         [24]  409 	ljmp	_delayserver
                                    410 ;--------------------------------------------------------
                                    411 ; global & static initialisations
                                    412 ;--------------------------------------------------------
                                    413 	.area HOME    (CODE)
                                    414 	.area GSINIT  (CODE)
                                    415 	.area GSFINAL (CODE)
                                    416 	.area GSINIT  (CODE)
                                    417 	.globl __sdcc_gsinit_startup
                                    418 	.globl __sdcc_program_startup
                                    419 	.globl __start__stack
                                    420 	.globl __mcs51_genXINIT
                                    421 	.globl __mcs51_genXRAMCLEAR
                                    422 	.globl __mcs51_genRAMCLEAR
                                    423 ;	./src/main.c:3: static uchar load[8]={0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};
      00008A 75 0A FF         [24]  424 	mov	_load,#0xff
      00008D 75 0B FF         [24]  425 	mov	(_load + 0x0001),#0xff
      000090 75 0C FF         [24]  426 	mov	(_load + 0x0002),#0xff
      000093 75 0D FF         [24]  427 	mov	(_load + 0x0003),#0xff
      000096 75 0E FF         [24]  428 	mov	(_load + 0x0004),#0xff
      000099 75 0F FF         [24]  429 	mov	(_load + 0x0005),#0xff
      00009C 75 10 FF         [24]  430 	mov	(_load + 0x0006),#0xff
      00009F 75 11 FF         [24]  431 	mov	(_load + 0x0007),#0xff
                                    432 ;	./src/main.c:4: static uchar temperature[8]={0x16,0x09,0x08,0x08,0x08,0x09,0x06,0x00};
      0000A2 75 12 16         [24]  433 	mov	_temperature,#0x16
      0000A5 75 13 09         [24]  434 	mov	(_temperature + 0x0001),#0x09
      0000A8 75 14 08         [24]  435 	mov	(_temperature + 0x0002),#0x08
      0000AB 75 15 08         [24]  436 	mov	(_temperature + 0x0003),#0x08
      0000AE 75 16 08         [24]  437 	mov	(_temperature + 0x0004),#0x08
      0000B1 75 17 09         [24]  438 	mov	(_temperature + 0x0005),#0x09
      0000B4 75 18 06         [24]  439 	mov	(_temperature + 0x0006),#0x06
      0000B7 75 19 00         [24]  440 	mov	(_temperature + 0x0007),#0x00
                                    441 	.area GSFINAL (CODE)
      0000BA 02 00 2E         [24]  442 	ljmp	__sdcc_program_startup
                                    443 ;--------------------------------------------------------
                                    444 ; Home
                                    445 ;--------------------------------------------------------
                                    446 	.area HOME    (CODE)
                                    447 	.area HOME    (CODE)
      00002E                        448 __sdcc_program_startup:
      00002E 02 02 AA         [24]  449 	ljmp	_main
                                    450 ;	return from main will return to caller
                                    451 ;--------------------------------------------------------
                                    452 ; code
                                    453 ;--------------------------------------------------------
                                    454 	.area CSEG    (CODE)
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'show_error'
                                    457 ;------------------------------------------------------------
                                    458 ;	./src/main.c:5: void show_error()
                                    459 ;	-----------------------------------------
                                    460 ;	 function show_error
                                    461 ;	-----------------------------------------
      0000BD                        462 _show_error:
                           000007   463 	ar7 = 0x07
                           000006   464 	ar6 = 0x06
                           000005   465 	ar5 = 0x05
                           000004   466 	ar4 = 0x04
                           000003   467 	ar3 = 0x03
                           000002   468 	ar2 = 0x02
                           000001   469 	ar1 = 0x01
                           000000   470 	ar0 = 0x00
                                    471 ;	./src/main.c:7: Lcd1602_Clean();
      0000BD 12 04 C1         [24]  472 	lcall	_Lcd1602_Clean
                                    473 ;	./src/main.c:8: Lcd1602_Print(0,1,"dht11 error ->");
      0000C0 75 32 2B         [24]  474 	mov	_Lcd1602_Print_PARM_3,#___str_0
      0000C3 75 33 10         [24]  475 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_0 >> 8)
      0000C6 75 34 80         [24]  476 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      0000C9 75 31 01         [24]  477 	mov	_Lcd1602_Print_PARM_2,#0x01
      0000CC 75 82 00         [24]  478 	mov	dpl,#0x00
      0000CF 12 05 8E         [24]  479 	lcall	_Lcd1602_Print
                                    480 ;	./src/main.c:9: delayms(2000);
      0000D2 90 07 D0         [24]  481 	mov	dptr,#0x07d0
                                    482 ;	./src/main.c:10: }
      0000D5 02 02 EF         [24]  483 	ljmp	_delayms
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'Boot_Test'
                                    486 ;------------------------------------------------------------
                                    487 ;	./src/main.c:11: void Boot_Test()
                                    488 ;	-----------------------------------------
                                    489 ;	 function Boot_Test
                                    490 ;	-----------------------------------------
      0000D8                        491 _Boot_Test:
                                    492 ;	./src/main.c:13: printf("welcome to use\r\n");
      0000D8 74 3A            [12]  493 	mov	a,#___str_1
      0000DA C0 E0            [24]  494 	push	acc
      0000DC 74 10            [12]  495 	mov	a,#(___str_1 >> 8)
      0000DE C0 E0            [24]  496 	push	acc
      0000E0 74 80            [12]  497 	mov	a,#0x80
      0000E2 C0 E0            [24]  498 	push	acc
      0000E4 12 06 BA         [24]  499 	lcall	_printf
      0000E7 15 81            [12]  500 	dec	sp
      0000E9 15 81            [12]  501 	dec	sp
      0000EB 15 81            [12]  502 	dec	sp
                                    503 ;	./src/main.c:14: if(Wdt_Runsign())printf("boot: Start self test[pass]\r\n");
      0000ED 12 06 0D         [24]  504 	lcall	_Wdt_Runsign
      0000F0 E5 82            [12]  505 	mov	a,dpl
      0000F2 60 17            [24]  506 	jz	00102$
      0000F4 74 4B            [12]  507 	mov	a,#___str_2
      0000F6 C0 E0            [24]  508 	push	acc
      0000F8 74 10            [12]  509 	mov	a,#(___str_2 >> 8)
      0000FA C0 E0            [24]  510 	push	acc
      0000FC 74 80            [12]  511 	mov	a,#0x80
      0000FE C0 E0            [24]  512 	push	acc
      000100 12 06 BA         [24]  513 	lcall	_printf
      000103 15 81            [12]  514 	dec	sp
      000105 15 81            [12]  515 	dec	sp
      000107 15 81            [12]  516 	dec	sp
      000109 80 03            [24]  517 	sjmp	00103$
      00010B                        518 00102$:
                                    519 ;	./src/main.c:15: else show_error();
      00010B 12 00 BD         [24]  520 	lcall	_show_error
      00010E                        521 00103$:
                                    522 ;	./src/main.c:16: printf("#####################\r\n");
      00010E 74 69            [12]  523 	mov	a,#___str_3
      000110 C0 E0            [24]  524 	push	acc
      000112 74 10            [12]  525 	mov	a,#(___str_3 >> 8)
      000114 C0 E0            [24]  526 	push	acc
      000116 74 80            [12]  527 	mov	a,#0x80
      000118 C0 E0            [24]  528 	push	acc
      00011A 12 06 BA         [24]  529 	lcall	_printf
      00011D 15 81            [12]  530 	dec	sp
      00011F 15 81            [12]  531 	dec	sp
      000121 15 81            [12]  532 	dec	sp
                                    533 ;	./src/main.c:17: printf("DHT11[ok]\r\n");
      000123 74 81            [12]  534 	mov	a,#___str_4
      000125 C0 E0            [24]  535 	push	acc
      000127 74 10            [12]  536 	mov	a,#(___str_4 >> 8)
      000129 C0 E0            [24]  537 	push	acc
      00012B 74 80            [12]  538 	mov	a,#0x80
      00012D C0 E0            [24]  539 	push	acc
      00012F 12 06 BA         [24]  540 	lcall	_printf
      000132 15 81            [12]  541 	dec	sp
      000134 15 81            [12]  542 	dec	sp
      000136 15 81            [12]  543 	dec	sp
                                    544 ;	./src/main.c:18: }
      000138 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'print_boot'
                                    548 ;------------------------------------------------------------
                                    549 ;i                         Allocated to registers r7 
                                    550 ;------------------------------------------------------------
                                    551 ;	./src/main.c:19: void print_boot()
                                    552 ;	-----------------------------------------
                                    553 ;	 function print_boot
                                    554 ;	-----------------------------------------
      000139                        555 _print_boot:
                                    556 ;	./src/main.c:22: Lcd1602_Print(i,0,"WelCome Pan");
      000139 75 32 8D         [24]  557 	mov	_Lcd1602_Print_PARM_3,#___str_5
      00013C 75 33 10         [24]  558 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_5 >> 8)
      00013F 75 34 80         [24]  559 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      000142 75 31 00         [24]  560 	mov	_Lcd1602_Print_PARM_2,#0x00
      000145 75 82 00         [24]  561 	mov	dpl,#0x00
      000148 12 05 8E         [24]  562 	lcall	_Lcd1602_Print
      00014B 7F 00            [12]  563 	mov	r7,#0x00
      00014D                        564 00103$:
                                    565 ;	./src/main.c:23: for(;i<16;i++)
      00014D BF 10 00         [24]  566 	cjne	r7,#0x10,00116$
      000150                        567 00116$:
      000150 50 1E            [24]  568 	jnc	00105$
                                    569 ;	./src/main.c:25: Lcd1602_PrintCust(i,1,load);
      000152 75 2E 0A         [24]  570 	mov	_Lcd1602_PrintCust_PARM_3,#_load
      000155 75 2F 00         [24]  571 	mov	(_Lcd1602_PrintCust_PARM_3 + 1),#0x00
      000158 75 30 40         [24]  572 	mov	(_Lcd1602_PrintCust_PARM_3 + 2),#0x40
      00015B 75 2D 01         [24]  573 	mov	_Lcd1602_PrintCust_PARM_2,#0x01
      00015E 8F 82            [24]  574 	mov	dpl,r7
      000160 C0 07            [24]  575 	push	ar7
      000162 12 05 3A         [24]  576 	lcall	_Lcd1602_PrintCust
                                    577 ;	./src/main.c:26: delayms(150);
      000165 90 00 96         [24]  578 	mov	dptr,#0x0096
      000168 12 02 EF         [24]  579 	lcall	_delayms
      00016B D0 07            [24]  580 	pop	ar7
                                    581 ;	./src/main.c:23: for(;i<16;i++)
      00016D 0F               [12]  582 	inc	r7
      00016E 80 DD            [24]  583 	sjmp	00103$
      000170                        584 00105$:
                                    585 ;	./src/main.c:28: }
      000170 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'show_base'
                                    589 ;------------------------------------------------------------
                                    590 ;	./src/main.c:29: void show_base()
                                    591 ;	-----------------------------------------
                                    592 ;	 function show_base
                                    593 ;	-----------------------------------------
      000171                        594 _show_base:
                                    595 ;	./src/main.c:31: Lcd1602_Print(0,0,"Tem:");
      000171 75 32 99         [24]  596 	mov	_Lcd1602_Print_PARM_3,#___str_6
      000174 75 33 10         [24]  597 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_6 >> 8)
      000177 75 34 80         [24]  598 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      00017A 75 31 00         [24]  599 	mov	_Lcd1602_Print_PARM_2,#0x00
      00017D 75 82 00         [24]  600 	mov	dpl,#0x00
      000180 12 05 8E         [24]  601 	lcall	_Lcd1602_Print
                                    602 ;	./src/main.c:32: Lcd1602_Print(7,0,".");
      000183 75 32 9E         [24]  603 	mov	_Lcd1602_Print_PARM_3,#___str_7
      000186 75 33 10         [24]  604 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_7 >> 8)
      000189 75 34 80         [24]  605 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      00018C 75 31 00         [24]  606 	mov	_Lcd1602_Print_PARM_2,#0x00
      00018F 75 82 07         [24]  607 	mov	dpl,#0x07
      000192 12 05 8E         [24]  608 	lcall	_Lcd1602_Print
                                    609 ;	./src/main.c:34: Lcd1602_Print(1,1,"HR:");
      000195 75 32 A0         [24]  610 	mov	_Lcd1602_Print_PARM_3,#___str_8
      000198 75 33 10         [24]  611 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_8 >> 8)
      00019B 75 34 80         [24]  612 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      00019E 75 31 01         [24]  613 	mov	_Lcd1602_Print_PARM_2,#0x01
      0001A1 75 82 01         [24]  614 	mov	dpl,#0x01
      0001A4 12 05 8E         [24]  615 	lcall	_Lcd1602_Print
                                    616 ;	./src/main.c:35: Lcd1602_Print(9,1,"%");
      0001A7 75 32 A4         [24]  617 	mov	_Lcd1602_Print_PARM_3,#___str_9
      0001AA 75 33 10         [24]  618 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_9 >> 8)
      0001AD 75 34 80         [24]  619 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      0001B0 75 31 01         [24]  620 	mov	_Lcd1602_Print_PARM_2,#0x01
      0001B3 75 82 09         [24]  621 	mov	dpl,#0x09
      0001B6 12 05 8E         [24]  622 	lcall	_Lcd1602_Print
                                    623 ;	./src/main.c:37: Lcd1602_PrintCust(9,0,temperature);
      0001B9 75 2E 12         [24]  624 	mov	_Lcd1602_PrintCust_PARM_3,#_temperature
      0001BC 75 2F 00         [24]  625 	mov	(_Lcd1602_PrintCust_PARM_3 + 1),#0x00
      0001BF 75 30 40         [24]  626 	mov	(_Lcd1602_PrintCust_PARM_3 + 2),#0x40
      0001C2 75 2D 00         [24]  627 	mov	_Lcd1602_PrintCust_PARM_2,#0x00
      0001C5 75 82 09         [24]  628 	mov	dpl,#0x09
                                    629 ;	./src/main.c:39: }
      0001C8 02 05 3A         [24]  630 	ljmp	_Lcd1602_PrintCust
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'show_data'
                                    633 ;------------------------------------------------------------
                                    634 ;	./src/main.c:40: void show_data()
                                    635 ;	-----------------------------------------
                                    636 ;	 function show_data
                                    637 ;	-----------------------------------------
      0001CB                        638 _show_data:
                                    639 ;	./src/main.c:42: Lcd1602_PrintNumber(6,0,the);
      0001CB 75 2A 00         [24]  640 	mov	_Lcd1602_PrintNumber_PARM_2,#0x00
      0001CE 85 22 2B         [24]  641 	mov	_Lcd1602_PrintNumber_PARM_3,_the
      0001D1 85 23 2C         [24]  642 	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_the + 1)
      0001D4 75 82 06         [24]  643 	mov	dpl,#0x06
      0001D7 12 04 C7         [24]  644 	lcall	_Lcd1602_PrintNumber
                                    645 ;	./src/main.c:43: Lcd1602_PrintNumber(8,0,thef);
      0001DA 75 2A 00         [24]  646 	mov	_Lcd1602_PrintNumber_PARM_2,#0x00
      0001DD 85 24 2B         [24]  647 	mov	_Lcd1602_PrintNumber_PARM_3,_thef
      0001E0 85 25 2C         [24]  648 	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_thef + 1)
      0001E3 75 82 08         [24]  649 	mov	dpl,#0x08
      0001E6 12 04 C7         [24]  650 	lcall	_Lcd1602_PrintNumber
                                    651 ;	./src/main.c:44: Lcd1602_PrintNumber(8,1,hum);
      0001E9 75 2A 01         [24]  652 	mov	_Lcd1602_PrintNumber_PARM_2,#0x01
      0001EC 85 20 2B         [24]  653 	mov	_Lcd1602_PrintNumber_PARM_3,_hum
      0001EF 85 21 2C         [24]  654 	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_hum + 1)
      0001F2 75 82 08         [24]  655 	mov	dpl,#0x08
      0001F5 12 04 C7         [24]  656 	lcall	_Lcd1602_PrintNumber
                                    657 ;	./src/main.c:46: if(subzero)
      0001F8 E5 26            [12]  658 	mov	a,_subzero
      0001FA 45 27            [12]  659 	orl	a,(_subzero + 1)
      0001FC 60 12            [24]  660 	jz	00103$
                                    661 ;	./src/main.c:47: Lcd1602_Print(4,0,"-");
      0001FE 75 32 A6         [24]  662 	mov	_Lcd1602_Print_PARM_3,#___str_10
      000201 75 33 10         [24]  663 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_10 >> 8)
      000204 75 34 80         [24]  664 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      000207 75 31 00         [24]  665 	mov	_Lcd1602_Print_PARM_2,#0x00
      00020A 75 82 04         [24]  666 	mov	dpl,#0x04
                                    667 ;	./src/main.c:48: }
      00020D 02 05 8E         [24]  668 	ljmp	_Lcd1602_Print
      000210                        669 00103$:
      000210 22               [24]  670 	ret
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function 'show_info'
                                    673 ;------------------------------------------------------------
                                    674 ;	./src/main.c:49: void show_info()
                                    675 ;	-----------------------------------------
                                    676 ;	 function show_info
                                    677 ;	-----------------------------------------
      000211                        678 _show_info:
                                    679 ;	./src/main.c:51: }
      000211 22               [24]  680 	ret
                                    681 ;------------------------------------------------------------
                                    682 ;Allocation info for local variables in function 'show_time'
                                    683 ;------------------------------------------------------------
                                    684 ;	./src/main.c:52: void show_time()
                                    685 ;	-----------------------------------------
                                    686 ;	 function show_time
                                    687 ;	-----------------------------------------
      000212                        688 _show_time:
                                    689 ;	./src/main.c:55: }
      000212 22               [24]  690 	ret
                                    691 ;------------------------------------------------------------
                                    692 ;Allocation info for local variables in function 'debug'
                                    693 ;------------------------------------------------------------
                                    694 ;	./src/main.c:56: void debug()
                                    695 ;	-----------------------------------------
                                    696 ;	 function debug
                                    697 ;	-----------------------------------------
      000213                        698 _debug:
                                    699 ;	./src/main.c:58: printf("read back time %d\r\n",time);
      000213 C0 08            [24]  700 	push	_time
      000215 C0 09            [24]  701 	push	(_time + 1)
      000217 74 A8            [12]  702 	mov	a,#___str_11
      000219 C0 E0            [24]  703 	push	acc
      00021B 74 10            [12]  704 	mov	a,#(___str_11 >> 8)
      00021D C0 E0            [24]  705 	push	acc
      00021F 74 80            [12]  706 	mov	a,#0x80
      000221 C0 E0            [24]  707 	push	acc
      000223 12 06 BA         [24]  708 	lcall	_printf
      000226 E5 81            [12]  709 	mov	a,sp
      000228 24 FB            [12]  710 	add	a,#0xfb
      00022A F5 81            [12]  711 	mov	sp,a
                                    712 ;	./src/main.c:59: printf("hum: %d\r\n",hum);
      00022C C0 20            [24]  713 	push	_hum
      00022E C0 21            [24]  714 	push	(_hum + 1)
      000230 74 BC            [12]  715 	mov	a,#___str_12
      000232 C0 E0            [24]  716 	push	acc
      000234 74 10            [12]  717 	mov	a,#(___str_12 >> 8)
      000236 C0 E0            [24]  718 	push	acc
      000238 74 80            [12]  719 	mov	a,#0x80
      00023A C0 E0            [24]  720 	push	acc
      00023C 12 06 BA         [24]  721 	lcall	_printf
      00023F E5 81            [12]  722 	mov	a,sp
      000241 24 FB            [12]  723 	add	a,#0xfb
      000243 F5 81            [12]  724 	mov	sp,a
                                    725 ;	./src/main.c:60: printf("the: %d\r\n",the);
      000245 C0 22            [24]  726 	push	_the
      000247 C0 23            [24]  727 	push	(_the + 1)
      000249 74 C6            [12]  728 	mov	a,#___str_13
      00024B C0 E0            [24]  729 	push	acc
      00024D 74 10            [12]  730 	mov	a,#(___str_13 >> 8)
      00024F C0 E0            [24]  731 	push	acc
      000251 74 80            [12]  732 	mov	a,#0x80
      000253 C0 E0            [24]  733 	push	acc
      000255 12 06 BA         [24]  734 	lcall	_printf
      000258 E5 81            [12]  735 	mov	a,sp
      00025A 24 FB            [12]  736 	add	a,#0xfb
      00025C F5 81            [12]  737 	mov	sp,a
                                    738 ;	./src/main.c:61: printf("thef: %d\r\n",thef);
      00025E C0 24            [24]  739 	push	_thef
      000260 C0 25            [24]  740 	push	(_thef + 1)
      000262 74 D0            [12]  741 	mov	a,#___str_14
      000264 C0 E0            [24]  742 	push	acc
      000266 74 10            [12]  743 	mov	a,#(___str_14 >> 8)
      000268 C0 E0            [24]  744 	push	acc
      00026A 74 80            [12]  745 	mov	a,#0x80
      00026C C0 E0            [24]  746 	push	acc
      00026E 12 06 BA         [24]  747 	lcall	_printf
      000271 E5 81            [12]  748 	mov	a,sp
      000273 24 FB            [12]  749 	add	a,#0xfb
      000275 F5 81            [12]  750 	mov	sp,a
                                    751 ;	./src/main.c:62: printf("check: %d\r\n",check);
      000277 C0 28            [24]  752 	push	_check
      000279 C0 29            [24]  753 	push	(_check + 1)
      00027B 74 DB            [12]  754 	mov	a,#___str_15
      00027D C0 E0            [24]  755 	push	acc
      00027F 74 10            [12]  756 	mov	a,#(___str_15 >> 8)
      000281 C0 E0            [24]  757 	push	acc
      000283 74 80            [12]  758 	mov	a,#0x80
      000285 C0 E0            [24]  759 	push	acc
      000287 12 06 BA         [24]  760 	lcall	_printf
      00028A E5 81            [12]  761 	mov	a,sp
      00028C 24 FB            [12]  762 	add	a,#0xfb
      00028E F5 81            [12]  763 	mov	sp,a
                                    764 ;	./src/main.c:63: printf("subzero: %d\r\n",subzero);
      000290 C0 26            [24]  765 	push	_subzero
      000292 C0 27            [24]  766 	push	(_subzero + 1)
      000294 74 E7            [12]  767 	mov	a,#___str_16
      000296 C0 E0            [24]  768 	push	acc
      000298 74 10            [12]  769 	mov	a,#(___str_16 >> 8)
      00029A C0 E0            [24]  770 	push	acc
      00029C 74 80            [12]  771 	mov	a,#0x80
      00029E C0 E0            [24]  772 	push	acc
      0002A0 12 06 BA         [24]  773 	lcall	_printf
      0002A3 E5 81            [12]  774 	mov	a,sp
      0002A5 24 FB            [12]  775 	add	a,#0xfb
      0002A7 F5 81            [12]  776 	mov	sp,a
                                    777 ;	./src/main.c:64: }
      0002A9 22               [24]  778 	ret
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'main'
                                    781 ;------------------------------------------------------------
                                    782 ;	./src/main.c:65: void main ()
                                    783 ;	-----------------------------------------
                                    784 ;	 function main
                                    785 ;	-----------------------------------------
      0002AA                        786 _main:
                                    787 ;	./src/main.c:67: Wdt_Init();
      0002AA 12 06 06         [24]  788 	lcall	_Wdt_Init
                                    789 ;	./src/main.c:68: Int_Init();     	//初始化系统中断
      0002AD 12 03 0D         [24]  790 	lcall	_Int_Init
                                    791 ;	./src/main.c:69: Time0_Init();		//初始化定时器0
      0002B0 12 03 18         [24]  792 	lcall	_Time0_Init
                                    793 ;	./src/main.c:70: Time1_Init();		//初始化定时器1
      0002B3 12 05 CB         [24]  794 	lcall	_Time1_Init
                                    795 ;	./src/main.c:71: Serial_Init();		//串口初始化
      0002B6 12 05 D7         [24]  796 	lcall	_Serial_Init
                                    797 ;	./src/main.c:72: Time2_Init();		//初始化定时器2
      0002B9 12 03 1C         [24]  798 	lcall	_Time2_Init
                                    799 ;	./src/main.c:73: Lcd1602_Init();		//初始化lcd1602
      0002BC 12 04 A9         [24]  800 	lcall	_Lcd1602_Init
                                    801 ;	./src/main.c:74: Lcd1602_Clean();	//清空lcd1602显存
      0002BF 12 04 C1         [24]  802 	lcall	_Lcd1602_Clean
                                    803 ;	./src/main.c:75: print_boot();		//显示欢迎界面(等待DHT11初始化完成)
      0002C2 12 01 39         [24]  804 	lcall	_print_boot
                                    805 ;	./src/main.c:76: Boot_Test();		//开机自检
      0002C5 12 00 D8         [24]  806 	lcall	_Boot_Test
                                    807 ;	./src/main.c:77: while(1){
      0002C8                        808 00104$:
                                    809 ;	./src/main.c:78: Wdt_Clean();
      0002C8 12 06 18         [24]  810 	lcall	_Wdt_Clean
                                    811 ;	./src/main.c:79: if(0==DHT11_Read())
      0002CB 12 03 B9         [24]  812 	lcall	_DHT11_Read
      0002CE E5 82            [12]  813 	mov	a,dpl
      0002D0 70 0F            [24]  814 	jnz	00102$
                                    815 ;	./src/main.c:81: Lcd1602_Init();
      0002D2 12 04 A9         [24]  816 	lcall	_Lcd1602_Init
                                    817 ;	./src/main.c:82: Lcd1602_Clean();	
      0002D5 12 04 C1         [24]  818 	lcall	_Lcd1602_Clean
                                    819 ;	./src/main.c:83: show_base();
      0002D8 12 01 71         [24]  820 	lcall	_show_base
                                    821 ;	./src/main.c:84: show_data();
      0002DB 12 01 CB         [24]  822 	lcall	_show_data
                                    823 ;	./src/main.c:85: show_info();
      0002DE 12 02 11         [24]  824 	lcall	_show_info
      0002E1                        825 00102$:
                                    826 ;	./src/main.c:87: show_time();
      0002E1 12 02 12         [24]  827 	lcall	_show_time
                                    828 ;	./src/main.c:88: debug();
      0002E4 12 02 13         [24]  829 	lcall	_debug
                                    830 ;	./src/main.c:89: delayms(1500);
      0002E7 90 05 DC         [24]  831 	mov	dptr,#0x05dc
      0002EA 12 02 EF         [24]  832 	lcall	_delayms
                                    833 ;	./src/main.c:91: } 
      0002ED 80 D9            [24]  834 	sjmp	00104$
                                    835 	.area CSEG    (CODE)
                                    836 	.area CONST   (CODE)
                                    837 	.area CONST   (CODE)
      00102B                        838 ___str_0:
      00102B 64 68 74 31 31 20 65   839 	.ascii "dht11 error ->"
             72 72 6F 72 20 2D 3E
      001039 00                     840 	.db 0x00
                                    841 	.area CSEG    (CODE)
                                    842 	.area CONST   (CODE)
      00103A                        843 ___str_1:
      00103A 77 65 6C 63 6F 6D 65   844 	.ascii "welcome to use"
             20 74 6F 20 75 73 65
      001048 0D                     845 	.db 0x0d
      001049 0A                     846 	.db 0x0a
      00104A 00                     847 	.db 0x00
                                    848 	.area CSEG    (CODE)
                                    849 	.area CONST   (CODE)
      00104B                        850 ___str_2:
      00104B 62 6F 6F 74 3A 20 53   851 	.ascii "boot: Start self test[pass]"
             74 61 72 74 20 73 65
             6C 66 20 74 65 73 74
             5B 70 61 73 73 5D
      001066 0D                     852 	.db 0x0d
      001067 0A                     853 	.db 0x0a
      001068 00                     854 	.db 0x00
                                    855 	.area CSEG    (CODE)
                                    856 	.area CONST   (CODE)
      001069                        857 ___str_3:
      001069 23 23 23 23 23 23 23   858 	.ascii "#####################"
             23 23 23 23 23 23 23
             23 23 23 23 23 23 23
      00107E 0D                     859 	.db 0x0d
      00107F 0A                     860 	.db 0x0a
      001080 00                     861 	.db 0x00
                                    862 	.area CSEG    (CODE)
                                    863 	.area CONST   (CODE)
      001081                        864 ___str_4:
      001081 44 48 54 31 31 5B 6F   865 	.ascii "DHT11[ok]"
             6B 5D
      00108A 0D                     866 	.db 0x0d
      00108B 0A                     867 	.db 0x0a
      00108C 00                     868 	.db 0x00
                                    869 	.area CSEG    (CODE)
                                    870 	.area CONST   (CODE)
      00108D                        871 ___str_5:
      00108D 57 65 6C 43 6F 6D 65   872 	.ascii "WelCome Pan"
             20 50 61 6E
      001098 00                     873 	.db 0x00
                                    874 	.area CSEG    (CODE)
                                    875 	.area CONST   (CODE)
      001099                        876 ___str_6:
      001099 54 65 6D 3A            877 	.ascii "Tem:"
      00109D 00                     878 	.db 0x00
                                    879 	.area CSEG    (CODE)
                                    880 	.area CONST   (CODE)
      00109E                        881 ___str_7:
      00109E 2E                     882 	.ascii "."
      00109F 00                     883 	.db 0x00
                                    884 	.area CSEG    (CODE)
                                    885 	.area CONST   (CODE)
      0010A0                        886 ___str_8:
      0010A0 48 52 3A               887 	.ascii "HR:"
      0010A3 00                     888 	.db 0x00
                                    889 	.area CSEG    (CODE)
                                    890 	.area CONST   (CODE)
      0010A4                        891 ___str_9:
      0010A4 25                     892 	.ascii "%"
      0010A5 00                     893 	.db 0x00
                                    894 	.area CSEG    (CODE)
                                    895 	.area CONST   (CODE)
      0010A6                        896 ___str_10:
      0010A6 2D                     897 	.ascii "-"
      0010A7 00                     898 	.db 0x00
                                    899 	.area CSEG    (CODE)
                                    900 	.area CONST   (CODE)
      0010A8                        901 ___str_11:
      0010A8 72 65 61 64 20 62 61   902 	.ascii "read back time %d"
             63 6B 20 74 69 6D 65
             20 25 64
      0010B9 0D                     903 	.db 0x0d
      0010BA 0A                     904 	.db 0x0a
      0010BB 00                     905 	.db 0x00
                                    906 	.area CSEG    (CODE)
                                    907 	.area CONST   (CODE)
      0010BC                        908 ___str_12:
      0010BC 68 75 6D 3A 20 25 64   909 	.ascii "hum: %d"
      0010C3 0D                     910 	.db 0x0d
      0010C4 0A                     911 	.db 0x0a
      0010C5 00                     912 	.db 0x00
                                    913 	.area CSEG    (CODE)
                                    914 	.area CONST   (CODE)
      0010C6                        915 ___str_13:
      0010C6 74 68 65 3A 20 25 64   916 	.ascii "the: %d"
      0010CD 0D                     917 	.db 0x0d
      0010CE 0A                     918 	.db 0x0a
      0010CF 00                     919 	.db 0x00
                                    920 	.area CSEG    (CODE)
                                    921 	.area CONST   (CODE)
      0010D0                        922 ___str_14:
      0010D0 74 68 65 66 3A 20 25   923 	.ascii "thef: %d"
             64
      0010D8 0D                     924 	.db 0x0d
      0010D9 0A                     925 	.db 0x0a
      0010DA 00                     926 	.db 0x00
                                    927 	.area CSEG    (CODE)
                                    928 	.area CONST   (CODE)
      0010DB                        929 ___str_15:
      0010DB 63 68 65 63 6B 3A 20   930 	.ascii "check: %d"
             25 64
      0010E4 0D                     931 	.db 0x0d
      0010E5 0A                     932 	.db 0x0a
      0010E6 00                     933 	.db 0x00
                                    934 	.area CSEG    (CODE)
                                    935 	.area CONST   (CODE)
      0010E7                        936 ___str_16:
      0010E7 73 75 62 7A 65 72 6F   937 	.ascii "subzero: %d"
             3A 20 25 64
      0010F2 0D                     938 	.db 0x0d
      0010F3 0A                     939 	.db 0x0a
      0010F4 00                     940 	.db 0x00
                                    941 	.area CSEG    (CODE)
                                    942 	.area XINIT   (CODE)
                                    943 	.area CABS    (ABS,CODE)
