#ifndef UART_H
#define UART_H
#include "2440.h"
#include "led.h"
typedef char *  va_list;
#define _INTSIZEOF(n)   ( (sizeof(n) + sizeof(int) - 1) & ~(sizeof(int) - 1) )

#define va_start(ap,v)  ( ap = (va_list)&v + _INTSIZEOF(v) )
#define va_arg(ap,t)    ( *(t *)( ap=ap + _INTSIZEOF(t), ap- _INTSIZEOF(t)) )
#define va_end(ap)      ( ap = (va_list)0 )

int putc(int c);
//int putc(char c);
void puts(char *s);
void uart_init();
void print_hex(int num);
void printf(const char *format,...);
int getc();
#endif