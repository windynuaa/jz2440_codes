#include "uart.h"
#include "led.h"
void delay(int a)
{
    while (a--);
}
void init_led()
{
    GPFCON |=0X1500;
}
int dim_led()
{
    while(1)
    {
        GPFDAT=0x5<<4;
        delay(100000);
        GPFDAT=0x2<<4;
        delay(100000);
    }
    return 1;
}

void open_led(int a)
{
    if(a==0)
        GPFDAT=0x1<<4;
    else if(a==1)
        GPFDAT=0x1<<5;
    else if(a==2)
        GPFDAT=0x1<<6;
    else
        GPFDAT=0;
}