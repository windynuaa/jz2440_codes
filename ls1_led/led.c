#include "2440.h"
int des_reg(int a,int b,int c,int d)
{
    a=0X500;
    b=0X500;
    c=0X500;
    d=0X500;
    return 0;
}
int dim_led(int a,int b,int c,int d)
{
    GPFCON=a-d;//0X1500;
    GPFDAT=b-des_reg(a,b,c,d);//0X0;
    return 1;
}

