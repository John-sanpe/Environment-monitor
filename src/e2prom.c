#include "../include/main.h"
#define Cmd_Idle 0
#define Cmd_Read 1
#define Cmd_Write 2
#define Cmd_Erase 3

char E2prom_Read(int add)
{
	ISP_CMD=Cmd_Read;
	ISP_ADDRH=(add>>8)&0xff;
	ISP_ADDRL=(add>>0)&0xff;
	return 0;
}
