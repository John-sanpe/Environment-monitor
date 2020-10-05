;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module lcd1602
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _datax
	.globl _com
	.globl _WaitBusy
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
	.globl _Lcd1602_Print_PARM_3
	.globl _Lcd1602_Print_PARM_2
	.globl _Lcd1602_PrintCust_PARM_3
	.globl _Lcd1602_PrintCust_PARM_2
	.globl _Lcd1602_PrintNumber_PARM_3
	.globl _Lcd1602_PrintNumber_PARM_2
	.globl _Lcd1602_Init
	.globl _Lcd1602_Clean
	.globl _Lcd1602_PrintNumber
	.globl _Lcd1602_PrintCust
	.globl _Lcd1602_Print
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
_Lcd1602_PrintNumber_PARM_2:
	.ds 1
_Lcd1602_PrintNumber_PARM_3:
	.ds 2
_Lcd1602_PrintCust_PARM_2:
	.ds 1
_Lcd1602_PrintCust_PARM_3:
	.ds 3
_Lcd1602_Print_PARM_2:
	.ds 1
_Lcd1602_Print_PARM_3:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'WaitBusy'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;null                      Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/lcd1602.c:2: uchar WaitBusy()
;	-----------------------------------------
;	 function WaitBusy
;	-----------------------------------------
_WaitBusy:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/lcd1602.c:4: uchar temp=1;
	mov	r7,#0x01
;	./src/lcd1602.c:6: Lcd1602Port=0xff;
	mov	_P1,#0xff
;	./src/lcd1602.c:7: Lcd1602Rw=1;
;	assignBit
	setb	_P2_6
;	./src/lcd1602.c:8: Lcd1602Rs=0;
;	assignBit
	clr	_P2_5
;	./src/lcd1602.c:9: while(temp==1)
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
	cjne	r7,#0x01,00105$
;	./src/lcd1602.c:11: Lcd1602E=1;
;	assignBit
	setb	_P2_7
;	./src/lcd1602.c:12: temp = (Lcd1602Port>>7)&0x01;
	mov	a,_P1
	rl	a
	anl	a,#0x01
	mov	r7,a
;	./src/lcd1602.c:13: Lcd1602E=0;
;	assignBit
	clr	_P2_7
;	./src/lcd1602.c:14: null++;
	inc	r5
	cjne	r5,#0x00,00122$
	inc	r6
00122$:
;	./src/lcd1602.c:15: if(null==0xfffe)return 1;
	cjne	r5,#0xfe,00103$
	cjne	r6,#0xff,00103$
	mov	dpl,#0x01
	ret
00105$:
;	./src/lcd1602.c:17: return 0;
	mov	dpl,#0x00
;	./src/lcd1602.c:18: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'com'
;------------------------------------------------------------
;com                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/lcd1602.c:19: void com(unsigned char com)
;	-----------------------------------------
;	 function com
;	-----------------------------------------
_com:
	mov	r7,dpl
;	./src/lcd1602.c:21: WaitBusy();
	push	ar7
	lcall	_WaitBusy
	pop	ar7
;	./src/lcd1602.c:22: Lcd1602Rw=0;
;	assignBit
	clr	_P2_6
;	./src/lcd1602.c:23: Lcd1602Rs=0;
;	assignBit
	clr	_P2_5
;	./src/lcd1602.c:24: Lcd1602E=1;
;	assignBit
	setb	_P2_7
;	./src/lcd1602.c:25: Lcd1602Port=com;
	mov	_P1,r7
;	./src/lcd1602.c:26: Lcd1602E=0;
;	assignBit
	clr	_P2_7
;	./src/lcd1602.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'datax'
;------------------------------------------------------------
;datx                      Allocated to registers r7 
;------------------------------------------------------------
;	./src/lcd1602.c:28: void datax(unsigned char datx)
;	-----------------------------------------
;	 function datax
;	-----------------------------------------
_datax:
	mov	r7,dpl
;	./src/lcd1602.c:30: WaitBusy();
	push	ar7
	lcall	_WaitBusy
	pop	ar7
;	./src/lcd1602.c:31: Lcd1602Rw=0;
;	assignBit
	clr	_P2_6
