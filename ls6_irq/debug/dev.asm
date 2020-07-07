
./build/dev.elf:     file format elf32-littlearm

Disassembly of section .text:

30000000 <_start>:
30000000:	ea000026 	b	300000a0 <reset>
30000004:	e59ff128 	ldr	pc, [pc, #296]	; 30000134 <halt+0x4>
30000008:	e59ff128 	ldr	pc, [pc, #296]	; 30000138 <halt+0x8>
3000000c:	e59ff128 	ldr	pc, [pc, #296]	; 3000013c <halt+0xc>
30000010:	e59ff124 	ldr	pc, [pc, #292]	; 3000013c <halt+0xc>
30000014:	e59ff120 	ldr	pc, [pc, #288]	; 3000013c <halt+0xc>
30000018:	e59ff120 	ldr	pc, [pc, #288]	; 30000140 <halt+0x10>
3000001c:	e59ff118 	ldr	pc, [pc, #280]	; 3000013c <halt+0xc>

30000020 <und_addr>:
30000020:	30000024 	.word	0x30000024

30000024 <und>:
30000024:	e59fd118 	ldr	sp, [pc, #280]	; 30000144 <halt+0x14>
30000028:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
3000002c:	e59f0114 	ldr	r0, [pc, #276]	; 30000148 <halt+0x18>
30000030:	eb0000f7 	bl	30000414 <puts>
30000034:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

30000038 <und_string>:
30000038:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416
3000003c:	6e75206f 	cdpvs	0, 7, cr2, cr5, cr15, {3}
30000040:	6f6d2064 	svcvs	0x006d2064
30000044:	00216564 	eoreq	r6, r1, r4, ror #10
30000048:	e1a00000 	nop			(mov r0,r0)
3000004c:	e1a00000 	nop			(mov r0,r0)

30000050 <swi_addr>:
30000050:	30000054 	.word	0x30000054

30000054 <swip>:
30000054:	e59fd0f0 	ldr	sp, [pc, #240]	; 3000014c <halt+0x1c>
30000058:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
3000005c:	e59f00ec 	ldr	r0, [pc, #236]	; 30000150 <halt+0x20>
30000060:	eb0000eb 	bl	30000414 <puts>
30000064:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

30000068 <swi_string>:
30000068:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416
3000006c:	7773206f 	ldrbvc	r2, [r3, -pc, rrx]!
30000070:	6f6d2069 	svcvs	0x006d2069
30000074:	00216564 	eoreq	r6, r1, r4, ror #10
30000078:	e1a00000 	nop			(mov r0,r0)
3000007c:	e1a00000 	nop			(mov r0,r0)

30000080 <irq_addr>:
30000080:	30000084 	.word	0x30000084

30000084 <irq>:
30000084:	e59fd0c8 	ldr	sp, [pc, #200]	; 30000154 <halt+0x24>
30000088:	e24ee004 	sub	lr, lr, #4	; 0x4
3000008c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
30000090:	e59f10c0 	ldr	r1, [pc, #192]	; 30000158 <halt+0x28>
30000094:	e5910000 	ldr	r0, [r1]
30000098:	eb000279 	bl	30000a84 <process_irq>
3000009c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

300000a0 <reset>:
300000a0:	e3a01453 	mov	r1, #1392508928	; 0x53000000
300000a4:	e3a00000 	mov	r0, #0	; 0x0
300000a8:	e5810000 	str	r0, [r1]
300000ac:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
300000b0:	e3800103 	orr	r0, r0, #-1073741824	; 0xc0000000
300000b4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
300000b8:	e59f109c 	ldr	r1, [pc, #156]	; 3000015c <halt+0x2c>
300000bc:	e3a00005 	mov	r0, #5	; 0x5
300000c0:	e5810000 	str	r0, [r1]
300000c4:	e59f1094 	ldr	r1, [pc, #148]	; 30000160 <halt+0x30>
300000c8:	e59f0094 	ldr	r0, [pc, #148]	; 30000164 <halt+0x34>
300000cc:	e5810000 	str	r0, [r1]
300000d0:	e59fd090 	ldr	sp, [pc, #144]	; 30000168 <halt+0x38>
300000d4:	e3a00000 	mov	r0, #0	; 0x0
300000d8:	e5901000 	ldr	r1, [r0]
300000dc:	e59f2088 	ldr	r2, [pc, #136]	; 3000016c <halt+0x3c>
300000e0:	e5802000 	str	r2, [r0]
300000e4:	e5903000 	ldr	r3, [r0]
300000e8:	e1520003 	cmp	r2, r3
300000ec:	03a0da01 	moveq	sp, #4096	; 0x1000
300000f0:	e5801000 	str	r1, [r0]
300000f4:	eb0001ba 	bl	300007e4 <sdram_init>
300000f8:	eb0001dd 	bl	30000874 <relocate_code>
300000fc:	eb0001f9 	bl	300008e8 <clean_bss>
30000100:	e3e010cf 	mvn	r1, #207	; 0xcf
30000104:	e10f0000 	mrs	r0, CPSR
30000108:	e0000001 	and	r0, r0, r1
3000010c:	e129f000 	msr	CPSR_fc, r0
30000110:	eb00006b 	bl	300002c4 <uart_init>
30000114:	e10f0000 	mrs	r0, CPSR
30000118:	eb0000d0 	bl	30000460 <print_hex>
3000011c:	eb00008c 	bl	30000354 <test1>

30000120 <undf>:
30000120:	deadc0de 	.word	0xdeadc0de
30000124:	eb000092 	bl	30000374 <test2>
30000128:	ef000086 	svc	0x00000086
3000012c:	e59ff03c 	ldr	pc, [pc, #60]	; 30000170 <halt+0x40>

30000130 <halt>:
30000130:	eafffffe 	b	30000130 <halt>
30000134:	30000020 	.word	0x30000020
30000138:	30000050 	.word	0x30000050
3000013c:	300000a0 	.word	0x300000a0
30000140:	30000080 	.word	0x30000080
30000144:	30001000 	.word	0x30001000
30000148:	30000038 	.word	0x30000038
3000014c:	30002000 	.word	0x30002000
30000150:	30000068 	.word	0x30000068
30000154:	30003000 	.word	0x30003000
30000158:	4a000014 	.word	0x4a000014
3000015c:	4c000014 	.word	0x4c000014
30000160:	4c000004 	.word	0x4c000004
30000164:	0005c011 	.word	0x0005c011
30000168:	40001000 	.word	0x40001000
3000016c:	00001234 	.word	0x00001234
30000170:	3000077c 	.word	0x3000077c
30000174:	e1a00000 	.word	0xe1a00000
30000178:	e1a00000 	.word	0xe1a00000
3000017c:	e1a00000 	.word	0xe1a00000

30000180 <delay>:
30000180:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000184:	e28db000 	add	fp, sp, #0	; 0x0
30000188:	e24dd00c 	sub	sp, sp, #12	; 0xc
3000018c:	e50b0008 	str	r0, [fp, #-8]
30000190:	e51b3008 	ldr	r3, [fp, #-8]
30000194:	e3530000 	cmp	r3, #0	; 0x0
30000198:	03a03000 	moveq	r3, #0	; 0x0
3000019c:	13a03001 	movne	r3, #1	; 0x1
300001a0:	e20320ff 	and	r2, r3, #255	; 0xff
300001a4:	e51b3008 	ldr	r3, [fp, #-8]
300001a8:	e2433001 	sub	r3, r3, #1	; 0x1
300001ac:	e50b3008 	str	r3, [fp, #-8]
300001b0:	e3520000 	cmp	r2, #0	; 0x0
300001b4:	1afffff5 	bne	30000190 <delay+0x10>
300001b8:	e28bd000 	add	sp, fp, #0	; 0x0
300001bc:	e8bd0800 	pop	{fp}
300001c0:	e12fff1e 	bx	lr

300001c4 <init_led>:
300001c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300001c8:	e28db000 	add	fp, sp, #0	; 0x0
300001cc:	e3a02456 	mov	r2, #1442840576	; 0x56000000
300001d0:	e2822050 	add	r2, r2, #80	; 0x50
300001d4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300001d8:	e2833050 	add	r3, r3, #80	; 0x50
300001dc:	e5933000 	ldr	r3, [r3]
300001e0:	e3833c15 	orr	r3, r3, #5376	; 0x1500
300001e4:	e5823000 	str	r3, [r2]
300001e8:	e28bd000 	add	sp, fp, #0	; 0x0
300001ec:	e8bd0800 	pop	{fp}
300001f0:	e12fff1e 	bx	lr

300001f4 <dim_led>:
300001f4:	e92d4800 	push	{fp, lr}
300001f8:	e28db004 	add	fp, sp, #4	; 0x4
300001fc:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000200:	e2833054 	add	r3, r3, #84	; 0x54
30000204:	e3a02050 	mov	r2, #80	; 0x50
30000208:	e5832000 	str	r2, [r3]
3000020c:	e3a00b61 	mov	r0, #99328	; 0x18400
30000210:	e2800e2a 	add	r0, r0, #672	; 0x2a0
30000214:	ebffffd9 	bl	30000180 <delay>
30000218:	e3a03456 	mov	r3, #1442840576	; 0x56000000
3000021c:	e2833054 	add	r3, r3, #84	; 0x54
30000220:	e3a02020 	mov	r2, #32	; 0x20
30000224:	e5832000 	str	r2, [r3]
30000228:	e3a00b61 	mov	r0, #99328	; 0x18400
3000022c:	e2800e2a 	add	r0, r0, #672	; 0x2a0
30000230:	ebffffd2 	bl	30000180 <delay>
30000234:	eafffff0 	b	300001fc <dim_led+0x8>

30000238 <open_led>:
30000238:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
3000023c:	e28db000 	add	fp, sp, #0	; 0x0
30000240:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000244:	e50b0008 	str	r0, [fp, #-8]
30000248:	e51b3008 	ldr	r3, [fp, #-8]
3000024c:	e3530000 	cmp	r3, #0	; 0x0
30000250:	1a000004 	bne	30000268 <open_led+0x30>
30000254:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000258:	e2833054 	add	r3, r3, #84	; 0x54
3000025c:	e3a02010 	mov	r2, #16	; 0x10
30000260:	e5832000 	str	r2, [r3]
30000264:	ea000013 	b	300002b8 <open_led+0x80>
30000268:	e51b3008 	ldr	r3, [fp, #-8]
3000026c:	e3530001 	cmp	r3, #1	; 0x1
30000270:	1a000004 	bne	30000288 <open_led+0x50>
30000274:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000278:	e2833054 	add	r3, r3, #84	; 0x54
3000027c:	e3a02020 	mov	r2, #32	; 0x20
30000280:	e5832000 	str	r2, [r3]
30000284:	ea00000b 	b	300002b8 <open_led+0x80>
30000288:	e51b3008 	ldr	r3, [fp, #-8]
3000028c:	e3530002 	cmp	r3, #2	; 0x2
30000290:	1a000004 	bne	300002a8 <open_led+0x70>
30000294:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000298:	e2833054 	add	r3, r3, #84	; 0x54
3000029c:	e3a02040 	mov	r2, #64	; 0x40
300002a0:	e5832000 	str	r2, [r3]
300002a4:	ea000003 	b	300002b8 <open_led+0x80>
300002a8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300002ac:	e2833054 	add	r3, r3, #84	; 0x54
300002b0:	e3a02000 	mov	r2, #0	; 0x0
300002b4:	e5832000 	str	r2, [r3]
300002b8:	e28bd000 	add	sp, fp, #0	; 0x0
300002bc:	e8bd0800 	pop	{fp}
300002c0:	e12fff1e 	bx	lr

300002c4 <uart_init>:
300002c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300002c8:	e28db000 	add	fp, sp, #0	; 0x0
300002cc:	e3a02456 	mov	r2, #1442840576	; 0x56000000
300002d0:	e2822070 	add	r2, r2, #112	; 0x70
300002d4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300002d8:	e2833070 	add	r3, r3, #112	; 0x70
300002dc:	e5933000 	ldr	r3, [r3]
300002e0:	e3c330a0 	bic	r3, r3, #160	; 0xa0
300002e4:	e5823000 	str	r3, [r2]
300002e8:	e3a02456 	mov	r2, #1442840576	; 0x56000000
300002ec:	e2822070 	add	r2, r2, #112	; 0x70
300002f0:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300002f4:	e2833070 	add	r3, r3, #112	; 0x70
300002f8:	e5933000 	ldr	r3, [r3]
300002fc:	e38330a0 	orr	r3, r3, #160	; 0xa0
30000300:	e5823000 	str	r3, [r2]
30000304:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000308:	e2822078 	add	r2, r2, #120	; 0x78
3000030c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000310:	e2833078 	add	r3, r3, #120	; 0x78
30000314:	e5933000 	ldr	r3, [r3]
30000318:	e3c3300c 	bic	r3, r3, #12	; 0xc
3000031c:	e5823000 	str	r3, [r2]
30000320:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000324:	e2833028 	add	r3, r3, #40	; 0x28
30000328:	e3a0201a 	mov	r2, #26	; 0x1a
3000032c:	e5832000 	str	r2, [r3]
30000330:	e3a02205 	mov	r2, #1342177280	; 0x50000000
30000334:	e3a03003 	mov	r3, #3	; 0x3
30000338:	e5823000 	str	r3, [r2]
3000033c:	e3a02245 	mov	r2, #1342177284	; 0x50000004
30000340:	e3a03005 	mov	r3, #5	; 0x5
30000344:	e5823000 	str	r3, [r2]
30000348:	e28bd000 	add	sp, fp, #0	; 0x0
3000034c:	e8bd0800 	pop	{fp}
30000350:	e12fff1e 	bx	lr

30000354 <test1>:
30000354:	e92d4800 	push	{fp, lr}
30000358:	e28db004 	add	fp, sp, #4	; 0x4
3000035c:	e59f000c 	ldr	r0, [pc, #12]	; 30000370 <test1+0x1c>
30000360:	eb00002b 	bl	30000414 <puts>
30000364:	e24bd004 	sub	sp, fp, #4	; 0x4
30000368:	e8bd4800 	pop	{fp, lr}
3000036c:	e12fff1e 	bx	lr
30000370:	30000afc 	.word	0x30000afc

30000374 <test2>:
30000374:	e92d4800 	push	{fp, lr}
30000378:	e28db004 	add	fp, sp, #4	; 0x4
3000037c:	e59f000c 	ldr	r0, [pc, #12]	; 30000390 <test2+0x1c>
30000380:	eb000023 	bl	30000414 <puts>
30000384:	e24bd004 	sub	sp, fp, #4	; 0x4
30000388:	e8bd4800 	pop	{fp, lr}
3000038c:	e12fff1e 	bx	lr
30000390:	30000b0c 	.word	0x30000b0c

30000394 <putc>:
30000394:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000398:	e28db000 	add	fp, sp, #0	; 0x0
3000039c:	e24dd00c 	sub	sp, sp, #12	; 0xc
300003a0:	e50b0008 	str	r0, [fp, #-8]
300003a4:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300003a8:	e2833010 	add	r3, r3, #16	; 0x10
300003ac:	e5933000 	ldr	r3, [r3]
300003b0:	e2033004 	and	r3, r3, #4	; 0x4
300003b4:	e3530000 	cmp	r3, #0	; 0x0
300003b8:	0afffff9 	beq	300003a4 <putc+0x10>
300003bc:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300003c0:	e2833020 	add	r3, r3, #32	; 0x20
300003c4:	e51b2008 	ldr	r2, [fp, #-8]
300003c8:	e5832000 	str	r2, [r3]
300003cc:	e28bd000 	add	sp, fp, #0	; 0x0
300003d0:	e8bd0800 	pop	{fp}
300003d4:	e12fff1e 	bx	lr

300003d8 <getc>:
300003d8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300003dc:	e28db000 	add	fp, sp, #0	; 0x0
300003e0:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300003e4:	e2833010 	add	r3, r3, #16	; 0x10
300003e8:	e5933000 	ldr	r3, [r3]
300003ec:	e2033001 	and	r3, r3, #1	; 0x1
300003f0:	e3530000 	cmp	r3, #0	; 0x0
300003f4:	0afffff9 	beq	300003e0 <getc+0x8>
300003f8:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300003fc:	e2833024 	add	r3, r3, #36	; 0x24
30000400:	e5933000 	ldr	r3, [r3]
30000404:	e1a00003 	mov	r0, r3
30000408:	e28bd000 	add	sp, fp, #0	; 0x0
3000040c:	e8bd0800 	pop	{fp}
30000410:	e12fff1e 	bx	lr

30000414 <puts>:
30000414:	e92d4800 	push	{fp, lr}
30000418:	e28db004 	add	fp, sp, #4	; 0x4
3000041c:	e24dd008 	sub	sp, sp, #8	; 0x8
30000420:	e50b0008 	str	r0, [fp, #-8]
30000424:	ea000006 	b	30000444 <puts+0x30>
30000428:	e51b3008 	ldr	r3, [fp, #-8]
3000042c:	e5d33000 	ldrb	r3, [r3]
30000430:	e1a00003 	mov	r0, r3
30000434:	ebffffd6 	bl	30000394 <putc>
30000438:	e51b3008 	ldr	r3, [fp, #-8]
3000043c:	e2833001 	add	r3, r3, #1	; 0x1
30000440:	e50b3008 	str	r3, [fp, #-8]
30000444:	e51b3008 	ldr	r3, [fp, #-8]
30000448:	e5d33000 	ldrb	r3, [r3]
3000044c:	e3530000 	cmp	r3, #0	; 0x0
30000450:	1afffff4 	bne	30000428 <puts+0x14>
30000454:	e24bd004 	sub	sp, fp, #4	; 0x4
30000458:	e8bd4800 	pop	{fp, lr}
3000045c:	e12fff1e 	bx	lr

30000460 <print_hex>:
30000460:	e92d4800 	push	{fp, lr}
30000464:	e28db004 	add	fp, sp, #4	; 0x4
30000468:	e24dd018 	sub	sp, sp, #24	; 0x18
3000046c:	e50b0018 	str	r0, [fp, #-24]
30000470:	e24b2013 	sub	r2, fp, #19	; 0x13
30000474:	e50b201c 	str	r2, [fp, #-28]
30000478:	e3a03000 	mov	r3, #0	; 0x0
3000047c:	e51bc01c 	ldr	ip, [fp, #-28]
30000480:	e5cc3000 	strb	r3, [ip]
30000484:	e51b201c 	ldr	r2, [fp, #-28]
30000488:	e2822001 	add	r2, r2, #1	; 0x1
3000048c:	e50b201c 	str	r2, [fp, #-28]
30000490:	e3a03000 	mov	r3, #0	; 0x0
30000494:	e51bc01c 	ldr	ip, [fp, #-28]
30000498:	e5cc3000 	strb	r3, [ip]
3000049c:	e51b201c 	ldr	r2, [fp, #-28]
300004a0:	e2822001 	add	r2, r2, #1	; 0x1
300004a4:	e50b201c 	str	r2, [fp, #-28]
300004a8:	e3a03000 	mov	r3, #0	; 0x0
300004ac:	e51bc01c 	ldr	ip, [fp, #-28]
300004b0:	e5cc3000 	strb	r3, [ip]
300004b4:	e51b201c 	ldr	r2, [fp, #-28]
300004b8:	e2822001 	add	r2, r2, #1	; 0x1
300004bc:	e50b201c 	str	r2, [fp, #-28]
300004c0:	e3a03000 	mov	r3, #0	; 0x0
300004c4:	e51bc01c 	ldr	ip, [fp, #-28]
300004c8:	e5cc3000 	strb	r3, [ip]
300004cc:	e51b201c 	ldr	r2, [fp, #-28]
300004d0:	e2822001 	add	r2, r2, #1	; 0x1
300004d4:	e50b201c 	str	r2, [fp, #-28]
300004d8:	e3a03000 	mov	r3, #0	; 0x0
300004dc:	e51bc01c 	ldr	ip, [fp, #-28]
300004e0:	e5cc3000 	strb	r3, [ip]
300004e4:	e51b201c 	ldr	r2, [fp, #-28]
300004e8:	e2822001 	add	r2, r2, #1	; 0x1
300004ec:	e50b201c 	str	r2, [fp, #-28]
300004f0:	e3a03000 	mov	r3, #0	; 0x0
300004f4:	e51bc01c 	ldr	ip, [fp, #-28]
300004f8:	e5cc3000 	strb	r3, [ip]
300004fc:	e51b201c 	ldr	r2, [fp, #-28]
30000500:	e2822001 	add	r2, r2, #1	; 0x1
30000504:	e50b201c 	str	r2, [fp, #-28]
30000508:	e3a03000 	mov	r3, #0	; 0x0
3000050c:	e51bc01c 	ldr	ip, [fp, #-28]
30000510:	e5cc3000 	strb	r3, [ip]
30000514:	e51b201c 	ldr	r2, [fp, #-28]
30000518:	e2822001 	add	r2, r2, #1	; 0x1
3000051c:	e50b201c 	str	r2, [fp, #-28]
30000520:	e3a03000 	mov	r3, #0	; 0x0
30000524:	e51bc01c 	ldr	ip, [fp, #-28]
30000528:	e5cc3000 	strb	r3, [ip]
3000052c:	e51b201c 	ldr	r2, [fp, #-28]
30000530:	e2822001 	add	r2, r2, #1	; 0x1
30000534:	e50b201c 	str	r2, [fp, #-28]
30000538:	e3a03000 	mov	r3, #0	; 0x0
3000053c:	e51bc01c 	ldr	ip, [fp, #-28]
30000540:	e5cc3000 	strb	r3, [ip]
30000544:	e51b201c 	ldr	r2, [fp, #-28]
30000548:	e2822001 	add	r2, r2, #1	; 0x1
3000054c:	e50b201c 	str	r2, [fp, #-28]
30000550:	e3a03000 	mov	r3, #0	; 0x0
30000554:	e51bc01c 	ldr	ip, [fp, #-28]
30000558:	e5cc3000 	strb	r3, [ip]
3000055c:	e51b201c 	ldr	r2, [fp, #-28]
30000560:	e2822001 	add	r2, r2, #1	; 0x1
30000564:	e50b201c 	str	r2, [fp, #-28]
30000568:	e3a03000 	mov	r3, #0	; 0x0
3000056c:	e51bc01c 	ldr	ip, [fp, #-28]
30000570:	e5cc3000 	strb	r3, [ip]
30000574:	e51b201c 	ldr	r2, [fp, #-28]
30000578:	e2822001 	add	r2, r2, #1	; 0x1
3000057c:	e3a03030 	mov	r3, #48	; 0x30
30000580:	e54b3013 	strb	r3, [fp, #-19]
30000584:	e3a03078 	mov	r3, #120	; 0x78
30000588:	e54b3012 	strb	r3, [fp, #-18]
3000058c:	e3a03000 	mov	r3, #0	; 0x0
30000590:	e50b3008 	str	r3, [fp, #-8]
30000594:	ea000011 	b	300005e0 <print_hex+0x180>
30000598:	e51b3008 	ldr	r3, [fp, #-8]
3000059c:	e2630009 	rsb	r0, r3, #9	; 0x9
300005a0:	e51b3018 	ldr	r3, [fp, #-24]
300005a4:	e203200f 	and	r2, r3, #15	; 0xf
300005a8:	e59f3054 	ldr	r3, [pc, #84]	; 30000604 <print_hex+0x1a4>
300005ac:	e7d31002 	ldrb	r1, [r3, r2]
300005b0:	e3e0200e 	mvn	r2, #14	; 0xe
300005b4:	e24bc004 	sub	ip, fp, #4	; 0x4
300005b8:	e08c3000 	add	r3, ip, r0
300005bc:	e0832002 	add	r2, r3, r2
300005c0:	e1a03001 	mov	r3, r1
300005c4:	e5c23000 	strb	r3, [r2]
300005c8:	e51b3018 	ldr	r3, [fp, #-24]
300005cc:	e1a03243 	asr	r3, r3, #4
300005d0:	e50b3018 	str	r3, [fp, #-24]
300005d4:	e51b3008 	ldr	r3, [fp, #-8]
300005d8:	e2833001 	add	r3, r3, #1	; 0x1
300005dc:	e50b3008 	str	r3, [fp, #-8]
300005e0:	e51b3008 	ldr	r3, [fp, #-8]
300005e4:	e3530007 	cmp	r3, #7	; 0x7
300005e8:	daffffea 	ble	30000598 <print_hex+0x138>
300005ec:	e24b3013 	sub	r3, fp, #19	; 0x13
300005f0:	e1a00003 	mov	r0, r3
300005f4:	ebffff86 	bl	30000414 <puts>
300005f8:	e24bd004 	sub	sp, fp, #4	; 0x4
300005fc:	e8bd4800 	pop	{fp, lr}
30000600:	e12fff1e 	bx	lr
30000604:	30000b54 	.word	0x30000b54

30000608 <printf>:
30000608:	e92d000f 	push	{r0, r1, r2, r3}
3000060c:	e92d4800 	push	{fp, lr}
30000610:	e28db004 	add	fp, sp, #4	; 0x4
30000614:	e24dd008 	sub	sp, sp, #8	; 0x8
30000618:	e28b3004 	add	r3, fp, #4	; 0x4
3000061c:	e2833004 	add	r3, r3, #4	; 0x4
30000620:	e50b3008 	str	r3, [fp, #-8]
30000624:	ea00004a 	b	30000754 <printf+0x14c>
30000628:	e59b3004 	ldr	r3, [fp, #4]
3000062c:	e5d33000 	ldrb	r3, [r3]
30000630:	e3530025 	cmp	r3, #37	; 0x25
30000634:	1a00003f 	bne	30000738 <printf+0x130>
30000638:	e59b3004 	ldr	r3, [fp, #4]
3000063c:	e2833001 	add	r3, r3, #1	; 0x1
30000640:	e5d33000 	ldrb	r3, [r3]
30000644:	e2433063 	sub	r3, r3, #99	; 0x63
30000648:	e3530015 	cmp	r3, #21	; 0x15
3000064c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
30000650:	ea000038 	b	30000738 <printf+0x130>
30000654:	3000070c 	.word	0x3000070c
30000658:	30000738 	.word	0x30000738
3000065c:	30000738 	.word	0x30000738
30000660:	30000738 	.word	0x30000738
30000664:	30000738 	.word	0x30000738
30000668:	30000738 	.word	0x30000738
3000066c:	30000738 	.word	0x30000738
30000670:	30000738 	.word	0x30000738
30000674:	30000738 	.word	0x30000738
30000678:	30000738 	.word	0x30000738
3000067c:	30000738 	.word	0x30000738
30000680:	30000738 	.word	0x30000738
30000684:	30000738 	.word	0x30000738
30000688:	30000738 	.word	0x30000738
3000068c:	30000738 	.word	0x30000738
30000690:	30000738 	.word	0x30000738
30000694:	300006dc 	.word	0x300006dc
30000698:	30000738 	.word	0x30000738
3000069c:	30000738 	.word	0x30000738
300006a0:	30000738 	.word	0x30000738
300006a4:	30000738 	.word	0x30000738
300006a8:	300006ac 	.word	0x300006ac
300006ac:	e59b3004 	ldr	r3, [fp, #4]
300006b0:	e2833002 	add	r3, r3, #2	; 0x2
300006b4:	e58b3004 	str	r3, [fp, #4]
300006b8:	e51b3008 	ldr	r3, [fp, #-8]
300006bc:	e2833004 	add	r3, r3, #4	; 0x4
300006c0:	e50b3008 	str	r3, [fp, #-8]
300006c4:	e51b3008 	ldr	r3, [fp, #-8]
300006c8:	e2433004 	sub	r3, r3, #4	; 0x4
300006cc:	e5933000 	ldr	r3, [r3]
300006d0:	e1a00003 	mov	r0, r3
300006d4:	ebffff61 	bl	30000460 <print_hex>
300006d8:	ea000016 	b	30000738 <printf+0x130>
300006dc:	e59b3004 	ldr	r3, [fp, #4]
300006e0:	e2833002 	add	r3, r3, #2	; 0x2
300006e4:	e58b3004 	str	r3, [fp, #4]
300006e8:	e51b3008 	ldr	r3, [fp, #-8]
300006ec:	e2833004 	add	r3, r3, #4	; 0x4
300006f0:	e50b3008 	str	r3, [fp, #-8]
300006f4:	e51b3008 	ldr	r3, [fp, #-8]
300006f8:	e2433004 	sub	r3, r3, #4	; 0x4
300006fc:	e5933000 	ldr	r3, [r3]
30000700:	e1a00003 	mov	r0, r3
30000704:	ebffff42 	bl	30000414 <puts>
30000708:	ea00000a 	b	30000738 <printf+0x130>
3000070c:	e59b3004 	ldr	r3, [fp, #4]
30000710:	e2833002 	add	r3, r3, #2	; 0x2
30000714:	e58b3004 	str	r3, [fp, #4]
30000718:	e51b3008 	ldr	r3, [fp, #-8]
3000071c:	e2833004 	add	r3, r3, #4	; 0x4
30000720:	e50b3008 	str	r3, [fp, #-8]
30000724:	e51b3008 	ldr	r3, [fp, #-8]
30000728:	e2433004 	sub	r3, r3, #4	; 0x4
3000072c:	e5933000 	ldr	r3, [r3]
30000730:	e1a00003 	mov	r0, r3
30000734:	ebffff16 	bl	30000394 <putc>
30000738:	e59b3004 	ldr	r3, [fp, #4]
3000073c:	e5d33000 	ldrb	r3, [r3]
30000740:	e1a00003 	mov	r0, r3
30000744:	ebffff12 	bl	30000394 <putc>
30000748:	e59b3004 	ldr	r3, [fp, #4]
3000074c:	e2833001 	add	r3, r3, #1	; 0x1
30000750:	e58b3004 	str	r3, [fp, #4]
30000754:	e59b3004 	ldr	r3, [fp, #4]
30000758:	e5d33000 	ldrb	r3, [r3]
3000075c:	e3530000 	cmp	r3, #0	; 0x0
30000760:	1affffb0 	bne	30000628 <printf+0x20>
30000764:	e3a03000 	mov	r3, #0	; 0x0
30000768:	e50b3008 	str	r3, [fp, #-8]
3000076c:	e24bd004 	sub	sp, fp, #4	; 0x4
30000770:	e8bd4800 	pop	{fp, lr}
30000774:	e28dd010 	add	sp, sp, #16	; 0x10
30000778:	e12fff1e 	bx	lr

3000077c <main>:
3000077c:	e92d4800 	push	{fp, lr}
30000780:	e28db004 	add	fp, sp, #4	; 0x4
30000784:	e24dd008 	sub	sp, sp, #8	; 0x8
30000788:	ebfffe8d 	bl	300001c4 <init_led>
3000078c:	eb00009e 	bl	30000a0c <init_exint0>
30000790:	e3a00001 	mov	r0, #1	; 0x1
30000794:	ebfffea7 	bl	30000238 <open_led>
30000798:	e3a00000 	mov	r0, #0	; 0x0
3000079c:	ebfffea5 	bl	30000238 <open_led>
300007a0:	e3a00041 	mov	r0, #65	; 0x41
300007a4:	ebfffefa 	bl	30000394 <putc>
300007a8:	e59f002c 	ldr	r0, [pc, #44]	; 300007dc <main+0x60>
300007ac:	ebffff18 	bl	30000414 <puts>
300007b0:	eb000063 	bl	30000944 <sdram_test>
300007b4:	e1a03000 	mov	r3, r0
300007b8:	e59f0020 	ldr	r0, [pc, #32]	; 300007e0 <main+0x64>
300007bc:	e1a01003 	mov	r1, r3
300007c0:	ebffff90 	bl	30000608 <printf>
300007c4:	ebfffe8a 	bl	300001f4 <dim_led>
300007c8:	e3a03000 	mov	r3, #0	; 0x0
300007cc:	e1a00003 	mov	r0, r3
300007d0:	e24bd004 	sub	sp, fp, #4	; 0x4
300007d4:	e8bd4800 	pop	{fp, lr}
300007d8:	e12fff1e 	bx	lr
300007dc:	30000b1c 	.word	0x30000b1c
300007e0:	30000b2c 	.word	0x30000b2c

300007e4 <sdram_init>:
300007e4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300007e8:	e28db000 	add	fp, sp, #0	; 0x0
300007ec:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300007f0:	e3a03422 	mov	r3, #570425344	; 0x22000000
300007f4:	e5823000 	str	r3, [r2]
300007f8:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300007fc:	e282201c 	add	r2, r2, #28	; 0x1c
30000800:	e3a03906 	mov	r3, #98304	; 0x18000
30000804:	e2833001 	add	r3, r3, #1	; 0x1
30000808:	e5823000 	str	r3, [r2]
3000080c:	e3a02312 	mov	r2, #1207959552	; 0x48000000
30000810:	e2822020 	add	r2, r2, #32	; 0x20
30000814:	e3a03906 	mov	r3, #98304	; 0x18000
30000818:	e2833001 	add	r3, r3, #1	; 0x1
3000081c:	e5823000 	str	r3, [r2]
30000820:	e3a02312 	mov	r2, #1207959552	; 0x48000000
30000824:	e2822024 	add	r2, r2, #36	; 0x24
30000828:	e3a03721 	mov	r3, #8650752	; 0x840000
3000082c:	e2833e4f 	add	r3, r3, #1264	; 0x4f0
30000830:	e2833005 	add	r3, r3, #5	; 0x5
30000834:	e5823000 	str	r3, [r2]
30000838:	e3a03312 	mov	r3, #1207959552	; 0x48000000
3000083c:	e2833028 	add	r3, r3, #40	; 0x28
30000840:	e3a020b1 	mov	r2, #177	; 0xb1
30000844:	e5832000 	str	r2, [r3]
30000848:	e3a03312 	mov	r3, #1207959552	; 0x48000000
3000084c:	e283302c 	add	r3, r3, #44	; 0x2c
30000850:	e3a02020 	mov	r2, #32	; 0x20
30000854:	e5832000 	str	r2, [r3]
30000858:	e3a03312 	mov	r3, #1207959552	; 0x48000000
3000085c:	e2833030 	add	r3, r3, #48	; 0x30
30000860:	e3a02020 	mov	r2, #32	; 0x20
30000864:	e5832000 	str	r2, [r3]
30000868:	e28bd000 	add	sp, fp, #0	; 0x0
3000086c:	e8bd0800 	pop	{fp}
30000870:	e12fff1e 	bx	lr

30000874 <relocate_code>:
30000874:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000878:	e28db000 	add	fp, sp, #0	; 0x0
3000087c:	e24dd014 	sub	sp, sp, #20	; 0x14
30000880:	e59f3058 	ldr	r3, [pc, #88]	; 300008e0 <relocate_code+0x6c>
30000884:	e50b3010 	str	r3, [fp, #-16]
30000888:	e59f3054 	ldr	r3, [pc, #84]	; 300008e4 <relocate_code+0x70>
3000088c:	e50b300c 	str	r3, [fp, #-12]
30000890:	e3a03000 	mov	r3, #0	; 0x0
30000894:	e50b3008 	str	r3, [fp, #-8]
30000898:	ea000009 	b	300008c4 <relocate_code+0x50>
3000089c:	e51b3008 	ldr	r3, [fp, #-8]
300008a0:	e5932000 	ldr	r2, [r3]
300008a4:	e51b3010 	ldr	r3, [fp, #-16]
300008a8:	e5832000 	str	r2, [r3]
300008ac:	e51b3010 	ldr	r3, [fp, #-16]
300008b0:	e2833004 	add	r3, r3, #4	; 0x4
300008b4:	e50b3010 	str	r3, [fp, #-16]
300008b8:	e51b3008 	ldr	r3, [fp, #-8]
300008bc:	e2833004 	add	r3, r3, #4	; 0x4
300008c0:	e50b3008 	str	r3, [fp, #-8]
300008c4:	e51b2010 	ldr	r2, [fp, #-16]
300008c8:	e51b300c 	ldr	r3, [fp, #-12]
300008cc:	e1520003 	cmp	r2, r3
300008d0:	3afffff1 	bcc	3000089c <relocate_code+0x28>
300008d4:	e28bd000 	add	sp, fp, #0	; 0x0
300008d8:	e8bd0800 	pop	{fp}
300008dc:	e12fff1e 	bx	lr
300008e0:	30000000 	.word	0x30000000
300008e4:	30000b64 	.word	0x30000b64

300008e8 <clean_bss>:
300008e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300008ec:	e28db000 	add	fp, sp, #0	; 0x0
300008f0:	e24dd00c 	sub	sp, sp, #12	; 0xc
300008f4:	e59f3040 	ldr	r3, [pc, #64]	; 3000093c <clean_bss+0x54>
300008f8:	e50b300c 	str	r3, [fp, #-12]
300008fc:	e59f303c 	ldr	r3, [pc, #60]	; 30000940 <clean_bss+0x58>
30000900:	e50b3008 	str	r3, [fp, #-8]
30000904:	ea000005 	b	30000920 <clean_bss+0x38>
30000908:	e51b200c 	ldr	r2, [fp, #-12]
3000090c:	e3a03000 	mov	r3, #0	; 0x0
30000910:	e5823000 	str	r3, [r2]
30000914:	e51b300c 	ldr	r3, [fp, #-12]
30000918:	e2833004 	add	r3, r3, #4	; 0x4
3000091c:	e50b300c 	str	r3, [fp, #-12]
30000920:	e51b200c 	ldr	r2, [fp, #-12]
30000924:	e51b3008 	ldr	r3, [fp, #-8]
30000928:	e1520003 	cmp	r2, r3
3000092c:	9afffff5 	bls	30000908 <clean_bss+0x20>
30000930:	e28bd000 	add	sp, fp, #0	; 0x0
30000934:	e8bd0800 	pop	{fp}
30000938:	e12fff1e 	bx	lr
3000093c:	30000b64 	.word	0x30000b64
30000940:	30000b64 	.word	0x30000b64

30000944 <sdram_test>:
30000944:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000948:	e28db000 	add	fp, sp, #0	; 0x0
3000094c:	e24dd014 	sub	sp, sp, #20	; 0x14
30000950:	e3a03203 	mov	r3, #805306368	; 0x30000000
30000954:	e2833a0f 	add	r3, r3, #61440	; 0xf000
30000958:	e50b300c 	str	r3, [fp, #-12]
3000095c:	e3a03000 	mov	r3, #0	; 0x0
30000960:	e50b3008 	str	r3, [fp, #-8]
30000964:	ea000007 	b	30000988 <sdram_test+0x44>
30000968:	e51b2008 	ldr	r2, [fp, #-8]
3000096c:	e51b300c 	ldr	r3, [fp, #-12]
30000970:	e0832002 	add	r2, r3, r2
30000974:	e3a03055 	mov	r3, #85	; 0x55
30000978:	e5c23000 	strb	r3, [r2]
3000097c:	e51b3008 	ldr	r3, [fp, #-8]
30000980:	e2833001 	add	r3, r3, #1	; 0x1
30000984:	e50b3008 	str	r3, [fp, #-8]
30000988:	e51b2008 	ldr	r2, [fp, #-8]
3000098c:	e3a03ff9 	mov	r3, #996	; 0x3e4
30000990:	e2833003 	add	r3, r3, #3	; 0x3
30000994:	e1520003 	cmp	r2, r3
30000998:	dafffff2 	ble	30000968 <sdram_test+0x24>
3000099c:	e3a03000 	mov	r3, #0	; 0x0
300009a0:	e50b3008 	str	r3, [fp, #-8]
300009a4:	ea00000c 	b	300009dc <sdram_test+0x98>
300009a8:	e51b2008 	ldr	r2, [fp, #-8]
300009ac:	e51b300c 	ldr	r3, [fp, #-12]
300009b0:	e0833002 	add	r3, r3, r2
300009b4:	e5d33000 	ldrb	r3, [r3]
300009b8:	e20330ff 	and	r3, r3, #255	; 0xff
300009bc:	e3530055 	cmp	r3, #85	; 0x55
300009c0:	0a000002 	beq	300009d0 <sdram_test+0x8c>
300009c4:	e3e03000 	mvn	r3, #0	; 0x0
300009c8:	e50b3010 	str	r3, [fp, #-16]
300009cc:	ea000009 	b	300009f8 <sdram_test+0xb4>
300009d0:	e51b3008 	ldr	r3, [fp, #-8]
300009d4:	e2833001 	add	r3, r3, #1	; 0x1
300009d8:	e50b3008 	str	r3, [fp, #-8]
300009dc:	e51b2008 	ldr	r2, [fp, #-8]
300009e0:	e3a03ff9 	mov	r3, #996	; 0x3e4
300009e4:	e2833003 	add	r3, r3, #3	; 0x3
300009e8:	e1520003 	cmp	r2, r3
300009ec:	daffffed 	ble	300009a8 <sdram_test+0x64>
300009f0:	e3a03000 	mov	r3, #0	; 0x0
300009f4:	e50b3010 	str	r3, [fp, #-16]
300009f8:	e51b3010 	ldr	r3, [fp, #-16]
300009fc:	e1a00003 	mov	r0, r3
30000a00:	e28bd000 	add	sp, fp, #0	; 0x0
30000a04:	e8bd0800 	pop	{fp}
30000a08:	e12fff1e 	bx	lr

30000a0c <init_exint0>:
30000a0c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000a10:	e28db000 	add	fp, sp, #0	; 0x0
30000a14:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000a18:	e2822050 	add	r2, r2, #80	; 0x50
30000a1c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000a20:	e2833050 	add	r3, r3, #80	; 0x50
30000a24:	e5933000 	ldr	r3, [r3]
30000a28:	e3c33003 	bic	r3, r3, #3	; 0x3
30000a2c:	e5823000 	str	r3, [r2]
30000a30:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000a34:	e2822050 	add	r2, r2, #80	; 0x50
30000a38:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000a3c:	e2833050 	add	r3, r3, #80	; 0x50
30000a40:	e5933000 	ldr	r3, [r3]
30000a44:	e3833002 	orr	r3, r3, #2	; 0x2
30000a48:	e5823000 	str	r3, [r2]
30000a4c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000a50:	e2833088 	add	r3, r3, #136	; 0x88
30000a54:	e3a02004 	mov	r2, #4	; 0x4
30000a58:	e5832000 	str	r2, [r3]
30000a5c:	e3a0244a 	mov	r2, #1241513984	; 0x4a000000
30000a60:	e2822008 	add	r2, r2, #8	; 0x8
30000a64:	e3a0344a 	mov	r3, #1241513984	; 0x4a000000
30000a68:	e2833008 	add	r3, r3, #8	; 0x8
30000a6c:	e5933000 	ldr	r3, [r3]
30000a70:	e3c33001 	bic	r3, r3, #1	; 0x1
30000a74:	e5823000 	str	r3, [r2]
30000a78:	e28bd000 	add	sp, fp, #0	; 0x0
30000a7c:	e8bd0800 	pop	{fp}
30000a80:	e12fff1e 	bx	lr

30000a84 <process_irq>:
30000a84:	e92d4800 	push	{fp, lr}
30000a88:	e28db004 	add	fp, sp, #4	; 0x4
30000a8c:	e24dd010 	sub	sp, sp, #16	; 0x10
30000a90:	e50b0010 	str	r0, [fp, #-16]
30000a94:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000a98:	e28330a8 	add	r3, r3, #168	; 0xa8
30000a9c:	e5933000 	ldr	r3, [r3]
30000aa0:	e50b3008 	str	r3, [fp, #-8]
30000aa4:	e59f004c 	ldr	r0, [pc, #76]	; 30000af8 <process_irq+0x74>
30000aa8:	e51b1010 	ldr	r1, [fp, #-16]
30000aac:	ebfffed5 	bl	30000608 <printf>
30000ab0:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000ab4:	e28330a8 	add	r3, r3, #168	; 0xa8
30000ab8:	e3a02001 	mov	r2, #1	; 0x1
30000abc:	e5832000 	str	r2, [r3]
30000ac0:	e3a0244a 	mov	r2, #1241513984	; 0x4a000000
30000ac4:	e2822010 	add	r2, r2, #16	; 0x10
30000ac8:	e3a01001 	mov	r1, #1	; 0x1
30000acc:	e51b3010 	ldr	r3, [fp, #-16]
30000ad0:	e1a03311 	lsl	r3, r1, r3
30000ad4:	e5823000 	str	r3, [r2]
30000ad8:	e3a0144a 	mov	r1, #1241513984	; 0x4a000000
30000adc:	e3a02001 	mov	r2, #1	; 0x1
30000ae0:	e51b3010 	ldr	r3, [fp, #-16]
30000ae4:	e1a03312 	lsl	r3, r2, r3
30000ae8:	e5813000 	str	r3, [r1]
30000aec:	e24bd004 	sub	sp, fp, #4	; 0x4
30000af0:	e8bd4800 	pop	{fp, lr}
30000af4:	e12fff1e 	bx	lr
30000af8:	30000b3c 	.word	0x30000b3c
Disassembly of section .rodata:

30000afc <.rodata>:
30000afc:	6f700a0d 	svcvs	0x00700a0d
30000b00:	20746e69 	rsbscs	r6, r4, r9, ror #28
30000b04:	0a0d2061 	beq	30348c90 <bss_end+0x34812c>
30000b08:	00000000 	andeq	r0, r0, r0
30000b0c:	6f700a0d 	svcvs	0x00700a0d
30000b10:	20746e69 	.word	0x20746e69
30000b14:	0a0d2062 	beq	30348ca4 <bss_end+0x348140>
30000b18:	00000000 	andeq	r0, r0, r0
30000b1c:	6c6c6568 	.word	0x6c6c6568
30000b20:	3432206f 	ldrtcc	r2, [r2], #-111
30000b24:	0d203034 	stceq	0, cr3, [r0, #-208]!
30000b28:	0000000a 	andeq	r0, r0, sl
30000b2c:	61726473 	.word	0x61726473
30000b30:	7365746d 	cmnvc	r5, #1828716544	; 0x6d000000
30000b34:	78252074 	stmdavc	r5!, {r2, r4, r5, r6, sp}
30000b38:	00000d0a 	andeq	r0, r0, sl, lsl #26
30000b3c:	20776f6e 	.word	0x20776f6e
30000b40:	20656874 	rsbcs	r6, r5, r4, ror r8
30000b44:	7366666f 	cmnvc	r6, #116391936	; 0x6f00000
30000b48:	69207465 	.word	0x69207465
30000b4c:	78252073 	stmdavc	r5!, {r0, r1, r4, r5, r6, sp}
30000b50:	000a0d20 	andeq	r0, sl, r0, lsr #26
Disassembly of section .data:

30000b54 <code>:
30000b54:	33323130 	.word	0x33323130
30000b58:	37363534 	.word	0x37363534
30000b5c:	62613938 	.word	0x62613938
30000b60:	66656463 	.word	0x66656463
Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002441 	andeq	r2, r0, r1, asr #8
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001a 	andeq	r0, r0, sl, lsl r0
  10:	06003405 	streq	r3, [r0], -r5, lsl #8
  14:	12010802 	andne	r0, r1, #131072	; 0x20000
  18:	15011404 	strne	r1, [r1, #-1028]
  1c:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  20:	1a011901 	bne	4642c <code_start-0x2ffb9bd4>
  24:	Address 0x00000024 is out of bounds.

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	5328203a 	teqpl	r8, #58	; 0x3a
   8:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
   c:	20797265 	rsbscs	r7, r9, r5, ror #4
  10:	202b2b47 	eorcs	r2, fp, r7, asr #22
  14:	6574694c 	ldrbvs	r6, [r4, #-2380]!
  18:	30303220 	eorscc	r3, r0, r0, lsr #4
  1c:	2d337138 	ldfcss	f7, [r3, #-224]!
  20:	20293237 	eorcs	r3, r9, r7, lsr r2
  24:	2e332e34 	mrccs	14, 1, r2, cr3, cr4, {1}
  28:	47000032 	smladxmi	r0, r2, r0, r0
  2c:	203a4343 	eorscs	r4, sl, r3, asr #6
  30:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd10 <bss_end+0xcffff1ac>
  34:	72656372 	rsbvc	r6, r5, #-939524095	; 0xc8000001
  38:	2b472079 	blcs	11c8224 <code_start-0x2ee37ddc>
  3c:	694c202b 	stmdbvs	ip, {r0, r1, r3, r5, sp}^
  40:	32206574 	eorcc	r6, r0, #486539264	; 0x1d000000
  44:	71383030 	teqvc	r8, r0, lsr r0
  48:	32372d33 	eorscc	r2, r7, #3264	; 0xcc0
  4c:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  50:	00322e33 	eorseq	r2, r2, r3, lsr lr
  54:	43434700 	movtmi	r4, #14080	; 0x3700
  58:	5328203a 	teqpl	r8, #58	; 0x3a
  5c:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
  60:	20797265 	rsbscs	r7, r9, r5, ror #4
  64:	202b2b47 	eorcs	r2, fp, r7, asr #22
  68:	6574694c 	ldrbvs	r6, [r4, #-2380]!
  6c:	30303220 	eorscc	r3, r0, r0, lsr #4
  70:	2d337138 	ldfcss	f7, [r3, #-224]!
  74:	20293237 	eorcs	r3, r9, r7, lsr r2
  78:	2e332e34 	mrccs	14, 1, r2, cr3, cr4, {1}
  7c:	47000032 	smladxmi	r0, r2, r0, r0
  80:	203a4343 	eorscs	r4, sl, r3, asr #6
  84:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd64 <bss_end+0xcffff200>
  88:	72656372 	rsbvc	r6, r5, #-939524095	; 0xc8000001
  8c:	2b472079 	blcs	11c8278 <code_start-0x2ee37d88>
  90:	694c202b 	stmdbvs	ip, {r0, r1, r3, r5, sp}^
  94:	32206574 	eorcc	r6, r0, #486539264	; 0x1d000000
  98:	71383030 	teqvc	r8, r0, lsr r0
  9c:	32372d33 	eorscc	r2, r7, #3264	; 0xcc0
  a0:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  a4:	00322e33 	eorseq	r2, r2, r3, lsr lr
  a8:	43434700 	movtmi	r4, #14080	; 0x3700
  ac:	5328203a 	teqpl	r8, #58	; 0x3a
  b0:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
  b4:	20797265 	rsbscs	r7, r9, r5, ror #4
  b8:	202b2b47 	eorcs	r2, fp, r7, asr #22
  bc:	6574694c 	ldrbvs	r6, [r4, #-2380]!
  c0:	30303220 	eorscc	r3, r0, r0, lsr #4
  c4:	2d337138 	ldfcss	f7, [r3, #-224]!
  c8:	20293237 	eorcs	r3, r9, r7, lsr r2
  cc:	2e332e34 	mrccs	14, 1, r2, cr3, cr4, {1}
  d0:	Address 0x000000d0 is out of bounds.

