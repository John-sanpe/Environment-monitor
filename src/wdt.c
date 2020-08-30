#include "../include/main.h"

void Wdt_Init()
{
	WDT_CONTR|=0x01<<5;
	WDT_CONTR|=0x07<<0;
	
}
uchar Wdt_Runsign()
{
	uchar sign;
	sign=(PCON>>4)&0x01;
	PCON&=~(1<<4);
	return sign;
}
void Wdt_Clean()
{
	WDT_CONTR|=0x01<<4;
}
