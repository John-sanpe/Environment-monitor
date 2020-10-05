;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module dht11
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DHT11_Data
	.globl _DHT11_Start
	.globl _DHTStartDelay
	.globl _delayms
	.globl _PX3
	.globl _EX3
	.globl _IE3
	.globl _IT3
	.globl _PX2
	.globl _EX2
	.globl _IE2
	.globl _IT2
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _T2_CT
	.globl _CPRL2
	.globl _INT2
	.globl _INT3
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _T2EX
	.globl _T2
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P4
	.globl _ISP_CONTR
	.globl _ISP_TRIG
	.globl _ISP_CMD
	.globl _ISP_ADDRL
	.globl _ISP_ADDRH
	.globl _ISP_DATA
	.globl _WDT_CONTR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _XICON
	.globl _IPH
	.globl _SADDR1
	.globl _AUXR1
	.globl _AUXR
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _check
	.globl _subzero
	.globl _thef
	.globl _the
	.globl _hum
	.globl _mixdata
	.globl _DHT11_Read
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_SADDR1	=	0x00a9
_IPH	=	0x00b7
_XICON	=	0x00c0
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_WDT_CONTR	=	0x00e1
_ISP_DATA	=	0x00e2
_ISP_ADDRH	=	0x00e3
_ISP_ADDRL	=	0x00e4
_ISP_CMD	=	0x00e5
_ISP_TRIG	=	0x00e6
_ISP_CONTR	=	0x00e7
_P4	=	0x00e8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2	=	0x0090
_T2EX	=	0x0091
_P4_0	=	0x00e8
_P4_1	=	0x00e9
_P4_2	=	0x00ea
_P4_3	=	0x00eb
_INT3	=	0x00ea
_INT2	=	0x00eb
_CPRL2	=	0x00c8
_T2_CT	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_IT2	=	0x00c0
_IE2	=	0x00c1
_EX2	=	0x00c2
_PX2	=	0x00c3
_IT3	=	0x00c4
_IE3	=	0x00c5
_EX3	=	0x00c6
_PX3	=	0x00c7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_mixdata::
	.ds 4
_hum::
	.ds 2
_the::
	.ds 2
_thef::
	.ds 2
_subzero::
	.ds 2
_check::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'DHTStartDelay'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/dht11.c:5: void DHTStartDelay()
;	-----------------------------------------
;	 function DHTStartDelay
;	-----------------------------------------
_DHTStartDelay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/dht11.c:9: i = 15;
	mov	r7,#0x0f
;	./src/dht11.c:10: while (--i);
00101$:
	mov	a,r7
	dec	a
	mov	r7,a
	jnz	00101$
;	./src/dht11.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DHT11_Start'
;------------------------------------------------------------
;	./src/dht11.c:12: void DHT11_Start()
;	-----------------------------------------
;	 function DHT11_Start
;	-----------------------------------------
_DHT11_Start:
;	./src/dht11.c:14: DHT11=0;
;	assignBit
	clr	_P2_4
;	./src/dht11.c:15: delayms(20);
	mov	dptr,#0x0014
	lcall	_delayms
;	./src/dht11.c:16: DHT11=1;
;	assignBit
	setb	_P2_4
;	./src/dht11.c:17: DHTStartDelay();
	lcall	_DHTStartDelay
;	./src/dht11.c:18: while(!DHT11);
00101$:
	jnb	_P2_4,00101$
;	./src/dht11.c:19: while(DHT11);
00104$:
	jb	_P2_4,00104$
;	./src/dht11.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DHT11_Data'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/dht11.c:21: void DHT11_Data()
;	-----------------------------------------
;	 function DHT11_Data
;	-----------------------------------------
_DHT11_Data:
;	./src/dht11.c:24: for(temp=0;temp<32;temp++)
	mov	r7,#0x00
00122$:
;	./src/dht11.c:26: TL0=0;
	mov	_TL0,#0x00
;	./src/dht11.c:27: while(!DHT11);
00101$:
	jnb	_P2_4,00101$
;	./src/dht11.c:28: TR0=1;
;	assignBit
	setb	_TR0
;	./src/dht11.c:29: while(DHT11);
00104$:
	jb	_P2_4,00104$
;	./src/dht11.c:30: TR0=0;
;	assignBit
	clr	_TR0
;	./src/dht11.c:31: mixdata<<=1;
	mov	a,_mixdata
	add	a,_mixdata
	mov	_mixdata,a
	mov	a,(_mixdata + 1)
	rlc	a
	mov	(_mixdata + 1),a
	mov	a,(_mixdata + 2)
	rlc	a
	mov	(_mixdata + 2),a
	mov	a,(_mixdata + 3)
	rlc	a
	mov	(_mixdata + 3),a
