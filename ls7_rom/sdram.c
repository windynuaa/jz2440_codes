#include "sdram.h"
void sdram_init(void)
{
	BWSCON = 0x22000000;

	BANKCON6 = 0x18001;
	BANKCON7 = 0x18001;

	REFRESH  = 0x8404f5;

	BANKSIZE = 0xb1;

	MRSRB6   = 0x20;
	MRSRB7   = 0x20;
}

int sdram_test(volatile unsigned char * addr,int len)
{
	volatile unsigned char *p = addr;
	int i;

	// write sdram
	for (i = 0; i < len; i++)
		p[i] = 0x55;

	// read sdram
	for (i = 0; i < len; i++)
		if (p[i] != 0x55)
			return -1;

	return 0;
}

void dump_sdram(volatile unsigned int * addr,int len)
{
    int i;
    for(i=0;i<len;i++)
    {
        printf("addr %x\t %x \r\n",i++,addr[i]);	
    }
}