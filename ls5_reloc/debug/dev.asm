
./build/dev.elf:     file format elf32-littlearm

Disassembly of section .text:

30000000 <_start>:
30000000:	e3a01453 	mov	r1, #1392508928	; 0x53000000
30000004:	e3a00000 	mov	r0, #0	; 0x0
30000008:	e5810000 	str	r0, [r1]
3000000c:	e59f1048 	ldr	r1, [pc, #72]	; 3000005c <halt+0x4>
30000010:	e3a00005 	mov	r0, #5	; 0x5
30000014:	e5810000 	str	r0, [r1]
30000018:	e59f1040 	ldr	r1, [pc, #64]	; 30000060 <halt+0x8>
3000001c:	e59f0040 	ldr	r0, [pc, #64]	; 30000064 <halt+0xc>
30000020:	e5810000 	str	r0, [r1]
30000024:	e59fd03c 	ldr	sp, [pc, #60]	; 30000068 <halt+0x10>
30000028:	e3a00000 	mov	r0, #0	; 0x0
3000002c:	e5901000 	ldr	r1, [r0]
30000030:	e59f2034 	ldr	r2, [pc, #52]	; 3000006c <halt+0x14>
30000034:	e5802000 	str	r2, [r0]
30000038:	e5903000 	ldr	r3, [r0]
3000003c:	e1520003 	cmp	r2, r3
30000040:	03a0da01 	moveq	sp, #4096	; 0x1000
30000044:	e5801000 	str	r1, [r0]
30000048:	eb000182 	bl	30000658 <sdram_init>
3000004c:	eb0001a5 	bl	300006e8 <relocate_code>
30000050:	eb0001c1 	bl	3000075c <clean_bss>
30000054:	e59ff014 	ldr	pc, [pc, #20]	; 30000070 <halt+0x18>

30000058 <halt>:
30000058:	eafffffe 	b	30000058 <halt>
3000005c:	4c000014 	.word	0x4c000014
30000060:	4c000004 	.word	0x4c000004
30000064:	0005c011 	.word	0x0005c011
30000068:	40001000 	.word	0x40001000
3000006c:	00001234 	.word	0x00001234
30000070:	30000604 	.word	0x30000604

30000074 <delay>:
30000074:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000078:	e28db000 	add	fp, sp, #0	; 0x0
3000007c:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000080:	e50b0008 	str	r0, [fp, #-8]
30000084:	e51b3008 	ldr	r3, [fp, #-8]
30000088:	e3530000 	cmp	r3, #0	; 0x0
3000008c:	03a03000 	moveq	r3, #0	; 0x0
30000090:	13a03001 	movne	r3, #1	; 0x1
30000094:	e20320ff 	and	r2, r3, #255	; 0xff
30000098:	e51b3008 	ldr	r3, [fp, #-8]
3000009c:	e2433001 	sub	r3, r3, #1	; 0x1
300000a0:	e50b3008 	str	r3, [fp, #-8]
300000a4:	e3520000 	cmp	r2, #0	; 0x0
300000a8:	1afffff5 	bne	30000084 <delay+0x10>
300000ac:	e28bd000 	add	sp, fp, #0	; 0x0
300000b0:	e8bd0800 	pop	{fp}
300000b4:	e12fff1e 	bx	lr

300000b8 <init_led>:
300000b8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300000bc:	e28db000 	add	fp, sp, #0	; 0x0
300000c0:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300000c4:	e2833050 	add	r3, r3, #80	; 0x50
300000c8:	e3a02c15 	mov	r2, #5376	; 0x1500
300000cc:	e5832000 	str	r2, [r3]
300000d0:	e28bd000 	add	sp, fp, #0	; 0x0
300000d4:	e8bd0800 	pop	{fp}
300000d8:	e12fff1e 	bx	lr

300000dc <dim_led>:
300000dc:	e92d4800 	push	{fp, lr}
300000e0:	e28db004 	add	fp, sp, #4	; 0x4
300000e4:	e24dd010 	sub	sp, sp, #16	; 0x10
300000e8:	e50b0010 	str	r0, [fp, #-16]
300000ec:	e3a03062 	mov	r3, #98	; 0x62
300000f0:	e54b3005 	strb	r3, [fp, #-5]
300000f4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300000f8:	e2833050 	add	r3, r3, #80	; 0x50
300000fc:	e51b2010 	ldr	r2, [fp, #-16]
30000100:	e5832000 	str	r2, [r3]
30000104:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000108:	e2833054 	add	r3, r3, #84	; 0x54
3000010c:	e3a02050 	mov	r2, #80	; 0x50
30000110:	e5832000 	str	r2, [r3]
30000114:	e3a00b61 	mov	r0, #99328	; 0x18400
30000118:	e2800e2a 	add	r0, r0, #672	; 0x2a0
3000011c:	ebffffd4 	bl	30000074 <delay>
30000120:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000124:	e2833054 	add	r3, r3, #84	; 0x54
30000128:	e3a02020 	mov	r2, #32	; 0x20
3000012c:	e5832000 	str	r2, [r3]
30000130:	e3a00b61 	mov	r0, #99328	; 0x18400
30000134:	e2800e2a 	add	r0, r0, #672	; 0x2a0
30000138:	ebffffcd 	bl	30000074 <delay>
3000013c:	eafffff0 	b	30000104 <dim_led+0x28>

30000140 <open_led>:
30000140:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000144:	e28db000 	add	fp, sp, #0	; 0x0
30000148:	e24dd00c 	sub	sp, sp, #12	; 0xc
3000014c:	e50b0008 	str	r0, [fp, #-8]
30000150:	e51b3008 	ldr	r3, [fp, #-8]
30000154:	e3530000 	cmp	r3, #0	; 0x0
30000158:	0a000004 	beq	30000170 <open_led+0x30>
3000015c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000160:	e2833054 	add	r3, r3, #84	; 0x54
30000164:	e3a02020 	mov	r2, #32	; 0x20
30000168:	e5832000 	str	r2, [r3]
3000016c:	ea000003 	b	30000180 <open_led+0x40>
30000170:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000174:	e2833054 	add	r3, r3, #84	; 0x54
30000178:	e3a02050 	mov	r2, #80	; 0x50
3000017c:	e5832000 	str	r2, [r3]
30000180:	e28bd000 	add	sp, fp, #0	; 0x0
30000184:	e8bd0800 	pop	{fp}
30000188:	e12fff1e 	bx	lr

3000018c <uart_init>:
3000018c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000190:	e28db000 	add	fp, sp, #0	; 0x0
30000194:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000198:	e2822070 	add	r2, r2, #112	; 0x70
3000019c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300001a0:	e2833070 	add	r3, r3, #112	; 0x70
300001a4:	e5933000 	ldr	r3, [r3]
300001a8:	e3c330a0 	bic	r3, r3, #160	; 0xa0
300001ac:	e5823000 	str	r3, [r2]
300001b0:	e3a02456 	mov	r2, #1442840576	; 0x56000000
300001b4:	e2822070 	add	r2, r2, #112	; 0x70
300001b8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300001bc:	e2833070 	add	r3, r3, #112	; 0x70
300001c0:	e5933000 	ldr	r3, [r3]
300001c4:	e38330a0 	orr	r3, r3, #160	; 0xa0
300001c8:	e5823000 	str	r3, [r2]
300001cc:	e3a02456 	mov	r2, #1442840576	; 0x56000000
300001d0:	e2822078 	add	r2, r2, #120	; 0x78
300001d4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
300001d8:	e2833078 	add	r3, r3, #120	; 0x78
300001dc:	e5933000 	ldr	r3, [r3]
300001e0:	e3c3300c 	bic	r3, r3, #12	; 0xc
300001e4:	e5823000 	str	r3, [r2]
300001e8:	e3a03205 	mov	r3, #1342177280	; 0x50000000
300001ec:	e2833028 	add	r3, r3, #40	; 0x28
300001f0:	e3a0201a 	mov	r2, #26	; 0x1a
300001f4:	e5832000 	str	r2, [r3]
300001f8:	e3a02205 	mov	r2, #1342177280	; 0x50000000
300001fc:	e3a03003 	mov	r3, #3	; 0x3
30000200:	e5823000 	str	r3, [r2]
30000204:	e3a02245 	mov	r2, #1342177284	; 0x50000004
30000208:	e3a03005 	mov	r3, #5	; 0x5
3000020c:	e5823000 	str	r3, [r2]
30000210:	e28bd000 	add	sp, fp, #0	; 0x0
30000214:	e8bd0800 	pop	{fp}
30000218:	e12fff1e 	bx	lr

3000021c <putc>:
3000021c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000220:	e28db000 	add	fp, sp, #0	; 0x0
30000224:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000228:	e50b0008 	str	r0, [fp, #-8]
3000022c:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000230:	e2833010 	add	r3, r3, #16	; 0x10
30000234:	e5933000 	ldr	r3, [r3]
30000238:	e2033004 	and	r3, r3, #4	; 0x4
3000023c:	e3530000 	cmp	r3, #0	; 0x0
30000240:	0afffff9 	beq	3000022c <putc+0x10>
30000244:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000248:	e2833020 	add	r3, r3, #32	; 0x20
3000024c:	e51b2008 	ldr	r2, [fp, #-8]
30000250:	e5832000 	str	r2, [r3]
30000254:	e28bd000 	add	sp, fp, #0	; 0x0
30000258:	e8bd0800 	pop	{fp}
3000025c:	e12fff1e 	bx	lr

30000260 <getc>:
30000260:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000264:	e28db000 	add	fp, sp, #0	; 0x0
30000268:	e3a03205 	mov	r3, #1342177280	; 0x50000000
3000026c:	e2833010 	add	r3, r3, #16	; 0x10
30000270:	e5933000 	ldr	r3, [r3]
30000274:	e2033001 	and	r3, r3, #1	; 0x1
30000278:	e3530000 	cmp	r3, #0	; 0x0
3000027c:	0afffff9 	beq	30000268 <getc+0x8>
30000280:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000284:	e2833024 	add	r3, r3, #36	; 0x24
30000288:	e5933000 	ldr	r3, [r3]
3000028c:	e1a00003 	mov	r0, r3
30000290:	e28bd000 	add	sp, fp, #0	; 0x0
30000294:	e8bd0800 	pop	{fp}
30000298:	e12fff1e 	bx	lr

3000029c <puts>:
3000029c:	e92d4800 	push	{fp, lr}
300002a0:	e28db004 	add	fp, sp, #4	; 0x4
300002a4:	e24dd008 	sub	sp, sp, #8	; 0x8
300002a8:	e50b0008 	str	r0, [fp, #-8]
300002ac:	ea000006 	b	300002cc <puts+0x30>
300002b0:	e51b3008 	ldr	r3, [fp, #-8]
300002b4:	e5d33000 	ldrb	r3, [r3]
300002b8:	e1a00003 	mov	r0, r3
300002bc:	ebffffd6 	bl	3000021c <putc>
300002c0:	e51b3008 	ldr	r3, [fp, #-8]
300002c4:	e2833001 	add	r3, r3, #1	; 0x1
300002c8:	e50b3008 	str	r3, [fp, #-8]
300002cc:	e51b3008 	ldr	r3, [fp, #-8]
300002d0:	e5d33000 	ldrb	r3, [r3]
300002d4:	e3530000 	cmp	r3, #0	; 0x0
300002d8:	1afffff4 	bne	300002b0 <puts+0x14>
300002dc:	e24bd004 	sub	sp, fp, #4	; 0x4
300002e0:	e8bd4800 	pop	{fp, lr}
300002e4:	e12fff1e 	bx	lr

300002e8 <print_hex>:
300002e8:	e92d4800 	push	{fp, lr}
300002ec:	e28db004 	add	fp, sp, #4	; 0x4
300002f0:	e24dd018 	sub	sp, sp, #24	; 0x18
300002f4:	e50b0018 	str	r0, [fp, #-24]
300002f8:	e24b2013 	sub	r2, fp, #19	; 0x13
300002fc:	e50b201c 	str	r2, [fp, #-28]
30000300:	e3a03000 	mov	r3, #0	; 0x0
30000304:	e51bc01c 	ldr	ip, [fp, #-28]
30000308:	e5cc3000 	strb	r3, [ip]
3000030c:	e51b201c 	ldr	r2, [fp, #-28]
30000310:	e2822001 	add	r2, r2, #1	; 0x1
30000314:	e50b201c 	str	r2, [fp, #-28]
30000318:	e3a03000 	mov	r3, #0	; 0x0
3000031c:	e51bc01c 	ldr	ip, [fp, #-28]
30000320:	e5cc3000 	strb	r3, [ip]
30000324:	e51b201c 	ldr	r2, [fp, #-28]
30000328:	e2822001 	add	r2, r2, #1	; 0x1
3000032c:	e50b201c 	str	r2, [fp, #-28]
30000330:	e3a03000 	mov	r3, #0	; 0x0
30000334:	e51bc01c 	ldr	ip, [fp, #-28]
30000338:	e5cc3000 	strb	r3, [ip]
3000033c:	e51b201c 	ldr	r2, [fp, #-28]
30000340:	e2822001 	add	r2, r2, #1	; 0x1
30000344:	e50b201c 	str	r2, [fp, #-28]
30000348:	e3a03000 	mov	r3, #0	; 0x0
3000034c:	e51bc01c 	ldr	ip, [fp, #-28]
30000350:	e5cc3000 	strb	r3, [ip]
30000354:	e51b201c 	ldr	r2, [fp, #-28]
30000358:	e2822001 	add	r2, r2, #1	; 0x1
3000035c:	e50b201c 	str	r2, [fp, #-28]
30000360:	e3a03000 	mov	r3, #0	; 0x0
30000364:	e51bc01c 	ldr	ip, [fp, #-28]
30000368:	e5cc3000 	strb	r3, [ip]
3000036c:	e51b201c 	ldr	r2, [fp, #-28]
30000370:	e2822001 	add	r2, r2, #1	; 0x1
30000374:	e50b201c 	str	r2, [fp, #-28]
30000378:	e3a03000 	mov	r3, #0	; 0x0
3000037c:	e51bc01c 	ldr	ip, [fp, #-28]
30000380:	e5cc3000 	strb	r3, [ip]
30000384:	e51b201c 	ldr	r2, [fp, #-28]
30000388:	e2822001 	add	r2, r2, #1	; 0x1
3000038c:	e50b201c 	str	r2, [fp, #-28]
30000390:	e3a03000 	mov	r3, #0	; 0x0
30000394:	e51bc01c 	ldr	ip, [fp, #-28]
30000398:	e5cc3000 	strb	r3, [ip]
3000039c:	e51b201c 	ldr	r2, [fp, #-28]
300003a0:	e2822001 	add	r2, r2, #1	; 0x1
300003a4:	e50b201c 	str	r2, [fp, #-28]
300003a8:	e3a03000 	mov	r3, #0	; 0x0
300003ac:	e51bc01c 	ldr	ip, [fp, #-28]
300003b0:	e5cc3000 	strb	r3, [ip]
300003b4:	e51b201c 	ldr	r2, [fp, #-28]
300003b8:	e2822001 	add	r2, r2, #1	; 0x1
300003bc:	e50b201c 	str	r2, [fp, #-28]
300003c0:	e3a03000 	mov	r3, #0	; 0x0
300003c4:	e51bc01c 	ldr	ip, [fp, #-28]
300003c8:	e5cc3000 	strb	r3, [ip]
300003cc:	e51b201c 	ldr	r2, [fp, #-28]
300003d0:	e2822001 	add	r2, r2, #1	; 0x1
300003d4:	e50b201c 	str	r2, [fp, #-28]
300003d8:	e3a03000 	mov	r3, #0	; 0x0
300003dc:	e51bc01c 	ldr	ip, [fp, #-28]
300003e0:	e5cc3000 	strb	r3, [ip]
300003e4:	e51b201c 	ldr	r2, [fp, #-28]
300003e8:	e2822001 	add	r2, r2, #1	; 0x1
300003ec:	e50b201c 	str	r2, [fp, #-28]
300003f0:	e3a03000 	mov	r3, #0	; 0x0
300003f4:	e51bc01c 	ldr	ip, [fp, #-28]
300003f8:	e5cc3000 	strb	r3, [ip]
300003fc:	e51b201c 	ldr	r2, [fp, #-28]
30000400:	e2822001 	add	r2, r2, #1	; 0x1
30000404:	e3a03030 	mov	r3, #48	; 0x30
30000408:	e54b3013 	strb	r3, [fp, #-19]
3000040c:	e3a03078 	mov	r3, #120	; 0x78
30000410:	e54b3012 	strb	r3, [fp, #-18]
30000414:	e3a03000 	mov	r3, #0	; 0x0
30000418:	e50b3008 	str	r3, [fp, #-8]
3000041c:	ea000011 	b	30000468 <print_hex+0x180>
30000420:	e51b3008 	ldr	r3, [fp, #-8]
30000424:	e2630009 	rsb	r0, r3, #9	; 0x9
30000428:	e51b3018 	ldr	r3, [fp, #-24]
3000042c:	e203200f 	and	r2, r3, #15	; 0xf
30000430:	e59f3054 	ldr	r3, [pc, #84]	; 3000048c <print_hex+0x1a4>
30000434:	e7d31002 	ldrb	r1, [r3, r2]
30000438:	e3e0200e 	mvn	r2, #14	; 0xe
3000043c:	e24bc004 	sub	ip, fp, #4	; 0x4
30000440:	e08c3000 	add	r3, ip, r0
30000444:	e0832002 	add	r2, r3, r2
30000448:	e1a03001 	mov	r3, r1
3000044c:	e5c23000 	strb	r3, [r2]
30000450:	e51b3018 	ldr	r3, [fp, #-24]
30000454:	e1a03243 	asr	r3, r3, #4
30000458:	e50b3018 	str	r3, [fp, #-24]
3000045c:	e51b3008 	ldr	r3, [fp, #-8]
30000460:	e2833001 	add	r3, r3, #1	; 0x1
30000464:	e50b3008 	str	r3, [fp, #-8]
30000468:	e51b3008 	ldr	r3, [fp, #-8]
3000046c:	e3530007 	cmp	r3, #7	; 0x7
30000470:	daffffea 	ble	30000420 <print_hex+0x138>
30000474:	e24b3013 	sub	r3, fp, #19	; 0x13
30000478:	e1a00003 	mov	r0, r3
3000047c:	ebffff86 	bl	3000029c <puts>
30000480:	e24bd004 	sub	sp, fp, #4	; 0x4
30000484:	e8bd4800 	pop	{fp, lr}
30000488:	e12fff1e 	bx	lr
3000048c:	300008a0 	.word	0x300008a0

30000490 <printf>:
30000490:	e92d000f 	push	{r0, r1, r2, r3}
30000494:	e92d4800 	push	{fp, lr}
30000498:	e28db004 	add	fp, sp, #4	; 0x4
3000049c:	e24dd008 	sub	sp, sp, #8	; 0x8
300004a0:	e28b3004 	add	r3, fp, #4	; 0x4
300004a4:	e2833004 	add	r3, r3, #4	; 0x4
300004a8:	e50b3008 	str	r3, [fp, #-8]
300004ac:	ea00004a 	b	300005dc <printf+0x14c>
300004b0:	e59b3004 	ldr	r3, [fp, #4]
300004b4:	e5d33000 	ldrb	r3, [r3]
300004b8:	e3530025 	cmp	r3, #37	; 0x25
300004bc:	1a00003f 	bne	300005c0 <printf+0x130>
300004c0:	e59b3004 	ldr	r3, [fp, #4]
300004c4:	e2833001 	add	r3, r3, #1	; 0x1
300004c8:	e5d33000 	ldrb	r3, [r3]
300004cc:	e2433063 	sub	r3, r3, #99	; 0x63
300004d0:	e3530015 	cmp	r3, #21	; 0x15
300004d4:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
300004d8:	ea000038 	b	300005c0 <printf+0x130>
300004dc:	30000594 	.word	0x30000594
300004e0:	300005c0 	.word	0x300005c0
300004e4:	300005c0 	.word	0x300005c0
300004e8:	300005c0 	.word	0x300005c0
300004ec:	300005c0 	.word	0x300005c0
300004f0:	300005c0 	.word	0x300005c0
300004f4:	300005c0 	.word	0x300005c0
300004f8:	300005c0 	.word	0x300005c0
300004fc:	300005c0 	.word	0x300005c0
30000500:	300005c0 	.word	0x300005c0
30000504:	300005c0 	.word	0x300005c0
30000508:	300005c0 	.word	0x300005c0
3000050c:	300005c0 	.word	0x300005c0
30000510:	300005c0 	.word	0x300005c0
30000514:	300005c0 	.word	0x300005c0
30000518:	300005c0 	.word	0x300005c0
3000051c:	30000564 	.word	0x30000564
30000520:	300005c0 	.word	0x300005c0
30000524:	300005c0 	.word	0x300005c0
30000528:	300005c0 	.word	0x300005c0
3000052c:	300005c0 	.word	0x300005c0
30000530:	30000534 	.word	0x30000534
30000534:	e59b3004 	ldr	r3, [fp, #4]
30000538:	e2833002 	add	r3, r3, #2	; 0x2
3000053c:	e58b3004 	str	r3, [fp, #4]
30000540:	e51b3008 	ldr	r3, [fp, #-8]
30000544:	e2833004 	add	r3, r3, #4	; 0x4
30000548:	e50b3008 	str	r3, [fp, #-8]
3000054c:	e51b3008 	ldr	r3, [fp, #-8]
30000550:	e2433004 	sub	r3, r3, #4	; 0x4
30000554:	e5933000 	ldr	r3, [r3]
30000558:	e1a00003 	mov	r0, r3
3000055c:	ebffff61 	bl	300002e8 <print_hex>
30000560:	ea000016 	b	300005c0 <printf+0x130>
30000564:	e59b3004 	ldr	r3, [fp, #4]
30000568:	e2833002 	add	r3, r3, #2	; 0x2
3000056c:	e58b3004 	str	r3, [fp, #4]
30000570:	e51b3008 	ldr	r3, [fp, #-8]
30000574:	e2833004 	add	r3, r3, #4	; 0x4
30000578:	e50b3008 	str	r3, [fp, #-8]
3000057c:	e51b3008 	ldr	r3, [fp, #-8]
30000580:	e2433004 	sub	r3, r3, #4	; 0x4
30000584:	e5933000 	ldr	r3, [r3]
30000588:	e1a00003 	mov	r0, r3
3000058c:	ebffff42 	bl	3000029c <puts>
30000590:	ea00000a 	b	300005c0 <printf+0x130>
30000594:	e59b3004 	ldr	r3, [fp, #4]
30000598:	e2833002 	add	r3, r3, #2	; 0x2
3000059c:	e58b3004 	str	r3, [fp, #4]
300005a0:	e51b3008 	ldr	r3, [fp, #-8]
300005a4:	e2833004 	add	r3, r3, #4	; 0x4
300005a8:	e50b3008 	str	r3, [fp, #-8]
300005ac:	e51b3008 	ldr	r3, [fp, #-8]
300005b0:	e2433004 	sub	r3, r3, #4	; 0x4
300005b4:	e5933000 	ldr	r3, [r3]
300005b8:	e1a00003 	mov	r0, r3
300005bc:	ebffff16 	bl	3000021c <putc>
300005c0:	e59b3004 	ldr	r3, [fp, #4]
300005c4:	e5d33000 	ldrb	r3, [r3]
300005c8:	e1a00003 	mov	r0, r3
300005cc:	ebffff12 	bl	3000021c <putc>
300005d0:	e59b3004 	ldr	r3, [fp, #4]
300005d4:	e2833001 	add	r3, r3, #1	; 0x1
300005d8:	e58b3004 	str	r3, [fp, #4]
300005dc:	e59b3004 	ldr	r3, [fp, #4]
300005e0:	e5d33000 	ldrb	r3, [r3]
300005e4:	e3530000 	cmp	r3, #0	; 0x0
300005e8:	1affffb0 	bne	300004b0 <printf+0x20>
300005ec:	e3a03000 	mov	r3, #0	; 0x0
300005f0:	e50b3008 	str	r3, [fp, #-8]
300005f4:	e24bd004 	sub	sp, fp, #4	; 0x4
300005f8:	e8bd4800 	pop	{fp, lr}
300005fc:	e28dd010 	add	sp, sp, #16	; 0x10
30000600:	e12fff1e 	bx	lr

30000604 <main>:
30000604:	e92d4800 	push	{fp, lr}
30000608:	e28db004 	add	fp, sp, #4	; 0x4
3000060c:	e24dd008 	sub	sp, sp, #8	; 0x8
30000610:	ebfffea8 	bl	300000b8 <init_led>
30000614:	e3a00001 	mov	r0, #1	; 0x1
30000618:	ebfffec8 	bl	30000140 <open_led>
3000061c:	ebfffeda 	bl	3000018c <uart_init>
30000620:	e3a00000 	mov	r0, #0	; 0x0
30000624:	ebfffec5 	bl	30000140 <open_led>
30000628:	e3a00041 	mov	r0, #65	; 0x41
3000062c:	ebfffefa 	bl	3000021c <putc>
30000630:	e59f0018 	ldr	r0, [pc, #24]	; 30000650 <main+0x4c>
30000634:	ebffff18 	bl	3000029c <puts>
30000638:	eb00005e 	bl	300007b8 <sdram_test>
3000063c:	e1a03000 	mov	r3, r0
30000640:	e59f000c 	ldr	r0, [pc, #12]	; 30000654 <main+0x50>
30000644:	e1a01003 	mov	r1, r3
30000648:	ebffff90 	bl	30000490 <printf>
3000064c:	eafffffe 	b	3000064c <main+0x48>
30000650:	30000880 	.word	0x30000880
30000654:	30000890 	.word	0x30000890

30000658 <sdram_init>:
30000658:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
3000065c:	e28db000 	add	fp, sp, #0	; 0x0
30000660:	e3a02312 	mov	r2, #1207959552	; 0x48000000
30000664:	e3a03422 	mov	r3, #570425344	; 0x22000000
30000668:	e5823000 	str	r3, [r2]
3000066c:	e3a02312 	mov	r2, #1207959552	; 0x48000000
30000670:	e282201c 	add	r2, r2, #28	; 0x1c
30000674:	e3a03906 	mov	r3, #98304	; 0x18000
30000678:	e2833001 	add	r3, r3, #1	; 0x1
3000067c:	e5823000 	str	r3, [r2]
30000680:	e3a02312 	mov	r2, #1207959552	; 0x48000000
30000684:	e2822020 	add	r2, r2, #32	; 0x20
30000688:	e3a03906 	mov	r3, #98304	; 0x18000
3000068c:	e2833001 	add	r3, r3, #1	; 0x1
30000690:	e5823000 	str	r3, [r2]
30000694:	e3a02312 	mov	r2, #1207959552	; 0x48000000
30000698:	e2822024 	add	r2, r2, #36	; 0x24
3000069c:	e3a03721 	mov	r3, #8650752	; 0x840000
300006a0:	e2833e4f 	add	r3, r3, #1264	; 0x4f0
300006a4:	e2833005 	add	r3, r3, #5	; 0x5
300006a8:	e5823000 	str	r3, [r2]
300006ac:	e3a03312 	mov	r3, #1207959552	; 0x48000000
300006b0:	e2833028 	add	r3, r3, #40	; 0x28
300006b4:	e3a020b1 	mov	r2, #177	; 0xb1
300006b8:	e5832000 	str	r2, [r3]
300006bc:	e3a03312 	mov	r3, #1207959552	; 0x48000000
300006c0:	e283302c 	add	r3, r3, #44	; 0x2c
300006c4:	e3a02020 	mov	r2, #32	; 0x20
300006c8:	e5832000 	str	r2, [r3]
300006cc:	e3a03312 	mov	r3, #1207959552	; 0x48000000
300006d0:	e2833030 	add	r3, r3, #48	; 0x30
300006d4:	e3a02020 	mov	r2, #32	; 0x20
300006d8:	e5832000 	str	r2, [r3]
300006dc:	e28bd000 	add	sp, fp, #0	; 0x0
300006e0:	e8bd0800 	pop	{fp}
300006e4:	e12fff1e 	bx	lr

300006e8 <relocate_code>:
300006e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300006ec:	e28db000 	add	fp, sp, #0	; 0x0
300006f0:	e24dd014 	sub	sp, sp, #20	; 0x14
300006f4:	e59f3058 	ldr	r3, [pc, #88]	; 30000754 <relocate_code+0x6c>
300006f8:	e50b3010 	str	r3, [fp, #-16]
300006fc:	e59f3054 	ldr	r3, [pc, #84]	; 30000758 <relocate_code+0x70>
30000700:	e50b300c 	str	r3, [fp, #-12]
30000704:	e3a03000 	mov	r3, #0	; 0x0
30000708:	e50b3008 	str	r3, [fp, #-8]
3000070c:	ea000009 	b	30000738 <relocate_code+0x50>
30000710:	e51b3008 	ldr	r3, [fp, #-8]
30000714:	e5932000 	ldr	r2, [r3]
30000718:	e51b3010 	ldr	r3, [fp, #-16]
3000071c:	e5832000 	str	r2, [r3]
30000720:	e51b3010 	ldr	r3, [fp, #-16]
30000724:	e2833004 	add	r3, r3, #4	; 0x4
30000728:	e50b3010 	str	r3, [fp, #-16]
3000072c:	e51b3008 	ldr	r3, [fp, #-8]
30000730:	e2833004 	add	r3, r3, #4	; 0x4
30000734:	e50b3008 	str	r3, [fp, #-8]
30000738:	e51b2010 	ldr	r2, [fp, #-16]
3000073c:	e51b300c 	ldr	r3, [fp, #-12]
30000740:	e1520003 	cmp	r2, r3
30000744:	3afffff1 	bcc	30000710 <relocate_code+0x28>
30000748:	e28bd000 	add	sp, fp, #0	; 0x0
3000074c:	e8bd0800 	pop	{fp}
30000750:	e12fff1e 	bx	lr
30000754:	30000000 	.word	0x30000000
30000758:	300008b0 	.word	0x300008b0

3000075c <clean_bss>:
3000075c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000760:	e28db000 	add	fp, sp, #0	; 0x0
30000764:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000768:	e59f3040 	ldr	r3, [pc, #64]	; 300007b0 <clean_bss+0x54>
3000076c:	e50b300c 	str	r3, [fp, #-12]
30000770:	e59f303c 	ldr	r3, [pc, #60]	; 300007b4 <clean_bss+0x58>
30000774:	e50b3008 	str	r3, [fp, #-8]
30000778:	ea000005 	b	30000794 <clean_bss+0x38>
3000077c:	e51b200c 	ldr	r2, [fp, #-12]
30000780:	e3a03000 	mov	r3, #0	; 0x0
30000784:	e5823000 	str	r3, [r2]
30000788:	e51b300c 	ldr	r3, [fp, #-12]
3000078c:	e2833004 	add	r3, r3, #4	; 0x4
30000790:	e50b300c 	str	r3, [fp, #-12]
30000794:	e51b200c 	ldr	r2, [fp, #-12]
30000798:	e51b3008 	ldr	r3, [fp, #-8]
3000079c:	e1520003 	cmp	r2, r3
300007a0:	9afffff5 	bls	3000077c <clean_bss+0x20>
300007a4:	e28bd000 	add	sp, fp, #0	; 0x0
300007a8:	e8bd0800 	pop	{fp}
300007ac:	e12fff1e 	bx	lr
300007b0:	300008b0 	.word	0x300008b0
300007b4:	300008b0 	.word	0x300008b0

300007b8 <sdram_test>:
300007b8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300007bc:	e28db000 	add	fp, sp, #0	; 0x0
300007c0:	e24dd014 	sub	sp, sp, #20	; 0x14
300007c4:	e3a03203 	mov	r3, #805306368	; 0x30000000
300007c8:	e2833a0f 	add	r3, r3, #61440	; 0xf000
300007cc:	e50b300c 	str	r3, [fp, #-12]
300007d0:	e3a03000 	mov	r3, #0	; 0x0
300007d4:	e50b3008 	str	r3, [fp, #-8]
300007d8:	ea000007 	b	300007fc <sdram_test+0x44>
300007dc:	e51b2008 	ldr	r2, [fp, #-8]
300007e0:	e51b300c 	ldr	r3, [fp, #-12]
300007e4:	e0832002 	add	r2, r3, r2
300007e8:	e3a03055 	mov	r3, #85	; 0x55
300007ec:	e5c23000 	strb	r3, [r2]
300007f0:	e51b3008 	ldr	r3, [fp, #-8]
300007f4:	e2833001 	add	r3, r3, #1	; 0x1
300007f8:	e50b3008 	str	r3, [fp, #-8]
300007fc:	e51b2008 	ldr	r2, [fp, #-8]
30000800:	e3a03ff9 	mov	r3, #996	; 0x3e4
30000804:	e2833003 	add	r3, r3, #3	; 0x3
30000808:	e1520003 	cmp	r2, r3
3000080c:	dafffff2 	ble	300007dc <sdram_test+0x24>
30000810:	e3a03000 	mov	r3, #0	; 0x0
30000814:	e50b3008 	str	r3, [fp, #-8]
30000818:	ea00000c 	b	30000850 <sdram_test+0x98>
3000081c:	e51b2008 	ldr	r2, [fp, #-8]
30000820:	e51b300c 	ldr	r3, [fp, #-12]
30000824:	e0833002 	add	r3, r3, r2
30000828:	e5d33000 	ldrb	r3, [r3]
3000082c:	e20330ff 	and	r3, r3, #255	; 0xff
30000830:	e3530055 	cmp	r3, #85	; 0x55
30000834:	0a000002 	beq	30000844 <sdram_test+0x8c>
30000838:	e3e03000 	mvn	r3, #0	; 0x0
3000083c:	e50b3010 	str	r3, [fp, #-16]
30000840:	ea000009 	b	3000086c <sdram_test+0xb4>
30000844:	e51b3008 	ldr	r3, [fp, #-8]
30000848:	e2833001 	add	r3, r3, #1	; 0x1
3000084c:	e50b3008 	str	r3, [fp, #-8]
30000850:	e51b2008 	ldr	r2, [fp, #-8]
30000854:	e3a03ff9 	mov	r3, #996	; 0x3e4
30000858:	e2833003 	add	r3, r3, #3	; 0x3
3000085c:	e1520003 	cmp	r2, r3
30000860:	daffffed 	ble	3000081c <sdram_test+0x64>
30000864:	e3a03000 	mov	r3, #0	; 0x0
30000868:	e50b3010 	str	r3, [fp, #-16]
3000086c:	e51b3010 	ldr	r3, [fp, #-16]
30000870:	e1a00003 	mov	r0, r3
30000874:	e28bd000 	add	sp, fp, #0	; 0x0
30000878:	e8bd0800 	pop	{fp}
3000087c:	e12fff1e 	bx	lr
Disassembly of section .rodata:

30000880 <.rodata>:
30000880:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416
30000884:	3432206f 	.word	0x3432206f
30000888:	0d203034 	stceq	0, cr3, [r0, #-208]!
3000088c:	0000000a 	andeq	r0, r0, sl
30000890:	61726473 	.word	0x61726473
30000894:	7365746d 	cmnvc	r5, #1828716544	; 0x6d000000
30000898:	78252074 	stmdavc	r5!, {r2, r4, r5, r6, sp}
3000089c:	00000d0a 	andeq	r0, r0, sl, lsl #26
Disassembly of section .data:

300008a0 <code>:
300008a0:	33323130 	.word	0x33323130
300008a4:	37363534 	.word	0x37363534
300008a8:	62613938 	.word	0x62613938
300008ac:	66656463 	.word	0x66656463
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
  30:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd10 <bss_end+0xcffff460>
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
  84:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd64 <bss_end+0xcffff4b4>
  88:	72656372 	rsbvc	r6, r5, #-939524095	; 0xc8000001
  8c:	2b472079 	blcs	11c8278 <code_start-0x2ee37d88>
  90:	694c202b 	stmdbvs	ip, {r0, r1, r3, r5, sp}^
  94:	32206574 	eorcc	r6, r0, #486539264	; 0x1d000000
  98:	71383030 	teqvc	r8, r0, lsr r0
  9c:	32372d33 	eorscc	r2, r7, #3264	; 0xcc0
  a0:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  a4:	00322e33 	eorseq	r2, r2, r3, lsr lr
