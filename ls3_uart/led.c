#include "uart.h"
#include "led.h"
void delay(int a)
{
    while (a--);
}
void init_led()
{
    GPFCON=0X1500;
}
int dim_led(int a)
{
    char c='b';
    GPFCON=a;//0X1500;
    while(1)
    {
        
        GPFDAT=0x5<<4;
        delay(100000);
        GPFDAT=0x2<<4;
        delay(100000);
        //c=getc();
        //putc(c);
        printf("asd4%c,%c,%c,%c,%c %s\n\r,%x",'x','s','s','s','x',"8908",0xabcdef);
    }
    return 1;
}

void open_led(int a)
{
    if(a)
        GPFDAT=0x2<<4;
    else
        GPFDAT=0x5<<4;
}