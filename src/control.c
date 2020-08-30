#include "../include/main.h"

unsigned int tm;
void delayms(unsigned int ms)
{
	TL2 = 0x30;		
	TH2 = 0xF8;
	tm=ms;
	TR2=1;
	while(!(tm==0))idle();
	TR2=0;
	
}

void Int_Init()
{
	EA=1;
	ET2=1;
	ES=1;
}

void idle()
{
	PCON|=1<<0;
}

void Time0_Init()
{
	TMOD|= 0x02;
}
void Time2_Init()
{
	RCAP2L = 0x30;
	RCAP2H = 0xF8;
	TL2 = 0x30;		
	TH2 = 0xF8;
}

void delayserver() __interrupt 5
{
		tm--;
		TF2=0;
}
