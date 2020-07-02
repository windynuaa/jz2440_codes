
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
  58:	eb00012a 	bl	508 <main>

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
  dc:	e24dd010 	sub	sp, sp, #16
  e0:	e50b0010 	str	r0, [fp, #-16]
  e4:	e3a03062 	mov	r3, #98	; 0x62
  e8:	e54b3005 	strb	r3, [fp, #-5]
  ec:	e59f2030 	ldr	r2, [pc, #48]	; 124 <dim_led+0x50>
  f0:	e51b3010 	ldr	r3, [fp, #-16]
  f4:	e5823000 	str	r3, [r2]
  f8:	e59f3028 	ldr	r3, [pc, #40]	; 128 <dim_led+0x54>
  fc:	e3a02050 	mov	r2, #80	; 0x50
 100:	e5832000 	str	r2, [r3]
 104:	e59f0020 	ldr	r0, [pc, #32]	; 12c <dim_led+0x58>
 108:	ebffffd9 	bl	74 <delay>
 10c:	e59f3014 	ldr	r3, [pc, #20]	; 128 <dim_led+0x54>
 110:	e3a02020 	mov	r2, #32
 114:	e5832000 	str	r2, [r3]
 118:	e59f000c 	ldr	r0, [pc, #12]	; 12c <dim_led+0x58>
 11c:	ebffffd4 	bl	74 <delay>
 120:	eafffff4 	b	f8 <dim_led+0x24>
 124:	56000050 			; <UNDEFINED> instruction: 0x56000050
 128:	56000054 			; <UNDEFINED> instruction: 0x56000054
 12c:	000186a0 	andeq	r8, r1, r0, lsr #13

00000130 <open_led>:
 130:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 134:	e28db000 	add	fp, sp, #0
 138:	e24dd00c 	sub	sp, sp, #12
 13c:	e50b0008 	str	r0, [fp, #-8]
 140:	e51b3008 	ldr	r3, [fp, #-8]
 144:	e3530000 	cmp	r3, #0
 148:	0a000003 	beq	15c <open_led+0x2c>
 14c:	e59f3024 	ldr	r3, [pc, #36]	; 178 <open_led+0x48>
 150:	e3a02020 	mov	r2, #32
 154:	e5832000 	str	r2, [r3]
 158:	ea000002 	b	168 <open_led+0x38>
 15c:	e59f3014 	ldr	r3, [pc, #20]	; 178 <open_led+0x48>
 160:	e3a02050 	mov	r2, #80	; 0x50
 164:	e5832000 	str	r2, [r3]
 168:	e1a00000 	nop			; (mov r0, r0)
 16c:	e28bd000 	add	sp, fp, #0
 170:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 174:	e1a0f00e 	mov	pc, lr
 178:	56000054 			; <UNDEFINED> instruction: 0x56000054

0000017c <uart_init>:
 17c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 180:	e28db000 	add	fp, sp, #0
 184:	e59f3068 	ldr	r3, [pc, #104]	; 1f4 <uart_init+0x78>
 188:	e5933000 	ldr	r3, [r3]
 18c:	e59f2060 	ldr	r2, [pc, #96]	; 1f4 <uart_init+0x78>
 190:	e3c330a0 	bic	r3, r3, #160	; 0xa0
 194:	e5823000 	str	r3, [r2]
 198:	e59f3054 	ldr	r3, [pc, #84]	; 1f4 <uart_init+0x78>
 19c:	e5933000 	ldr	r3, [r3]
 1a0:	e59f204c 	ldr	r2, [pc, #76]	; 1f4 <uart_init+0x78>
 1a4:	e38330a0 	orr	r3, r3, #160	; 0xa0
 1a8:	e5823000 	str	r3, [r2]
 1ac:	e59f3044 	ldr	r3, [pc, #68]	; 1f8 <uart_init+0x7c>
 1b0:	e5933000 	ldr	r3, [r3]
 1b4:	e59f203c 	ldr	r2, [pc, #60]	; 1f8 <uart_init+0x7c>
 1b8:	e3c3300c 	bic	r3, r3, #12
 1bc:	e5823000 	str	r3, [r2]
 1c0:	e59f3034 	ldr	r3, [pc, #52]	; 1fc <uart_init+0x80>
 1c4:	e3a0201a 	mov	r2, #26
 1c8:	e5832000 	str	r2, [r3]
 1cc:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 1d0:	e3a02003 	mov	r2, #3
 1d4:	e5832000 	str	r2, [r3]
 1d8:	e3a03245 	mov	r3, #1342177284	; 0x50000004
 1dc:	e3a02005 	mov	r2, #5
 1e0:	e5832000 	str	r2, [r3]
 1e4:	e1a00000 	nop			; (mov r0, r0)
 1e8:	e28bd000 	add	sp, fp, #0
 1ec:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1f0:	e1a0f00e 	mov	pc, lr
 1f4:	56000070 			; <UNDEFINED> instruction: 0x56000070
 1f8:	56000078 			; <UNDEFINED> instruction: 0x56000078
 1fc:	50000028 	andpl	r0, r0, r8, lsr #32

00000200 <putc>:
 200:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 204:	e28db000 	add	fp, sp, #0
 208:	e24dd00c 	sub	sp, sp, #12
 20c:	e50b0008 	str	r0, [fp, #-8]
 210:	e1a00000 	nop			; (mov r0, r0)
 214:	e59f302c 	ldr	r3, [pc, #44]	; 248 <putc+0x48>
 218:	e5933000 	ldr	r3, [r3]
 21c:	e2033004 	and	r3, r3, #4
 220:	e3530000 	cmp	r3, #0
 224:	0afffffa 	beq	214 <putc+0x14>
 228:	e59f201c 	ldr	r2, [pc, #28]	; 24c <putc+0x4c>
 22c:	e51b3008 	ldr	r3, [fp, #-8]
 230:	e5823000 	str	r3, [r2]
 234:	e1a00000 	nop			; (mov r0, r0)
 238:	e1a00003 	mov	r0, r3
 23c:	e28bd000 	add	sp, fp, #0
 240:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 244:	e1a0f00e 	mov	pc, lr
 248:	50000010 	andpl	r0, r0, r0, lsl r0
 24c:	50000020 	andpl	r0, r0, r0, lsr #32

00000250 <getc>:
 250:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 254:	e28db000 	add	fp, sp, #0
 258:	e1a00000 	nop			; (mov r0, r0)
 25c:	e59f3024 	ldr	r3, [pc, #36]	; 288 <getc+0x38>
 260:	e5933000 	ldr	r3, [r3]
 264:	e2033001 	and	r3, r3, #1
 268:	e3530000 	cmp	r3, #0
 26c:	0afffffa 	beq	25c <getc+0xc>
 270:	e59f3014 	ldr	r3, [pc, #20]	; 28c <getc+0x3c>
 274:	e5933000 	ldr	r3, [r3]
 278:	e1a00003 	mov	r0, r3
 27c:	e28bd000 	add	sp, fp, #0
 280:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 284:	e1a0f00e 	mov	pc, lr
 288:	50000010 	andpl	r0, r0, r0, lsl r0
 28c:	50000024 	andpl	r0, r0, r4, lsr #32

00000290 <puts>:
 290:	e92d4800 	push	{fp, lr}
 294:	e28db004 	add	fp, sp, #4
 298:	e24dd008 	sub	sp, sp, #8
 29c:	e50b0008 	str	r0, [fp, #-8]
 2a0:	ea000006 	b	2c0 <puts+0x30>
 2a4:	e51b3008 	ldr	r3, [fp, #-8]
 2a8:	e5d33000 	ldrb	r3, [r3]
 2ac:	e1a00003 	mov	r0, r3
 2b0:	ebffffd2 	bl	200 <putc>
 2b4:	e51b3008 	ldr	r3, [fp, #-8]
 2b8:	e2833001 	add	r3, r3, #1
 2bc:	e50b3008 	str	r3, [fp, #-8]
 2c0:	e51b3008 	ldr	r3, [fp, #-8]
 2c4:	e5d33000 	ldrb	r3, [r3]
 2c8:	e3530000 	cmp	r3, #0
 2cc:	1afffff4 	bne	2a4 <puts+0x14>
 2d0:	e1a00000 	nop			; (mov r0, r0)
 2d4:	e24bd004 	sub	sp, fp, #4
 2d8:	e8bd8800 	pop	{fp, pc}

000002dc <print_hex>:
 2dc:	e92d4800 	push	{fp, lr}
 2e0:	e28db004 	add	fp, sp, #4
 2e4:	e24dd018 	sub	sp, sp, #24
 2e8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 2ec:	e24b3014 	sub	r3, fp, #20
 2f0:	e3a02000 	mov	r2, #0
 2f4:	e5832000 	str	r2, [r3]
 2f8:	e5832004 	str	r2, [r3, #4]
 2fc:	e1c320b8 	strh	r2, [r3, #8]
 300:	e5c3200a 	strb	r2, [r3, #10]
 304:	e3a03030 	mov	r3, #48	; 0x30
 308:	e54b3014 	strb	r3, [fp, #-20]	; 0xffffffec
 30c:	e3a03078 	mov	r3, #120	; 0x78
 310:	e54b3013 	strb	r3, [fp, #-19]	; 0xffffffed
 314:	e3a03000 	mov	r3, #0
 318:	e50b3008 	str	r3, [fp, #-8]
 31c:	ea00000e 	b	35c <print_hex+0x80>
 320:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 324:	e203200f 	and	r2, r3, #15
 328:	e51b3008 	ldr	r3, [fp, #-8]
 32c:	e2633009 	rsb	r3, r3, #9
 330:	e59f1048 	ldr	r1, [pc, #72]	; 380 <print_hex+0xa4>
 334:	e7d12002 	ldrb	r2, [r1, r2]
 338:	e24b1004 	sub	r1, fp, #4
 33c:	e0813003 	add	r3, r1, r3
 340:	e5432010 	strb	r2, [r3, #-16]
 344:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 348:	e1a03243 	asr	r3, r3, #4
 34c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
 350:	e51b3008 	ldr	r3, [fp, #-8]
 354:	e2833001 	add	r3, r3, #1
 358:	e50b3008 	str	r3, [fp, #-8]
 35c:	e51b3008 	ldr	r3, [fp, #-8]
 360:	e3530007 	cmp	r3, #7
 364:	daffffed 	ble	320 <print_hex+0x44>
 368:	e24b3014 	sub	r3, fp, #20
 36c:	e1a00003 	mov	r0, r3
 370:	ebffffc6 	bl	290 <puts>
 374:	e1a00000 	nop			; (mov r0, r0)
 378:	e24bd004 	sub	sp, fp, #4
 37c:	e8bd8800 	pop	{fp, pc}
 380:	0000080c 	andeq	r0, r0, ip, lsl #16

00000384 <printf>:
 384:	e92d000f 	push	{r0, r1, r2, r3}
 388:	e92d4800 	push	{fp, lr}
 38c:	e28db004 	add	fp, sp, #4
 390:	e24dd008 	sub	sp, sp, #8
 394:	e28b3008 	add	r3, fp, #8
 398:	e50b3008 	str	r3, [fp, #-8]
 39c:	ea00004e 	b	4dc <printf+0x158>
 3a0:	e59b3004 	ldr	r3, [fp, #4]
 3a4:	e5d33000 	ldrb	r3, [r3]
 3a8:	e3530025 	cmp	r3, #37	; 0x25
 3ac:	1a000040 	bne	4b4 <printf+0x130>
 3b0:	e59b3004 	ldr	r3, [fp, #4]
 3b4:	e2833001 	add	r3, r3, #1
 3b8:	e5d33000 	ldrb	r3, [r3]
 3bc:	e2433063 	sub	r3, r3, #99	; 0x63
 3c0:	e3530015 	cmp	r3, #21
 3c4:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 3c8:	ea00003b 	b	4bc <printf+0x138>
 3cc:	00000484 	andeq	r0, r0, r4, lsl #9
 3d0:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3d4:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3d8:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3dc:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3e0:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3e4:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3e8:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3ec:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3f0:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3f4:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3f8:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 3fc:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 400:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 404:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 408:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 40c:	00000454 	andeq	r0, r0, r4, asr r4
 410:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 414:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 418:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 41c:	000004bc 			; <UNDEFINED> instruction: 0x000004bc
 420:	00000424 	andeq	r0, r0, r4, lsr #8
 424:	e59b3004 	ldr	r3, [fp, #4]
 428:	e2833002 	add	r3, r3, #2
 42c:	e58b3004 	str	r3, [fp, #4]
 430:	e51b3008 	ldr	r3, [fp, #-8]
 434:	e2833004 	add	r3, r3, #4
 438:	e50b3008 	str	r3, [fp, #-8]
 43c:	e51b3008 	ldr	r3, [fp, #-8]
 440:	e2433004 	sub	r3, r3, #4
 444:	e5933000 	ldr	r3, [r3]
 448:	e1a00003 	mov	r0, r3
 44c:	ebffffa2 	bl	2dc <print_hex>
 450:	ea00001a 	b	4c0 <printf+0x13c>
 454:	e59b3004 	ldr	r3, [fp, #4]
 458:	e2833002 	add	r3, r3, #2
 45c:	e58b3004 	str	r3, [fp, #4]
 460:	e51b3008 	ldr	r3, [fp, #-8]
 464:	e2833004 	add	r3, r3, #4
 468:	e50b3008 	str	r3, [fp, #-8]
 46c:	e51b3008 	ldr	r3, [fp, #-8]
 470:	e2433004 	sub	r3, r3, #4
 474:	e5933000 	ldr	r3, [r3]
 478:	e1a00003 	mov	r0, r3
 47c:	ebffff83 	bl	290 <puts>
 480:	ea00000e 	b	4c0 <printf+0x13c>
 484:	e59b3004 	ldr	r3, [fp, #4]
 488:	e2833002 	add	r3, r3, #2
 48c:	e58b3004 	str	r3, [fp, #4]
 490:	e51b3008 	ldr	r3, [fp, #-8]
 494:	e2833004 	add	r3, r3, #4
 498:	e50b3008 	str	r3, [fp, #-8]
 49c:	e51b3008 	ldr	r3, [fp, #-8]
 4a0:	e2433004 	sub	r3, r3, #4
 4a4:	e5933000 	ldr	r3, [r3]
 4a8:	e1a00003 	mov	r0, r3
 4ac:	ebffff53 	bl	200 <putc>
 4b0:	ea000002 	b	4c0 <printf+0x13c>
 4b4:	e1a00000 	nop			; (mov r0, r0)
 4b8:	ea000000 	b	4c0 <printf+0x13c>
 4bc:	e1a00000 	nop			; (mov r0, r0)
 4c0:	e59b3004 	ldr	r3, [fp, #4]
 4c4:	e5d33000 	ldrb	r3, [r3]
 4c8:	e1a00003 	mov	r0, r3
 4cc:	ebffff4b 	bl	200 <putc>
 4d0:	e59b3004 	ldr	r3, [fp, #4]
 4d4:	e2833001 	add	r3, r3, #1
 4d8:	e58b3004 	str	r3, [fp, #4]
 4dc:	e59b3004 	ldr	r3, [fp, #4]
 4e0:	e5d33000 	ldrb	r3, [r3]
 4e4:	e3530000 	cmp	r3, #0
 4e8:	1affffac 	bne	3a0 <printf+0x1c>
 4ec:	e3a03000 	mov	r3, #0
 4f0:	e50b3008 	str	r3, [fp, #-8]
 4f4:	e1a00000 	nop			; (mov r0, r0)
 4f8:	e24bd004 	sub	sp, fp, #4
 4fc:	e8bd4800 	pop	{fp, lr}
 500:	e28dd010 	add	sp, sp, #16
 504:	e1a0f00e 	mov	pc, lr

00000508 <main>:
 508:	e92d4800 	push	{fp, lr}
 50c:	e28db004 	add	fp, sp, #4
 510:	e24dd010 	sub	sp, sp, #16
 514:	ebfffee4 	bl	ac <init_led>
 518:	e3a00001 	mov	r0, #1
 51c:	ebffff03 	bl	130 <open_led>
 520:	ebffff15 	bl	17c <uart_init>
 524:	e3a00000 	mov	r0, #0
 528:	ebffff00 	bl	130 <open_led>
 52c:	e3a00041 	mov	r0, #65	; 0x41
 530:	ebffff32 	bl	200 <putc>
 534:	e59f004c 	ldr	r0, [pc, #76]	; 588 <main+0x80>
 538:	ebffff54 	bl	290 <puts>
 53c:	e59f3048 	ldr	r3, [pc, #72]	; 58c <main+0x84>
 540:	e58d300c 	str	r3, [sp, #12]
 544:	e59f3044 	ldr	r3, [pc, #68]	; 590 <main+0x88>
 548:	e58d3008 	str	r3, [sp, #8]
 54c:	e3a03078 	mov	r3, #120	; 0x78
 550:	e58d3004 	str	r3, [sp, #4]
 554:	e3a03073 	mov	r3, #115	; 0x73
 558:	e58d3000 	str	r3, [sp]
 55c:	e3a03073 	mov	r3, #115	; 0x73
 560:	e3a02073 	mov	r2, #115	; 0x73
 564:	e3a01078 	mov	r1, #120	; 0x78
 568:	e59f0024 	ldr	r0, [pc, #36]	; 594 <main+0x8c>
 56c:	ebffff84 	bl	384 <printf>
 570:	e3a00c15 	mov	r0, #5376	; 0x1500
 574:	ebfffed6 	bl	d4 <dim_led>
 578:	e3a03000 	mov	r3, #0
 57c:	e1a00003 	mov	r0, r3
 580:	e24bd004 	sub	sp, fp, #4
 584:	e8bd8800 	pop	{fp, pc}
 588:	00000598 	muleq	r0, r8, r5
 58c:	00abcdef 	adceq	ip, fp, pc, ror #27
 590:	000005c4 	andeq	r0, r0, r4, asr #11
 594:	000005a8 	andeq	r0, r0, r8, lsr #11

Disassembly of section .data:

0000080c <code>:
 80c:	33323130 	teqcc	r2, #48, 2
 810:	37363534 			; <UNDEFINED> instruction: 0x37363534
 814:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
 818:	66656463 	strbtvs	r6, [r5], -r3, ror #8

Disassembly of section .rodata:

00000598 <.rodata>:
 598:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416	; 0xfffffe60
 59c:	3432206f 	ldrtcc	r2, [r2], #-111	; 0xffffff91
 5a0:	0d203034 	stceq	0, cr3, [r0, #-208]!	; 0xffffff30
 5a4:	0000000a 	andeq	r0, r0, sl
 5a8:	34647361 	strbtcc	r7, [r4], #-865	; 0xfffffc9f
 5ac:	252c6325 	strcs	r6, [ip, #-805]!	; 0xfffffcdb
 5b0:	63252c63 			; <UNDEFINED> instruction: 0x63252c63
 5b4:	2c63252c 	cfstr64cs	mvdx2, [r3], #-176	; 0xffffff50
 5b8:	25206325 	strcs	r6, [r0, #-805]!	; 0xfffffcdb
 5bc:	2c0d0a73 			; <UNDEFINED> instruction: 0x2c0d0a73
 5c0:	00007825 	andeq	r7, r0, r5, lsr #16
 5c4:	38303938 	ldmdacc	r0!, {r3, r4, r5, r8, fp, ip, sp}
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

