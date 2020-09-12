#include "../include/main.h"

unsigned int tm;
uchar    tl2rl,th2rl;

void delayms(unsigned int ms)
{
	RCAP2L = tl2rl;
	RCAP2H = th2rl;
	TL2    = tl2rl;		
	TH2    = th2rl;
	tm=ms;
	TR2=1;
	while(!(tm==0))idle();
	TR2=0;
	
}

void Int_Init()
{
	EA=1;
	ES=1;
    ET2=1;
}

void idle()
{
	PCON|=1<<0;   //cpu sleep
}

void Time0_Init()
{
	TMOD|= 0x02;
}

void Time2_Init()
{
    uint load = 65536-((stcfrequency/12)*(stcboostmode+1)/1000);
	th2rl = load/255;
	tl2rl = load%255;
    printf("%d%d\n",tl2rl,th2rl);
}

void delayserver() __interrupt 5
{
    tm--;
    TF2=0;
}
