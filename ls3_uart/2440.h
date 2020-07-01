#ifndef jz2440_H
#define jz2440_H

#define GPFCON  (*((volatile unsigned int*)  0x56000050))
#define GPFDAT  (*((volatile unsigned int*)  0x56000054))
#define GPHCON  (*((volatile unsigned int*)  0x56000070))
#define GPHDAT  (*((volatile unsigned int*)  0x56000074))
#define GPHUP   (*((volatile unsigned int*)  0x56000078))



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

#define UTXH0   (*((volatile unsigned char*) 0x50000020))
#define UTXH1   (*((volatile unsigned char*) 0x50004020))
#define UTXH2   (*((volatile unsigned char*) 0x50008020))

#define URXH0   (*((volatile unsigned char*) 0x50000024))
#define URXH1   (*((volatile unsigned char*) 0x50004024))
#define URXH2   (*((volatile unsigned char*) 0x50008024))

#endif