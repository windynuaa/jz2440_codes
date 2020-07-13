#ifndef SDRAM_H
#define SDRAM_H

#include "2440.h"

void sdram_init(void);
int sdram_test(volatile unsigned char * addr,int len);
#endif