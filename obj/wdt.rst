                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module wdt
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
                                    152 	.globl _Wdt_Init
                                    153 	.globl _Wdt_Runsign
                                    154 	.globl _Wdt_Clean
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0	=	0x0080
                           000081   161 _SP	=	0x0081
                           000082   162 _DPL	=	0x0082
                           000083   163 _DPH	=	0x0083
                           000087   164 _PCON	=	0x0087
                           000088   165 _TCON	=	0x0088
                           000089   166 _TMOD	=	0x0089
                           00008A   167 _TL0	=	0x008a
                           00008B   168 _TL1	=	0x008b
                           00008C   169 _TH0	=	0x008c
                           00008D   170 _TH1	=	0x008d
                           000090   171 _P1	=	0x0090
                           000098   172 _SCON	=	0x0098
                           000099   173 _SBUF	=	0x0099
                           0000A0   174 _P2	=	0x00a0
                           0000A8   175 _IE	=	0x00a8
                           0000B0   176 _P3	=	0x00b0
                           0000B8   177 _IP	=	0x00b8
                           0000D0   178 _PSW	=	0x00d0
                           0000E0   179 _ACC	=	0x00e0
                           0000F0   180 _B	=	0x00f0
                           00008E   181 _AUXR	=	0x008e
                           0000A2   182 _AUXR1	=	0x00a2
                           0000A9   183 _SADDR1	=	0x00a9
                           0000B7   184 _IPH	=	0x00b7
                           0000C0   185 _XICON	=	0x00c0
                           0000C8   186 _T2CON	=	0x00c8
                           0000C9   187 _T2MOD	=	0x00c9
                           0000CA   188 _RCAP2L	=	0x00ca
                           0000CB   189 _RCAP2H	=	0x00cb
                           0000CC   190 _TL2	=	0x00cc
                           0000CD   191 _TH2	=	0x00cd
                           0000E1   192 _WDT_CONTR	=	0x00e1
                           0000E2   193 _ISP_DATA	=	0x00e2
                           0000E3   194 _ISP_ADDRH	=	0x00e3
                           0000E4   195 _ISP_ADDRL	=	0x00e4
                           0000E5   196 _ISP_CMD	=	0x00e5
                           0000E6   197 _ISP_TRIG	=	0x00e6
                           0000E7   198 _ISP_CONTR	=	0x00e7
                           0000E8   199 _P4	=	0x00e8
                                    200 ;--------------------------------------------------------
                                    201 ; special function bits
                                    202 ;--------------------------------------------------------
                                    203 	.area RSEG    (ABS,DATA)
      000000                        204 	.org 0x0000
                           000080   205 _P0_0	=	0x0080
                           000081   206 _P0_1	=	0x0081
                           000082   207 _P0_2	=	0x0082
                           000083   208 _P0_3	=	0x0083
                           000084   209 _P0_4	=	0x0084
                           000085   210 _P0_5	=	0x0085
                           000086   211 _P0_6	=	0x0086
                           000087   212 _P0_7	=	0x0087
                           000088   213 _IT0	=	0x0088
                           000089   214 _IE0	=	0x0089
                           00008A   215 _IT1	=	0x008a
                           00008B   216 _IE1	=	0x008b
                           00008C   217 _TR0	=	0x008c
                           00008D   218 _TF0	=	0x008d
                           00008E   219 _TR1	=	0x008e
                           00008F   220 _TF1	=	0x008f
                           000090   221 _P1_0	=	0x0090
                           000091   222 _P1_1	=	0x0091
                           000092   223 _P1_2	=	0x0092
                           000093   224 _P1_3	=	0x0093
                           000094   225 _P1_4	=	0x0094
                           000095   226 _P1_5	=	0x0095
                           000096   227 _P1_6	=	0x0096
                           000097   228 _P1_7	=	0x0097
                           000098   229 _RI	=	0x0098
                           000099   230 _TI	=	0x0099
                           00009A   231 _RB8	=	0x009a
                           00009B   232 _TB8	=	0x009b
                           00009C   233 _REN	=	0x009c
                           00009D   234 _SM2	=	0x009d
                           00009E   235 _SM1	=	0x009e
                           00009F   236 _SM0	=	0x009f
                           0000A0   237 _P2_0	=	0x00a0
                           0000A1   238 _P2_1	=	0x00a1
                           0000A2   239 _P2_2	=	0x00a2
                           0000A3   240 _P2_3	=	0x00a3
                           0000A4   241 _P2_4	=	0x00a4
                           0000A5   242 _P2_5	=	0x00a5
                           0000A6   243 _P2_6	=	0x00a6
                           0000A7   244 _P2_7	=	0x00a7
                           0000A8   245 _EX0	=	0x00a8
                           0000A9   246 _ET0	=	0x00a9
                           0000AA   247 _EX1	=	0x00aa
                           0000AB   248 _ET1	=	0x00ab
                           0000AC   249 _ES	=	0x00ac
                           0000AF   250 _EA	=	0x00af
                           0000B0   251 _P3_0	=	0x00b0
                           0000B1   252 _P3_1	=	0x00b1
                           0000B2   253 _P3_2	=	0x00b2
                           0000B3   254 _P3_3	=	0x00b3
                           0000B4   255 _P3_4	=	0x00b4
                           0000B5   256 _P3_5	=	0x00b5
                           0000B6   257 _P3_6	=	0x00b6
                           0000B7   258 _P3_7	=	0x00b7
                           0000B0   259 _RXD	=	0x00b0
                           0000B1   260 _TXD	=	0x00b1
                           0000B2   261 _INT0	=	0x00b2
                           0000B3   262 _INT1	=	0x00b3
                           0000B4   263 _T0	=	0x00b4
                           0000B5   264 _T1	=	0x00b5
                           0000B6   265 _WR	=	0x00b6
                           0000B7   266 _RD	=	0x00b7
                           0000B8   267 _PX0	=	0x00b8
                           0000B9   268 _PT0	=	0x00b9
                           0000BA   269 _PX1	=	0x00ba
                           0000BB   270 _PT1	=	0x00bb
                           0000BC   271 _PS	=	0x00bc
                           0000D0   272 _P	=	0x00d0
                           0000D1   273 _F1	=	0x00d1
                           0000D2   274 _OV	=	0x00d2
                           0000D3   275 _RS0	=	0x00d3
                           0000D4   276 _RS1	=	0x00d4
                           0000D5   277 _F0	=	0x00d5
                           0000D6   278 _AC	=	0x00d6
                           0000D7   279 _CY	=	0x00d7
                           0000AD   280 _ET2	=	0x00ad
                           0000BD   281 _PT2	=	0x00bd
                           000090   282 _T2	=	0x0090
                           000091   283 _T2EX	=	0x0091
                           0000E8   284 _P4_0	=	0x00e8
                           0000E9   285 _P4_1	=	0x00e9
                           0000EA   286 _P4_2	=	0x00ea
                           0000EB   287 _P4_3	=	0x00eb
                           0000EA   288 _INT3	=	0x00ea
                           0000EB   289 _INT2	=	0x00eb
                           0000C8   290 _CPRL2	=	0x00c8
                           0000C9   291 _T2_CT	=	0x00c9
                           0000CA   292 _TR2	=	0x00ca
                           0000CB   293 _EXEN2	=	0x00cb
                           0000CC   294 _TCLK	=	0x00cc
                           0000CD   295 _RCLK	=	0x00cd
                           0000CE   296 _EXF2	=	0x00ce
                           0000CF   297 _TF2	=	0x00cf
                           0000C0   298 _IT2	=	0x00c0
                           0000C1   299 _IE2	=	0x00c1
                           0000C2   300 _EX2	=	0x00c2
                           0000C3   301 _PX2	=	0x00c3
                           0000C4   302 _IT3	=	0x00c4
                           0000C5   303 _IE3	=	0x00c5
                           0000C6   304 _EX3	=	0x00c6
                           0000C7   305 _PX3	=	0x00c7
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable register banks
                                    308 ;--------------------------------------------------------
                                    309 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        310 	.ds 8
                                    311 ;--------------------------------------------------------
                                    312 ; internal ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area DSEG    (DATA)
                                    315 ;--------------------------------------------------------
                                    316 ; overlayable items in internal ram 
                                    317 ;--------------------------------------------------------
                                    318 	.area	OSEG    (OVR,DATA)
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
                                    375 ;Allocation info for local variables in function 'Wdt_Init'
                                    376 ;------------------------------------------------------------
                                    377 ;	./src/wdt.c:3: void Wdt_Init()
                                    378 ;	-----------------------------------------
                                    379 ;	 function Wdt_Init
                                    380 ;	-----------------------------------------
      000625                        381 _Wdt_Init:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
                                    390 ;	./src/wdt.c:5: WDT_CONTR|=0x01<<5;
      000625 43 E1 20         [24]  391 	orl	_WDT_CONTR,#0x20
                                    392 ;	./src/wdt.c:6: WDT_CONTR|=0x07<<0;
      000628 43 E1 07         [24]  393 	orl	_WDT_CONTR,#0x07
                                    394 ;	./src/wdt.c:8: }
      00062B 22               [24]  395 	ret
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'Wdt_Runsign'
                                    398 ;------------------------------------------------------------
                                    399 ;sign                      Allocated to registers 
                                    400 ;------------------------------------------------------------
                                    401 ;	./src/wdt.c:9: uchar Wdt_Runsign()
                                    402 ;	-----------------------------------------
                                    403 ;	 function Wdt_Runsign
                                    404 ;	-----------------------------------------
      00062C                        405 _Wdt_Runsign:
                                    406 ;	./src/wdt.c:12: sign=(PCON>>4)&0x01;
      00062C E5 87            [12]  407 	mov	a,_PCON
      00062E C4               [12]  408 	swap	a
      00062F 54 01            [12]  409 	anl	a,#0x01
      000631 F5 82            [12]  410 	mov	dpl,a
                                    411 ;	./src/wdt.c:13: PCON&=~(1<<4);
      000633 53 87 EF         [24]  412 	anl	_PCON,#0xef
                                    413 ;	./src/wdt.c:14: return sign;
                                    414 ;	./src/wdt.c:15: }
      000636 22               [24]  415 	ret
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'Wdt_Clean'
                                    418 ;------------------------------------------------------------
                                    419 ;	./src/wdt.c:16: void Wdt_Clean()
                                    420 ;	-----------------------------------------
                                    421 ;	 function Wdt_Clean
                                    422 ;	-----------------------------------------
      000637                        423 _Wdt_Clean:
                                    424 ;	./src/wdt.c:18: WDT_CONTR|=0x01<<4;
      000637 43 E1 10         [24]  425 	orl	_WDT_CONTR,#0x10
                                    426 ;	./src/wdt.c:19: }
      00063A 22               [24]  427 	ret
                                    428 	.area CSEG    (CODE)
                                    429 	.area CONST   (CODE)
                                    430 	.area XINIT   (CODE)
                                    431 	.area CABS    (ABS,CODE)
