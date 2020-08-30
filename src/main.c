#include "../include/main.h"
uint time;
static uchar load[8]={0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};
static uchar temperature[8]={0x16,0x09,0x08,0x08,0x08,0x09,0x06,0x00};
void Boot_Test()
{
	printf("welcome to use\r\n");
	if(Wdt_Runsign())printf("boot: Start self test[pass]\r\n");
	else 
	{
		printf("boot: Start self test[WDT Operation sign NG ]\r\n");
		Lcd1602_Clean();
		Lcd1602_Print(0,1,"dht11 error ->");
		delayms(2000);
	}
	printf("#####################\r\n");
	printf("DHT11[ok]\r\n");
}
void print_boot()
{
	char i= 0;
	Lcd1602_Print(i,0,"WelCome Pan");
	for(;i<16;i++)
	{
		Lcd1602_PrintCust(i,1,load);
		delayms(150);
	}
}

void show_data()
{
	Lcd1602_Print(0,0,"Tem:");
	Lcd1602_Print(7,0,".");
	Lcd1602_Print(1,1,"HR:");
	Lcd1602_Print(9,1,"%");
    
	Lcd1602_PrintCust(9,0,temperature);
    
	Lcd1602_PrintNumber(6,0,the);
	Lcd1602_PrintNumber(8,0,thef);
	Lcd1602_PrintNumber(8,1,hum);
    
	if(subzero)
		Lcd1602_Print(4,0,"-");
}
void show_time()
{
	
}
void debug()
{
	printf("read back time %d\r\n",time);
	printf("hum: %d\r\n",hum);
	printf("the: %d\r\n",the);
	printf("thef: %d\r\n",thef);
	printf("check: %d\r\n",check);
	printf("subzero: %d\r\n",subzero);
}
void main ()
{
	Wdt_Init();
	Int_Init();     	//初始化系统中断
	Time0_Init();		//初始化定时器0
	Time1_Init();		//初始化定时器1
	Serial_Init();		//串口初始化
	Time2_Init();		//初始化定时器2
  	Lcd1602_Init();		//初始化lcd1602
	Lcd1602_Clean();	//清空lcd1602显存
	print_boot();		//显示欢迎界面(等待DHT11初始化完成)
	Boot_Test();		//开机自检
	while(1){
		Wdt_Clean();
		DHT11_Read();
		Lcd1602_Init();
		Lcd1602_Clean();
		show_data();
		show_time();
		time++;
		debug();
		delayms(1500);
	}
} 
