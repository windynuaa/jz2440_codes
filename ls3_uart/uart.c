#include "uart.h"

void uart_init()
{
    //设置引脚复用
    GPHCON &= ~(0xa<<4);
    GPHCON |= 0xa<<4;
    //开启上拉
    GPHUP &= ~(3<<2);
    //设置波特率 115200
    UBRDIV0=26;
    //设置数据格式
    ULCON0=0x3;//8bit nopar 1stop
    //其他配置 no fifo,no modem,
    UCON0=0x5;//polling mode

}


void putc(char c)
{
    while(!(UTRSTAT0&(1<<2)));
    UTXH0=c;
}
char getc()
{
    char c;
    while(!(UTRSTAT0&(1)));
    c=(char)URXH0;
    return c;
}
void puts(char *s)
{
    while(*s)
    {
        putc(*s);
        s++;
    }
}