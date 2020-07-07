#include "init.h"

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

void relocate_code(void)
{
	extern int code_start;
	extern int bss_end;
	volatile unsigned int *p=(volatile unsigned int *)&code_start;
	volatile unsigned int *end=(volatile unsigned int *)&bss_end;
	volatile unsigned int *src=0;
	while(p<end)
	{
		*p++=*src++;
	}
}

void clean_bss(void)
{
	extern int bss_start;
	extern int bss_end;
	volatile unsigned int *p=(volatile unsigned int *)&bss_start;
	volatile unsigned int *end=(volatile unsigned int *)&bss_end;
	while(p<=end)
	{
		*p++=0;
	}
}
int sdram_test(void)
{
	volatile unsigned char *p = (volatile unsigned char *)0x3000f000;
	int i;

	// write sdram
	for (i = 0; i < 1000; i++)
		p[i] = 0x55;

	// read sdram
	for (i = 0; i < 1000; i++)
		if (p[i] != 0x55)
			return -1;

	return 0;
}