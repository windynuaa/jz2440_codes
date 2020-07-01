#include "main.h"

int main()
{
    uart_init();
    puts("hello 2440 \r\n");
    dim_led(0X1500);
    return 0;
}