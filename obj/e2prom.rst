                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module e2prom
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _E2prom_Read
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
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0	=	0x0080
                           000081   159 _SP	=	0x0081
                           000082   160 _DPL	=	0x0082
                           000083   161 _DPH	=	0x0083
                           000087   162 _PCON	=	0x0087
                           000088   163 _TCON	=	0x0088
                           000089   164 _TMOD	=	0x0089
                           00008A   165 _TL0	=	0x008a
                           00008B   166 _TL1	=	0x008b
                           00008C   167 _TH0	=	0x008c
                           00008D   168 _TH1	=	0x008d
                           000090   169 _P1	=	0x0090
                           000098   170 _SCON	=	0x0098
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 _IE	=	0x00a8
                           0000B0   174 _P3	=	0x00b0
                           0000B8   175 _IP	=	0x00b8
                           0000D0   176 _PSW	=	0x00d0
                           0000E0   177 _ACC	=	0x00e0
                           0000F0   178 _B	=	0x00f0
                           00008E   179 _AUXR	=	0x008e
                           0000A2   180 _AUXR1	=	0x00a2
                           0000A9   181 _SADDR1	=	0x00a9
                           0000B7   182 _IPH	=	0x00b7
                           0000C0   183 _XICON	=	0x00c0
                           0000C8   184 _T2CON	=	0x00c8
                           0000C9   185 _T2MOD	=	0x00c9
                           0000CA   186 _RCAP2L	=	0x00ca
                           0000CB   187 _RCAP2H	=	0x00cb
                           0000CC   188 _TL2	=	0x00cc
                           0000CD   189 _TH2	=	0x00cd
                           0000E1   190 _WDT_CONTR	=	0x00e1
                           0000E2   191 _ISP_DATA	=	0x00e2
                           0000E3   192 _ISP_ADDRH	=	0x00e3
                           0000E4   193 _ISP_ADDRL	=	0x00e4
                           0000E5   194 _ISP_CMD	=	0x00e5
                           0000E6   195 _ISP_TRIG	=	0x00e6
                           0000E7   196 _ISP_CONTR	=	0x00e7
                           0000E8   197 _P4	=	0x00e8
                                    198 ;--------------------------------------------------------
                                    199 ; special function bits
                                    200 ;--------------------------------------------------------
                                    201 	.area RSEG    (ABS,DATA)
      000000                        202 	.org 0x0000
                           000080   203 _P0_0	=	0x0080
                           000081   204 _P0_1	=	0x0081
                           000082   205 _P0_2	=	0x0082
                           000083   206 _P0_3	=	0x0083
                           000084   207 _P0_4	=	0x0084
                           000085   208 _P0_5	=	0x0085
                           000086   209 _P0_6	=	0x0086
                           000087   210 _P0_7	=	0x0087
                           000088   211 _IT0	=	0x0088
                           000089   212 _IE0	=	0x0089
                           00008A   213 _IT1	=	0x008a
                           00008B   214 _IE1	=	0x008b
                           00008C   215 _TR0	=	0x008c
                           00008D   216 _TF0	=	0x008d
                           00008E   217 _TR1	=	0x008e
                           00008F   218 _TF1	=	0x008f
                           000090   219 _P1_0	=	0x0090
                           000091   220 _P1_1	=	0x0091
                           000092   221 _P1_2	=	0x0092
                           000093   222 _P1_3	=	0x0093
                           000094   223 _P1_4	=	0x0094
                           000095   224 _P1_5	=	0x0095
                           000096   225 _P1_6	=	0x0096
                           000097   226 _P1_7	=	0x0097
                           000098   227 _RI	=	0x0098
                           000099   228 _TI	=	0x0099
                           00009A   229 _RB8	=	0x009a
                           00009B   230 _TB8	=	0x009b
                           00009C   231 _REN	=	0x009c
                           00009D   232 _SM2	=	0x009d
                           00009E   233 _SM1	=	0x009e
                           00009F   234 _SM0	=	0x009f
                           0000A0   235 _P2_0	=	0x00a0
                           0000A1   236 _P2_1	=	0x00a1
                           0000A2   237 _P2_2	=	0x00a2
                           0000A3   238 _P2_3	=	0x00a3
                           0000A4   239 _P2_4	=	0x00a4
                           0000A5   240 _P2_5	=	0x00a5
                           0000A6   241 _P2_6	=	0x00a6
                           0000A7   242 _P2_7	=	0x00a7
                           0000A8   243 _EX0	=	0x00a8
                           0000A9   244 _ET0	=	0x00a9
                           0000AA   245 _EX1	=	0x00aa
                           0000AB   246 _ET1	=	0x00ab
                           0000AC   247 _ES	=	0x00ac
                           0000AF   248 _EA	=	0x00af
                           0000B0   249 _P3_0	=	0x00b0
                           0000B1   250 _P3_1	=	0x00b1
                           0000B2   251 _P3_2	=	0x00b2
                           0000B3   252 _P3_3	=	0x00b3
                           0000B4   253 _P3_4	=	0x00b4
                           0000B5   254 _P3_5	=	0x00b5
                           0000B6   255 _P3_6	=	0x00b6
                           0000B7   256 _P3_7	=	0x00b7
                           0000B0   257 _RXD	=	0x00b0
                           0000B1   258 _TXD	=	0x00b1
                           0000B2   259 _INT0	=	0x00b2
                           0000B3   260 _INT1	=	0x00b3
                           0000B4   261 _T0	=	0x00b4
                           0000B5   262 _T1	=	0x00b5
                           0000B6   263 _WR	=	0x00b6
                           0000B7   264 _RD	=	0x00b7
                           0000B8   265 _PX0	=	0x00b8
                           0000B9   266 _PT0	=	0x00b9
                           0000BA   267 _PX1	=	0x00ba
                           0000BB   268 _PT1	=	0x00bb
                           0000BC   269 _PS	=	0x00bc
                           0000D0   270 _P	=	0x00d0
                           0000D1   271 _F1	=	0x00d1
                           0000D2   272 _OV	=	0x00d2
                           0000D3   273 _RS0	=	0x00d3
                           0000D4   274 _RS1	=	0x00d4
                           0000D5   275 _F0	=	0x00d5
                           0000D6   276 _AC	=	0x00d6
                           0000D7   277 _CY	=	0x00d7
                           0000AD   278 _ET2	=	0x00ad
                           0000BD   279 _PT2	=	0x00bd
                           000090   280 _T2	=	0x0090
                           000091   281 _T2EX	=	0x0091
                           0000E8   282 _P4_0	=	0x00e8
                           0000E9   283 _P4_1	=	0x00e9
                           0000EA   284 _P4_2	=	0x00ea
                           0000EB   285 _P4_3	=	0x00eb
                           0000EA   286 _INT3	=	0x00ea
                           0000EB   287 _INT2	=	0x00eb
                           0000C8   288 _CPRL2	=	0x00c8
                           0000C9   289 _T2_CT	=	0x00c9
                           0000CA   290 _TR2	=	0x00ca
                           0000CB   291 _EXEN2	=	0x00cb
                           0000CC   292 _TCLK	=	0x00cc
                           0000CD   293 _RCLK	=	0x00cd
                           0000CE   294 _EXF2	=	0x00ce
                           0000CF   295 _TF2	=	0x00cf
                           0000C0   296 _IT2	=	0x00c0
                           0000C1   297 _IE2	=	0x00c1
                           0000C2   298 _EX2	=	0x00c2
                           0000C3   299 _PX2	=	0x00c3
                           0000C4   300 _IT3	=	0x00c4
                           0000C5   301 _IE3	=	0x00c5
                           0000C6   302 _EX3	=	0x00c6
                           0000C7   303 _PX3	=	0x00c7
                                    304 ;--------------------------------------------------------
                                    305 ; overlayable register banks
                                    306 ;--------------------------------------------------------
                                    307 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        308 	.ds 8
                                    309 ;--------------------------------------------------------
                                    310 ; internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area DSEG    (DATA)
                                    313 ;--------------------------------------------------------
                                    314 ; overlayable items in internal ram 
                                    315 ;--------------------------------------------------------
                                    316 	.area	OSEG    (OVR,DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; indirectly addressable internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area ISEG    (DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; absolute internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area IABS    (ABS,DATA)
                                    325 	.area IABS    (ABS,DATA)
                                    326 ;--------------------------------------------------------
                                    327 ; bit data
                                    328 ;--------------------------------------------------------
                                    329 	.area BSEG    (BIT)
                                    330 ;--------------------------------------------------------
                                    331 ; paged external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area PSEG    (PAG,XDATA)
                                    334 ;--------------------------------------------------------
                                    335 ; external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area XSEG    (XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; absolute external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XABS    (ABS,XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; external initialized ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XISEG   (XDATA)
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT0 (CODE)
                                    348 	.area GSINIT1 (CODE)
                                    349 	.area GSINIT2 (CODE)
                                    350 	.area GSINIT3 (CODE)
                                    351 	.area GSINIT4 (CODE)
                                    352 	.area GSINIT5 (CODE)
                                    353 	.area GSINIT  (CODE)
                                    354 	.area GSFINAL (CODE)
                                    355 	.area CSEG    (CODE)
                                    356 ;--------------------------------------------------------
                                    357 ; global & static initialisations
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 ;--------------------------------------------------------
                                    364 ; Home
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
                                    367 	.area HOME    (CODE)
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'E2prom_Read'
                                    374 ;------------------------------------------------------------
                                    375 ;add                       Allocated to registers r6 r7 
                                    376 ;------------------------------------------------------------
                                    377 ;	./src/e2prom.c:7: char E2prom_Read(int add)
                                    378 ;	-----------------------------------------
                                    379 ;	 function E2prom_Read
                                    380 ;	-----------------------------------------
      000465                        381 _E2prom_Read:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
      000465 AE 82            [24]  390 	mov	r6,dpl
      000467 AF 83            [24]  391 	mov	r7,dph
                                    392 ;	./src/e2prom.c:9: ISP_CMD=Cmd_Read;
      000469 75 E5 01         [24]  393 	mov	_ISP_CMD,#0x01
                                    394 ;	./src/e2prom.c:10: ISP_ADDRH=(add>>8)&0xff;
      00046C 8F E3            [24]  395 	mov	_ISP_ADDRH,r7
                                    396 ;	./src/e2prom.c:11: ISP_ADDRL=(add>>0)&0xff;
      00046E 8E E4            [24]  397 	mov	_ISP_ADDRL,r6
                                    398 ;	./src/e2prom.c:12: return 0;
      000470 75 82 00         [24]  399 	mov	dpl,#0x00
                                    400 ;	./src/e2prom.c:13: }
      000473 22               [24]  401 	ret
                                    402 	.area CSEG    (CODE)
                                    403 	.area CONST   (CODE)
                                    404 	.area XINIT   (CODE)
                                    405 	.area CABS    (ABS,CODE)
