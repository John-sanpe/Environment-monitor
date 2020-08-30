#include "../include/main.h"

unsigned long mixdata;
int hum,the,thef,subzero,check;
void DHTStartDelay()
{
	unsigned char i;
	
	i = 15;
	while (--i);
}
void DHT11_Start()
{
		DHT11=0;
		delayms(20);
		DHT11=1;
		DHTStartDelay();
		while(!DHT11);
		while(DHT11);
}
void DHT11_Data()
{
	char temp;
	for(temp=0;temp<32;temp++)
		{
			TL0=0;
			while(!DHT11);
			TR0=1;
			while(DHT11);
			TR0=0;
			mixdata<<=1;
			if(TL0>dht11_threshold)mixdata|=1;
		}
	for(temp=0;temp<8;temp++)
		{
			TL0=0;
			while(!DHT11);
			TR0=1;
			while(DHT11);
			TR0=0;
			check<<=1;
			if(TL0>dht11_threshold)check|=1;
		}
}

char DHT11_Read(void)
{
	
	mixdata=0;
	check=0;
	
	DHT11_Start();
	DHT11_Data();
	
	hum=(mixdata>>24)&0xff;
	the=(mixdata>>8)&0xff;
	thef=(mixdata>>0)&0xf;
	
	subzero=(mixdata>>7)&0x1;
	
	hum+=humcompensate;
	the+=thecompensate;

	if(check!=((mixdata>>24)&0xff)+((mixdata>>16)&0xff)+((mixdata>>8)&0xff)+((mixdata>>0)&0xf))return -1;
	return 0;
}
