#ifndef INIT_H
#define INIT_H
#include "2440.h"
#include "sdram.h"

void relocate_code(int mode);
void clean_bss(void);
#endif