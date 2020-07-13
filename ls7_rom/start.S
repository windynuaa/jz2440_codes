.text
.global _start

_start:
    b reset   //  rest
reset:
    //这部分为主程序
    //关闭看门狗

    ldr r1,=0x53000000
    ldr r0,=0x0
    str r0,[r1]
    //提高时钟频率
    //fclk 400 hclk 100 pclk 50
    mrc p15,0,r0,c1,c0,0
	orr r0,r0,#0xc0000000   //R1_nF:OR:R1_iA
	mcr p15,0,r0,c1,c0,0
    ldr r1,=0x4c000014
    ldr r0,=0x5
    str r0,[r1]
    ldr r1,=0x4c000004
    ldr r0,=(92<<12)|(1<<4)|(1<<0)
    str r0,[r1]
    
    //判断启动方式
    ldr sp,=0x40000000+4096//nor
    mov r5,#1
    mov r0,#0
    ldr r1,[r0]
    ldr r2,=0x1234
    str r2,[r0]
    ldr r3,[r0]
    cmp r2,r3
    moveq sp,#4096//nand
    moveq r5,#0
    str r1,[r0]
    //设置内存
    bl sdram_init
    //重定位
    mov r0,r5
    bl relocate_code
    bl clean_bss
    bl uart_init
    ldr sp,=0x33000000
    ldr pc,=main
//死循环，防止程序跑飞.
halt:
    b halt