;	./src/lcd1602.c:32: Lcd1602Rs=1;
;	assignBit
	setb	_P2_5
;	./src/lcd1602.c:33: Lcd1602E=1;
;	assignBit
	setb	_P2_7
;	./src/lcd1602.c:34: Lcd1602Port=datx;
	mov	_P1,r7
;	./src/lcd1602.c:35: Lcd1602E=0;
;	assignBit
	clr	_P2_7
;	./src/lcd1602.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Lcd1602_Init'
;------------------------------------------------------------
;	./src/lcd1602.c:38: void Lcd1602_Init()
;	-----------------------------------------
;	 function Lcd1602_Init
;	-----------------------------------------
_Lcd1602_Init:
;	./src/lcd1602.c:40: com(0x38);
	mov	dpl,#0x38
	lcall	_com
;	./src/lcd1602.c:41: com(0x0c);
	mov	dpl,#0x0c
	lcall	_com
;	./src/lcd1602.c:42: com(0x01);
	mov	dpl,#0x01
	lcall	_com
;	./src/lcd1602.c:43: com(0x06);
	mov	dpl,#0x06
;	./src/lcd1602.c:44: }
	ljmp	_com
;------------------------------------------------------------
;Allocation info for local variables in function 'Lcd1602_Clean'
;------------------------------------------------------------
;	./src/lcd1602.c:46: void Lcd1602_Clean()
;	-----------------------------------------
;	 function Lcd1602_Clean
;	-----------------------------------------
_Lcd1602_Clean:
;	./src/lcd1602.c:48: com(0x01);
	mov	dpl,#0x01
;	./src/lcd1602.c:49: }
	ljmp	_com
;------------------------------------------------------------
;Allocation info for local variables in function 'Lcd1602_PrintNumber'
;------------------------------------------------------------
;ey                        Allocated with name '_Lcd1602_PrintNumber_PARM_2'
;ei                        Allocated with name '_Lcd1602_PrintNumber_PARM_3'
;ex                        Allocated to registers r7 
;point                     Allocated to registers r6 
;------------------------------------------------------------
;	./src/lcd1602.c:51: void Lcd1602_PrintNumber(unsigned char ex,unsigned char ey,int ei)
;	-----------------------------------------
;	 function Lcd1602_PrintNumber
;	-----------------------------------------
_Lcd1602_PrintNumber:
	mov	r7,dpl
;	./src/lcd1602.c:53: uchar point=0x80;
	mov	r6,#0x80
;	./src/lcd1602.c:54: if(ey==1)point|=1<<6;
	mov	a,#0x01
	cjne	a,_Lcd1602_PrintNumber_PARM_2,00102$
	mov	r6,#0xc0
