;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _debug
	.globl _show_time
	.globl _show_info
	.globl _show_data
	.globl _show_base
	.globl _print_boot
	.globl _Boot_Test
	.globl _show_error
	.globl _Lcd1602_Init
	.globl _Lcd1602_Clean
	.globl _Lcd1602_PrintCust
	.globl _Lcd1602_Print
	.globl _Lcd1602_PrintNumber
	.globl _Wdt_Runsign
	.globl _Wdt_Clean
	.globl _Wdt_Init
	.globl _Time1_Init
	.globl _Serial_Init
	.globl _DHT11_Read
	.globl _Time2_Init
	.globl _Time0_Init
	.globl _Int_Init
	.globl _delayms
	.globl _printf
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
	.globl _time
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
_time::
	.ds 2
_load:
	.ds 8
_temperature:
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Serial_Handel
	.ds	5
	ljmp	_delayserver
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	./src/main.c:3: static uchar load[8]={0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};
	mov	_load,#0xff
	mov	(_load + 0x0001),#0xff
	mov	(_load + 0x0002),#0xff
	mov	(_load + 0x0003),#0xff
	mov	(_load + 0x0004),#0xff
	mov	(_load + 0x0005),#0xff
	mov	(_load + 0x0006),#0xff
	mov	(_load + 0x0007),#0xff
;	./src/main.c:4: static uchar temperature[8]={0x16,0x09,0x08,0x08,0x08,0x09,0x06,0x00};
	mov	_temperature,#0x16
	mov	(_temperature + 0x0001),#0x09
	mov	(_temperature + 0x0002),#0x08
	mov	(_temperature + 0x0003),#0x08
	mov	(_temperature + 0x0004),#0x08
	mov	(_temperature + 0x0005),#0x09
	mov	(_temperature + 0x0006),#0x06
	mov	(_temperature + 0x0007),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'show_error'
;------------------------------------------------------------
;	./src/main.c:5: void show_error()
;	-----------------------------------------
;	 function show_error
;	-----------------------------------------
_show_error:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:7: Lcd1602_Clean();
	lcall	_Lcd1602_Clean
;	./src/main.c:8: Lcd1602_Print(0,1,"dht11 error ->");
	mov	_Lcd1602_Print_PARM_3,#___str_0
	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_0 >> 8)
	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
	mov	_Lcd1602_Print_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_Lcd1602_Print
;	./src/main.c:9: delayms(2000);
	mov	dptr,#0x07d0
;	./src/main.c:10: }
	ljmp	_delayms
;------------------------------------------------------------
;Allocation info for local variables in function 'Boot_Test'
;------------------------------------------------------------
;	./src/main.c:11: void Boot_Test()
;	-----------------------------------------
;	 function Boot_Test
;	-----------------------------------------
_Boot_Test:
;	./src/main.c:13: printf("welcome to use\r\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	./src/main.c:14: if(Wdt_Runsign())printf("boot: Start self test[pass]\r\n");
	lcall	_Wdt_Runsign
	mov	a,dpl
	jz	00102$
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00103$
00102$:
;	./src/main.c:15: else show_error();
	lcall	_show_error
00103$:
;	./src/main.c:16: printf("#####################\r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	./src/main.c:17: printf("DHT11[ok]\r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	./src/main.c:18: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_boot'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:19: void print_boot()
;	-----------------------------------------
;	 function print_boot
;	-----------------------------------------
_print_boot:
;	./src/main.c:22: Lcd1602_Print(i,0,"WelCome Pan");
	mov	_Lcd1602_Print_PARM_3,#___str_5
	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_5 >> 8)
	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
	mov	_Lcd1602_Print_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_Lcd1602_Print
	mov	r7,#0x00
00103$:
;	./src/main.c:23: for(;i<16;i++)
	cjne	r7,#0x10,00116$
00116$:
	jnc	00105$
;	./src/main.c:25: Lcd1602_PrintCust(i,1,load);
	mov	_Lcd1602_PrintCust_PARM_3,#_load
	mov	(_Lcd1602_PrintCust_PARM_3 + 1),#0x00
	mov	(_Lcd1602_PrintCust_PARM_3 + 2),#0x40
	mov	_Lcd1602_PrintCust_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_Lcd1602_PrintCust
;	./src/main.c:26: delayms(150);
	mov	dptr,#0x0096
	lcall	_delayms
	pop	ar7
;	./src/main.c:23: for(;i<16;i++)
	inc	r7
	sjmp	00103$
00105$:
;	./src/main.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'show_base'
;------------------------------------------------------------
;	./src/main.c:29: void show_base()
;	-----------------------------------------
;	 function show_base
;	-----------------------------------------
_show_base:
;	./src/main.c:31: Lcd1602_Print(0,0,"Tem:");
	mov	_Lcd1602_Print_PARM_3,#___str_6
	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_6 >> 8)
	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
	mov	_Lcd1602_Print_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_Lcd1602_Print
