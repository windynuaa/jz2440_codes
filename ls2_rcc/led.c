#include "2440.h"
void delay(int a)
{
    while (a--);
}
int dim_led(int a,int b,int c,int d)
{
    GPFCON=a;//0X1500;
    while(1)
    {
        
        GPFDAT=0x5<<4;
        delay(100000);
        GPFDAT=0x2<<4;
        delay(100000);
    }
    return 1;
}