;	./src/dht11.c:32: if(TL0>dht11_threshold)mixdata|=1;
	mov	a,_TL0
	add	a,#0xff - 0x3c
	jnc	00123$
	orl	_mixdata,#0x01
00123$:
;	./src/dht11.c:24: for(temp=0;temp<32;temp++)
	inc	r7
	cjne	r7,#0x20,00189$
00189$:
	jc	00122$
;	./src/dht11.c:34: for(temp=0;temp<8;temp++)
	mov	r7,#0x00
00124$:
;	./src/dht11.c:36: TL0=0;
	mov	_TL0,#0x00
;	./src/dht11.c:37: while(!DHT11);
00110$:
	jnb	_P2_4,00110$
;	./src/dht11.c:38: TR0=1;
;	assignBit
	setb	_TR0
;	./src/dht11.c:39: while(DHT11);
00113$:
	jb	_P2_4,00113$
;	./src/dht11.c:40: TR0=0;
;	assignBit
	clr	_TR0
;	./src/dht11.c:41: check<<=1;
	mov	a,_check
	add	a,_check
	mov	_check,a
	mov	a,(_check + 1)
	rlc	a
	mov	(_check + 1),a
;	./src/dht11.c:42: if(TL0>dht11_threshold)check|=1;
	mov	a,_TL0
	add	a,#0xff - 0x3c
	jnc	00125$
	orl	_check,#0x01
00125$:
;	./src/dht11.c:34: for(temp=0;temp<8;temp++)
	inc	r7
	cjne	r7,#0x08,00194$
00194$:
	jc	00124$
;	./src/dht11.c:44: while(DHT11);
00119$:
	jb	_P2_4,00119$
;	./src/dht11.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DHT11_Read'
;------------------------------------------------------------
;	./src/dht11.c:47: char DHT11_Read(void)
;	-----------------------------------------
;	 function DHT11_Read
;	-----------------------------------------
_DHT11_Read:
;	./src/dht11.c:50: mixdata=0;
	clr	a
	mov	_mixdata,a
	mov	(_mixdata + 1),a
	mov	(_mixdata + 2),a
	mov	(_mixdata + 3),a
;	./src/dht11.c:51: check=0;
	mov	_check,a
	mov	(_check + 1),a
;	./src/dht11.c:53: DHT11_Start();
	lcall	_DHT11_Start
;	./src/dht11.c:54: DHT11_Data();
	lcall	_DHT11_Data
;	./src/dht11.c:56: hum=(mixdata>>24)&0xff;
	mov	r7,(_mixdata + 3)
	mov	r6,#0x00
	mov	_hum,r7
	mov	(_hum + 1),r6
;	./src/dht11.c:57: the=(mixdata>>8)&0xff;
	mov	r4,(_mixdata + 1)
	mov	_the,r4
;	1-genFromRTrack replaced	mov	(_the + 1),#0x00
	mov	(_the + 1),r6
;	./src/dht11.c:58: thef=(mixdata>>0)&0xf;
	mov	r4,_mixdata
	mov	a,#0x0f
	anl	a,r4
	mov	_thef,a
;	1-genFromRTrack replaced	mov	(_thef + 1),#0x00
	mov	(_thef + 1),r6
;	./src/dht11.c:60: subzero=(mixdata>>7)&0x1;
	mov	a,_mixdata
	rl	a
	anl	a,#0x01
	mov	r5,a
	mov	_subzero,r5
;	1-genFromRTrack replaced	mov	(_subzero + 1),#0x00
	mov	(_subzero + 1),r6
;	./src/dht11.c:62: hum+=humcompensate;
;	./src/dht11.c:63: the+=thecompensate;
;	./src/dht11.c:65: if(check!=((mixdata>>24)&0xff)+((mixdata>>16)&0xff)+((mixdata>>8)&0xff)+((mixdata>>0)&0xf))return -1;
	mov	r5,(_mixdata + 2)
	mov	r4,#0x00
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	r5,(_mixdata + 1)
	mov	r4,#0x00
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	r2,_mixdata
	anl	ar2,#0x0f
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	ar0,r7
	mov	a,r6
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r2
	add	a,r0
	mov	r2,a
	mov	a,r3
	addc	a,r1
	mov	r3,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	mov	a,r5
	addc	a,r7
	mov	r5,a
	mov	r0,_check
	mov	a,(_check + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	cjne	a,ar2,00109$
	mov	a,r1
	cjne	a,ar3,00109$
	mov	a,r6
	cjne	a,ar4,00109$
	mov	a,r7
	cjne	a,ar5,00109$
	sjmp	00102$
00109$:
	mov	dpl,#0xff
	ret
00102$:
;	./src/dht11.c:66: return 0;
	mov	dpl,#0x00
;	./src/dht11.c:67: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
