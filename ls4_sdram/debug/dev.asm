
./build/dev.elf:     file format elf32-littlearm

Disassembly of section .text:

00000000 <_start>:
   0:	e3a01453 	mov	r1, #1392508928	; 0x53000000
   4:	e3a00000 	mov	r0, #0	; 0x0
   8:	e5810000 	str	r0, [r1]
   c:	e59f10a4 	ldr	r1, [pc, #164]	; b8 <halt+0x4>
  10:	e3a00005 	mov	r0, #5	; 0x5
  14:	e5810000 	str	r0, [r1]
  18:	e59f109c 	ldr	r1, [pc, #156]	; bc <halt+0x8>
  1c:	e59f009c 	ldr	r0, [pc, #156]	; c0 <halt+0xc>
  20:	e5810000 	str	r0, [r1]
  24:	e59fd098 	ldr	sp, [pc, #152]	; c4 <halt+0x10>
  28:	e3a00000 	mov	r0, #0	; 0x0
  2c:	e5901000 	ldr	r1, [r0]
  30:	e59f2090 	ldr	r2, [pc, #144]	; c8 <halt+0x14>
  34:	e5802000 	str	r2, [r0]
  38:	e5903000 	ldr	r3, [r0]
  3c:	e1520003 	cmp	r2, r3
  40:	03a0da01 	moveq	sp, #4096	; 0x1000
  44:	e5801000 	str	r1, [r0]
  48:	e3a01312 	mov	r1, #1207959552	; 0x48000000
  4c:	e3a00422 	mov	r0, #570425344	; 0x22000000
  50:	e5810000 	str	r0, [r1]
  54:	e59f1070 	ldr	r1, [pc, #112]	; cc <halt+0x18>
  58:	e59f0070 	ldr	r0, [pc, #112]	; d0 <halt+0x1c>
  5c:	e5810000 	str	r0, [r1]
  60:	e59f106c 	ldr	r1, [pc, #108]	; d4 <halt+0x20>
  64:	e59f0064 	ldr	r0, [pc, #100]	; d0 <halt+0x1c>
  68:	e5810000 	str	r0, [r1]
  6c:	e59f1064 	ldr	r1, [pc, #100]	; d8 <halt+0x24>
  70:	e59f0064 	ldr	r0, [pc, #100]	; dc <halt+0x28>
  74:	e5810000 	str	r0, [r1]
  78:	e59f1060 	ldr	r1, [pc, #96]	; e0 <halt+0x2c>
  7c:	e3a000b1 	mov	r0, #177	; 0xb1
  80:	e5810000 	str	r0, [r1]
  84:	e59f1058 	ldr	r1, [pc, #88]	; e4 <halt+0x30>
  88:	e3a00020 	mov	r0, #32	; 0x20
  8c:	e5810000 	str	r0, [r1]
  90:	e59f1050 	ldr	r1, [pc, #80]	; e8 <halt+0x34>
  94:	e3a00020 	mov	r0, #32	; 0x20
  98:	e5810000 	str	r0, [r1]
  9c:	e3a0d431 	mov	sp, #822083584	; 0x31000000
  a0:	e3a00c15 	mov	r0, #5376	; 0x1500
  a4:	e3a01000 	mov	r1, #0	; 0x0
  a8:	e3a02000 	mov	r2, #0	; 0x0
  ac:	e3a03000 	mov	r3, #0	; 0x0
  b0:	eb000171 	bl	67c <main>

000000b4 <halt>:
  b4:	eafffffe 	b	b4 <halt>
  b8:	4c000014 	.word	0x4c000014
  bc:	4c000004 	.word	0x4c000004
  c0:	0005c011 	.word	0x0005c011
  c4:	40001000 	.word	0x40001000
  c8:	00001234 	.word	0x00001234
  cc:	4800001c 	.word	0x4800001c
  d0:	00018001 	.word	0x00018001
  d4:	48000020 	.word	0x48000020
  d8:	48000024 	.word	0x48000024
  dc:	008404f5 	.word	0x008404f5
  e0:	48000028 	.word	0x48000028
  e4:	4800002c 	.word	0x4800002c
  e8:	48000030 	.word	0x48000030

000000ec <delay>:
  ec:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  f0:	e28db000 	add	fp, sp, #0	; 0x0
  f4:	e24dd00c 	sub	sp, sp, #12	; 0xc
  f8:	e50b0008 	str	r0, [fp, #-8]
  fc:	e51b3008 	ldr	r3, [fp, #-8]
 100:	e3530000 	cmp	r3, #0	; 0x0
 104:	03a03000 	moveq	r3, #0	; 0x0
 108:	13a03001 	movne	r3, #1	; 0x1
 10c:	e20320ff 	and	r2, r3, #255	; 0xff
 110:	e51b3008 	ldr	r3, [fp, #-8]
 114:	e2433001 	sub	r3, r3, #1	; 0x1
 118:	e50b3008 	str	r3, [fp, #-8]
 11c:	e3520000 	cmp	r2, #0	; 0x0
 120:	1afffff5 	bne	fc <delay+0x10>
 124:	e28bd000 	add	sp, fp, #0	; 0x0
 128:	e8bd0800 	pop	{fp}
 12c:	e12fff1e 	bx	lr

00000130 <init_led>:
 130:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 134:	e28db000 	add	fp, sp, #0	; 0x0
 138:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 13c:	e2833050 	add	r3, r3, #80	; 0x50
 140:	e3a02c15 	mov	r2, #5376	; 0x1500
 144:	e5832000 	str	r2, [r3]
 148:	e28bd000 	add	sp, fp, #0	; 0x0
 14c:	e8bd0800 	pop	{fp}
 150:	e12fff1e 	bx	lr

00000154 <dim_led>:
 154:	e92d4800 	push	{fp, lr}
 158:	e28db004 	add	fp, sp, #4	; 0x4
 15c:	e24dd010 	sub	sp, sp, #16	; 0x10
 160:	e50b0010 	str	r0, [fp, #-16]
 164:	e3a03062 	mov	r3, #98	; 0x62
 168:	e54b3005 	strb	r3, [fp, #-5]
 16c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 170:	e2833050 	add	r3, r3, #80	; 0x50
 174:	e51b2010 	ldr	r2, [fp, #-16]
 178:	e5832000 	str	r2, [r3]
 17c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 180:	e2833054 	add	r3, r3, #84	; 0x54
 184:	e3a02050 	mov	r2, #80	; 0x50
 188:	e5832000 	str	r2, [r3]
 18c:	e3a00b61 	mov	r0, #99328	; 0x18400
 190:	e2800e2a 	add	r0, r0, #672	; 0x2a0
 194:	ebffffd4 	bl	ec <delay>
 198:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 19c:	e2833054 	add	r3, r3, #84	; 0x54
 1a0:	e3a02020 	mov	r2, #32	; 0x20
 1a4:	e5832000 	str	r2, [r3]
 1a8:	e3a00b61 	mov	r0, #99328	; 0x18400
 1ac:	e2800e2a 	add	r0, r0, #672	; 0x2a0
 1b0:	ebffffcd 	bl	ec <delay>
 1b4:	eafffff0 	b	17c <dim_led+0x28>

000001b8 <open_led>:
 1b8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1bc:	e28db000 	add	fp, sp, #0	; 0x0
 1c0:	e24dd00c 	sub	sp, sp, #12	; 0xc
 1c4:	e50b0008 	str	r0, [fp, #-8]
 1c8:	e51b3008 	ldr	r3, [fp, #-8]
 1cc:	e3530000 	cmp	r3, #0	; 0x0
 1d0:	0a000004 	beq	1e8 <open_led+0x30>
 1d4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 1d8:	e2833054 	add	r3, r3, #84	; 0x54
 1dc:	e3a02020 	mov	r2, #32	; 0x20
 1e0:	e5832000 	str	r2, [r3]
 1e4:	ea000003 	b	1f8 <open_led+0x40>
 1e8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 1ec:	e2833054 	add	r3, r3, #84	; 0x54
 1f0:	e3a02050 	mov	r2, #80	; 0x50
 1f4:	e5832000 	str	r2, [r3]
 1f8:	e28bd000 	add	sp, fp, #0	; 0x0
 1fc:	e8bd0800 	pop	{fp}
 200:	e12fff1e 	bx	lr

00000204 <uart_init>:
 204:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 208:	e28db000 	add	fp, sp, #0	; 0x0
 20c:	e3a02456 	mov	r2, #1442840576	; 0x56000000
 210:	e2822070 	add	r2, r2, #112	; 0x70
 214:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 218:	e2833070 	add	r3, r3, #112	; 0x70
 21c:	e5933000 	ldr	r3, [r3]
 220:	e3c330a0 	bic	r3, r3, #160	; 0xa0
 224:	e5823000 	str	r3, [r2]
 228:	e3a02456 	mov	r2, #1442840576	; 0x56000000
 22c:	e2822070 	add	r2, r2, #112	; 0x70
 230:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 234:	e2833070 	add	r3, r3, #112	; 0x70
 238:	e5933000 	ldr	r3, [r3]
 23c:	e38330a0 	orr	r3, r3, #160	; 0xa0
 240:	e5823000 	str	r3, [r2]
 244:	e3a02456 	mov	r2, #1442840576	; 0x56000000
 248:	e2822078 	add	r2, r2, #120	; 0x78
 24c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
 250:	e2833078 	add	r3, r3, #120	; 0x78
 254:	e5933000 	ldr	r3, [r3]
 258:	e3c3300c 	bic	r3, r3, #12	; 0xc
 25c:	e5823000 	str	r3, [r2]
 260:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 264:	e2833028 	add	r3, r3, #40	; 0x28
 268:	e3a0201a 	mov	r2, #26	; 0x1a
 26c:	e5832000 	str	r2, [r3]
 270:	e3a02205 	mov	r2, #1342177280	; 0x50000000
 274:	e3a03003 	mov	r3, #3	; 0x3
 278:	e5823000 	str	r3, [r2]
 27c:	e3a02245 	mov	r2, #1342177284	; 0x50000004
 280:	e3a03005 	mov	r3, #5	; 0x5
 284:	e5823000 	str	r3, [r2]
 288:	e28bd000 	add	sp, fp, #0	; 0x0
 28c:	e8bd0800 	pop	{fp}
 290:	e12fff1e 	bx	lr

00000294 <putc>:
 294:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 298:	e28db000 	add	fp, sp, #0	; 0x0
 29c:	e24dd00c 	sub	sp, sp, #12	; 0xc
 2a0:	e50b0008 	str	r0, [fp, #-8]
 2a4:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 2a8:	e2833010 	add	r3, r3, #16	; 0x10
 2ac:	e5933000 	ldr	r3, [r3]
 2b0:	e2033004 	and	r3, r3, #4	; 0x4
 2b4:	e3530000 	cmp	r3, #0	; 0x0
 2b8:	0afffff9 	beq	2a4 <putc+0x10>
 2bc:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 2c0:	e2833020 	add	r3, r3, #32	; 0x20
 2c4:	e51b2008 	ldr	r2, [fp, #-8]
 2c8:	e5832000 	str	r2, [r3]
 2cc:	e28bd000 	add	sp, fp, #0	; 0x0
 2d0:	e8bd0800 	pop	{fp}
 2d4:	e12fff1e 	bx	lr

000002d8 <getc>:
 2d8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 2dc:	e28db000 	add	fp, sp, #0	; 0x0
 2e0:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 2e4:	e2833010 	add	r3, r3, #16	; 0x10
 2e8:	e5933000 	ldr	r3, [r3]
 2ec:	e2033001 	and	r3, r3, #1	; 0x1
 2f0:	e3530000 	cmp	r3, #0	; 0x0
 2f4:	0afffff9 	beq	2e0 <getc+0x8>
 2f8:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 2fc:	e2833024 	add	r3, r3, #36	; 0x24
 300:	e5933000 	ldr	r3, [r3]
 304:	e1a00003 	mov	r0, r3
 308:	e28bd000 	add	sp, fp, #0	; 0x0
 30c:	e8bd0800 	pop	{fp}
 310:	e12fff1e 	bx	lr

00000314 <puts>:
 314:	e92d4800 	push	{fp, lr}
 318:	e28db004 	add	fp, sp, #4	; 0x4
 31c:	e24dd008 	sub	sp, sp, #8	; 0x8
 320:	e50b0008 	str	r0, [fp, #-8]
 324:	ea000006 	b	344 <puts+0x30>
 328:	e51b3008 	ldr	r3, [fp, #-8]
 32c:	e5d33000 	ldrb	r3, [r3]
 330:	e1a00003 	mov	r0, r3
 334:	ebffffd6 	bl	294 <putc>
 338:	e51b3008 	ldr	r3, [fp, #-8]
 33c:	e2833001 	add	r3, r3, #1	; 0x1
 340:	e50b3008 	str	r3, [fp, #-8]
 344:	e51b3008 	ldr	r3, [fp, #-8]
 348:	e5d33000 	ldrb	r3, [r3]
 34c:	e3530000 	cmp	r3, #0	; 0x0
 350:	1afffff4 	bne	328 <puts+0x14>
 354:	e24bd004 	sub	sp, fp, #4	; 0x4
 358:	e8bd4800 	pop	{fp, lr}
 35c:	e12fff1e 	bx	lr

00000360 <print_hex>:
 360:	e92d4800 	push	{fp, lr}
 364:	e28db004 	add	fp, sp, #4	; 0x4
 368:	e24dd018 	sub	sp, sp, #24	; 0x18
 36c:	e50b0018 	str	r0, [fp, #-24]
 370:	e24b2013 	sub	r2, fp, #19	; 0x13
 374:	e50b201c 	str	r2, [fp, #-28]
 378:	e3a03000 	mov	r3, #0	; 0x0
 37c:	e51bc01c 	ldr	ip, [fp, #-28]
 380:	e5cc3000 	strb	r3, [ip]
 384:	e51b201c 	ldr	r2, [fp, #-28]
 388:	e2822001 	add	r2, r2, #1	; 0x1
 38c:	e50b201c 	str	r2, [fp, #-28]
 390:	e3a03000 	mov	r3, #0	; 0x0
 394:	e51bc01c 	ldr	ip, [fp, #-28]
 398:	e5cc3000 	strb	r3, [ip]
 39c:	e51b201c 	ldr	r2, [fp, #-28]
 3a0:	e2822001 	add	r2, r2, #1	; 0x1
 3a4:	e50b201c 	str	r2, [fp, #-28]
 3a8:	e3a03000 	mov	r3, #0	; 0x0
 3ac:	e51bc01c 	ldr	ip, [fp, #-28]
 3b0:	e5cc3000 	strb	r3, [ip]
 3b4:	e51b201c 	ldr	r2, [fp, #-28]
 3b8:	e2822001 	add	r2, r2, #1	; 0x1
 3bc:	e50b201c 	str	r2, [fp, #-28]
 3c0:	e3a03000 	mov	r3, #0	; 0x0
 3c4:	e51bc01c 	ldr	ip, [fp, #-28]
 3c8:	e5cc3000 	strb	r3, [ip]
 3cc:	e51b201c 	ldr	r2, [fp, #-28]
 3d0:	e2822001 	add	r2, r2, #1	; 0x1
 3d4:	e50b201c 	str	r2, [fp, #-28]
 3d8:	e3a03000 	mov	r3, #0	; 0x0
 3dc:	e51bc01c 	ldr	ip, [fp, #-28]
 3e0:	e5cc3000 	strb	r3, [ip]
 3e4:	e51b201c 	ldr	r2, [fp, #-28]
 3e8:	e2822001 	add	r2, r2, #1	; 0x1
 3ec:	e50b201c 	str	r2, [fp, #-28]
 3f0:	e3a03000 	mov	r3, #0	; 0x0
 3f4:	e51bc01c 	ldr	ip, [fp, #-28]
 3f8:	e5cc3000 	strb	r3, [ip]
 3fc:	e51b201c 	ldr	r2, [fp, #-28]
 400:	e2822001 	add	r2, r2, #1	; 0x1
 404:	e50b201c 	str	r2, [fp, #-28]
 408:	e3a03000 	mov	r3, #0	; 0x0
 40c:	e51bc01c 	ldr	ip, [fp, #-28]
 410:	e5cc3000 	strb	r3, [ip]
 414:	e51b201c 	ldr	r2, [fp, #-28]
 418:	e2822001 	add	r2, r2, #1	; 0x1
 41c:	e50b201c 	str	r2, [fp, #-28]
 420:	e3a03000 	mov	r3, #0	; 0x0
 424:	e51bc01c 	ldr	ip, [fp, #-28]
 428:	e5cc3000 	strb	r3, [ip]
 42c:	e51b201c 	ldr	r2, [fp, #-28]
 430:	e2822001 	add	r2, r2, #1	; 0x1
 434:	e50b201c 	str	r2, [fp, #-28]
 438:	e3a03000 	mov	r3, #0	; 0x0
 43c:	e51bc01c 	ldr	ip, [fp, #-28]
 440:	e5cc3000 	strb	r3, [ip]
 444:	e51b201c 	ldr	r2, [fp, #-28]
 448:	e2822001 	add	r2, r2, #1	; 0x1
 44c:	e50b201c 	str	r2, [fp, #-28]
 450:	e3a03000 	mov	r3, #0	; 0x0
 454:	e51bc01c 	ldr	ip, [fp, #-28]
 458:	e5cc3000 	strb	r3, [ip]
 45c:	e51b201c 	ldr	r2, [fp, #-28]
 460:	e2822001 	add	r2, r2, #1	; 0x1
 464:	e50b201c 	str	r2, [fp, #-28]
 468:	e3a03000 	mov	r3, #0	; 0x0
 46c:	e51bc01c 	ldr	ip, [fp, #-28]
 470:	e5cc3000 	strb	r3, [ip]
 474:	e51b201c 	ldr	r2, [fp, #-28]
 478:	e2822001 	add	r2, r2, #1	; 0x1
 47c:	e3a03030 	mov	r3, #48	; 0x30
 480:	e54b3013 	strb	r3, [fp, #-19]
 484:	e3a03078 	mov	r3, #120	; 0x78
 488:	e54b3012 	strb	r3, [fp, #-18]
 48c:	e3a03000 	mov	r3, #0	; 0x0
 490:	e50b3008 	str	r3, [fp, #-8]
 494:	ea000011 	b	4e0 <print_hex+0x180>
 498:	e51b3008 	ldr	r3, [fp, #-8]
 49c:	e2630009 	rsb	r0, r3, #9	; 0x9
 4a0:	e51b3018 	ldr	r3, [fp, #-24]
 4a4:	e203200f 	and	r2, r3, #15	; 0xf
 4a8:	e59f3054 	ldr	r3, [pc, #84]	; 504 <print_hex+0x1a4>
 4ac:	e7d31002 	ldrb	r1, [r3, r2]
 4b0:	e3e0200e 	mvn	r2, #14	; 0xe
 4b4:	e24bc004 	sub	ip, fp, #4	; 0x4
 4b8:	e08c3000 	add	r3, ip, r0
 4bc:	e0832002 	add	r2, r3, r2
 4c0:	e1a03001 	mov	r3, r1
 4c4:	e5c23000 	strb	r3, [r2]
 4c8:	e51b3018 	ldr	r3, [fp, #-24]
 4cc:	e1a03243 	asr	r3, r3, #4
 4d0:	e50b3018 	str	r3, [fp, #-24]
 4d4:	e51b3008 	ldr	r3, [fp, #-8]
 4d8:	e2833001 	add	r3, r3, #1	; 0x1
 4dc:	e50b3008 	str	r3, [fp, #-8]
 4e0:	e51b3008 	ldr	r3, [fp, #-8]
 4e4:	e3530007 	cmp	r3, #7	; 0x7
 4e8:	daffffea 	ble	498 <print_hex+0x138>
 4ec:	e24b3013 	sub	r3, fp, #19	; 0x13
 4f0:	e1a00003 	mov	r0, r3
 4f4:	ebffff86 	bl	314 <puts>
 4f8:	e24bd004 	sub	sp, fp, #4	; 0x4
 4fc:	e8bd4800 	pop	{fp, lr}
 500:	e12fff1e 	bx	lr
 504:	00000a0c 	.word	0x00000a0c

00000508 <printf>:
 508:	e92d000f 	push	{r0, r1, r2, r3}
 50c:	e92d4800 	push	{fp, lr}
 510:	e28db004 	add	fp, sp, #4	; 0x4
 514:	e24dd008 	sub	sp, sp, #8	; 0x8
 518:	e28b3004 	add	r3, fp, #4	; 0x4
 51c:	e2833004 	add	r3, r3, #4	; 0x4
 520:	e50b3008 	str	r3, [fp, #-8]
 524:	ea00004a 	b	654 <printf+0x14c>
 528:	e59b3004 	ldr	r3, [fp, #4]
 52c:	e5d33000 	ldrb	r3, [r3]
 530:	e3530025 	cmp	r3, #37	; 0x25
 534:	1a00003f 	bne	638 <printf+0x130>
 538:	e59b3004 	ldr	r3, [fp, #4]
 53c:	e2833001 	add	r3, r3, #1	; 0x1
 540:	e5d33000 	ldrb	r3, [r3]
 544:	e2433063 	sub	r3, r3, #99	; 0x63
 548:	e3530015 	cmp	r3, #21	; 0x15
 54c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
 550:	ea000038 	b	638 <printf+0x130>
 554:	0000060c 	.word	0x0000060c
 558:	00000638 	.word	0x00000638
 55c:	00000638 	.word	0x00000638
 560:	00000638 	.word	0x00000638
 564:	00000638 	.word	0x00000638
 568:	00000638 	.word	0x00000638
 56c:	00000638 	.word	0x00000638
 570:	00000638 	.word	0x00000638
 574:	00000638 	.word	0x00000638
 578:	00000638 	.word	0x00000638
 57c:	00000638 	.word	0x00000638
 580:	00000638 	.word	0x00000638
 584:	00000638 	.word	0x00000638
 588:	00000638 	.word	0x00000638
 58c:	00000638 	.word	0x00000638
 590:	00000638 	.word	0x00000638
 594:	000005dc 	.word	0x000005dc
 598:	00000638 	.word	0x00000638
 59c:	00000638 	.word	0x00000638
 5a0:	00000638 	.word	0x00000638
 5a4:	00000638 	.word	0x00000638
 5a8:	000005ac 	.word	0x000005ac
 5ac:	e59b3004 	ldr	r3, [fp, #4]
 5b0:	e2833002 	add	r3, r3, #2	; 0x2
 5b4:	e58b3004 	str	r3, [fp, #4]
 5b8:	e51b3008 	ldr	r3, [fp, #-8]
 5bc:	e2833004 	add	r3, r3, #4	; 0x4
 5c0:	e50b3008 	str	r3, [fp, #-8]
 5c4:	e51b3008 	ldr	r3, [fp, #-8]
 5c8:	e2433004 	sub	r3, r3, #4	; 0x4
 5cc:	e5933000 	ldr	r3, [r3]
 5d0:	e1a00003 	mov	r0, r3
 5d4:	ebffff61 	bl	360 <print_hex>
 5d8:	ea000016 	b	638 <printf+0x130>
 5dc:	e59b3004 	ldr	r3, [fp, #4]
 5e0:	e2833002 	add	r3, r3, #2	; 0x2
 5e4:	e58b3004 	str	r3, [fp, #4]
 5e8:	e51b3008 	ldr	r3, [fp, #-8]
 5ec:	e2833004 	add	r3, r3, #4	; 0x4
 5f0:	e50b3008 	str	r3, [fp, #-8]
 5f4:	e51b3008 	ldr	r3, [fp, #-8]
 5f8:	e2433004 	sub	r3, r3, #4	; 0x4
 5fc:	e5933000 	ldr	r3, [r3]
 600:	e1a00003 	mov	r0, r3
 604:	ebffff42 	bl	314 <puts>
 608:	ea00000a 	b	638 <printf+0x130>
 60c:	e59b3004 	ldr	r3, [fp, #4]
 610:	e2833002 	add	r3, r3, #2	; 0x2
 614:	e58b3004 	str	r3, [fp, #4]
 618:	e51b3008 	ldr	r3, [fp, #-8]
 61c:	e2833004 	add	r3, r3, #4	; 0x4
 620:	e50b3008 	str	r3, [fp, #-8]
 624:	e51b3008 	ldr	r3, [fp, #-8]
 628:	e2433004 	sub	r3, r3, #4	; 0x4
 62c:	e5933000 	ldr	r3, [r3]
 630:	e1a00003 	mov	r0, r3
 634:	ebffff16 	bl	294 <putc>
 638:	e59b3004 	ldr	r3, [fp, #4]
 63c:	e5d33000 	ldrb	r3, [r3]
 640:	e1a00003 	mov	r0, r3
 644:	ebffff12 	bl	294 <putc>
 648:	e59b3004 	ldr	r3, [fp, #4]
 64c:	e2833001 	add	r3, r3, #1	; 0x1
 650:	e58b3004 	str	r3, [fp, #4]
 654:	e59b3004 	ldr	r3, [fp, #4]
 658:	e5d33000 	ldrb	r3, [r3]
 65c:	e3530000 	cmp	r3, #0	; 0x0
 660:	1affffb0 	bne	528 <printf+0x20>
 664:	e3a03000 	mov	r3, #0	; 0x0
 668:	e50b3008 	str	r3, [fp, #-8]
 66c:	e24bd004 	sub	sp, fp, #4	; 0x4
 670:	e8bd4800 	pop	{fp, lr}
 674:	e28dd010 	add	sp, sp, #16	; 0x10
 678:	e12fff1e 	bx	lr

0000067c <main>:
 67c:	e92d4800 	push	{fp, lr}
 680:	e28db004 	add	fp, sp, #4	; 0x4
 684:	e24dd008 	sub	sp, sp, #8	; 0x8
 688:	ebfffea8 	bl	130 <init_led>
 68c:	e3a00001 	mov	r0, #1	; 0x1
 690:	ebfffec8 	bl	1b8 <open_led>
 694:	ebfffeda 	bl	204 <uart_init>
 698:	e3a00000 	mov	r0, #0	; 0x0
 69c:	ebfffec5 	bl	1b8 <open_led>
 6a0:	e3a00041 	mov	r0, #65	; 0x41
 6a4:	ebfffefa 	bl	294 <putc>
 6a8:	e59f0028 	ldr	r0, [pc, #40]	; 6d8 <main+0x5c>
 6ac:	ebffff18 	bl	314 <puts>
 6b0:	eb00002e 	bl	770 <sdram_test>
 6b4:	e1a03000 	mov	r3, r0
 6b8:	e59f001c 	ldr	r0, [pc, #28]	; 6dc <main+0x60>
 6bc:	e1a01003 	mov	r1, r3
 6c0:	ebffff90 	bl	508 <printf>
 6c4:	e3a03000 	mov	r3, #0	; 0x0
 6c8:	e1a00003 	mov	r0, r3
 6cc:	e24bd004 	sub	sp, fp, #4	; 0x4
 6d0:	e8bd4800 	pop	{fp, lr}
 6d4:	e12fff1e 	bx	lr
 6d8:	00000834 	.word	0x00000834
 6dc:	00000844 	.word	0x00000844

000006e0 <sdram_init>:
 6e0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 6e4:	e28db000 	add	fp, sp, #0	; 0x0
 6e8:	e3a02312 	mov	r2, #1207959552	; 0x48000000
 6ec:	e3a03422 	mov	r3, #570425344	; 0x22000000
 6f0:	e5823000 	str	r3, [r2]
 6f4:	e3a02312 	mov	r2, #1207959552	; 0x48000000
 6f8:	e282201c 	add	r2, r2, #28	; 0x1c
 6fc:	e3a03906 	mov	r3, #98304	; 0x18000
 700:	e2833001 	add	r3, r3, #1	; 0x1
 704:	e5823000 	str	r3, [r2]
 708:	e3a02312 	mov	r2, #1207959552	; 0x48000000
 70c:	e2822020 	add	r2, r2, #32	; 0x20
 710:	e3a03906 	mov	r3, #98304	; 0x18000
 714:	e2833001 	add	r3, r3, #1	; 0x1
 718:	e5823000 	str	r3, [r2]
 71c:	e3a02312 	mov	r2, #1207959552	; 0x48000000
 720:	e2822024 	add	r2, r2, #36	; 0x24
 724:	e3a03721 	mov	r3, #8650752	; 0x840000
 728:	e2833e4f 	add	r3, r3, #1264	; 0x4f0
 72c:	e2833005 	add	r3, r3, #5	; 0x5
 730:	e5823000 	str	r3, [r2]
 734:	e3a03312 	mov	r3, #1207959552	; 0x48000000
 738:	e2833028 	add	r3, r3, #40	; 0x28
 73c:	e3a020b1 	mov	r2, #177	; 0xb1
 740:	e5832000 	str	r2, [r3]
 744:	e3a03312 	mov	r3, #1207959552	; 0x48000000
 748:	e283302c 	add	r3, r3, #44	; 0x2c
 74c:	e3a02020 	mov	r2, #32	; 0x20
 750:	e5832000 	str	r2, [r3]
 754:	e3a03312 	mov	r3, #1207959552	; 0x48000000
 758:	e2833030 	add	r3, r3, #48	; 0x30
 75c:	e3a02020 	mov	r2, #32	; 0x20
 760:	e5832000 	str	r2, [r3]
 764:	e28bd000 	add	sp, fp, #0	; 0x0
 768:	e8bd0800 	pop	{fp}
 76c:	e12fff1e 	bx	lr

00000770 <sdram_test>:
 770:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 774:	e28db000 	add	fp, sp, #0	; 0x0
 778:	e24dd014 	sub	sp, sp, #20	; 0x14
 77c:	e3a03203 	mov	r3, #805306368	; 0x30000000
 780:	e50b300c 	str	r3, [fp, #-12]
 784:	e3a03000 	mov	r3, #0	; 0x0
 788:	e50b3008 	str	r3, [fp, #-8]
 78c:	ea000007 	b	7b0 <sdram_test+0x40>
 790:	e51b2008 	ldr	r2, [fp, #-8]
 794:	e51b300c 	ldr	r3, [fp, #-12]
 798:	e0832002 	add	r2, r3, r2
 79c:	e3a03055 	mov	r3, #85	; 0x55
 7a0:	e5c23000 	strb	r3, [r2]
 7a4:	e51b3008 	ldr	r3, [fp, #-8]
 7a8:	e2833001 	add	r3, r3, #1	; 0x1
 7ac:	e50b3008 	str	r3, [fp, #-8]
 7b0:	e51b2008 	ldr	r2, [fp, #-8]
 7b4:	e3a03ff9 	mov	r3, #996	; 0x3e4
 7b8:	e2833003 	add	r3, r3, #3	; 0x3
 7bc:	e1520003 	cmp	r2, r3
 7c0:	dafffff2 	ble	790 <sdram_test+0x20>
 7c4:	e3a03000 	mov	r3, #0	; 0x0
 7c8:	e50b3008 	str	r3, [fp, #-8]
 7cc:	ea00000c 	b	804 <sdram_test+0x94>
 7d0:	e51b2008 	ldr	r2, [fp, #-8]
 7d4:	e51b300c 	ldr	r3, [fp, #-12]
 7d8:	e0833002 	add	r3, r3, r2
 7dc:	e5d33000 	ldrb	r3, [r3]
 7e0:	e20330ff 	and	r3, r3, #255	; 0xff
 7e4:	e3530055 	cmp	r3, #85	; 0x55
 7e8:	0a000002 	beq	7f8 <sdram_test+0x88>
 7ec:	e3e03000 	mvn	r3, #0	; 0x0
 7f0:	e50b3010 	str	r3, [fp, #-16]
 7f4:	ea000009 	b	820 <sdram_test+0xb0>
 7f8:	e51b3008 	ldr	r3, [fp, #-8]
 7fc:	e2833001 	add	r3, r3, #1	; 0x1
 800:	e50b3008 	str	r3, [fp, #-8]
 804:	e51b2008 	ldr	r2, [fp, #-8]
 808:	e3a03ff9 	mov	r3, #996	; 0x3e4
 80c:	e2833003 	add	r3, r3, #3	; 0x3
 810:	e1520003 	cmp	r2, r3
 814:	daffffed 	ble	7d0 <sdram_test+0x60>
 818:	e3a03000 	mov	r3, #0	; 0x0
 81c:	e50b3010 	str	r3, [fp, #-16]
 820:	e51b3010 	ldr	r3, [fp, #-16]
 824:	e1a00003 	mov	r0, r3
 828:	e28bd000 	add	sp, fp, #0	; 0x0
 82c:	e8bd0800 	pop	{fp}
 830:	e12fff1e 	bx	lr
Disassembly of section .data:

00000a0c <__data_start>:
 a0c:	33323130 	.word	0x33323130
 a10:	37363534 	.word	0x37363534
 a14:	62613938 	.word	0x62613938
 a18:	66656463 	.word	0x66656463
Disassembly of section .rodata:

00000834 <.rodata>:
 834:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416
 838:	3432206f 	ldrtcc	r2, [r2], #-111
 83c:	0d203034 	stceq	0, cr3, [r0, #-208]!
 840:	0000000a 	.word	0x0000000a
 844:	61726473 	cmnvs	r2, r3, ror r4
 848:	7365746d 	cmnvc	r5, #1828716544	; 0x6d000000
 84c:	78252074 	stmdavc	r5!, {r2, r4, r5, r6, sp}
 850:	00000d0a 	.word	0x00000d0a
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
  30:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd10 <__bss_end__+0xfffff2f4>
  34:	72656372 	rsbvc	r6, r5, #-939524095	; 0xc8000001
  38:	2b472079 	blcs	11c8224 <__bss_end__+0x11c7808>
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
  84:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd64 <__bss_end__+0xfffff348>
  88:	72656372 	rsbvc	r6, r5, #-939524095	; 0xc8000001
  8c:	2b472079 	blcs	11c8278 <__bss_end__+0x11c785c>
  90:	694c202b 	stmdbvs	ip, {r0, r1, r3, r5, sp}^
  94:	32206574 	eorcc	r6, r0, #486539264	; 0x1d000000
  98:	71383030 	teqvc	r8, r0, lsr r0
  9c:	32372d33 	eorscc	r2, r7, #3264	; 0xcc0
  a0:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  a4:	00322e33 	eorseq	r2, r2, r3, lsr lr
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
  20:	1a011901 	bne	4642c <__bss_end__+0x45a10>
  24:	Address 0x00000024 is out of bounds.

