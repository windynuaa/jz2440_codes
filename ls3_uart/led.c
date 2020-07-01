#include "uart.h"
#include "led.h"
void delay(int a)
{
    while (a--);
}
int dim_led(int a)
{
    char c='b';
    GPFCON=a;//0X1500;
    while(1)
    {
        
        GPFDAT=0x5<<4;
        delay(10000);
        GPFDAT=0x2<<4;
        delay(10000);
        c=getc();
        putc(c);
        //puts("hello led \r\n");
    }
    return 1;
}

