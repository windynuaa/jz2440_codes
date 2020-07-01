#ifndef UART_H
#define UART_H
#include "2440.h"
void putc(char c);
void puts(char *s);
void uart_init();
char getc();
#endif