#ifndef jz2440_H
#define jz2440_H


#define BWSCON      (*((volatile unsigned int*)  0x48000000))   //Bus width & wait status control   
#define BANKCON0    (*((volatile unsigned int*)  0x48000004))   //Boot ROM control                  
#define BANKCON1    (*((volatile unsigned int*)  0x48000008))   //BANK1 control                     
#define BANKCON2    (*((volatile unsigned int*)  0x4800000C))   //BANK2 control                     
#define BANKCON3    (*((volatile unsigned int*)  0x48000010))   //BANK3 control                     
#define BANKCON4    (*((volatile unsigned int*)  0x48000014))   //BANK4 control                     
#define BANKCON5    (*((volatile unsigned int*)  0x48000018))   //BANK5 control                     
#define BANKCON6    (*((volatile unsigned int*)  0x4800001C))   //BANK6 control                     
#define BANKCON7    (*((volatile unsigned int*)  0x48000020))   //BANK7 control                     
#define REFRESH     (*((volatile unsigned int*)  0x48000024))   //DRAM/SDRAM refresh control        
#define BANKSIZE    (*((volatile unsigned int*)  0x48000028))   //Flexible bank size                
#define MRSRB6      (*((volatile unsigned int*)  0x4800002C))   //Mode register set for SDRAM BANK6 
#define MRSRB7      (*((volatile unsigned int*)  0x48000030))   //Mode register set for SDRAM BANK7 

#define SRCPND      (*((volatile unsigned int*)  0X4A000000))   //SOURCE PENDING (SRCPND) REGISTER
#define INTMOD      (*((volatile unsigned int*)  0X4A000004))   //INTERRUPT MODE (INTMOD) REGISTER
#define INTMSK      (*((volatile unsigned int*)  0X4A000008))   //INTERRUPT MASK (INTMSK) REGISTER
#define PRIORITY    (*((volatile unsigned int*)  0x4A00000C))   //PRIORITY REGISTER (PRIORITY)
#define INTPND      (*((volatile unsigned int*)  0X4A000010))   //INTERRUPT PENDING (INTPND) REGISTER
#define INTOFFSET   (*((volatile unsigned int*)  0x4A000014))   //INTERRUPT OFFSET (INTOFFSET) REGISTER



#define GPFCON  (*((volatile unsigned int*)  0x56000050))
#define GPFDAT  (*((volatile unsigned int*)  0x56000054))
#define GPHCON  (*((volatile unsigned int*)  0x56000070))
#define GPHDAT  (*((volatile unsigned int*)  0x56000074))
#define GPHUP   (*((volatile unsigned int*)  0x56000078))

#define EXTINT0  (*((volatile unsigned int*)  0x56000088))
#define EXTINT1  (*((volatile unsigned int*)  0x5600008c))
#define EXTINT2  (*((volatile unsigned int*)  0x56000090))


#define EINTMASK  (*((volatile unsigned int*)  0x560000a4))
#define EINTPEND  (*((volatile unsigned int*)  0x560000A8))

#define UBRDIV0 (*((volatile unsigned int*)  0x50000028))
#define UBRDIV1 (*((volatile unsigned int*)  0x50004028))
#define UBRDIV2 (*((volatile unsigned int*)  0x50008028))

#define ULCON0  (*((volatile unsigned int*)  0x50000000))
#define ULCON1  (*((volatile unsigned int*)  0x50004000))
#define ULCON2  (*((volatile unsigned int*)  0x50008000))

#define UCON0   (*((volatile unsigned int*)  0x50000004))
#define UCON1   (*((volatile unsigned int*)  0x50004004))
#define UCON2   (*((volatile unsigned int*)  0x50008004))
//UART TX/RX STATUS REGISTER
#define UTRSTAT0 (*((volatile unsigned int*) 0x50000010))
#define UTRSTAT1 (*((volatile unsigned int*) 0x50004010))
#define UTRSTAT2 (*((volatile unsigned int*) 0x50008010))
/*
一开始定义串口数据寄存器位char型，结果在赋值时遇到问题，改为int后解决

*/
#define UTXH0   (*((volatile unsigned int*) 0x50000020))
#define UTXH1   (*((volatile unsigned int*) 0x50004020))
#define UTXH2   (*((volatile unsigned int*) 0x50008020))

#define URXH0   (*((volatile unsigned int*) 0x50000024))
#define URXH1   (*((volatile unsigned int*) 0x50004024))
#define URXH2   (*((volatile unsigned int*) 0x50008024))

#endif