#include "init.h"



void relocate_code(int mode)
{
	extern int code_start;
	extern int bss_start;
	volatile unsigned int *p=(volatile unsigned int *)&code_start;
	volatile unsigned int *end=(volatile unsigned int *)&bss_start;
	volatile unsigned int *src=0;

	int len;
	len = ((int)&bss_start) - ((int)&code_start);
	if(mode == 1)
	{
		while(p<end)
		{
			*p++=*src++;
		}
	}
	else
	{
		nand_init();
		nand_read(src, p, len);
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
