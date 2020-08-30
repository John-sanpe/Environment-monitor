#include "../include/main.h"
uchar WaitBusy()
{
	uchar temp=1;
	uint null=0;
	Lcd1602Port=0xff;
	Lcd1602Rw=1;
	Lcd1602Rs=0;
	while(temp==1)
	{
		Lcd1602E=1;
		temp = (Lcd1602Port>>7)&0x01;
		Lcd1602E=0;
		null++;
		if(null==0xfffe)return 1;
	}
	return 0;
}
void com(unsigned char com)
{
	WaitBusy();
	Lcd1602Rw=0;
	Lcd1602Rs=0;
  	Lcd1602E=1;
	Lcd1602Port=com;
	Lcd1602E=0;
}
void datax(unsigned char datx)
{
	WaitBusy();
	Lcd1602Rw=0;
	Lcd1602Rs=1;
	Lcd1602E=1;
	Lcd1602Port=datx;
	Lcd1602E=0;
}

void Lcd1602_Init()
{
   com(0x38);
   com(0x0c);
   com(0x01);
   com(0x06);
}

void Lcd1602_Clean()
{
  com(0x01);
}

void Lcd1602_PrintNumber(unsigned char ex,unsigned char ey,int ei)
{	
	uchar point=0x80;
	if(ey==1)point|=1<<6;
	if(ei>=10)ex--;
		com(point+ex);

	if(ei>=100)return;
	if(ei>=10)
	{
		datax(0x30+ei/10);
		datax(0x30+ei%10);
		return;
	}
		datax(0x30+ei);
}

void Lcd1602_PrintCust(unsigned char ex,unsigned char ey,char *ei)
{
	uchar point=0x80;
	com(0x40);
	for(uchar temp=0;temp<8;temp++)
	{
		datax(*(ei+temp));
	}
	if(ey==1)point|=1<<6;
		com(point+ex);
	datax(0x00);
}
void Lcd1602_Print(unsigned char ex,unsigned char ey,char *ei)
{	
	uchar point=0x80;
	if(ey==1)point|=1<<6;
		com(point+ex);
	while(*ei)	
	{
		datax(*ei);
		ei++;
	}
		
}