00102$:
;	./src/lcd1602.c:55: if(ei>=10)ex--;
	clr	c
	mov	a,_Lcd1602_PrintNumber_PARM_3
	subb	a,#0x0a
	mov	a,(_Lcd1602_PrintNumber_PARM_3 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	clr	a
	rlc	a
	mov	r5,a
	jnz	00104$
	dec	r7
00104$:
;	./src/lcd1602.c:56: com(point+ex);
	mov	a,r7
	add	a,r6
	mov	dpl,a
	push	ar5
	lcall	_com
	pop	ar5
;	./src/lcd1602.c:58: if(ei>=100)return;
	clr	c
	mov	a,_Lcd1602_PrintNumber_PARM_3
	subb	a,#0x64
	mov	a,(_Lcd1602_PrintNumber_PARM_3 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
	ret
00106$:
;	./src/lcd1602.c:59: if(ei>=10)
	mov	a,r5
;	./src/lcd1602.c:61: datax(0x30+ei/10);
	jnz	00108$
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,_Lcd1602_PrintNumber_PARM_3
	mov	dph,(_Lcd1602_PrintNumber_PARM_3 + 1)
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_datax
;	./src/lcd1602.c:62: datax(0x30+ei%10);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_Lcd1602_PrintNumber_PARM_3
	mov	dph,(_Lcd1602_PrintNumber_PARM_3 + 1)
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
;	./src/lcd1602.c:63: return;
	ljmp	_datax
00108$:
;	./src/lcd1602.c:65: datax(0x30+ei);
	mov	r7,_Lcd1602_PrintNumber_PARM_3
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
;	./src/lcd1602.c:66: }
	ljmp	_datax
;------------------------------------------------------------
;Allocation info for local variables in function 'Lcd1602_PrintCust'
;------------------------------------------------------------
;ey                        Allocated with name '_Lcd1602_PrintCust_PARM_2'
;ei                        Allocated with name '_Lcd1602_PrintCust_PARM_3'
;ex                        Allocated to registers r7 
;point                     Allocated to registers r6 
;temp                      Allocated to registers r5 
;------------------------------------------------------------
;	./src/lcd1602.c:68: void Lcd1602_PrintCust(unsigned char ex,unsigned char ey,char *ei)
;	-----------------------------------------
;	 function Lcd1602_PrintCust
;	-----------------------------------------
_Lcd1602_PrintCust:
	mov	r7,dpl
;	./src/lcd1602.c:70: uchar point=0x80;
	mov	r6,#0x80
;	./src/lcd1602.c:71: com(0x40);
	mov	dpl,#0x40
	push	ar7
	push	ar6
	lcall	_com
	pop	ar6
	pop	ar7
;	./src/lcd1602.c:72: for(uchar temp=0;temp<8;temp++)
	mov	r5,#0x00
00105$:
	cjne	r5,#0x08,00122$
00122$:
	jnc	00101$
;	./src/lcd1602.c:74: datax(*(ei+temp));
	mov	a,r5
	add	a,_Lcd1602_PrintCust_PARM_3
	mov	r2,a
	clr	a
	addc	a,(_Lcd1602_PrintCust_PARM_3 + 1)
	mov	r3,a
	mov	r4,(_Lcd1602_PrintCust_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_datax
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/lcd1602.c:72: for(uchar temp=0;temp<8;temp++)
	inc	r5
	sjmp	00105$
00101$:
;	./src/lcd1602.c:76: if(ey==1)point|=1<<6;
	mov	a,#0x01
	cjne	a,_Lcd1602_PrintCust_PARM_2,00103$
	mov	r6,#0xc0
00103$:
;	./src/lcd1602.c:77: com(point+ex);
	mov	a,r7
	add	a,r6
	mov	dpl,a
	lcall	_com
;	./src/lcd1602.c:78: datax(0x00);
	mov	dpl,#0x00
;	./src/lcd1602.c:79: }
	ljmp	_datax
;------------------------------------------------------------
;Allocation info for local variables in function 'Lcd1602_Print'
;------------------------------------------------------------
;ey                        Allocated with name '_Lcd1602_Print_PARM_2'
;ei                        Allocated with name '_Lcd1602_Print_PARM_3'
;ex                        Allocated to registers r7 
;point                     Allocated to registers r6 
;------------------------------------------------------------
;	./src/lcd1602.c:80: void Lcd1602_Print(unsigned char ex,unsigned char ey,char *ei)
;	-----------------------------------------
;	 function Lcd1602_Print
;	-----------------------------------------
_Lcd1602_Print:
	mov	r7,dpl
;	./src/lcd1602.c:82: uchar point=0x80;
	mov	r6,#0x80
;	./src/lcd1602.c:83: if(ey==1)point|=1<<6;
	mov	a,#0x01
	cjne	a,_Lcd1602_Print_PARM_2,00102$
	mov	r6,#0xc0
00102$:
;	./src/lcd1602.c:84: com(point+ex);
	mov	a,r7
	add	a,r6
	mov	dpl,a
	lcall	_com
;	./src/lcd1602.c:85: while(*ei)	
	mov	r5,_Lcd1602_Print_PARM_3
	mov	r6,(_Lcd1602_Print_PARM_3 + 1)
	mov	r7,(_Lcd1602_Print_PARM_3 + 2)
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00106$
;	./src/lcd1602.c:87: datax(*ei);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_datax
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/lcd1602.c:88: ei++;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00106$:
;	./src/lcd1602.c:91: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
