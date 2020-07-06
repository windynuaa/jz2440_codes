
./build/dev.elf:     file format elf32-littlearm

Disassembly of section .text:

30000000 <_start>:
30000000:	ea00001e 	b	30000080 <reset>
30000004:	e59ff0e4 	ldr	pc, [pc, #228]	; 300000f0 <halt+0x4>
30000008:	e59ff0e4 	ldr	pc, [pc, #228]	; 300000f4 <halt+0x8>
3000000c:	e59ff0e4 	ldr	pc, [pc, #228]	; 300000f8 <halt+0xc>
30000010:	e59ff0e0 	ldr	pc, [pc, #224]	; 300000f8 <halt+0xc>
30000014:	e59ff0dc 	ldr	pc, [pc, #220]	; 300000f8 <halt+0xc>
30000018:	e59ff0d8 	ldr	pc, [pc, #216]	; 300000f8 <halt+0xc>
3000001c:	e59ff0d4 	ldr	pc, [pc, #212]	; 300000f8 <halt+0xc>

30000020 <und_addr>:
30000020:	30000024 	.word	0x30000024

30000024 <und>:
30000024:	e59fd0d0 	ldr	sp, [pc, #208]	; 300000fc <halt+0x10>
30000028:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
3000002c:	e59f00cc 	ldr	r0, [pc, #204]	; 30000100 <halt+0x14>
30000030:	eb0000e6 	bl	300003d0 <puts>
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

30000054 <swi>:
30000054:	e59fd0a8 	ldr	sp, [pc, #168]	; 30000104 <halt+0x18>
30000058:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
3000005c:	e59f00a4 	ldr	r0, [pc, #164]	; 30000108 <halt+0x1c>
30000060:	eb0000da 	bl	300003d0 <puts>
30000064:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

30000068 <swi_string>:
30000068:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416
3000006c:	7773206f 	ldrbvc	r2, [r3, -pc, rrx]!
30000070:	6f6d2069 	svcvs	0x006d2069
30000074:	00216564 	eoreq	r6, r1, r4, ror #10
30000078:	e1a00000 	nop			(mov r0,r0)
3000007c:	e1a00000 	nop			(mov r0,r0)

30000080 <reset>:
30000080:	e3a01453 	mov	r1, #1392508928	; 0x53000000
30000084:	e3a00000 	mov	r0, #0	; 0x0
30000088:	e5810000 	str	r0, [r1]
3000008c:	e59f1078 	ldr	r1, [pc, #120]	; 3000010c <halt+0x20>
30000090:	e3a00005 	mov	r0, #5	; 0x5
30000094:	e5810000 	str	r0, [r1]
30000098:	e59f1070 	ldr	r1, [pc, #112]	; 30000110 <halt+0x24>
3000009c:	e59f0070 	ldr	r0, [pc, #112]	; 30000114 <halt+0x28>
300000a0:	e5810000 	str	r0, [r1]
300000a4:	e59fd06c 	ldr	sp, [pc, #108]	; 30000118 <halt+0x2c>
300000a8:	e3a00000 	mov	r0, #0	; 0x0
300000ac:	e5901000 	ldr	r1, [r0]
300000b0:	e59f2064 	ldr	r2, [pc, #100]	; 3000011c <halt+0x30>
300000b4:	e5802000 	str	r2, [r0]
300000b8:	e5903000 	ldr	r3, [r0]
300000bc:	e1520003 	cmp	r2, r3
300000c0:	03a0da01 	moveq	sp, #4096	; 0x1000
300000c4:	e5801000 	str	r1, [r0]
300000c8:	eb0001ae 	bl	30000788 <sdram_init>
300000cc:	eb0001d1 	bl	30000818 <relocate_code>
300000d0:	eb0001ed 	bl	3000088c <clean_bss>
300000d4:	eb000069 	bl	30000280 <uart_init>
300000d8:	eb00008c 	bl	30000310 <test1>

300000dc <undf>:
300000dc:	deadc0de 	.word	0xdeadc0de
300000e0:	eb000092 	bl	30000330 <test2>
300000e4:	ef000086 	svc	0x00000086
300000e8:	e59ff030 	ldr	pc, [pc, #48]	; 30000120 <halt+0x34>

300000ec <halt>:
300000ec:	eafffffe 	b	300000ec <halt>
300000f0:	30000020 	.word	0x30000020
300000f4:	30000050 	.word	0x30000050
300000f8:	30000080 	.word	0x30000080
300000fc:	30001000 	.word	0x30001000
30000100:	30000038 	.word	0x30000038
30000104:	30002000 	.word	0x30002000
30000108:	30000068 	.word	0x30000068
3000010c:	4c000014 	.word	0x4c000014
30000110:	4c000004 	.word	0x4c000004
30000114:	0005c011 	.word	0x0005c011
30000118:	40001000 	.word	0x40001000
3000011c:	00001234 	.word	0x00001234
30000120:	30000738 	.word	0x30000738
30000124:	e1a00000 	.word	0xe1a00000
30000128:	e1a00000 	.word	0xe1a00000
3000012c:	e1a00000 	.word	0xe1a00000

30000130 <delay>:
30000130:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000134:	e28db000 	add	fp, sp, #0	; 0x0
30000138:	e24dd00c 	sub	sp, sp, #12	; 0xc
3000013c:	e50b0008 	str	r0, [fp, #-8]
30000140:	e51b3008 	ldr	r3, [fp, #-8]
30000144:	e3530000 	cmp	r3, #0	; 0x0
30000148:	03a03000 	moveq	r3, #0	; 0x0
3000014c:	13a03001 	movne	r3, #1	; 0x1
30000150:	e20320ff 	and	r2, r3, #255	; 0xff
30000154:	e51b3008 	ldr	r3, [fp, #-8]
30000158:	e2433001 	sub	r3, r3, #1	; 0x1
3000015c:	e50b3008 	str	r3, [fp, #-8]
30000160:	e3520000 	cmp	r2, #0	; 0x0
30000164:	1afffff5 	bne	30000140 <delay+0x10>
30000168:	e28bd000 	add	sp, fp, #0	; 0x0
3000016c:	e8bd0800 	pop	{fp}
30000170:	e12fff1e 	bx	lr

30000174 <init_led>:
30000174:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000178:	e28db000 	add	fp, sp, #0	; 0x0
3000017c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000180:	e2833050 	add	r3, r3, #80	; 0x50
30000184:	e3a02c15 	mov	r2, #5376	; 0x1500
30000188:	e5832000 	str	r2, [r3]
3000018c:	e28bd000 	add	sp, fp, #0	; 0x0
30000190:	e8bd0800 	pop	{fp}
30000194:	e12fff1e 	bx	lr

30000198 <dim_led>:
30000198:	e92d4800 	push	{fp, lr}
3000019c:	e28db004 	add	fp, sp, #4	; 0x4
300001a0:	e24dd008 	sub	sp, sp, #8	; 0x8
300001a4:	e50b0008 	str	r0, [fp, #-8]
300001a8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300001ac:	e2833050 	add	r3, r3, #80	; 0x50
300001b0:	e51b2008 	ldr	r2, [fp, #-8]
300001b4:	e5832000 	str	r2, [r3]
300001b8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300001bc:	e2833054 	add	r3, r3, #84	; 0x54
300001c0:	e3a02050 	mov	r2, #80	; 0x50
300001c4:	e5832000 	str	r2, [r3]
300001c8:	e3a00b61 	mov	r0, #99328	; 0x18400
300001cc:	e2800e2a 	add	r0, r0, #672	; 0x2a0
300001d0:	ebffffd6 	bl	30000130 <delay>
300001d4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300001d8:	e2833054 	add	r3, r3, #84	; 0x54
300001dc:	e3a02020 	mov	r2, #32	; 0x20
300001e0:	e5832000 	str	r2, [r3]
300001e4:	e3a00b61 	mov	r0, #99328	; 0x18400
300001e8:	e2800e2a 	add	r0, r0, #672	; 0x2a0
300001ec:	ebffffcf 	bl	30000130 <delay>
300001f0:	eafffff0 	b	300001b8 <dim_led+0x20>

300001f4 <open_led>:
300001f4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300001f8:	e28db000 	add	fp, sp, #0	; 0x0
300001fc:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000200:	e50b0008 	str	r0, [fp, #-8]
30000204:	e51b3008 	ldr	r3, [fp, #-8]
30000208:	e3530000 	cmp	r3, #0	; 0x0
3000020c:	1a000004 	bne	30000224 <open_led+0x30>
30000210:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000214:	e2833054 	add	r3, r3, #84	; 0x54
30000218:	e3a02010 	mov	r2, #16	; 0x10
3000021c:	e5832000 	str	r2, [r3]
30000220:	ea000013 	b	30000274 <open_led+0x80>
30000224:	e51b3008 	ldr	r3, [fp, #-8]
30000228:	e3530001 	cmp	r3, #1	; 0x1
3000022c:	1a000004 	bne	30000244 <open_led+0x50>
30000230:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000234:	e2833054 	add	r3, r3, #84	; 0x54
30000238:	e3a02020 	mov	r2, #32	; 0x20
3000023c:	e5832000 	str	r2, [r3]
30000240:	ea00000b 	b	30000274 <open_led+0x80>
30000244:	e51b3008 	ldr	r3, [fp, #-8]
30000248:	e3530002 	cmp	r3, #2	; 0x2
3000024c:	1a000004 	bne	30000264 <open_led+0x70>
30000250:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000254:	e2833054 	add	r3, r3, #84	; 0x54
30000258:	e3a02040 	mov	r2, #64	; 0x40
3000025c:	e5832000 	str	r2, [r3]
30000260:	ea000003 	b	30000274 <open_led+0x80>
30000264:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000268:	e2833054 	add	r3, r3, #84	; 0x54
3000026c:	e3a02000 	mov	r2, #0	; 0x0
30000270:	e5832000 	str	r2, [r3]
30000274:	e28bd000 	add	sp, fp, #0	; 0x0
30000278:	e8bd0800 	pop	{fp}
3000027c:	e12fff1e 	bx	lr

30000280 <uart_init>:
30000280:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000284:	e28db000 	add	fp, sp, #0	; 0x0
30000288:	e3a02456 	mov	r2, #1442840576	; 0x56000000
3000028c:	e2822070 	add	r2, r2, #112	; 0x70
30000290:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000294:	e2833070 	add	r3, r3, #112	; 0x70
30000298:	e5933000 	ldr	r3, [r3]
3000029c:	e3c330a0 	bic	r3, r3, #160	; 0xa0
300002a0:	e5823000 	str	r3, [r2]
300002a4:	e3a02456 	mov	r2, #1442840576	; 0x56000000
300002a8:	e2822070 	add	r2, r2, #112	; 0x70
300002ac:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300002b0:	e2833070 	add	r3, r3, #112	; 0x70
300002b4:	e5933000 	ldr	r3, [r3]
300002b8:	e38330a0 	orr	r3, r3, #160	; 0xa0
300002bc:	e5823000 	str	r3, [r2]
300002c0:	e3a02456 	mov	r2, #1442840576	; 0x56000000
300002c4:	e2822078 	add	r2, r2, #120	; 0x78
300002c8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300002cc:	e2833078 	add	r3, r3, #120	; 0x78
300002d0:	e5933000 	ldr	r3, [r3]
300002d4:	e3c3300c 	bic	r3, r3, #12	; 0xc
300002d8:	e5823000 	str	r3, [r2]
300002dc:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300002e0:	e2833028 	add	r3, r3, #40	; 0x28
300002e4:	e3a0201a 	mov	r2, #26	; 0x1a
300002e8:	e5832000 	str	r2, [r3]
300002ec:	e3a02205 	mov	r2, #1342177280	; 0x50000000
300002f0:	e3a03003 	mov	r3, #3	; 0x3
300002f4:	e5823000 	str	r3, [r2]
300002f8:	e3a02245 	mov	r2, #1342177284	; 0x50000004
300002fc:	e3a03005 	mov	r3, #5	; 0x5
30000300:	e5823000 	str	r3, [r2]
30000304:	e28bd000 	add	sp, fp, #0	; 0x0
30000308:	e8bd0800 	pop	{fp}
3000030c:	e12fff1e 	bx	lr

30000310 <test1>:
30000310:	e92d4800 	push	{fp, lr}
30000314:	e28db004 	add	fp, sp, #4	; 0x4
30000318:	e59f000c 	ldr	r0, [pc, #12]	; 3000032c <test1+0x1c>
3000031c:	eb00002b 	bl	300003d0 <puts>
30000320:	e24bd004 	sub	sp, fp, #4	; 0x4
30000324:	e8bd4800 	pop	{fp, lr}
30000328:	e12fff1e 	bx	lr
3000032c:	300009b0 	.word	0x300009b0

30000330 <test2>:
30000330:	e92d4800 	push	{fp, lr}
30000334:	e28db004 	add	fp, sp, #4	; 0x4
30000338:	e59f000c 	ldr	r0, [pc, #12]	; 3000034c <test2+0x1c>
3000033c:	eb000023 	bl	300003d0 <puts>
30000340:	e24bd004 	sub	sp, fp, #4	; 0x4
30000344:	e8bd4800 	pop	{fp, lr}
30000348:	e12fff1e 	bx	lr
3000034c:	300009bc 	.word	0x300009bc

30000350 <putc>:
30000350:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000354:	e28db000 	add	fp, sp, #0	; 0x0
30000358:	e24dd00c 	sub	sp, sp, #12	; 0xc
3000035c:	e50b0008 	str	r0, [fp, #-8]
30000360:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000364:	e2833010 	add	r3, r3, #16	; 0x10
30000368:	e5933000 	ldr	r3, [r3]
3000036c:	e2033004 	and	r3, r3, #4	; 0x4
30000370:	e3530000 	cmp	r3, #0	; 0x0
30000374:	0afffff9 	beq	30000360 <putc+0x10>
30000378:	e3a03205 	mov	r3, #1342177280	; 0x50000000
3000037c:	e2833020 	add	r3, r3, #32	; 0x20
30000380:	e51b2008 	ldr	r2, [fp, #-8]
30000384:	e5832000 	str	r2, [r3]
30000388:	e28bd000 	add	sp, fp, #0	; 0x0
3000038c:	e8bd0800 	pop	{fp}
30000390:	e12fff1e 	bx	lr

30000394 <getc>:
30000394:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000398:	e28db000 	add	fp, sp, #0	; 0x0
3000039c:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300003a0:	e2833010 	add	r3, r3, #16	; 0x10
300003a4:	e5933000 	ldr	r3, [r3]
300003a8:	e2033001 	and	r3, r3, #1	; 0x1
300003ac:	e3530000 	cmp	r3, #0	; 0x0
300003b0:	0afffff9 	beq	3000039c <getc+0x8>
300003b4:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300003b8:	e2833024 	add	r3, r3, #36	; 0x24
300003bc:	e5933000 	ldr	r3, [r3]
300003c0:	e1a00003 	mov	r0, r3
300003c4:	e28bd000 	add	sp, fp, #0	; 0x0
300003c8:	e8bd0800 	pop	{fp}
300003cc:	e12fff1e 	bx	lr

300003d0 <puts>:
300003d0:	e92d4800 	push	{fp, lr}
300003d4:	e28db004 	add	fp, sp, #4	; 0x4
300003d8:	e24dd008 	sub	sp, sp, #8	; 0x8
300003dc:	e50b0008 	str	r0, [fp, #-8]
300003e0:	ea000006 	b	30000400 <puts+0x30>
300003e4:	e51b3008 	ldr	r3, [fp, #-8]
300003e8:	e5d33000 	ldrb	r3, [r3]
300003ec:	e1a00003 	mov	r0, r3
300003f0:	ebffffd6 	bl	30000350 <putc>
300003f4:	e51b3008 	ldr	r3, [fp, #-8]
300003f8:	e2833001 	add	r3, r3, #1	; 0x1
300003fc:	e50b3008 	str	r3, [fp, #-8]
30000400:	e51b3008 	ldr	r3, [fp, #-8]
30000404:	e5d33000 	ldrb	r3, [r3]
30000408:	e3530000 	cmp	r3, #0	; 0x0
3000040c:	1afffff4 	bne	300003e4 <puts+0x14>
30000410:	e24bd004 	sub	sp, fp, #4	; 0x4
30000414:	e8bd4800 	pop	{fp, lr}
30000418:	e12fff1e 	bx	lr

3000041c <print_hex>:
3000041c:	e92d4800 	push	{fp, lr}
30000420:	e28db004 	add	fp, sp, #4	; 0x4
30000424:	e24dd018 	sub	sp, sp, #24	; 0x18
30000428:	e50b0018 	str	r0, [fp, #-24]
3000042c:	e24b2013 	sub	r2, fp, #19	; 0x13
30000430:	e50b201c 	str	r2, [fp, #-28]
30000434:	e3a03000 	mov	r3, #0	; 0x0
30000438:	e51bc01c 	ldr	ip, [fp, #-28]
3000043c:	e5cc3000 	strb	r3, [ip]
30000440:	e51b201c 	ldr	r2, [fp, #-28]
30000444:	e2822001 	add	r2, r2, #1	; 0x1
30000448:	e50b201c 	str	r2, [fp, #-28]
3000044c:	e3a03000 	mov	r3, #0	; 0x0
30000450:	e51bc01c 	ldr	ip, [fp, #-28]
30000454:	e5cc3000 	strb	r3, [ip]
30000458:	e51b201c 	ldr	r2, [fp, #-28]
3000045c:	e2822001 	add	r2, r2, #1	; 0x1
30000460:	e50b201c 	str	r2, [fp, #-28]
30000464:	e3a03000 	mov	r3, #0	; 0x0
30000468:	e51bc01c 	ldr	ip, [fp, #-28]
3000046c:	e5cc3000 	strb	r3, [ip]
30000470:	e51b201c 	ldr	r2, [fp, #-28]
30000474:	e2822001 	add	r2, r2, #1	; 0x1
30000478:	e50b201c 	str	r2, [fp, #-28]
3000047c:	e3a03000 	mov	r3, #0	; 0x0
30000480:	e51bc01c 	ldr	ip, [fp, #-28]
30000484:	e5cc3000 	strb	r3, [ip]
30000488:	e51b201c 	ldr	r2, [fp, #-28]
3000048c:	e2822001 	add	r2, r2, #1	; 0x1
30000490:	e50b201c 	str	r2, [fp, #-28]
30000494:	e3a03000 	mov	r3, #0	; 0x0
30000498:	e51bc01c 	ldr	ip, [fp, #-28]
3000049c:	e5cc3000 	strb	r3, [ip]
300004a0:	e51b201c 	ldr	r2, [fp, #-28]
300004a4:	e2822001 	add	r2, r2, #1	; 0x1
300004a8:	e50b201c 	str	r2, [fp, #-28]
300004ac:	e3a03000 	mov	r3, #0	; 0x0
300004b0:	e51bc01c 	ldr	ip, [fp, #-28]
300004b4:	e5cc3000 	strb	r3, [ip]
300004b8:	e51b201c 	ldr	r2, [fp, #-28]
300004bc:	e2822001 	add	r2, r2, #1	; 0x1
300004c0:	e50b201c 	str	r2, [fp, #-28]
300004c4:	e3a03000 	mov	r3, #0	; 0x0
300004c8:	e51bc01c 	ldr	ip, [fp, #-28]
300004cc:	e5cc3000 	strb	r3, [ip]
300004d0:	e51b201c 	ldr	r2, [fp, #-28]
300004d4:	e2822001 	add	r2, r2, #1	; 0x1
300004d8:	e50b201c 	str	r2, [fp, #-28]
300004dc:	e3a03000 	mov	r3, #0	; 0x0
300004e0:	e51bc01c 	ldr	ip, [fp, #-28]
300004e4:	e5cc3000 	strb	r3, [ip]
300004e8:	e51b201c 	ldr	r2, [fp, #-28]
300004ec:	e2822001 	add	r2, r2, #1	; 0x1
300004f0:	e50b201c 	str	r2, [fp, #-28]
300004f4:	e3a03000 	mov	r3, #0	; 0x0
300004f8:	e51bc01c 	ldr	ip, [fp, #-28]
300004fc:	e5cc3000 	strb	r3, [ip]
30000500:	e51b201c 	ldr	r2, [fp, #-28]
30000504:	e2822001 	add	r2, r2, #1	; 0x1
30000508:	e50b201c 	str	r2, [fp, #-28]
3000050c:	e3a03000 	mov	r3, #0	; 0x0
30000510:	e51bc01c 	ldr	ip, [fp, #-28]
30000514:	e5cc3000 	strb	r3, [ip]
30000518:	e51b201c 	ldr	r2, [fp, #-28]
3000051c:	e2822001 	add	r2, r2, #1	; 0x1
30000520:	e50b201c 	str	r2, [fp, #-28]
30000524:	e3a03000 	mov	r3, #0	; 0x0
30000528:	e51bc01c 	ldr	ip, [fp, #-28]
3000052c:	e5cc3000 	strb	r3, [ip]
30000530:	e51b201c 	ldr	r2, [fp, #-28]
30000534:	e2822001 	add	r2, r2, #1	; 0x1
30000538:	e3a03030 	mov	r3, #48	; 0x30
3000053c:	e54b3013 	strb	r3, [fp, #-19]
30000540:	e3a03078 	mov	r3, #120	; 0x78
30000544:	e54b3012 	strb	r3, [fp, #-18]
30000548:	e3a03000 	mov	r3, #0	; 0x0
3000054c:	e50b3008 	str	r3, [fp, #-8]
30000550:	ea000011 	b	3000059c <print_hex+0x180>
30000554:	e51b3008 	ldr	r3, [fp, #-8]
30000558:	e2630009 	rsb	r0, r3, #9	; 0x9
3000055c:	e51b3018 	ldr	r3, [fp, #-24]
30000560:	e203200f 	and	r2, r3, #15	; 0xf
30000564:	e59f3054 	ldr	r3, [pc, #84]	; 300005c0 <print_hex+0x1a4>
30000568:	e7d31002 	ldrb	r1, [r3, r2]
3000056c:	e3e0200e 	mvn	r2, #14	; 0xe
30000570:	e24bc004 	sub	ip, fp, #4	; 0x4
30000574:	e08c3000 	add	r3, ip, r0
30000578:	e0832002 	add	r2, r3, r2
3000057c:	e1a03001 	mov	r3, r1
30000580:	e5c23000 	strb	r3, [r2]
30000584:	e51b3018 	ldr	r3, [fp, #-24]
30000588:	e1a03243 	asr	r3, r3, #4
3000058c:	e50b3018 	str	r3, [fp, #-24]
30000590:	e51b3008 	ldr	r3, [fp, #-8]
30000594:	e2833001 	add	r3, r3, #1	; 0x1
30000598:	e50b3008 	str	r3, [fp, #-8]
3000059c:	e51b3008 	ldr	r3, [fp, #-8]
300005a0:	e3530007 	cmp	r3, #7	; 0x7
300005a4:	daffffea 	ble	30000554 <print_hex+0x138>
300005a8:	e24b3013 	sub	r3, fp, #19	; 0x13
300005ac:	e1a00003 	mov	r0, r3
300005b0:	ebffff86 	bl	300003d0 <puts>
300005b4:	e24bd004 	sub	sp, fp, #4	; 0x4
300005b8:	e8bd4800 	pop	{fp, lr}
300005bc:	e12fff1e 	bx	lr
300005c0:	300009e8 	.word	0x300009e8

300005c4 <printf>:
300005c4:	e92d000f 	push	{r0, r1, r2, r3}
300005c8:	e92d4800 	push	{fp, lr}
300005cc:	e28db004 	add	fp, sp, #4	; 0x4
300005d0:	e24dd008 	sub	sp, sp, #8	; 0x8
300005d4:	e28b3004 	add	r3, fp, #4	; 0x4
300005d8:	e2833004 	add	r3, r3, #4	; 0x4
300005dc:	e50b3008 	str	r3, [fp, #-8]
300005e0:	ea00004a 	b	30000710 <printf+0x14c>
300005e4:	e59b3004 	ldr	r3, [fp, #4]
300005e8:	e5d33000 	ldrb	r3, [r3]
300005ec:	e3530025 	cmp	r3, #37	; 0x25
300005f0:	1a00003f 	bne	300006f4 <printf+0x130>
300005f4:	e59b3004 	ldr	r3, [fp, #4]
300005f8:	e2833001 	add	r3, r3, #1	; 0x1
300005fc:	e5d33000 	ldrb	r3, [r3]
30000600:	e2433063 	sub	r3, r3, #99	; 0x63
30000604:	e3530015 	cmp	r3, #21	; 0x15
30000608:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
3000060c:	ea000038 	b	300006f4 <printf+0x130>
30000610:	300006c8 	.word	0x300006c8
30000614:	300006f4 	.word	0x300006f4
30000618:	300006f4 	.word	0x300006f4
3000061c:	300006f4 	.word	0x300006f4
30000620:	300006f4 	.word	0x300006f4
30000624:	300006f4 	.word	0x300006f4
30000628:	300006f4 	.word	0x300006f4
3000062c:	300006f4 	.word	0x300006f4
30000630:	300006f4 	.word	0x300006f4
30000634:	300006f4 	.word	0x300006f4
30000638:	300006f4 	.word	0x300006f4
3000063c:	300006f4 	.word	0x300006f4
30000640:	300006f4 	.word	0x300006f4
30000644:	300006f4 	.word	0x300006f4
30000648:	300006f4 	.word	0x300006f4
3000064c:	300006f4 	.word	0x300006f4
30000650:	30000698 	.word	0x30000698
30000654:	300006f4 	.word	0x300006f4
30000658:	300006f4 	.word	0x300006f4
3000065c:	300006f4 	.word	0x300006f4
30000660:	300006f4 	.word	0x300006f4
30000664:	30000668 	.word	0x30000668
30000668:	e59b3004 	ldr	r3, [fp, #4]
3000066c:	e2833002 	add	r3, r3, #2	; 0x2
30000670:	e58b3004 	str	r3, [fp, #4]
30000674:	e51b3008 	ldr	r3, [fp, #-8]
30000678:	e2833004 	add	r3, r3, #4	; 0x4
3000067c:	e50b3008 	str	r3, [fp, #-8]
30000680:	e51b3008 	ldr	r3, [fp, #-8]
30000684:	e2433004 	sub	r3, r3, #4	; 0x4
30000688:	e5933000 	ldr	r3, [r3]
3000068c:	e1a00003 	mov	r0, r3
30000690:	ebffff61 	bl	3000041c <print_hex>
30000694:	ea000016 	b	300006f4 <printf+0x130>
30000698:	e59b3004 	ldr	r3, [fp, #4]
3000069c:	e2833002 	add	r3, r3, #2	; 0x2
300006a0:	e58b3004 	str	r3, [fp, #4]
300006a4:	e51b3008 	ldr	r3, [fp, #-8]
300006a8:	e2833004 	add	r3, r3, #4	; 0x4
300006ac:	e50b3008 	str	r3, [fp, #-8]
300006b0:	e51b3008 	ldr	r3, [fp, #-8]
300006b4:	e2433004 	sub	r3, r3, #4	; 0x4
300006b8:	e5933000 	ldr	r3, [r3]
300006bc:	e1a00003 	mov	r0, r3
300006c0:	ebffff42 	bl	300003d0 <puts>
300006c4:	ea00000a 	b	300006f4 <printf+0x130>
300006c8:	e59b3004 	ldr	r3, [fp, #4]
300006cc:	e2833002 	add	r3, r3, #2	; 0x2
300006d0:	e58b3004 	str	r3, [fp, #4]
300006d4:	e51b3008 	ldr	r3, [fp, #-8]
300006d8:	e2833004 	add	r3, r3, #4	; 0x4
300006dc:	e50b3008 	str	r3, [fp, #-8]
300006e0:	e51b3008 	ldr	r3, [fp, #-8]
300006e4:	e2433004 	sub	r3, r3, #4	; 0x4
300006e8:	e5933000 	ldr	r3, [r3]
300006ec:	e1a00003 	mov	r0, r3
300006f0:	ebffff16 	bl	30000350 <putc>
300006f4:	e59b3004 	ldr	r3, [fp, #4]
300006f8:	e5d33000 	ldrb	r3, [r3]
300006fc:	e1a00003 	mov	r0, r3
30000700:	ebffff12 	bl	30000350 <putc>
30000704:	e59b3004 	ldr	r3, [fp, #4]
30000708:	e2833001 	add	r3, r3, #1	; 0x1
3000070c:	e58b3004 	str	r3, [fp, #4]
30000710:	e59b3004 	ldr	r3, [fp, #4]
30000714:	e5d33000 	ldrb	r3, [r3]
30000718:	e3530000 	cmp	r3, #0	; 0x0
3000071c:	1affffb0 	bne	300005e4 <printf+0x20>
30000720:	e3a03000 	mov	r3, #0	; 0x0
30000724:	e50b3008 	str	r3, [fp, #-8]
30000728:	e24bd004 	sub	sp, fp, #4	; 0x4
3000072c:	e8bd4800 	pop	{fp, lr}
30000730:	e28dd010 	add	sp, sp, #16	; 0x10
30000734:	e12fff1e 	bx	lr

30000738 <main>:
30000738:	e92d4800 	push	{fp, lr}
3000073c:	e28db004 	add	fp, sp, #4	; 0x4
30000740:	e24dd008 	sub	sp, sp, #8	; 0x8
30000744:	ebfffe8a 	bl	30000174 <init_led>
30000748:	e3a00001 	mov	r0, #1	; 0x1
3000074c:	ebfffea8 	bl	300001f4 <open_led>
30000750:	e3a00000 	mov	r0, #0	; 0x0
30000754:	ebfffea6 	bl	300001f4 <open_led>
30000758:	e3a00041 	mov	r0, #65	; 0x41
3000075c:	ebfffefb 	bl	30000350 <putc>
30000760:	e59f0018 	ldr	r0, [pc, #24]	; 30000780 <main+0x48>
30000764:	ebffff19 	bl	300003d0 <puts>
30000768:	eb00005e 	bl	300008e8 <sdram_test>
3000076c:	e1a03000 	mov	r3, r0
30000770:	e59f000c 	ldr	r0, [pc, #12]	; 30000784 <main+0x4c>
30000774:	e1a01003 	mov	r1, r3
30000778:	ebffff91 	bl	300005c4 <printf>
3000077c:	eafffffe 	b	3000077c <main+0x44>
30000780:	300009c8 	.word	0x300009c8
30000784:	300009d8 	.word	0x300009d8

30000788 <sdram_init>:
30000788:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
3000078c:	e28db000 	add	fp, sp, #0	; 0x0
30000790:	e3a02312 	mov	r2, #1207959552	; 0x48000000
30000794:	e3a03422 	mov	r3, #570425344	; 0x22000000
30000798:	e5823000 	str	r3, [r2]
3000079c:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300007a0:	e282201c 	add	r2, r2, #28	; 0x1c
300007a4:	e3a03906 	mov	r3, #98304	; 0x18000
300007a8:	e2833001 	add	r3, r3, #1	; 0x1
300007ac:	e5823000 	str	r3, [r2]
300007b0:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300007b4:	e2822020 	add	r2, r2, #32	; 0x20
300007b8:	e3a03906 	mov	r3, #98304	; 0x18000
300007bc:	e2833001 	add	r3, r3, #1	; 0x1
300007c0:	e5823000 	str	r3, [r2]
300007c4:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300007c8:	e2822024 	add	r2, r2, #36	; 0x24
300007cc:	e3a03721 	mov	r3, #8650752	; 0x840000
300007d0:	e2833e4f 	add	r3, r3, #1264	; 0x4f0
300007d4:	e2833005 	add	r3, r3, #5	; 0x5
300007d8:	e5823000 	str	r3, [r2]
300007dc:	e3a03312 	mov	r3, #1207959552	; 0x48000000
300007e0:	e2833028 	add	r3, r3, #40	; 0x28
300007e4:	e3a020b1 	mov	r2, #177	; 0xb1
300007e8:	e5832000 	str	r2, [r3]
300007ec:	e3a03312 	mov	r3, #1207959552	; 0x48000000
300007f0:	e283302c 	add	r3, r3, #44	; 0x2c
300007f4:	e3a02020 	mov	r2, #32	; 0x20
300007f8:	e5832000 	str	r2, [r3]
300007fc:	e3a03312 	mov	r3, #1207959552	; 0x48000000
30000800:	e2833030 	add	r3, r3, #48	; 0x30
30000804:	e3a02020 	mov	r2, #32	; 0x20
30000808:	e5832000 	str	r2, [r3]
3000080c:	e28bd000 	add	sp, fp, #0	; 0x0
30000810:	e8bd0800 	pop	{fp}
30000814:	e12fff1e 	bx	lr

30000818 <relocate_code>:
30000818:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
3000081c:	e28db000 	add	fp, sp, #0	; 0x0
30000820:	e24dd014 	sub	sp, sp, #20	; 0x14
30000824:	e59f3058 	ldr	r3, [pc, #88]	; 30000884 <relocate_code+0x6c>
30000828:	e50b3010 	str	r3, [fp, #-16]
3000082c:	e59f3054 	ldr	r3, [pc, #84]	; 30000888 <relocate_code+0x70>
30000830:	e50b300c 	str	r3, [fp, #-12]
30000834:	e3a03000 	mov	r3, #0	; 0x0
30000838:	e50b3008 	str	r3, [fp, #-8]
3000083c:	ea000009 	b	30000868 <relocate_code+0x50>
30000840:	e51b3008 	ldr	r3, [fp, #-8]
30000844:	e5932000 	ldr	r2, [r3]
30000848:	e51b3010 	ldr	r3, [fp, #-16]
3000084c:	e5832000 	str	r2, [r3]
30000850:	e51b3010 	ldr	r3, [fp, #-16]
30000854:	e2833004 	add	r3, r3, #4	; 0x4
30000858:	e50b3010 	str	r3, [fp, #-16]
3000085c:	e51b3008 	ldr	r3, [fp, #-8]
30000860:	e2833004 	add	r3, r3, #4	; 0x4
30000864:	e50b3008 	str	r3, [fp, #-8]
30000868:	e51b2010 	ldr	r2, [fp, #-16]
3000086c:	e51b300c 	ldr	r3, [fp, #-12]
30000870:	e1520003 	cmp	r2, r3
30000874:	3afffff1 	bcc	30000840 <relocate_code+0x28>
30000878:	e28bd000 	add	sp, fp, #0	; 0x0
3000087c:	e8bd0800 	pop	{fp}
30000880:	e12fff1e 	bx	lr
30000884:	30000000 	.word	0x30000000
30000888:	300009f8 	.word	0x300009f8

3000088c <clean_bss>:
3000088c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000890:	e28db000 	add	fp, sp, #0	; 0x0
30000894:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000898:	e59f3040 	ldr	r3, [pc, #64]	; 300008e0 <clean_bss+0x54>
3000089c:	e50b300c 	str	r3, [fp, #-12]
300008a0:	e59f303c 	ldr	r3, [pc, #60]	; 300008e4 <clean_bss+0x58>
300008a4:	e50b3008 	str	r3, [fp, #-8]
300008a8:	ea000005 	b	300008c4 <clean_bss+0x38>
300008ac:	e51b200c 	ldr	r2, [fp, #-12]
300008b0:	e3a03000 	mov	r3, #0	; 0x0
300008b4:	e5823000 	str	r3, [r2]
300008b8:	e51b300c 	ldr	r3, [fp, #-12]
300008bc:	e2833004 	add	r3, r3, #4	; 0x4
300008c0:	e50b300c 	str	r3, [fp, #-12]
300008c4:	e51b200c 	ldr	r2, [fp, #-12]
300008c8:	e51b3008 	ldr	r3, [fp, #-8]
300008cc:	e1520003 	cmp	r2, r3
300008d0:	9afffff5 	bls	300008ac <clean_bss+0x20>
300008d4:	e28bd000 	add	sp, fp, #0	; 0x0
300008d8:	e8bd0800 	pop	{fp}
300008dc:	e12fff1e 	bx	lr
300008e0:	300009f8 	.word	0x300009f8
300008e4:	300009f8 	.word	0x300009f8

300008e8 <sdram_test>:
300008e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300008ec:	e28db000 	add	fp, sp, #0	; 0x0
300008f0:	e24dd014 	sub	sp, sp, #20	; 0x14
300008f4:	e3a03203 	mov	r3, #805306368	; 0x30000000
300008f8:	e2833a0f 	add	r3, r3, #61440	; 0xf000
300008fc:	e50b300c 	str	r3, [fp, #-12]
30000900:	e3a03000 	mov	r3, #0	; 0x0
30000904:	e50b3008 	str	r3, [fp, #-8]
30000908:	ea000007 	b	3000092c <sdram_test+0x44>
3000090c:	e51b2008 	ldr	r2, [fp, #-8]
30000910:	e51b300c 	ldr	r3, [fp, #-12]
30000914:	e0832002 	add	r2, r3, r2
30000918:	e3a03055 	mov	r3, #85	; 0x55
3000091c:	e5c23000 	strb	r3, [r2]
30000920:	e51b3008 	ldr	r3, [fp, #-8]
30000924:	e2833001 	add	r3, r3, #1	; 0x1
30000928:	e50b3008 	str	r3, [fp, #-8]
3000092c:	e51b2008 	ldr	r2, [fp, #-8]
30000930:	e3a03ff9 	mov	r3, #996	; 0x3e4
30000934:	e2833003 	add	r3, r3, #3	; 0x3
30000938:	e1520003 	cmp	r2, r3
3000093c:	dafffff2 	ble	3000090c <sdram_test+0x24>
30000940:	e3a03000 	mov	r3, #0	; 0x0
30000944:	e50b3008 	str	r3, [fp, #-8]
30000948:	ea00000c 	b	30000980 <sdram_test+0x98>
3000094c:	e51b2008 	ldr	r2, [fp, #-8]
30000950:	e51b300c 	ldr	r3, [fp, #-12]
30000954:	e0833002 	add	r3, r3, r2
30000958:	e5d33000 	ldrb	r3, [r3]
3000095c:	e20330ff 	and	r3, r3, #255	; 0xff
30000960:	e3530055 	cmp	r3, #85	; 0x55
30000964:	0a000002 	beq	30000974 <sdram_test+0x8c>
30000968:	e3e03000 	mvn	r3, #0	; 0x0
3000096c:	e50b3010 	str	r3, [fp, #-16]
30000970:	ea000009 	b	3000099c <sdram_test+0xb4>
30000974:	e51b3008 	ldr	r3, [fp, #-8]
30000978:	e2833001 	add	r3, r3, #1	; 0x1
3000097c:	e50b3008 	str	r3, [fp, #-8]
30000980:	e51b2008 	ldr	r2, [fp, #-8]
30000984:	e3a03ff9 	mov	r3, #996	; 0x3e4
30000988:	e2833003 	add	r3, r3, #3	; 0x3
3000098c:	e1520003 	cmp	r2, r3
30000990:	daffffed 	ble	3000094c <sdram_test+0x64>
30000994:	e3a03000 	mov	r3, #0	; 0x0
30000998:	e50b3010 	str	r3, [fp, #-16]
3000099c:	e51b3010 	ldr	r3, [fp, #-16]
300009a0:	e1a00003 	mov	r0, r3
300009a4:	e28bd000 	add	sp, fp, #0	; 0x0
300009a8:	e8bd0800 	pop	{fp}
300009ac:	e12fff1e 	bx	lr
Disassembly of section .rodata:

300009b0 <.rodata>:
300009b0:	6e696f70 	mcrvs	15, 3, r6, cr9, cr0, {3}
300009b4:	20612074 	.word	0x20612074
300009b8:	00000a0d 	andeq	r0, r0, sp, lsl #20
300009bc:	6e696f70 	mcrvs	15, 3, r6, cr9, cr0, {3}
300009c0:	20622074 	.word	0x20622074
300009c4:	00000a0d 	andeq	r0, r0, sp, lsl #20
300009c8:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416
300009cc:	3432206f 	ldrtcc	r2, [r2], #-111
300009d0:	0d203034 	.word	0x0d203034
300009d4:	0000000a 	andeq	r0, r0, sl
300009d8:	61726473 	cmnvs	r2, r3, ror r4
300009dc:	7365746d 	cmnvc	r5, #1828716544	; 0x6d000000
300009e0:	78252074 	.word	0x78252074
300009e4:	00000d0a 	andeq	r0, r0, sl, lsl #26
Disassembly of section .data:

300009e8 <code>:
300009e8:	33323130 	.word	0x33323130
300009ec:	37363534 	.word	0x37363534
300009f0:	62613938 	.word	0x62613938
300009f4:	66656463 	.word	0x66656463
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
  30:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd10 <bss_end+0xcffff318>
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
  84:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd64 <bss_end+0xcffff36c>
  88:	72656372 	rsbvc	r6, r5, #-939524095	; 0xc8000001
  8c:	2b472079 	blcs	11c8278 <code_start-0x2ee37d88>
  90:	694c202b 	stmdbvs	ip, {r0, r1, r3, r5, sp}^
  94:	32206574 	eorcc	r6, r0, #486539264	; 0x1d000000
  98:	71383030 	teqvc	r8, r0, lsr r0
  9c:	32372d33 	eorscc	r2, r7, #3264	; 0xcc0
  a0:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  a4:	00322e33 	eorseq	r2, r2, r3, lsr lr