;	./src/main.c:32: Lcd1602_Print(7,0,".");
	mov	_Lcd1602_Print_PARM_3,#___str_7
	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_7 >> 8)
	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
	mov	_Lcd1602_Print_PARM_2,#0x00
	mov	dpl,#0x07
	lcall	_Lcd1602_Print
;	./src/main.c:34: Lcd1602_Print(1,1,"HR:");
	mov	_Lcd1602_Print_PARM_3,#___str_8
	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_8 >> 8)
	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
	mov	_Lcd1602_Print_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_Lcd1602_Print
;	./src/main.c:35: Lcd1602_Print(9,1,"%");
	mov	_Lcd1602_Print_PARM_3,#___str_9
	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_9 >> 8)
	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
	mov	_Lcd1602_Print_PARM_2,#0x01
	mov	dpl,#0x09
	lcall	_Lcd1602_Print
;	./src/main.c:37: Lcd1602_PrintCust(9,0,temperature);
	mov	_Lcd1602_PrintCust_PARM_3,#_temperature
	mov	(_Lcd1602_PrintCust_PARM_3 + 1),#0x00
	mov	(_Lcd1602_PrintCust_PARM_3 + 2),#0x40
	mov	_Lcd1602_PrintCust_PARM_2,#0x00
	mov	dpl,#0x09
;	./src/main.c:39: }
	ljmp	_Lcd1602_PrintCust
;------------------------------------------------------------
;Allocation info for local variables in function 'show_data'
;------------------------------------------------------------
;	./src/main.c:40: void show_data()
;	-----------------------------------------
;	 function show_data
;	-----------------------------------------
_show_data:
;	./src/main.c:42: Lcd1602_PrintNumber(6,0,the);
	mov	_Lcd1602_PrintNumber_PARM_2,#0x00
	mov	_Lcd1602_PrintNumber_PARM_3,_the
	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_the + 1)
	mov	dpl,#0x06
	lcall	_Lcd1602_PrintNumber
;	./src/main.c:43: Lcd1602_PrintNumber(8,0,thef);
	mov	_Lcd1602_PrintNumber_PARM_2,#0x00
	mov	_Lcd1602_PrintNumber_PARM_3,_thef
	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_thef + 1)
	mov	dpl,#0x08
	lcall	_Lcd1602_PrintNumber
;	./src/main.c:44: Lcd1602_PrintNumber(8,1,hum);
	mov	_Lcd1602_PrintNumber_PARM_2,#0x01
	mov	_Lcd1602_PrintNumber_PARM_3,_hum
	mov	(_Lcd1602_PrintNumber_PARM_3 + 1),(_hum + 1)
	mov	dpl,#0x08
	lcall	_Lcd1602_PrintNumber
;	./src/main.c:46: if(subzero)
	mov	a,_subzero
	orl	a,(_subzero + 1)
	jz	00103$
