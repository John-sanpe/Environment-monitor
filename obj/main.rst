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
                                     28 	.globl _Serial_Init
                                     29 	.globl _DHT11_Read
                                     30 	.globl _Time2_Init
                                     31 	.globl _Time0_Init
                                     32 	.globl _Int_Init
                                     33 	.globl _delayms
                                     34 	.globl _printf
                                     35 	.globl _PX3
                                     36 	.globl _EX3
                                     37 	.globl _IE3
                                     38 	.globl _IT3
                                     39 	.globl _PX2
                                     40 	.globl _EX2
                                     41 	.globl _IE2
                                     42 	.globl _IT2
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _T2_CT
                                     50 	.globl _CPRL2
                                     51 	.globl _INT2
                                     52 	.globl _INT3
                                     53 	.globl _P4_3
                                     54 	.globl _P4_2
                                     55 	.globl _P4_1
                                     56 	.globl _P4_0
                                     57 	.globl _T2EX
                                     58 	.globl _T2
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _P4
                                    137 	.globl _ISP_CONTR
                                    138 	.globl _ISP_TRIG
                                    139 	.globl _ISP_CMD
                                    140 	.globl _ISP_ADDRL
                                    141 	.globl _ISP_ADDRH
                                    142 	.globl _ISP_DATA
                                    143 	.globl _WDT_CONTR
                                    144 	.globl _TH2
                                    145 	.globl _TL2
                                    146 	.globl _RCAP2H
                                    147 	.globl _RCAP2L
                                    148 	.globl _T2MOD
                                    149 	.globl _T2CON
                                    150 	.globl _XICON
                                    151 	.globl _IPH
                                    152 	.globl _SADDR1
                                    153 	.globl _AUXR1
                                    154 	.globl _AUXR
                                    155 	.globl _B
                                    156 	.globl _ACC
                                    157 	.globl _PSW
                                    158 	.globl _IP
                                    159 	.globl _P3
                                    160 	.globl _IE
                                    161 	.globl _P2
                                    162 	.globl _SBUF
                                    163 	.globl _SCON
                                    164 	.globl _P1
                                    165 	.globl _TH1
                                    166 	.globl _TH0
                                    167 	.globl _TL1
                                    168 	.globl _TL0
                                    169 	.globl _TMOD
                                    170 	.globl _TCON
                                    171 	.globl _PCON
                                    172 	.globl _DPH
                                    173 	.globl _DPL
                                    174 	.globl _SP
                                    175 	.globl _P0
                                    176 	.globl _time
                                    177 ;--------------------------------------------------------
                                    178 ; special function registers
                                    179 ;--------------------------------------------------------
                                    180 	.area RSEG    (ABS,DATA)
      000000                        181 	.org 0x0000
                           000080   182 _P0	=	0x0080
                           000081   183 _SP	=	0x0081
                           000082   184 _DPL	=	0x0082
                           000083   185 _DPH	=	0x0083
                           000087   186 _PCON	=	0x0087
                           000088   187 _TCON	=	0x0088
                           000089   188 _TMOD	=	0x0089
                           00008A   189 _TL0	=	0x008a
                           00008B   190 _TL1	=	0x008b
                           00008C   191 _TH0	=	0x008c
                           00008D   192 _TH1	=	0x008d
                           000090   193 _P1	=	0x0090
                           000098   194 _SCON	=	0x0098
                           000099   195 _SBUF	=	0x0099
                           0000A0   196 _P2	=	0x00a0
                           0000A8   197 _IE	=	0x00a8
                           0000B0   198 _P3	=	0x00b0
                           0000B8   199 _IP	=	0x00b8
                           0000D0   200 _PSW	=	0x00d0
                           0000E0   201 _ACC	=	0x00e0
                           0000F0   202 _B	=	0x00f0
                           00008E   203 _AUXR	=	0x008e
                           0000A2   204 _AUXR1	=	0x00a2
                           0000A9   205 _SADDR1	=	0x00a9
                           0000B7   206 _IPH	=	0x00b7
                           0000C0   207 _XICON	=	0x00c0
                           0000C8   208 _T2CON	=	0x00c8
                           0000C9   209 _T2MOD	=	0x00c9
                           0000CA   210 _RCAP2L	=	0x00ca
                           0000CB   211 _RCAP2H	=	0x00cb
                           0000CC   212 _TL2	=	0x00cc
                           0000CD   213 _TH2	=	0x00cd
                           0000E1   214 _WDT_CONTR	=	0x00e1
                           0000E2   215 _ISP_DATA	=	0x00e2
                           0000E3   216 _ISP_ADDRH	=	0x00e3
                           0000E4   217 _ISP_ADDRL	=	0x00e4
                           0000E5   218 _ISP_CMD	=	0x00e5
                           0000E6   219 _ISP_TRIG	=	0x00e6
                           0000E7   220 _ISP_CONTR	=	0x00e7
                           0000E8   221 _P4	=	0x00e8
                                    222 ;--------------------------------------------------------
                                    223 ; special function bits
                                    224 ;--------------------------------------------------------
                                    225 	.area RSEG    (ABS,DATA)
      000000                        226 	.org 0x0000
                           000080   227 _P0_0	=	0x0080
                           000081   228 _P0_1	=	0x0081
                           000082   229 _P0_2	=	0x0082
                           000083   230 _P0_3	=	0x0083
                           000084   231 _P0_4	=	0x0084
                           000085   232 _P0_5	=	0x0085
                           000086   233 _P0_6	=	0x0086
                           000087   234 _P0_7	=	0x0087
                           000088   235 _IT0	=	0x0088
                           000089   236 _IE0	=	0x0089
                           00008A   237 _IT1	=	0x008a
                           00008B   238 _IE1	=	0x008b
                           00008C   239 _TR0	=	0x008c
                           00008D   240 _TF0	=	0x008d
                           00008E   241 _TR1	=	0x008e
                           00008F   242 _TF1	=	0x008f
                           000090   243 _P1_0	=	0x0090
                           000091   244 _P1_1	=	0x0091
                           000092   245 _P1_2	=	0x0092
                           000093   246 _P1_3	=	0x0093
                           000094   247 _P1_4	=	0x0094
                           000095   248 _P1_5	=	0x0095
                           000096   249 _P1_6	=	0x0096
                           000097   250 _P1_7	=	0x0097
                           000098   251 _RI	=	0x0098
                           000099   252 _TI	=	0x0099
                           00009A   253 _RB8	=	0x009a
                           00009B   254 _TB8	=	0x009b
                           00009C   255 _REN	=	0x009c
                           00009D   256 _SM2	=	0x009d
                           00009E   257 _SM1	=	0x009e
                           00009F   258 _SM0	=	0x009f
                           0000A0   259 _P2_0	=	0x00a0
                           0000A1   260 _P2_1	=	0x00a1
                           0000A2   261 _P2_2	=	0x00a2
                           0000A3   262 _P2_3	=	0x00a3
                           0000A4   263 _P2_4	=	0x00a4
                           0000A5   264 _P2_5	=	0x00a5
                           0000A6   265 _P2_6	=	0x00a6
                           0000A7   266 _P2_7	=	0x00a7
                           0000A8   267 _EX0	=	0x00a8
                           0000A9   268 _ET0	=	0x00a9
                           0000AA   269 _EX1	=	0x00aa
                           0000AB   270 _ET1	=	0x00ab
                           0000AC   271 _ES	=	0x00ac
                           0000AF   272 _EA	=	0x00af
                           0000B0   273 _P3_0	=	0x00b0
                           0000B1   274 _P3_1	=	0x00b1
                           0000B2   275 _P3_2	=	0x00b2
                           0000B3   276 _P3_3	=	0x00b3
                           0000B4   277 _P3_4	=	0x00b4
                           0000B5   278 _P3_5	=	0x00b5
                           0000B6   279 _P3_6	=	0x00b6
                           0000B7   280 _P3_7	=	0x00b7
                           0000B0   281 _RXD	=	0x00b0
                           0000B1   282 _TXD	=	0x00b1
                           0000B2   283 _INT0	=	0x00b2
                           0000B3   284 _INT1	=	0x00b3
                           0000B4   285 _T0	=	0x00b4
                           0000B5   286 _T1	=	0x00b5
                           0000B6   287 _WR	=	0x00b6
                           0000B7   288 _RD	=	0x00b7
                           0000B8   289 _PX0	=	0x00b8
                           0000B9   290 _PT0	=	0x00b9
                           0000BA   291 _PX1	=	0x00ba
                           0000BB   292 _PT1	=	0x00bb
                           0000BC   293 _PS	=	0x00bc
                           0000D0   294 _P	=	0x00d0
                           0000D1   295 _F1	=	0x00d1
                           0000D2   296 _OV	=	0x00d2
                           0000D3   297 _RS0	=	0x00d3
                           0000D4   298 _RS1	=	0x00d4
                           0000D5   299 _F0	=	0x00d5
                           0000D6   300 _AC	=	0x00d6
                           0000D7   301 _CY	=	0x00d7
                           0000AD   302 _ET2	=	0x00ad
                           0000BD   303 _PT2	=	0x00bd
                           000090   304 _T2	=	0x0090
                           000091   305 _T2EX	=	0x0091
                           0000E8   306 _P4_0	=	0x00e8
                           0000E9   307 _P4_1	=	0x00e9
                           0000EA   308 _P4_2	=	0x00ea
                           0000EB   309 _P4_3	=	0x00eb
                           0000EA   310 _INT3	=	0x00ea
                           0000EB   311 _INT2	=	0x00eb
                           0000C8   312 _CPRL2	=	0x00c8
                           0000C9   313 _T2_CT	=	0x00c9
                           0000CA   314 _TR2	=	0x00ca
                           0000CB   315 _EXEN2	=	0x00cb
                           0000CC   316 _TCLK	=	0x00cc
                           0000CD   317 _RCLK	=	0x00cd
                           0000CE   318 _EXF2	=	0x00ce
                           0000CF   319 _TF2	=	0x00cf
                           0000C0   320 _IT2	=	0x00c0
                           0000C1   321 _IE2	=	0x00c1
                           0000C2   322 _EX2	=	0x00c2
                           0000C3   323 _PX2	=	0x00c3
                           0000C4   324 _IT3	=	0x00c4
                           0000C5   325 _IE3	=	0x00c5
                           0000C6   326 _EX3	=	0x00c6
                           0000C7   327 _PX3	=	0x00c7
                                    328 ;--------------------------------------------------------
                                    329 ; overlayable register banks
                                    330 ;--------------------------------------------------------
                                    331 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        332 	.ds 8
                                    333 ;--------------------------------------------------------
                                    334 ; internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area DSEG    (DATA)
      000008                        337 _time::
      000008                        338 	.ds 2
      00000A                        339 _load:
      00000A                        340 	.ds 8
      000012                        341 _temperature:
      000012                        342 	.ds 8
                                    343 ;--------------------------------------------------------
                                    344 ; overlayable items in internal ram 
                                    345 ;--------------------------------------------------------
                                    346 ;--------------------------------------------------------
                                    347 ; Stack segment in internal ram 
                                    348 ;--------------------------------------------------------
                                    349 	.area	SSEG
      00006F                        350 __start__stack:
      00006F                        351 	.ds	1
                                    352 
                                    353 ;--------------------------------------------------------
                                    354 ; indirectly addressable internal ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area ISEG    (DATA)
                                    357 ;--------------------------------------------------------
                                    358 ; absolute internal ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area IABS    (ABS,DATA)
                                    361 	.area IABS    (ABS,DATA)
                                    362 ;--------------------------------------------------------
                                    363 ; bit data
                                    364 ;--------------------------------------------------------
                                    365 	.area BSEG    (BIT)
                                    366 ;--------------------------------------------------------
                                    367 ; paged external ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area PSEG    (PAG,XDATA)
                                    370 ;--------------------------------------------------------
                                    371 ; external ram data
                                    372 ;--------------------------------------------------------
                                    373 	.area XSEG    (XDATA)
                                    374 ;--------------------------------------------------------
                                    375 ; absolute external ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XABS    (ABS,XDATA)
                                    378 ;--------------------------------------------------------
                                    379 ; external initialized ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area XISEG   (XDATA)
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT0 (CODE)
                                    384 	.area GSINIT1 (CODE)
                                    385 	.area GSINIT2 (CODE)
                                    386 	.area GSINIT3 (CODE)
                                    387 	.area GSINIT4 (CODE)
                                    388 	.area GSINIT5 (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area CSEG    (CODE)
                                    392 ;--------------------------------------------------------
                                    393 ; interrupt vector 
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
      000000                        396 __interrupt_vect:
      000000 02 00 31         [24]  397 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  398 	reti
      000004                        399 	.ds	7
      00000B 32               [24]  400 	reti
      00000C                        401 	.ds	7
      000013 32               [24]  402 	reti
      000014                        403 	.ds	7
      00001B 32               [24]  404 	reti
      00001C                        405 	.ds	7
      000023 02 06 16         [24]  406 	ljmp	_Serial_Handel
      000026                        407 	.ds	5
      00002B 02 03 49         [24]  408 	ljmp	_delayserver
                                    409 ;--------------------------------------------------------
                                    410 ; global & static initialisations
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area GSINIT  (CODE)
                                    414 	.area GSFINAL (CODE)
                                    415 	.area GSINIT  (CODE)
                                    416 	.globl __sdcc_gsinit_startup
                                    417 	.globl __sdcc_program_startup
                                    418 	.globl __start__stack
                                    419 	.globl __mcs51_genXINIT
                                    420 	.globl __mcs51_genXRAMCLEAR
                                    421 	.globl __mcs51_genRAMCLEAR
                                    422 ;	./src/main.c:3: static uchar load[8]={0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};
      00008A 75 0A FF         [24]  423 	mov	_load,#0xff
      00008D 75 0B FF         [24]  424 	mov	(_load + 0x0001),#0xff
      000090 75 0C FF         [24]  425 	mov	(_load + 0x0002),#0xff
      000093 75 0D FF         [24]  426 	mov	(_load + 0x0003),#0xff
      000096 75 0E FF         [24]  427 	mov	(_load + 0x0004),#0xff
      000099 75 0F FF         [24]  428 	mov	(_load + 0x0005),#0xff
      00009C 75 10 FF         [24]  429 	mov	(_load + 0x0006),#0xff
      00009F 75 11 FF         [24]  430 	mov	(_load + 0x0007),#0xff
                                    431 ;	./src/main.c:4: static uchar temperature[8]={0x16,0x09,0x08,0x08,0x08,0x09,0x06,0x00};
      0000A2 75 12 16         [24]  432 	mov	_temperature,#0x16
      0000A5 75 13 09         [24]  433 	mov	(_temperature + 0x0001),#0x09
      0000A8 75 14 08         [24]  434 	mov	(_temperature + 0x0002),#0x08
      0000AB 75 15 08         [24]  435 	mov	(_temperature + 0x0003),#0x08
      0000AE 75 16 08         [24]  436 	mov	(_temperature + 0x0004),#0x08
      0000B1 75 17 09         [24]  437 	mov	(_temperature + 0x0005),#0x09
      0000B4 75 18 06         [24]  438 	mov	(_temperature + 0x0006),#0x06
      0000B7 75 19 00         [24]  439 	mov	(_temperature + 0x0007),#0x00
                                    440 	.area GSFINAL (CODE)
      0000BA 02 00 2E         [24]  441 	ljmp	__sdcc_program_startup
                                    442 ;--------------------------------------------------------
                                    443 ; Home
                                    444 ;--------------------------------------------------------
                                    445 	.area HOME    (CODE)
                                    446 	.area HOME    (CODE)
      00002E                        447 __sdcc_program_startup:
      00002E 02 02 AA         [24]  448 	ljmp	_main
                                    449 ;	return from main will return to caller
                                    450 ;--------------------------------------------------------
                                    451 ; code
                                    452 ;--------------------------------------------------------
                                    453 	.area CSEG    (CODE)
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'show_error'
                                    456 ;------------------------------------------------------------
                                    457 ;	./src/main.c:5: void show_error()
                                    458 ;	-----------------------------------------
                                    459 ;	 function show_error
                                    460 ;	-----------------------------------------
      0000BD                        461 _show_error:
                           000007   462 	ar7 = 0x07
                           000006   463 	ar6 = 0x06
                           000005   464 	ar5 = 0x05
                           000004   465 	ar4 = 0x04
                           000003   466 	ar3 = 0x03
                           000002   467 	ar2 = 0x02
                           000001   468 	ar1 = 0x01
                           000000   469 	ar0 = 0x00
                                    470 ;	./src/main.c:7: Lcd1602_Clean();
      0000BD 12 04 E1         [24]  471 	lcall	_Lcd1602_Clean
                                    472 ;	./src/main.c:8: Lcd1602_Print(0,1,"dht11 error ->");
      0000C0 75 34 4A         [24]  473 	mov	_Lcd1602_Print_PARM_3,#___str_0
      0000C3 75 35 10         [24]  474 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_0 >> 8)
      0000C6 75 36 80         [24]  475 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      0000C9 75 33 01         [24]  476 	mov	_Lcd1602_Print_PARM_2,#0x01
      0000CC 75 82 00         [24]  477 	mov	dpl,#0x00
      0000CF 12 05 AE         [24]  478 	lcall	_Lcd1602_Print
                                    479 ;	./src/main.c:9: delayms(2000);
      0000D2 90 07 D0         [24]  480 	mov	dptr,#0x07d0
                                    481 ;	./src/main.c:10: }
      0000D5 02 02 EC         [24]  482 	ljmp	_delayms
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'Boot_Test'
                                    485 ;------------------------------------------------------------
                                    486 ;	./src/main.c:11: void Boot_Test()
                                    487 ;	-----------------------------------------
                                    488 ;	 function Boot_Test
                                    489 ;	-----------------------------------------
      0000D8                        490 _Boot_Test:
                                    491 ;	./src/main.c:13: printf("welcome to use\r\n");
      0000D8 74 59            [12]  492 	mov	a,#___str_1
      0000DA C0 E0            [24]  493 	push	acc
      0000DC 74 10            [12]  494 	mov	a,#(___str_1 >> 8)
      0000DE C0 E0            [24]  495 	push	acc
      0000E0 74 80            [12]  496 	mov	a,#0x80
      0000E2 C0 E0            [24]  497 	push	acc
      0000E4 12 06 D9         [24]  498 	lcall	_printf
      0000E7 15 81            [12]  499 	dec	sp
      0000E9 15 81            [12]  500 	dec	sp
      0000EB 15 81            [12]  501 	dec	sp
                                    502 ;	./src/main.c:14: if(Wdt_Runsign())printf("boot: Start self test[pass]\r\n");
      0000ED 12 06 2C         [24]  503 	lcall	_Wdt_Runsign
      0000F0 E5 82            [12]  504 	mov	a,dpl
      0000F2 60 17            [24]  505 	jz	00102$
      0000F4 74 6A            [12]  506 	mov	a,#___str_2
      0000F6 C0 E0            [24]  507 	push	acc
      0000F8 74 10            [12]  508 	mov	a,#(___str_2 >> 8)
      0000FA C0 E0            [24]  509 	push	acc
      0000FC 74 80            [12]  510 	mov	a,#0x80
      0000FE C0 E0            [24]  511 	push	acc
      000100 12 06 D9         [24]  512 	lcall	_printf
      000103 15 81            [12]  513 	dec	sp
      000105 15 81            [12]  514 	dec	sp
      000107 15 81            [12]  515 	dec	sp
      000109 80 03            [24]  516 	sjmp	00103$
      00010B                        517 00102$:
                                    518 ;	./src/main.c:15: else show_error();
      00010B 12 00 BD         [24]  519 	lcall	_show_error
      00010E                        520 00103$:
                                    521 ;	./src/main.c:16: printf("#####################\r\n");
      00010E 74 88            [12]  522 	mov	a,#___str_3
      000110 C0 E0            [24]  523 	push	acc
      000112 74 10            [12]  524 	mov	a,#(___str_3 >> 8)
      000114 C0 E0            [24]  525 	push	acc
      000116 74 80            [12]  526 	mov	a,#0x80
      000118 C0 E0            [24]  527 	push	acc
      00011A 12 06 D9         [24]  528 	lcall	_printf
      00011D 15 81            [12]  529 	dec	sp
      00011F 15 81            [12]  530 	dec	sp
      000121 15 81            [12]  531 	dec	sp
                                    532 ;	./src/main.c:17: printf("DHT11[ok]\r\n");
      000123 74 A0            [12]  533 	mov	a,#___str_4
      000125 C0 E0            [24]  534 	push	acc
      000127 74 10            [12]  535 	mov	a,#(___str_4 >> 8)
      000129 C0 E0            [24]  536 	push	acc
      00012B 74 80            [12]  537 	mov	a,#0x80
      00012D C0 E0            [24]  538 	push	acc
      00012F 12 06 D9         [24]  539 	lcall	_printf
      000132 15 81            [12]  540 	dec	sp
      000134 15 81            [12]  541 	dec	sp
      000136 15 81            [12]  542 	dec	sp
                                    543 ;	./src/main.c:18: }
      000138 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'print_boot'
                                    547 ;------------------------------------------------------------
                                    548 ;i                         Allocated to registers r7 
                                    549 ;------------------------------------------------------------
                                    550 ;	./src/main.c:19: void print_boot()
                                    551 ;	-----------------------------------------
                                    552 ;	 function print_boot
                                    553 ;	-----------------------------------------
      000139                        554 _print_boot:
                                    555 ;	./src/main.c:22: Lcd1602_Print(i,0,"WelCome Pan");
      000139 75 34 AC         [24]  556 	mov	_Lcd1602_Print_PARM_3,#___str_5
      00013C 75 35 10         [24]  557 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_5 >> 8)
      00013F 75 36 80         [24]  558 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      000142 75 33 00         [24]  559 	mov	_Lcd1602_Print_PARM_2,#0x00
      000145 75 82 00         [24]  560 	mov	dpl,#0x00
      000148 12 05 AE         [24]  561 	lcall	_Lcd1602_Print
      00014B 7F 00            [12]  562 	mov	r7,#0x00
      00014D                        563 00103$:
                                    564 ;	./src/main.c:23: for(;i<16;i++)
      00014D BF 10 00         [24]  565 	cjne	r7,#0x10,00116$
      000150                        566 00116$:
      000150 50 1E            [24]  567 	jnc	00105$
                                    568 ;	./src/main.c:25: Lcd1602_PrintCust(i,1,load);
      000152 75 30 0A         [24]  569 	mov	_Lcd1602_PrintCust_PARM_3,#_load
      000155 75 31 00         [24]  570 	mov	(_Lcd1602_PrintCust_PARM_3 + 1),#0x00
      000158 75 32 40         [24]  571 	mov	(_Lcd1602_PrintCust_PARM_3 + 2),#0x40
      00015B 75 2F 01         [24]  572 	mov	_Lcd1602_PrintCust_PARM_2,#0x01
      00015E 8F 82            [24]  573 	mov	dpl,r7
      000160 C0 07            [24]  574 	push	ar7
      000162 12 05 5A         [24]  575 	lcall	_Lcd1602_PrintCust
                                    576 ;	./src/main.c:26: delayms(150);
      000165 90 00 96         [24]  577 	mov	dptr,#0x0096
      000168 12 02 EC         [24]  578 	lcall	_delayms
      00016B D0 07            [24]  579 	pop	ar7
                                    580 ;	./src/main.c:23: for(;i<16;i++)
      00016D 0F               [12]  581 	inc	r7
      00016E 80 DD            [24]  582 	sjmp	00103$
      000170                        583 00105$:
                                    584 ;	./src/main.c:28: }
      000170 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'show_base'
                                    588 ;------------------------------------------------------------
                                    589 ;	./src/main.c:29: void show_base()
                                    590 ;	-----------------------------------------
                                    591 ;	 function show_base
                                    592 ;	-----------------------------------------
      000171                        593 _show_base:
                                    594 ;	./src/main.c:31: Lcd1602_Print(0,0,"Tem:");
      000171 75 34 B8         [24]  595 	mov	_Lcd1602_Print_PARM_3,#___str_6
      000174 75 35 10         [24]  596 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_6 >> 8)
      000177 75 36 80         [24]  597 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      00017A 75 33 00         [24]  598 	mov	_Lcd1602_Print_PARM_2,#0x00
      00017D 75 82 00         [24]  599 	mov	dpl,#0x00
      000180 12 05 AE         [24]  600 	lcall	_Lcd1602_Print
                                    601 ;	./src/main.c:32: Lcd1602_Print(7,0,".");
      000183 75 34 BD         [24]  602 	mov	_Lcd1602_Print_PARM_3,#___str_7
      000186 75 35 10         [24]  603 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_7 >> 8)
      000189 75 36 80         [24]  604 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      00018C 75 33 00         [24]  605 	mov	_Lcd1602_Print_PARM_2,#0x00
      00018F 75 82 07         [24]  606 	mov	dpl,#0x07
      000192 12 05 AE         [24]  607 	lcall	_Lcd1602_Print
                                    608 ;	./src/main.c:34: Lcd1602_Print(1,1,"HR:");
      000195 75 34 BF         [24]  609 	mov	_Lcd1602_Print_PARM_3,#___str_8
      000198 75 35 10         [24]  610 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_8 >> 8)
      00019B 75 36 80         [24]  611 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      00019E 75 33 01         [24]  612 	mov	_Lcd1602_Print_PARM_2,#0x01
      0001A1 75 82 01         [24]  613 	mov	dpl,#0x01
      0001A4 12 05 AE         [24]  614 	lcall	_Lcd1602_Print
                                    615 ;	./src/main.c:35: Lcd1602_Print(9,1,"%");
      0001A7 75 34 C3         [24]  616 	mov	_Lcd1602_Print_PARM_3,#___str_9
      0001AA 75 35 10         [24]  617 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_9 >> 8)
      0001AD 75 36 80         [24]  618 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      0001B0 75 33 01         [24]  619 	mov	_Lcd1602_Print_PARM_2,#0x01
      0001B3 75 82 09         [24]  620 	mov	dpl,#0x09
      0001B6 12 05 AE         [24]  621 	lcall	_Lcd1602_Print
                                    622 ;	./src/main.c:37: Lcd1602_PrintCust(9,0,temperature);
      0001B9 75 30 12         [24]  623 	mov	_Lcd1602_PrintCust_PARM_3,#_temperature
      0001BC 75 31 00         [24]  624 	mov	(_Lcd1602_PrintCust_PARM_3 + 1),#0x00
      0001BF 75 32 40         [24]  625 	mov	(_Lcd1602_PrintCust_PARM_3 + 2),#0x40
      0001C2 75 2F 00         [24]  626 	mov	_Lcd1602_PrintCust_PARM_2,#0x00
      0001C5 75 82 09         [24]  627 	mov	dpl,#0x09
                                    628 ;	./src/main.c:39: }
      0001C8 02 05 5A         [24]  629 	ljmp	_Lcd1602_PrintCust
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'show_data'
                                    632 ;------------------------------------------------------------
                                    633 ;	./src/main.c:40: void show_data()
                                    634 ;	-----------------------------------------
                                    635 ;	 function show_data
                                    636 ;	-----------------------------------------
      0001CB                        637 _show_data:
                                    638 ;	./src/main.c:42: Lcd1602_PrintNumber(6,0,the);
      0001CB 75 2C 00         [24]  639 	mov	_Lcd1602_PrintNumber_PARM_2,#0x00
      0001CE 85 24 2D         [24]  640 	mov	_Lcd1602_PrintNumber_PARM_3,_the
      0001D1 85 25 2E         [24]  641 	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_the + 1)
      0001D4 75 82 06         [24]  642 	mov	dpl,#0x06
      0001D7 12 04 E7         [24]  643 	lcall	_Lcd1602_PrintNumber
                                    644 ;	./src/main.c:43: Lcd1602_PrintNumber(8,0,thef);
      0001DA 75 2C 00         [24]  645 	mov	_Lcd1602_PrintNumber_PARM_2,#0x00
      0001DD 85 26 2D         [24]  646 	mov	_Lcd1602_PrintNumber_PARM_3,_thef
      0001E0 85 27 2E         [24]  647 	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_thef + 1)
      0001E3 75 82 08         [24]  648 	mov	dpl,#0x08
      0001E6 12 04 E7         [24]  649 	lcall	_Lcd1602_PrintNumber
                                    650 ;	./src/main.c:44: Lcd1602_PrintNumber(8,1,hum);
      0001E9 75 2C 01         [24]  651 	mov	_Lcd1602_PrintNumber_PARM_2,#0x01
      0001EC 85 22 2D         [24]  652 	mov	_Lcd1602_PrintNumber_PARM_3,_hum
      0001EF 85 23 2E         [24]  653 	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_hum + 1)
      0001F2 75 82 08         [24]  654 	mov	dpl,#0x08
      0001F5 12 04 E7         [24]  655 	lcall	_Lcd1602_PrintNumber
                                    656 ;	./src/main.c:46: if(subzero)
      0001F8 E5 28            [12]  657 	mov	a,_subzero
      0001FA 45 29            [12]  658 	orl	a,(_subzero + 1)
      0001FC 60 12            [24]  659 	jz	00103$
                                    660 ;	./src/main.c:47: Lcd1602_Print(4,0,"-");
      0001FE 75 34 C5         [24]  661 	mov	_Lcd1602_Print_PARM_3,#___str_10
      000201 75 35 10         [24]  662 	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_10 >> 8)
      000204 75 36 80         [24]  663 	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
      000207 75 33 00         [24]  664 	mov	_Lcd1602_Print_PARM_2,#0x00
      00020A 75 82 04         [24]  665 	mov	dpl,#0x04
                                    666 ;	./src/main.c:48: }
      00020D 02 05 AE         [24]  667 	ljmp	_Lcd1602_Print
      000210                        668 00103$:
      000210 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'show_info'
                                    672 ;------------------------------------------------------------
                                    673 ;	./src/main.c:49: void show_info()
                                    674 ;	-----------------------------------------
                                    675 ;	 function show_info
                                    676 ;	-----------------------------------------
      000211                        677 _show_info:
                                    678 ;	./src/main.c:51: }
      000211 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'show_time'
                                    682 ;------------------------------------------------------------
                                    683 ;	./src/main.c:52: void show_time()
                                    684 ;	-----------------------------------------
                                    685 ;	 function show_time
                                    686 ;	-----------------------------------------
      000212                        687 _show_time:
                                    688 ;	./src/main.c:55: }
      000212 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'debug'
                                    692 ;------------------------------------------------------------
                                    693 ;	./src/main.c:56: void debug()
                                    694 ;	-----------------------------------------
                                    695 ;	 function debug
                                    696 ;	-----------------------------------------
      000213                        697 _debug:
                                    698 ;	./src/main.c:58: printf("read back time %d\r\n",time);
      000213 C0 08            [24]  699 	push	_time
      000215 C0 09            [24]  700 	push	(_time + 1)
      000217 74 C7            [12]  701 	mov	a,#___str_11
      000219 C0 E0            [24]  702 	push	acc
      00021B 74 10            [12]  703 	mov	a,#(___str_11 >> 8)
      00021D C0 E0            [24]  704 	push	acc
      00021F 74 80            [12]  705 	mov	a,#0x80
      000221 C0 E0            [24]  706 	push	acc
      000223 12 06 D9         [24]  707 	lcall	_printf
      000226 E5 81            [12]  708 	mov	a,sp
      000228 24 FB            [12]  709 	add	a,#0xfb
      00022A F5 81            [12]  710 	mov	sp,a
                                    711 ;	./src/main.c:59: printf("hum: %d\r\n",hum);
      00022C C0 22            [24]  712 	push	_hum
      00022E C0 23            [24]  713 	push	(_hum + 1)
      000230 74 DB            [12]  714 	mov	a,#___str_12
      000232 C0 E0            [24]  715 	push	acc
      000234 74 10            [12]  716 	mov	a,#(___str_12 >> 8)
      000236 C0 E0            [24]  717 	push	acc
      000238 74 80            [12]  718 	mov	a,#0x80
      00023A C0 E0            [24]  719 	push	acc
      00023C 12 06 D9         [24]  720 	lcall	_printf
      00023F E5 81            [12]  721 	mov	a,sp
      000241 24 FB            [12]  722 	add	a,#0xfb
      000243 F5 81            [12]  723 	mov	sp,a
                                    724 ;	./src/main.c:60: printf("the: %d\r\n",the);
      000245 C0 24            [24]  725 	push	_the
      000247 C0 25            [24]  726 	push	(_the + 1)
      000249 74 E5            [12]  727 	mov	a,#___str_13
      00024B C0 E0            [24]  728 	push	acc
      00024D 74 10            [12]  729 	mov	a,#(___str_13 >> 8)
      00024F C0 E0            [24]  730 	push	acc
      000251 74 80            [12]  731 	mov	a,#0x80
      000253 C0 E0            [24]  732 	push	acc
      000255 12 06 D9         [24]  733 	lcall	_printf
      000258 E5 81            [12]  734 	mov	a,sp
      00025A 24 FB            [12]  735 	add	a,#0xfb
      00025C F5 81            [12]  736 	mov	sp,a
                                    737 ;	./src/main.c:61: printf("thef: %d\r\n",thef);
      00025E C0 26            [24]  738 	push	_thef
      000260 C0 27            [24]  739 	push	(_thef + 1)
      000262 74 EF            [12]  740 	mov	a,#___str_14
      000264 C0 E0            [24]  741 	push	acc
      000266 74 10            [12]  742 	mov	a,#(___str_14 >> 8)
      000268 C0 E0            [24]  743 	push	acc
      00026A 74 80            [12]  744 	mov	a,#0x80
      00026C C0 E0            [24]  745 	push	acc
      00026E 12 06 D9         [24]  746 	lcall	_printf
      000271 E5 81            [12]  747 	mov	a,sp
      000273 24 FB            [12]  748 	add	a,#0xfb
      000275 F5 81            [12]  749 	mov	sp,a
                                    750 ;	./src/main.c:62: printf("check: %d\r\n",check);
      000277 C0 2A            [24]  751 	push	_check
      000279 C0 2B            [24]  752 	push	(_check + 1)
      00027B 74 FA            [12]  753 	mov	a,#___str_15
      00027D C0 E0            [24]  754 	push	acc
      00027F 74 10            [12]  755 	mov	a,#(___str_15 >> 8)
      000281 C0 E0            [24]  756 	push	acc
      000283 74 80            [12]  757 	mov	a,#0x80
      000285 C0 E0            [24]  758 	push	acc
      000287 12 06 D9         [24]  759 	lcall	_printf
      00028A E5 81            [12]  760 	mov	a,sp
      00028C 24 FB            [12]  761 	add	a,#0xfb
      00028E F5 81            [12]  762 	mov	sp,a
                                    763 ;	./src/main.c:63: printf("subzero: %d\r\n",subzero);
      000290 C0 28            [24]  764 	push	_subzero
      000292 C0 29            [24]  765 	push	(_subzero + 1)
      000294 74 06            [12]  766 	mov	a,#___str_16
      000296 C0 E0            [24]  767 	push	acc
      000298 74 11            [12]  768 	mov	a,#(___str_16 >> 8)
      00029A C0 E0            [24]  769 	push	acc
      00029C 74 80            [12]  770 	mov	a,#0x80
      00029E C0 E0            [24]  771 	push	acc
      0002A0 12 06 D9         [24]  772 	lcall	_printf
      0002A3 E5 81            [12]  773 	mov	a,sp
      0002A5 24 FB            [12]  774 	add	a,#0xfb
      0002A7 F5 81            [12]  775 	mov	sp,a
                                    776 ;	./src/main.c:64: }
      0002A9 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'main'
                                    780 ;------------------------------------------------------------
                                    781 ;	./src/main.c:65: void main ()
                                    782 ;	-----------------------------------------
                                    783 ;	 function main
                                    784 ;	-----------------------------------------
      0002AA                        785 _main:
                                    786 ;	./src/main.c:67: Wdt_Init();
      0002AA 12 06 25         [24]  787 	lcall	_Wdt_Init
                                    788 ;	./src/main.c:68: Int_Init();     	//初始化系统中断
      0002AD 12 03 10         [24]  789 	lcall	_Int_Init
                                    790 ;	./src/main.c:69: Time0_Init();		//初始化定时器0
      0002B0 12 03 1B         [24]  791 	lcall	_Time0_Init
                                    792 ;	./src/main.c:70: Serial_Init();		//串口初始化
      0002B3 12 05 EB         [24]  793 	lcall	_Serial_Init
                                    794 ;	./src/main.c:71: Time2_Init();		//初始化定时器2
      0002B6 12 03 1F         [24]  795 	lcall	_Time2_Init
                                    796 ;	./src/main.c:72: Lcd1602_Init();		//初始化lcd1602
      0002B9 12 04 C9         [24]  797 	lcall	_Lcd1602_Init
                                    798 ;	./src/main.c:73: Lcd1602_Clean();	//清空lcd1602显存
      0002BC 12 04 E1         [24]  799 	lcall	_Lcd1602_Clean
                                    800 ;	./src/main.c:74: print_boot();		//显示欢迎界面(等待DHT11初始化完成)
      0002BF 12 01 39         [24]  801 	lcall	_print_boot
                                    802 ;	./src/main.c:75: Boot_Test();		//开机自检
      0002C2 12 00 D8         [24]  803 	lcall	_Boot_Test
                                    804 ;	./src/main.c:76: while(1){
      0002C5                        805 00104$:
                                    806 ;	./src/main.c:77: Wdt_Clean();
      0002C5 12 06 37         [24]  807 	lcall	_Wdt_Clean
                                    808 ;	./src/main.c:78: if(0==DHT11_Read())
      0002C8 12 03 D9         [24]  809 	lcall	_DHT11_Read
      0002CB E5 82            [12]  810 	mov	a,dpl
      0002CD 70 0F            [24]  811 	jnz	00102$
                                    812 ;	./src/main.c:80: Lcd1602_Init();
      0002CF 12 04 C9         [24]  813 	lcall	_Lcd1602_Init
                                    814 ;	./src/main.c:81: Lcd1602_Clean();	
      0002D2 12 04 E1         [24]  815 	lcall	_Lcd1602_Clean
                                    816 ;	./src/main.c:82: show_base();
      0002D5 12 01 71         [24]  817 	lcall	_show_base
                                    818 ;	./src/main.c:83: show_data();
      0002D8 12 01 CB         [24]  819 	lcall	_show_data
                                    820 ;	./src/main.c:84: show_info();
      0002DB 12 02 11         [24]  821 	lcall	_show_info
      0002DE                        822 00102$:
                                    823 ;	./src/main.c:86: show_time();
      0002DE 12 02 12         [24]  824 	lcall	_show_time
                                    825 ;	./src/main.c:87: debug();
      0002E1 12 02 13         [24]  826 	lcall	_debug
                                    827 ;	./src/main.c:88: delayms(1500);
      0002E4 90 05 DC         [24]  828 	mov	dptr,#0x05dc
      0002E7 12 02 EC         [24]  829 	lcall	_delayms
                                    830 ;	./src/main.c:90: } 
      0002EA 80 D9            [24]  831 	sjmp	00104$
                                    832 	.area CSEG    (CODE)
                                    833 	.area CONST   (CODE)
                                    834 	.area CONST   (CODE)
      00104A                        835 ___str_0:
      00104A 64 68 74 31 31 20 65   836 	.ascii "dht11 error ->"
             72 72 6F 72 20 2D 3E
      001058 00                     837 	.db 0x00
                                    838 	.area CSEG    (CODE)
                                    839 	.area CONST   (CODE)
      001059                        840 ___str_1:
      001059 77 65 6C 63 6F 6D 65   841 	.ascii "welcome to use"
             20 74 6F 20 75 73 65
      001067 0D                     842 	.db 0x0d
      001068 0A                     843 	.db 0x0a
      001069 00                     844 	.db 0x00
                                    845 	.area CSEG    (CODE)
                                    846 	.area CONST   (CODE)
      00106A                        847 ___str_2:
      00106A 62 6F 6F 74 3A 20 53   848 	.ascii "boot: Start self test[pass]"
             74 61 72 74 20 73 65
             6C 66 20 74 65 73 74
             5B 70 61 73 73 5D
      001085 0D                     849 	.db 0x0d
      001086 0A                     850 	.db 0x0a
      001087 00                     851 	.db 0x00
                                    852 	.area CSEG    (CODE)
                                    853 	.area CONST   (CODE)
      001088                        854 ___str_3:
      001088 23 23 23 23 23 23 23   855 	.ascii "#####################"
             23 23 23 23 23 23 23
             23 23 23 23 23 23 23
      00109D 0D                     856 	.db 0x0d
      00109E 0A                     857 	.db 0x0a
      00109F 00                     858 	.db 0x00
                                    859 	.area CSEG    (CODE)
                                    860 	.area CONST   (CODE)
      0010A0                        861 ___str_4:
      0010A0 44 48 54 31 31 5B 6F   862 	.ascii "DHT11[ok]"
             6B 5D
      0010A9 0D                     863 	.db 0x0d
      0010AA 0A                     864 	.db 0x0a
      0010AB 00                     865 	.db 0x00
                                    866 	.area CSEG    (CODE)
                                    867 	.area CONST   (CODE)
      0010AC                        868 ___str_5:
      0010AC 57 65 6C 43 6F 6D 65   869 	.ascii "WelCome Pan"
             20 50 61 6E
      0010B7 00                     870 	.db 0x00
                                    871 	.area CSEG    (CODE)
                                    872 	.area CONST   (CODE)
      0010B8                        873 ___str_6:
      0010B8 54 65 6D 3A            874 	.ascii "Tem:"
      0010BC 00                     875 	.db 0x00
                                    876 	.area CSEG    (CODE)
                                    877 	.area CONST   (CODE)
      0010BD                        878 ___str_7:
      0010BD 2E                     879 	.ascii "."
      0010BE 00                     880 	.db 0x00
                                    881 	.area CSEG    (CODE)
                                    882 	.area CONST   (CODE)
      0010BF                        883 ___str_8:
      0010BF 48 52 3A               884 	.ascii "HR:"
      0010C2 00                     885 	.db 0x00
                                    886 	.area CSEG    (CODE)
                                    887 	.area CONST   (CODE)
      0010C3                        888 ___str_9:
      0010C3 25                     889 	.ascii "%"
      0010C4 00                     890 	.db 0x00
                                    891 	.area CSEG    (CODE)
                                    892 	.area CONST   (CODE)
      0010C5                        893 ___str_10:
      0010C5 2D                     894 	.ascii "-"
      0010C6 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
      0010C7                        898 ___str_11:
      0010C7 72 65 61 64 20 62 61   899 	.ascii "read back time %d"
             63 6B 20 74 69 6D 65
             20 25 64
      0010D8 0D                     900 	.db 0x0d
      0010D9 0A                     901 	.db 0x0a
      0010DA 00                     902 	.db 0x00
                                    903 	.area CSEG    (CODE)
                                    904 	.area CONST   (CODE)
      0010DB                        905 ___str_12:
      0010DB 68 75 6D 3A 20 25 64   906 	.ascii "hum: %d"
      0010E2 0D                     907 	.db 0x0d
      0010E3 0A                     908 	.db 0x0a
      0010E4 00                     909 	.db 0x00
                                    910 	.area CSEG    (CODE)
                                    911 	.area CONST   (CODE)
      0010E5                        912 ___str_13:
      0010E5 74 68 65 3A 20 25 64   913 	.ascii "the: %d"
      0010EC 0D                     914 	.db 0x0d
      0010ED 0A                     915 	.db 0x0a
      0010EE 00                     916 	.db 0x00
                                    917 	.area CSEG    (CODE)
                                    918 	.area CONST   (CODE)
      0010EF                        919 ___str_14:
      0010EF 74 68 65 66 3A 20 25   920 	.ascii "thef: %d"
             64
      0010F7 0D                     921 	.db 0x0d
      0010F8 0A                     922 	.db 0x0a
      0010F9 00                     923 	.db 0x00
                                    924 	.area CSEG    (CODE)
                                    925 	.area CONST   (CODE)
      0010FA                        926 ___str_15:
      0010FA 63 68 65 63 6B 3A 20   927 	.ascii "check: %d"
             25 64
      001103 0D                     928 	.db 0x0d
      001104 0A                     929 	.db 0x0a
      001105 00                     930 	.db 0x00
                                    931 	.area CSEG    (CODE)
                                    932 	.area CONST   (CODE)
      001106                        933 ___str_16:
      001106 73 75 62 7A 65 72 6F   934 	.ascii "subzero: %d"
             3A 20 25 64
      001111 0D                     935 	.db 0x0d
      001112 0A                     936 	.db 0x0a
      001113 00                     937 	.db 0x00
                                    938 	.area CSEG    (CODE)
                                    939 	.area XINIT   (CODE)
                                    940 	.area CABS    (ABS,CODE)
