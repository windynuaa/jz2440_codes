#include "main.h"

int main()
{
    int i;
    init_led();
    //sdram_init();
    open_led(1);
    uart_init();
    open_led(0);
    putc('A');
    puts("hello 2440 \r\n");
    
    printf("sdramtest %x\n\r",sdram_test());
    //for(i=0;i<4096;i++)
    //    printf("%x\n\r",*((int*)i));
    //printf("asd4%c,%c,%c,%c,%c %s\n\r,%x",'x','s','s','s','x',"8908",0xabcdef);
    //dim_led(0X1500);
    return 0;
}
