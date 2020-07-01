
./build/dev.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start>:
   0:	e3a01453 	mov	r1, #1392508928	; 0x53000000
   4:	e3a00000 	mov	r0, #0
   8:	e5810000 	str	r0, [r1]
   c:	e59f1048 	ldr	r1, [pc, #72]	; 5c <halt+0x4>
  10:	e3a00005 	mov	r0, #5
  14:	e5810000 	str	r0, [r1]
  18:	e59f1040 	ldr	r1, [pc, #64]	; 60 <halt+0x8>
  1c:	e59f0040 	ldr	r0, [pc, #64]	; 64 <halt+0xc>
  20:	e5810000 	str	r0, [r1]
  24:	e59fd03c 	ldr	sp, [pc, #60]	; 68 <halt+0x10>
  28:	e3a00000 	mov	r0, #0
  2c:	e5901000 	ldr	r1, [r0]
  30:	e59f2034 	ldr	r2, [pc, #52]	; 6c <halt+0x14>
  34:	e5802000 	str	r2, [r0]
  38:	e5903000 	ldr	r3, [r0]
  3c:	e1520003 	cmp	r2, r3
  40:	03a0da01 	moveq	sp, #4096	; 0x1000
  44:	e3a00c15 	mov	r0, #5376	; 0x1500
  48:	e3a01000 	mov	r1, #0
  4c:	e3a02000 	mov	r2, #0
  50:	e3a03000 	mov	r3, #0
  54:	eb00008b 	bl	288 <main>

00000058 <halt>:
  58:	eafffffe 	b	58 <halt>
  5c:	4c000014 	stcmi	0, cr0, [r0], {20}
  60:	4c000004 	stcmi	0, cr0, [r0], {4}
  64:	0005c011 	andeq	ip, r5, r1, lsl r0
  68:	40001000 	andmi	r1, r0, r0
  6c:	00001234 	andeq	r1, r0, r4, lsr r2

00000070 <delay>:
  70:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  74:	e28db000 	add	fp, sp, #0
  78:	e24dd00c 	sub	sp, sp, #12
  7c:	e50b0008 	str	r0, [fp, #-8]
  80:	e1a00000 	nop			; (mov r0, r0)
  84:	e51b3008 	ldr	r3, [fp, #-8]
  88:	e2432001 	sub	r2, r3, #1
  8c:	e50b2008 	str	r2, [fp, #-8]
  90:	e3530000 	cmp	r3, #0
  94:	1afffffa 	bne	84 <delay+0x14>
  98:	e1a00000 	nop			; (mov r0, r0)
  9c:	e28bd000 	add	sp, fp, #0
  a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  a4:	e12fff1e 	bx	lr

000000a8 <dim_led>:
  a8:	e92d4800 	push	{fp, lr}
  ac:	e28db004 	add	fp, sp, #4
  b0:	e24dd010 	sub	sp, sp, #16
  b4:	e50b0010 	str	r0, [fp, #-16]
  b8:	e3a03062 	mov	r3, #98	; 0x62
  bc:	e54b3005 	strb	r3, [fp, #-5]
  c0:	e59f2048 	ldr	r2, [pc, #72]	; 110 <dim_led+0x68>
  c4:	e51b3010 	ldr	r3, [fp, #-16]
  c8:	e5823000 	str	r3, [r2]
  cc:	e59f3040 	ldr	r3, [pc, #64]	; 114 <dim_led+0x6c>
  d0:	e3a02050 	mov	r2, #80	; 0x50
  d4:	e5832000 	str	r2, [r3]
  d8:	e59f0038 	ldr	r0, [pc, #56]	; 118 <dim_led+0x70>
  dc:	ebffffe3 	bl	70 <delay>
  e0:	e59f302c 	ldr	r3, [pc, #44]	; 114 <dim_led+0x6c>
  e4:	e3a02020 	mov	r2, #32
  e8:	e5832000 	str	r2, [r3]
  ec:	e59f0024 	ldr	r0, [pc, #36]	; 118 <dim_led+0x70>
  f0:	ebffffde 	bl	70 <delay>
  f4:	eb00003d 	bl	1f0 <getc>
  f8:	e1a03000 	mov	r3, r0
  fc:	e54b3005 	strb	r3, [fp, #-5]
 100:	e55b3005 	ldrb	r3, [fp, #-5]
 104:	e1a00003 	mov	r0, r3
 108:	eb000024 	bl	1a0 <putc>
 10c:	eaffffee 	b	cc <dim_led+0x24>
 110:	56000050 			; <UNDEFINED> instruction: 0x56000050
 114:	56000054 			; <UNDEFINED> instruction: 0x56000054
 118:	00002710 	andeq	r2, r0, r0, lsl r7

0000011c <uart_init>:
 11c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 120:	e28db000 	add	fp, sp, #0
 124:	e59f3068 	ldr	r3, [pc, #104]	; 194 <uart_init+0x78>
 128:	e5933000 	ldr	r3, [r3]
 12c:	e59f2060 	ldr	r2, [pc, #96]	; 194 <uart_init+0x78>
 130:	e3c330a0 	bic	r3, r3, #160	; 0xa0
 134:	e5823000 	str	r3, [r2]
 138:	e59f3054 	ldr	r3, [pc, #84]	; 194 <uart_init+0x78>
 13c:	e5933000 	ldr	r3, [r3]
 140:	e59f204c 	ldr	r2, [pc, #76]	; 194 <uart_init+0x78>
 144:	e38330a0 	orr	r3, r3, #160	; 0xa0
 148:	e5823000 	str	r3, [r2]
 14c:	e59f3044 	ldr	r3, [pc, #68]	; 198 <uart_init+0x7c>
 150:	e5933000 	ldr	r3, [r3]
 154:	e59f203c 	ldr	r2, [pc, #60]	; 198 <uart_init+0x7c>
 158:	e3c3300c 	bic	r3, r3, #12
 15c:	e5823000 	str	r3, [r2]
 160:	e59f3034 	ldr	r3, [pc, #52]	; 19c <uart_init+0x80>
 164:	e3a0201a 	mov	r2, #26
 168:	e5832000 	str	r2, [r3]
 16c:	e3a03205 	mov	r3, #1342177280	; 0x50000000
 170:	e3a02003 	mov	r2, #3
 174:	e5832000 	str	r2, [r3]
 178:	e3a03245 	mov	r3, #1342177284	; 0x50000004
 17c:	e3a02005 	mov	r2, #5
 180:	e5832000 	str	r2, [r3]
 184:	e1a00000 	nop			; (mov r0, r0)
 188:	e28bd000 	add	sp, fp, #0
 18c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 190:	e12fff1e 	bx	lr
 194:	56000070 			; <UNDEFINED> instruction: 0x56000070
 198:	56000078 			; <UNDEFINED> instruction: 0x56000078
 19c:	50000028 	andpl	r0, r0, r8, lsr #32

000001a0 <putc>:
 1a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1a4:	e28db000 	add	fp, sp, #0
 1a8:	e24dd00c 	sub	sp, sp, #12
 1ac:	e1a03000 	mov	r3, r0
 1b0:	e54b3005 	strb	r3, [fp, #-5]
 1b4:	e1a00000 	nop			; (mov r0, r0)
 1b8:	e59f3028 	ldr	r3, [pc, #40]	; 1e8 <putc+0x48>
 1bc:	e5933000 	ldr	r3, [r3]
 1c0:	e2033004 	and	r3, r3, #4
 1c4:	e3530000 	cmp	r3, #0
 1c8:	0afffffa 	beq	1b8 <putc+0x18>
 1cc:	e59f2018 	ldr	r2, [pc, #24]	; 1ec <putc+0x4c>
 1d0:	e55b3005 	ldrb	r3, [fp, #-5]
 1d4:	e5c23000 	strb	r3, [r2]
 1d8:	e1a00000 	nop			; (mov r0, r0)
 1dc:	e28bd000 	add	sp, fp, #0
 1e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1e4:	e12fff1e 	bx	lr
 1e8:	50000010 	andpl	r0, r0, r0, lsl r0
 1ec:	50000020 	andpl	r0, r0, r0, lsr #32

000001f0 <getc>:
 1f0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1f4:	e28db000 	add	fp, sp, #0
 1f8:	e24dd00c 	sub	sp, sp, #12
 1fc:	e1a00000 	nop			; (mov r0, r0)
 200:	e59f302c 	ldr	r3, [pc, #44]	; 234 <getc+0x44>
 204:	e5933000 	ldr	r3, [r3]
 208:	e2033001 	and	r3, r3, #1
 20c:	e3530000 	cmp	r3, #0
 210:	0afffffa 	beq	200 <getc+0x10>
 214:	e59f301c 	ldr	r3, [pc, #28]	; 238 <getc+0x48>
 218:	e5d33000 	ldrb	r3, [r3]
 21c:	e54b3005 	strb	r3, [fp, #-5]
 220:	e55b3005 	ldrb	r3, [fp, #-5]
 224:	e1a00003 	mov	r0, r3
 228:	e28bd000 	add	sp, fp, #0
 22c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 230:	e12fff1e 	bx	lr
 234:	50000010 	andpl	r0, r0, r0, lsl r0
 238:	50000024 	andpl	r0, r0, r4, lsr #32

0000023c <puts>:
 23c:	e92d4800 	push	{fp, lr}
 240:	e28db004 	add	fp, sp, #4
 244:	e24dd008 	sub	sp, sp, #8
 248:	e50b0008 	str	r0, [fp, #-8]
 24c:	ea000006 	b	26c <puts+0x30>
 250:	e51b3008 	ldr	r3, [fp, #-8]
 254:	e5d33000 	ldrb	r3, [r3]
 258:	e1a00003 	mov	r0, r3
 25c:	ebffffcf 	bl	1a0 <putc>
 260:	e51b3008 	ldr	r3, [fp, #-8]
 264:	e2833001 	add	r3, r3, #1
 268:	e50b3008 	str	r3, [fp, #-8]
 26c:	e51b3008 	ldr	r3, [fp, #-8]
 270:	e5d33000 	ldrb	r3, [r3]
 274:	e3530000 	cmp	r3, #0
 278:	1afffff4 	bne	250 <puts+0x14>
 27c:	e1a00000 	nop			; (mov r0, r0)
 280:	e24bd004 	sub	sp, fp, #4
 284:	e8bd8800 	pop	{fp, pc}

00000288 <main>:
 288:	e92d4800 	push	{fp, lr}
 28c:	e28db004 	add	fp, sp, #4
 290:	ebffffa1 	bl	11c <uart_init>
 294:	e59f0014 	ldr	r0, [pc, #20]	; 2b0 <main+0x28>
 298:	ebffffe7 	bl	23c <puts>
 29c:	e3a00c15 	mov	r0, #5376	; 0x1500
 2a0:	ebffff80 	bl	a8 <dim_led>
 2a4:	e3a03000 	mov	r3, #0
 2a8:	e1a00003 	mov	r0, r3
 2ac:	e8bd8800 	pop	{fp, pc}
 2b0:	000002b4 			; <UNDEFINED> instruction: 0x000002b4

Disassembly of section .rodata:

000002b4 <__bss_end__-0x1000e>:
 2b4:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416	; 0xfffffe60
 2b8:	3432206f 	ldrtcc	r2, [r2], #-111	; 0xffffff91
 2bc:	0d203034 	stceq	0, cr3, [r0, #-208]!	; 0xffffff30
 2c0:	Address 0x000002c0 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__end__+0x10c0a60>
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
   0:	00002a41 	andeq	r2, r0, r1, asr #20
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000020 	andeq	r0, r0, r0, lsr #32
  10:	06003605 	streq	r3, [r0], -r5, lsl #12
  14:	09010806 	stmdbeq	r1, {r1, r2, fp}
  18:	12020a01 	andne	r0, r2, #4096	; 0x1000
  1c:	15011404 	strne	r1, [r1, #-1028]	; 0xfffffbfc
  20:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  24:	1c021a01 			; <UNDEFINED> instruction: 0x1c021a01
  28:	Address 0x00000028 is out of bounds.

