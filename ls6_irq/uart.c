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

void test1()
{
    puts("\r\npoint a \r\n");
}

void test2()
{
    puts("\r\npoint b \r\n");
}
int putc(int c)
{
    while(!(UTRSTAT0&(1<<2)));
    UTXH0=c;
}

int getc()
{
    //char c;
    while(!(UTRSTAT0&(1)));
    //c=(char)URXH0;
    return URXH0;
}
void puts(char *s)
{
    while(*s)
    {
        putc(*s);
        s++;
    }
}

char code[]={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};

void print_hex(int num)
{
    char s[11]={'0','x',0};
    int i;
    for(i=0;i<8;i++)
    {
        s[9-i]=code[num&0xf];
        num=num>>4;
    }
    puts(s);
}


void printf(const char *format,...)
{
    va_list p;
    va_start(p,format);//得到第一个参数的存储地址
    while(*format!='\0')
    {
        if(*format=='%')
        {
            switch(*(format+1))
            {
                case 'f':break;
                case 'x':format+=2;print_hex(va_arg(p,int));break;
                case 'd':break;
                case 's':format+=2;puts(va_arg(p,char *));break;
                case 'c':format+=2;putc(va_arg(p,int));break;//
                default: break;
            }
        }
        putc(*format);
        format++;
    }
    va_end(p);
}