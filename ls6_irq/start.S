.text
.global _start

_start:
    b reset   //  rest
    ldr pc,=und_addr     //  und
    ldr pc,=swi_addr   //  software irq
    ldr pc,=reset   //  abt prefetch
    ldr pc,=reset   //  abt data
    ldr pc,=reset   //  reserved
    ldr pc,=irq_addr   //  irq
    ldr pc,=reset   //  fiq
und_addr:
    .word und
und:
    ldr sp,=0x30001000
    stmdb sp!,{r0-r12,lr}
    ldr r0,=und_string
    bl puts
    ldmia sp!,{r0-r12,pc}^ // ^ 表示将SPSR的值恢复到CPSR中
und_string:
    .string "hello und mode!"
.align 4

swi_addr:
    .word swip
swip:
    ldr sp,=0x30002000
    stmdb sp!,{r0-r12,lr}
    ldr r0,=swi_string
    bl puts
    ldmia sp!,{r0-r12,pc}^ // ^ 表示将SPSR的值恢复到CPSR中
swi_string:
    .string "hello swi mode!"
.align 4

irq_addr:
    .word irq
irq:
    ldr sp,=0x30003000
    sub lr,lr,#4
    stmdb sp!,{r0-r12,lr}
    ldr r1,=0x4A000014
    ldr r0,[r1]
    bl process_irq
    ldmia sp!,{r0-r12,pc}^ // ^ 表示将SPSR的值恢复到CPSR中
.align 4


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
    mov r0,#0
    ldr r1,[r0]
    ldr r2,=0x1234
    str r2,[r0]
    ldr r3,[r0]
    cmp r2,r3
    moveq sp,#4096//nand
    str r1,[r0]
    //设置内存
    bl sdram_init
    //重定位
    bl relocate_code
    bl clean_bss
    //
    ldr r1,=0xffffff30
    mrs r0,cpsr 
    and r0,r0,r1
    msr cpsr,r0
    bl uart_init
    mrs r0,cpsr
    bl print_hex
    bl test1
undf:
    .word 0xdeadc0de
    //c程序
    //调用c程序
    bl test2
    swi #134
    ldr pc,=main
//死循环，防止程序跑飞.
halt:
    b halt
