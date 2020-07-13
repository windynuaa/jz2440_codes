#include "2440.h"
#include "uart.h"

void init_exint0()
{
    //
    GPFCON &= 0xfffffffc;
    GPFCON |= 0x2;
    EXTINT0 = 0x4;
    //
    INTMSK &= ~(0X1);
}

void process_irq(int offset)
{   
    int temp=EINTPEND;
    printf("now the offset is %x \r\n", offset);
    EINTPEND = 1;
    INTPND = (1<<offset);
    SRCPND = (1<<offset);
    
}