#include "main.h"

int main()
{
    int i;
    init_led();
    //init_exint0();
    //sdram_init();
    open_led(1);
    //uart_init();
    open_led(0);
    nand_init();
    putc('A');
    puts("hello 2440 \r\n");

    nand_dump(0,6000);
    //for(i=0;i<4096;i++)
    //    printf("%x\n\r",*((int*)i));
    //printf("asd4%c,%c,%c,%c,%c %s\n\r,%x",'x','s','s','s','x',"8908",0xabcdef);
    printf("sdramtest %x\n\r",sdram_test());
    //dim_led(0X1500);
    dump_sdram(0x30000000,6000);
    dim_led();
    
    return 0;
}