;	./src/main.c:47: Lcd1602_Print(4,0,"-");
	mov	_Lcd1602_Print_PARM_3,#___str_10
	mov	(_Lcd1602_Print_PARM_3 + 1),#(___str_10 >> 8)
	mov	(_Lcd1602_Print_PARM_3 + 2),#0x80
	mov	_Lcd1602_Print_PARM_2,#0x00
	mov	dpl,#0x04
;	./src/main.c:48: }
	ljmp	_Lcd1602_Print
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'show_info'
;------------------------------------------------------------
;	./src/main.c:49: void show_info()
;	-----------------------------------------
;	 function show_info
;	-----------------------------------------
_show_info:
;	./src/main.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'show_time'
;------------------------------------------------------------
;	./src/main.c:52: void show_time()
;	-----------------------------------------
;	 function show_time
;	-----------------------------------------
_show_time:
;	./src/main.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'debug'
;------------------------------------------------------------
;	./src/main.c:56: void debug()
;	-----------------------------------------
;	 function debug
;	-----------------------------------------
_debug:
;	./src/main.c:58: printf("read back time %d\r\n",time);
	push	_time
	push	(_time + 1)
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	./src/main.c:59: printf("hum: %d\r\n",hum);
	push	_hum
	push	(_hum + 1)
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	./src/main.c:60: printf("the: %d\r\n",the);
	push	_the
	push	(_the + 1)
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	./src/main.c:61: printf("thef: %d\r\n",thef);
	push	_thef
	push	(_thef + 1)
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	./src/main.c:62: printf("check: %d\r\n",check);
	push	_check
	push	(_check + 1)
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	./src/main.c:63: printf("subzero: %d\r\n",subzero);
	push	_subzero
	push	(_subzero + 1)
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	./src/main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./src/main.c:65: void main ()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:67: Wdt_Init();
	lcall	_Wdt_Init
;	./src/main.c:68: Int_Init();     	//初始化系统中断
	lcall	_Int_Init
;	./src/main.c:69: Time0_Init();		//初始化定时器0
	lcall	_Time0_Init
;	./src/main.c:70: Time1_Init();		//初始化定时器1
	lcall	_Time1_Init
;	./src/main.c:71: Serial_Init();		//串口初始化
	lcall	_Serial_Init
;	./src/main.c:72: Time2_Init();		//初始化定时器2
	lcall	_Time2_Init
;	./src/main.c:73: Lcd1602_Init();		//初始化lcd1602
	lcall	_Lcd1602_Init
;	./src/main.c:74: Lcd1602_Clean();	//清空lcd1602显存
	lcall	_Lcd1602_Clean
;	./src/main.c:75: print_boot();		//显示欢迎界面(等待DHT11初始化完成)
	lcall	_print_boot
;	./src/main.c:76: Boot_Test();		//开机自检
	lcall	_Boot_Test
;	./src/main.c:77: while(1){
00104$:
;	./src/main.c:78: Wdt_Clean();
	lcall	_Wdt_Clean
;	./src/main.c:79: if(0==DHT11_Read())
	lcall	_DHT11_Read
	mov	a,dpl
	jnz	00102$
;	./src/main.c:81: Lcd1602_Init();
	lcall	_Lcd1602_Init
;	./src/main.c:82: Lcd1602_Clean();	
	lcall	_Lcd1602_Clean
;	./src/main.c:83: show_base();
	lcall	_show_base
;	./src/main.c:84: show_data();
	lcall	_show_data
;	./src/main.c:85: show_info();
	lcall	_show_info
00102$:
;	./src/main.c:87: show_time();
	lcall	_show_time
;	./src/main.c:88: debug();
	lcall	_debug
;	./src/main.c:89: delayms(1500);
	mov	dptr,#0x05dc
	lcall	_delayms
;	./src/main.c:91: } 
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "dht11 error ->"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "welcome to use"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "boot: Start self test[pass]"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "#####################"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "DHT11[ok]"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "WelCome Pan"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Tem:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "HR:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "%"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "-"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "read back time %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "hum: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "the: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "thef: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "check: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "subzero: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
