#ifndef 	_MAIN_H_
#define		_MAIN_H_

#include "stdio.h"

#include "stc89.h"

#define uchar       unsigned char
#define uint        unsigned int
#define ulong       unsigned long
	
//引脚定义	  
#define   Lcd1602Rs     P2_5
#define   Lcd1602Rw	    P2_6
#define   Lcd1602E      P2_7
#define   DHT11         P2_4
#define   Lcd1602Port   P1

//阈值设置
#define dht11_threshold 50

//公用变量声明
extern uint hum,the,thef,subzero,check;

//control函数声明
void delayms(unsigned int ms);
void Int_Init(void);
void idle(void);

void Time0_Init(void);
void Time2_Init(void);

//DHT11函数声明
char DHT11_Read(void);

//serial声明函数
void Serial_Init(void);
void Time1_Init(void);
int putchar(int string);

//wdt声明函数
void Wdt_Init(void);
void Wdt_Clean(void);
uchar Wdt_Runsign(void);

//lcd1602函数声明
void Lcd1602_PrintNumber(unsigned char ex,unsigned char ey,char ei);
void Lcd1602_Print(unsigned char ex,unsigned char ey,char *ei);
void Lcd1602_PrintCust(unsigned char ex,unsigned char ey,char *ei);
void Lcd1602_Clean(void);
void Lcd1602_Init(void);
//中断声明
void Serial_Handel() __interrupt 4;
void delayserver() __interrupt 5;
#endif
