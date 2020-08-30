#include "../include/main.h"
void Time1_Init()
{
	TMOD |= 0x20;	//设定定时器1为8位自动重装方式
	TL1 = 243;		//设定定时初值
	TH1 = 243;		//设定定时器重装值
	TR1 = 1;		//启动定时器1
}
void Serial_Init()
{
	SM0=0;
	SM1=1;
	REN=1;
	PCON|=1<<7;
}
int putchar(int string)
{
		SBUF=string;
		idle();
    return string;
}

void Serial_Handel() __interrupt 4
{
	EA=0;
	if(TI==1)
	{
		TI=0;
	}
	if(RI==1)
	{
		
		RI=0;
	}
	EA=1;
}
