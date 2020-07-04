
./build/dev.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start>:
   0:	e3a01453 	mov	r1, #1392508928	; 0x53000000
   4:	e3a00000 	mov	r0, #0
   8:	e5810000 	str	r0, [r1]
   c:	e59f104c 	ldr	r1, [pc, #76]	; 60 <halt+0x4>
  10:	e3a00005 	mov	r0, #5
  14:	e5810000 	str	r0, [r1]
  18:	e59f1044 	ldr	r1, [pc, #68]	; 64 <halt+0x8>
  1c:	e59f0044 	ldr	r0, [pc, #68]	; 68 <halt+0xc>
  20:	e5810000 	str	r0, [r1]
  24:	e59fd040 	ldr	sp, [pc, #64]	; 6c <halt+0x10>
  28:	e3a00000 	mov	r0, #0
  2c:	e5901000 	ldr	r1, [r0]
  30:	e59f2038 	ldr	r2, [pc, #56]	; 70 <halt+0x14>
  34:	e5802000 	str	r2, [r0]
  38:	e5903000 	ldr	r3, [r0]
  3c:	e1520003 	cmp	r2, r3
  40:	03a0da01 	moveq	sp, #4096	; 0x1000
  44:	e5801000 	str	r1, [r0]
  48:	e3a00c15 	mov	r0, #5376	; 0x1500
  4c:	e3a01000 	mov	r1, #0
  50:	e3a02000 	mov	r2, #0
  54:	e3a03000 	mov	r3, #0
  58:	eb00013a 	bl	548 <main>

0000005c <halt>:
  5c:	eafffffe 	b	5c <halt>
  60:	4c000014 	stcmi	0, cr0, [r0], {20}
  64:	4c000004 	stcmi	0, cr0, [r0], {4}
  68:	0005c011 	andeq	ip, r5, r1, lsl r0
  6c:	40001000 	andmi	r1, r0, r0
  70:	00001234 	andeq	r1, r0, r4, lsr r2

00000074 <delay>:
  74:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  78:	e28db000 	add	fp, sp, #0
  7c:	e24dd00c 	sub	sp, sp, #12
  80:	e50b0008 	str	r0, [fp, #-8]
  84:	e1a00000 	nop			; (mov r0, r0)
  88:	e51b3008 	ldr	r3, [fp, #-8]
  8c:	e2432001 	sub	r2, r3, #1
  90:	e50b2008 	str	r2, [fp, #-8]
  94:	e3530000 	cmp	r3, #0
  98:	1afffffa 	bne	88 <delay+0x14>
  9c:	e1a00000 	nop			; (mov r0, r0)
  a0:	e28bd000 	add	sp, fp, #0
  a4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  a8:	e1a0f00e 	mov	pc, lr

000000ac <init_led>:
  ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  b0:	e28db000 	add	fp, sp, #0
  b4:	e59f3014 	ldr	r3, [pc, #20]	; d0 <init_led+0x24>
  b8:	e3a02c15 	mov	r2, #5376	; 0x1500
  bc:	e5832000 	str	r2, [r3]
  c0:	e1a00000 	nop			; (mov r0, r0)
  c4:	e28bd000 	add	sp, fp, #0
  c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  cc:	e1a0f00e 	mov	pc, lr
  d0:	56000050 			; <UNDEFINED> instruction: 0x56000050

000000d4 <dim_led>:
  d4:	e92d4800 	push	{fp, lr}
  d8:	e28db004 	add	fp, sp, #4
  dc:	e24dd020 	sub	sp, sp, #32
  e0:	e50b0010 	str	r0, [fp, #-16]
  e4:	e3a03062 	mov	r3, #98	; 0x62
  e8:	e54b3005 	strb	r3, [fp, #-5]
  ec:	e59f2064 	ldr	r2, [pc, #100]	; 158 <dim_led+0x84>
  f0:	e51b3010 	ldr	r3, [fp, #-16]
  f4:	e5823000 	str	r3, [r2]
  f8:	e59f305c 	ldr	r3, [pc, #92]	; 15c <dim_led+0x88>
  fc:	e3a02050 	mov	r2, #80	; 0x50
 100:	e5832000 	str	r2, [r3]
 104:	e59f0054 	ldr	r0, [pc, #84]	; 160 <dim_led+0x8c>
 108:	ebffffd9 	bl	74 <delay>
 10c:	e59f3048 	ldr	r3, [pc, #72]	; 15c <dim_led+0x88>
 110:	e3a02020 	mov	r2, #32
 114:	e5832000 	str	r2, [r3]
 118:	e59f0040 	ldr	r0, [pc, #64]	; 160 <dim_led+0x8c>
 11c:	ebffffd4 	bl	74 <delay>
 120:	e59f303c 	ldr	r3, [pc, #60]	; 164 <dim_led+0x90>
 124:	e58d300c 	str	r3, [sp, #12]
 128:	e59f3038 	ldr	r3, [pc, #56]	; 168 <dim_led+0x94>
 12c:	e58d3008 	str	r3, [sp, #8]
 130:	e3a03078 	mov	r3, #120	; 0x78
 134:	e58d3004 	str	r3, [sp, #4]
 138:	e3a03073 	mov	r3, #115	; 0x73
 13c:	e58d3000 	str	r3, [sp]
 140:	e3a03073 	mov	r3, #115	; 0x73
 144:	e3a02073 	mov	r2, #115	; 0x73
 148:	e3a01078 	mov	r1, #120	; 0x78
 14c:	e59f0018 	ldr	r0, [pc, #24]	; 16c <dim_led+0x98>
 150:	eb00009b 	bl	3c4 <printf>
 154:	eaffffe7 	b	f8 <dim_led+0x24>
 158:	56000050 			; <UNDEFINED> instruction: 0x56000050
 15c:	56000054 			; <UNDEFINED> instruction: 0x56000054
 160:	000186a0 	andeq	r8, r1, r0, lsr #13
 164:	00abcdef 	adceq	ip, fp, pc, ror #27
 168:	00000630 	andeq	r0, r0, r0, lsr r6
 16c:	00000614 	andeq	r0, r0, r4, lsl r6

00000170 <open_led>:
 170:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 174:	e28db000 	add	fp, sp, #0
 178:	e24dd00c 	sub	sp, sp, #12
 17c:	e50b0008 	str	r0, [fp, #-8]
 180:	e51b3008 	ldr	r3, [fp, #-8]
 184:	e3530000 	cmp	r3, #0
 188:	0a000003 	beq	19c <open_led+0x2c>
 18c:	e59f3024 	ldr	r3, [pc, #36]	; 1b8 <open_led+0x48>
 190:	e3a02020 	mov	r2, #32
 194:	e5832000 	str	r2, [r3]
 198:	ea000002 	b	1a8 <open_led+0x38>
 19c:	e59f3014 	ldr	r3, [pc, #20]	; 1b8 <open_led+0x48>
 1a0:	e3a02050 	mov	r2, #80	; 0x50
 1a4:	e5832000 	str	r2, [r3]
 1a8:	e1a00000 	nop			; (mov r0, r0)
 1ac:	e28bd000 	add	sp, fp, #0
 1b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1b4:	e1a0f00e 	mov	pc, lr
 1b8:	56000054 			; <UNDEFINED> instruction: 0x56000054

000001bc <uart_init>:
 1bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1c0:	e28db000 	add	fp, sp, #0
 1c4:	e59f3068 	ldr	r3, [pc, #104]	; 234 <uart_init+0x78>
 1c8:	e5933000 	ldr	r3, [r3]
 1cc:	e59f2060 	ldr	r2, [pc, #96]	; 234 <uart_init+0x78>
 1d0:	e3c330a0 	bic	r3, r3, #160	; 0xa0
 1d4:	e5823000 	str	r3, [r2]
 1d8:	e59f3054 	ldr	r3, [pc, #84]	; 234 <uart_init+0x78>
 1dc:	e5933000 	ldr	r3, [r3]
 1e0:	e59f204c 	ldr	r2, [pc, #76]	; 234 <uart_init+0x78>
 1e4:	e38330a0 	orr	r3, r3, #160	; 0xa0
 1e8:	e5823000 	str	r3, [r2]
 1ec:	e59f3044 	ldr	r3, [pc, #68]	; 238 <uart_init+0x7c>
 1f0:	e5933000 	ldr	r3, [r3]
 1f4:	e59f203c 	ldr	r2, [pc, #60]	; 238 <uart_init+0x7c>
 1f8:	e3c3300c 	bic	r3, r3, #12
 1fc:	e5823000 	str	r3, [r2]
 200:	e59f3034 	ldr	r3, [pc, #52]	; 23c <uart_init+0x80>
 204:	e3a0201a 	mov	r2, #26
 208:	e5832000 	str	r2, [r3]
 20c:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 210:	e3a02003 	mov	r2, #3
 214:	e5832000 	str	r2, [r3]
 218:	e3a03245 	mov	r3, #1342177284	; 0x50000004
 21c:	e3a02005 	mov	r2, #5
 220:	e5832000 	str	r2, [r3]
 224:	e1a00000 	nop			; (mov r0, r0)
 228:	e28bd000 	add	sp, fp, #0
 22c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 230:	e1a0f00e 	mov	pc, lr
 234:	56000070 			; <UNDEFINED> instruction: 0x56000070
 238:	56000078 			; <UNDEFINED> instruction: 0x56000078
 23c:	50000028 	andpl	r0, r0, r8, lsr #32

00000240 <putc>:
 240:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 244:	e28db000 	add	fp, sp, #0
 248:	e24dd00c 	sub	sp, sp, #12
 24c:	e50b0008 	str	r0, [fp, #-8]
 250:	e1a00000 	nop			; (mov r0, r0)
 254:	e59f302c 	ldr	r3, [pc, #44]	; 288 <putc+0x48>
 258:	e5933000 	ldr	r3, [r3]
 25c:	e2033004 	and	r3, r3, #4
 260:	e3530000 	cmp	r3, #0
 264:	0afffffa 	beq	254 <putc+0x14>
 268:	e59f201c 	ldr	r2, [pc, #28]	; 28c <putc+0x4c>
 26c:	e51b3008 	ldr	r3, [fp, #-8]
 270:	e5823000 	str	r3, [r2]
 274:	e1a00000 	nop			; (mov r0, r0)
 278:	e1a00003 	mov	r0, r3
 27c:	e28bd000 	add	sp, fp, #0
 280:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 284:	e1a0f00e 	mov	pc, lr
 288:	50000010 	andpl	r0, r0, r0, lsl r0
 28c:	50000020 	andpl	r0, r0, r0, lsr #32

00000290 <getc>:
 290:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 294:	e28db000 	add	fp, sp, #0
 298:	e1a00000 	nop			; (mov r0, r0)
 29c:	e59f3024 	ldr	r3, [pc, #36]	; 2c8 <getc+0x38>
 2a0:	e5933000 	ldr	r3, [r3]
 2a4:	e2033001 	and	r3, r3, #1
 2a8:	e3530000 	cmp	r3, #0
 2ac:	0afffffa 	beq	29c <getc+0xc>
 2b0:	e59f3014 	ldr	r3, [pc, #20]	; 2cc <getc+0x3c>
 2b4:	e5933000 	ldr	r3, [r3]
 2b8:	e1a00003 	mov	r0, r3
 2bc:	e28bd000 	add	sp, fp, #0
 2c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 2c4:	e1a0f00e 	mov	pc, lr
 2c8:	50000010 	andpl	r0, r0, r0, lsl r0
 2cc:	50000024 	andpl	r0, r0, r4, lsr #32

000002d0 <puts>:
 2d0:	e92d4800 	push	{fp, lr}
 2d4:	e28db004 	add	fp, sp, #4
 2d8:	e24dd008 	sub	sp, sp, #8
 2dc:	e50b0008 	str	r0, [fp, #-8]
 2e0:	ea000006 	b	300 <puts+0x30>
 2e4:	e51b3008 	ldr	r3, [fp, #-8]
 2e8:	e5d33000 	ldrb	r3, [r3]
 2ec:	e1a00003 	mov	r0, r3
 2f0:	ebffffd2 	bl	240 <putc>
 2f4:	e51b3008 	ldr	r3, [fp, #-8]
 2f8:	e2833001 	add	r3, r3, #1
 2fc:	e50b3008 	str	r3, [fp, #-8]
 300:	e51b3008 	ldr	r3, [fp, #-8]
 304:	e5d33000 	ldrb	r3, [r3]
 308:	e3530000 	cmp	r3, #0
 30c:	1afffff4 	bne	2e4 <puts+0x14>
 310:	e1a00000 	nop			; (mov r0, r0)
 314:	e24bd004 	sub	sp, fp, #4
 318:	e8bd8800 	pop	{fp, pc}

0000031c <print_hex>:
 31c:	e92d4800 	push	{fp, lr}
 320:	e28db004 	add	fp, sp, #4
 324:	e24dd018 	sub	sp, sp, #24
 328:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 32c:	e24b3014 	sub	r3, fp, #20
 330:	e3a02000 	mov	r2, #0
 334:	e5832000 	str	r2, [r3]
 338:	e5832004 	str	r2, [r3, #4]
 33c:	e1c320b8 	strh	r2, [r3, #8]
 340:	e5c3200a 	strb	r2, [r3, #10]
 344:	e3a03030 	mov	r3, #48	; 0x30
 348:	e54b3014 	strb	r3, [fp, #-20]	; 0xffffffec
 34c:	e3a03078 	mov	r3, #120	; 0x78
 350:	e54b3013 	strb	r3, [fp, #-19]	; 0xffffffed
 354:	e3a03000 	mov	r3, #0
 358:	e50b3008 	str	r3, [fp, #-8]
 35c:	ea00000e 	b	39c <print_hex+0x80>
 360:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 364:	e203200f 	and	r2, r3, #15
 368:	e51b3008 	ldr	r3, [fp, #-8]
 36c:	e2633009 	rsb	r3, r3, #9
 370:	e59f1048 	ldr	r1, [pc, #72]	; 3c0 <print_hex+0xa4>
 374:	e7d12002 	ldrb	r2, [r1, r2]
 378:	e24b1004 	sub	r1, fp, #4
 37c:	e0813003 	add	r3, r1, r3
 380:	e5432010 	strb	r2, [r3, #-16]
 384:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 388:	e1a03243 	asr	r3, r3, #4
 38c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 390:	e51b3008 	ldr	r3, [fp, #-8]
 394:	e2833001 	add	r3, r3, #1
 398:	e50b3008 	str	r3, [fp, #-8]
 39c:	e51b3008 	ldr	r3, [fp, #-8]
 3a0:	e3530007 	cmp	r3, #7
 3a4:	daffffed 	ble	360 <print_hex+0x44>
 3a8:	e24b3014 	sub	r3, fp, #20
 3ac:	e1a00003 	mov	r0, r3
 3b0:	ebffffc6 	bl	2d0 <puts>
 3b4:	e1a00000 	nop			; (mov r0, r0)
 3b8:	e24bd004 	sub	sp, fp, #4
 3bc:	e8bd8800 	pop	{fp, pc}
 3c0:	0000080c 	andeq	r0, r0, ip, lsl #16

000003c4 <printf>:
 3c4:	e92d000f 	push	{r0, r1, r2, r3}
 3c8:	e92d4800 	push	{fp, lr}
 3cc:	e28db004 	add	fp, sp, #4
 3d0:	e24dd008 	sub	sp, sp, #8
 3d4:	e28b3008 	add	r3, fp, #8
 3d8:	e50b3008 	str	r3, [fp, #-8]
 3dc:	ea00004e 	b	51c <printf+0x158>
 3e0:	e59b3004 	ldr	r3, [fp, #4]
 3e4:	e5d33000 	ldrb	r3, [r3]
 3e8:	e3530025 	cmp	r3, #37	; 0x25
 3ec:	1a000040 	bne	4f4 <printf+0x130>
 3f0:	e59b3004 	ldr	r3, [fp, #4]
 3f4:	e2833001 	add	r3, r3, #1
 3f8:	e5d33000 	ldrb	r3, [r3]
 3fc:	e2433063 	sub	r3, r3, #99	; 0x63
 400:	e3530015 	cmp	r3, #21
 404:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 408:	ea00003b 	b	4fc <printf+0x138>
 40c:	000004c4 	andeq	r0, r0, r4, asr #9
 410:	000004fc 	strdeq	r0, [r0], -ip
 414:	000004fc 	strdeq	r0, [r0], -ip
 418:	000004fc 	strdeq	r0, [r0], -ip
 41c:	000004fc 	strdeq	r0, [r0], -ip
 420:	000004fc 	strdeq	r0, [r0], -ip
 424:	000004fc 	strdeq	r0, [r0], -ip
 428:	000004fc 	strdeq	r0, [r0], -ip
 42c:	000004fc 	strdeq	r0, [r0], -ip
 430:	000004fc 	strdeq	r0, [r0], -ip
 434:	000004fc 	strdeq	r0, [r0], -ip
 438:	000004fc 	strdeq	r0, [r0], -ip
 43c:	000004fc 	strdeq	r0, [r0], -ip
 440:	000004fc 	strdeq	r0, [r0], -ip
 444:	000004fc 	strdeq	r0, [r0], -ip
 448:	000004fc 	strdeq	r0, [r0], -ip
 44c:	00000494 	muleq	r0, r4, r4
 450:	000004fc 	strdeq	r0, [r0], -ip
 454:	000004fc 	strdeq	r0, [r0], -ip
 458:	000004fc 	strdeq	r0, [r0], -ip
 45c:	000004fc 	strdeq	r0, [r0], -ip
 460:	00000464 	andeq	r0, r0, r4, ror #8
 464:	e59b3004 	ldr	r3, [fp, #4]
 468:	e2833002 	add	r3, r3, #2
 46c:	e58b3004 	str	r3, [fp, #4]
 470:	e51b3008 	ldr	r3, [fp, #-8]
 474:	e2833004 	add	r3, r3, #4
 478:	e50b3008 	str	r3, [fp, #-8]
 47c:	e51b3008 	ldr	r3, [fp, #-8]
 480:	e2433004 	sub	r3, r3, #4
 484:	e5933000 	ldr	r3, [r3]
 488:	e1a00003 	mov	r0, r3
 48c:	ebffffa2 	bl	31c <print_hex>
 490:	ea00001a 	b	500 <printf+0x13c>
 494:	e59b3004 	ldr	r3, [fp, #4]
 498:	e2833002 	add	r3, r3, #2
 49c:	e58b3004 	str	r3, [fp, #4]
 4a0:	e51b3008 	ldr	r3, [fp, #-8]
 4a4:	e2833004 	add	r3, r3, #4
 4a8:	e50b3008 	str	r3, [fp, #-8]
 4ac:	e51b3008 	ldr	r3, [fp, #-8]
 4b0:	e2433004 	sub	r3, r3, #4
 4b4:	e5933000 	ldr	r3, [r3]
 4b8:	e1a00003 	mov	r0, r3
 4bc:	ebffff83 	bl	2d0 <puts>
 4c0:	ea00000e 	b	500 <printf+0x13c>
 4c4:	e59b3004 	ldr	r3, [fp, #4]
 4c8:	e2833002 	add	r3, r3, #2
 4cc:	e58b3004 	str	r3, [fp, #4]
 4d0:	e51b3008 	ldr	r3, [fp, #-8]
 4d4:	e2833004 	add	r3, r3, #4
 4d8:	e50b3008 	str	r3, [fp, #-8]
 4dc:	e51b3008 	ldr	r3, [fp, #-8]
 4e0:	e2433004 	sub	r3, r3, #4
 4e4:	e5933000 	ldr	r3, [r3]
 4e8:	e1a00003 	mov	r0, r3
 4ec:	ebffff53 	bl	240 <putc>
 4f0:	ea000002 	b	500 <printf+0x13c>
 4f4:	e1a00000 	nop			; (mov r0, r0)
 4f8:	ea000000 	b	500 <printf+0x13c>
 4fc:	e1a00000 	nop			; (mov r0, r0)
 500:	e59b3004 	ldr	r3, [fp, #4]
 504:	e5d33000 	ldrb	r3, [r3]
 508:	e1a00003 	mov	r0, r3
 50c:	ebffff4b 	bl	240 <putc>
 510:	e59b3004 	ldr	r3, [fp, #4]
 514:	e2833001 	add	r3, r3, #1
 518:	e58b3004 	str	r3, [fp, #4]
 51c:	e59b3004 	ldr	r3, [fp, #4]
 520:	e5d33000 	ldrb	r3, [r3]
 524:	e3530000 	cmp	r3, #0
 528:	1affffac 	bne	3e0 <printf+0x1c>
 52c:	e3a03000 	mov	r3, #0
 530:	e50b3008 	str	r3, [fp, #-8]
 534:	e1a00000 	nop			; (mov r0, r0)
 538:	e24bd004 	sub	sp, fp, #4
 53c:	e8bd4800 	pop	{fp, lr}
 540:	e28dd010 	add	sp, sp, #16
 544:	e1a0f00e 	mov	pc, lr

00000548 <main>:
 548:	e92d4800 	push	{fp, lr}
 54c:	e28db004 	add	fp, sp, #4
 550:	e24dd018 	sub	sp, sp, #24
 554:	ebfffed4 	bl	ac <init_led>
 558:	e3a00001 	mov	r0, #1
 55c:	ebffff03 	bl	170 <open_led>
 560:	ebffff15 	bl	1bc <uart_init>
 564:	e3a00000 	mov	r0, #0
 568:	ebffff00 	bl	170 <open_led>
 56c:	e3a00041 	mov	r0, #65	; 0x41
 570:	ebffff32 	bl	240 <putc>
 574:	e59f0084 	ldr	r0, [pc, #132]	; 600 <main+0xb8>
 578:	ebffff54 	bl	2d0 <puts>
 57c:	e3a03000 	mov	r3, #0
 580:	e50b3008 	str	r3, [fp, #-8]
 584:	ea000007 	b	5a8 <main+0x60>
 588:	e51b3008 	ldr	r3, [fp, #-8]
 58c:	e5933000 	ldr	r3, [r3]
 590:	e1a01003 	mov	r1, r3
 594:	e59f0068 	ldr	r0, [pc, #104]	; 604 <main+0xbc>
 598:	ebffff89 	bl	3c4 <printf>
 59c:	e51b3008 	ldr	r3, [fp, #-8]
 5a0:	e2833001 	add	r3, r3, #1
 5a4:	e50b3008 	str	r3, [fp, #-8]
 5a8:	e51b3008 	ldr	r3, [fp, #-8]
 5ac:	e3530a01 	cmp	r3, #4096	; 0x1000
 5b0:	bafffff4 	blt	588 <main+0x40>
 5b4:	e59f304c 	ldr	r3, [pc, #76]	; 608 <main+0xc0>
 5b8:	e58d300c 	str	r3, [sp, #12]
 5bc:	e59f3048 	ldr	r3, [pc, #72]	; 60c <main+0xc4>
 5c0:	e58d3008 	str	r3, [sp, #8]
 5c4:	e3a03078 	mov	r3, #120	; 0x78
 5c8:	e58d3004 	str	r3, [sp, #4]
 5cc:	e3a03073 	mov	r3, #115	; 0x73
 5d0:	e58d3000 	str	r3, [sp]
 5d4:	e3a03073 	mov	r3, #115	; 0x73
 5d8:	e3a02073 	mov	r2, #115	; 0x73
 5dc:	e3a01078 	mov	r1, #120	; 0x78
 5e0:	e59f0028 	ldr	r0, [pc, #40]	; 610 <main+0xc8>
 5e4:	ebffff76 	bl	3c4 <printf>
 5e8:	e3a00c15 	mov	r0, #5376	; 0x1500
 5ec:	ebfffeb8 	bl	d4 <dim_led>
 5f0:	e3a03000 	mov	r3, #0
 5f4:	e1a00003 	mov	r0, r3
 5f8:	e24bd004 	sub	sp, fp, #4
 5fc:	e8bd8800 	pop	{fp, pc}
 600:	00000638 	andeq	r0, r0, r8, lsr r6
 604:	00000648 	andeq	r0, r0, r8, asr #12
 608:	00abcdef 	adceq	ip, fp, pc, ror #27
 60c:	0000066c 	andeq	r0, r0, ip, ror #12
 610:	00000650 	andeq	r0, r0, r0, asr r6

Disassembly of section .data:

0000080c <code>:
 80c:	33323130 	teqcc	r2, #48, 2
 810:	37363534 			; <UNDEFINED> instruction: 0x37363534
 814:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
 818:	66656463 	strbtvs	r6, [r5], -r3, ror #8

Disassembly of section .rodata:

00000614 <.rodata>:
 614:	34647361 	strbtcc	r7, [r4], #-865	; 0xfffffc9f
 618:	252c6325 	strcs	r6, [ip, #-805]!	; 0xfffffcdb
 61c:	63252c63 			; <UNDEFINED> instruction: 0x63252c63
 620:	2c63252c 	cfstr64cs	mvdx2, [r3], #-176	; 0xffffff50
 624:	25206325 	strcs	r6, [r0, #-805]!	; 0xfffffcdb
 628:	2c0d0a73 			; <UNDEFINED> instruction: 0x2c0d0a73
 62c:	00007825 	andeq	r7, r0, r5, lsr #16
 630:	38303938 	ldmdacc	r0!, {r3, r4, r5, r8, fp, ip, sp}
 634:	00000000 	andeq	r0, r0, r0
 638:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416	; 0xfffffe60
 63c:	3432206f 	ldrtcc	r2, [r2], #-111	; 0xffffff91
 640:	0d203034 	stceq	0, cr3, [r0, #-208]!	; 0xffffff30
 644:	0000000a 	andeq	r0, r0, sl
 648:	0d0a7825 	stceq	8, cr7, [sl, #-148]	; 0xffffff6c
 64c:	00000000 	andeq	r0, r0, r0
 650:	34647361 	strbtcc	r7, [r4], #-865	; 0xfffffc9f
 654:	252c6325 	strcs	r6, [ip, #-805]!	; 0xfffffcdb
 658:	63252c63 			; <UNDEFINED> instruction: 0x63252c63
 65c:	2c63252c 	cfstr64cs	mvdx2, [r3], #-176	; 0xffffff50
 660:	25206325 	strcs	r6, [r0, #-805]!	; 0xfffffcdb
 664:	2c0d0a73 			; <UNDEFINED> instruction: 0x2c0d0a73
 668:	00007825 	andeq	r7, r0, r5, lsr #16
 66c:	38303938 	ldmdacc	r0!, {r3, r4, r5, r8, fp, ip, sp}
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__bss_end__+0x10d0508>
   4:	61522820 	cmpvs	r2, r0, lsr #16
   8:	69627073 	stmdbvs	r2!, {r0, r1, r4, r5, r6, ip, sp, lr}^
   c:	38206e61 	stmdacc	r0!, {r0, r5, r6, r9, sl, fp, sp, lr}
  10:	302e332e 	eorcc	r3, lr, lr, lsr #6
  14:	722b362d 	eorvc	r3, fp, #47185920	; 0x2d00000
  18:	29316970 	ldmdbcs	r1!, {r4, r5, r6, r8, fp, sp, lr}
  1c:	332e3820 			; <UNDEFINED> instruction: 0x332e3820
  20:	Address 0x00000020 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002641 	andeq	r2, r0, r1, asr #12
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001c 	andeq	r0, r0, ip, lsl r0
  10:	06003405 	streq	r3, [r0], -r5, lsl #8
  14:	0a010801 	beq	42020 <__bss_end__+0x41804>
  18:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  1c:	17011501 	strne	r1, [r1, -r1, lsl #10]
  20:	1a011803 	bne	46034 <__bss_end__+0x45818>
  24:	Address 0x00000024 is out of bounds.

