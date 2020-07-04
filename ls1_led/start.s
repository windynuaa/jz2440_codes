.text
.global _start

_start:
//这部分为主程序
//写0x100到控制寄存器
mov sp,#4096
ldr r1,=0x56000050
ldr r0,=0x100
str r0,[r1]
//写0x00到数据寄存器
ldr r1,=0x56000054
ldr r0,=0x00
str r0,[r1]
mov r0,#0x1100
mov r1,#0
mov r2,#0
mov r3,#0
push {r0,r1,r2,r3}
bl des_reg
pop {r0,r1,r2,r3}
//调用c程序
bl dim_led
//死循环，防止程序跑飞.
halt:
    b halt
