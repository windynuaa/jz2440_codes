
./build/dev.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start>:
   0:	e59f1054 	ldr	r1, [pc, #84]	; 5c <halt+0x4>
   4:	e3a00000 	mov	r0, #0
   8:	e5810000 	str	r0, [r1]
   c:	e59f104c 	ldr	r1, [pc, #76]	; 60 <halt+0x8>
  10:	e3a00005 	mov	r0, #5
  14:	e5810000 	str	r0, [r1]
  18:	e59f1044 	ldr	r1, [pc, #68]	; 64 <halt+0xc>
  1c:	e59f0044 	ldr	r0, [pc, #68]	; 68 <halt+0x10>
  20:	e5810000 	str	r0, [r1]
  24:	e59fd040 	ldr	sp, [pc, #64]	; 6c <halt+0x14>
  28:	e3a00000 	mov	r0, #0
  2c:	e5901000 	ldr	r1, [r0]
  30:	e59f2038 	ldr	r2, [pc, #56]	; 70 <halt+0x18>
  34:	e5802000 	str	r2, [r0]
  38:	e5903000 	ldr	r3, [r0]
  3c:	e1520003 	cmp	r2, r3
  40:	03a0da01 	moveq	sp, #4096	; 0x1000
  44:	e3a00c15 	mov	r0, #5376	; 0x1500
  48:	e3a01000 	mov	r1, #0
  4c:	e3a02000 	mov	r2, #0
  50:	e3a03000 	mov	r3, #0
  54:	eb000014 	bl	ac <dim_led>

00000058 <halt>:
  58:	eafffffe 	b	58 <halt>
  5c:	53000050 	movwpl	r0, #80	; 0x50
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
  a8:	e12fff1e 	bx	lr

000000ac <dim_led>:
  ac:	e92d4800 	push	{fp, lr}
  b0:	e28db004 	add	fp, sp, #4
  b4:	e24dd010 	sub	sp, sp, #16
  b8:	e50b0008 	str	r0, [fp, #-8]
  bc:	e50b100c 	str	r1, [fp, #-12]
  c0:	e50b2010 	str	r2, [fp, #-16]
  c4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  c8:	e59f2030 	ldr	r2, [pc, #48]	; 100 <dim_led+0x54>
  cc:	e51b3008 	ldr	r3, [fp, #-8]
  d0:	e5823000 	str	r3, [r2]
  d4:	e59f3028 	ldr	r3, [pc, #40]	; 104 <dim_led+0x58>
  d8:	e3a02050 	mov	r2, #80	; 0x50
  dc:	e5832000 	str	r2, [r3]
  e0:	e59f0020 	ldr	r0, [pc, #32]	; 108 <dim_led+0x5c>
  e4:	ebffffe2 	bl	74 <delay>
  e8:	e59f3014 	ldr	r3, [pc, #20]	; 104 <dim_led+0x58>
  ec:	e3a02020 	mov	r2, #32
  f0:	e5832000 	str	r2, [r3]
  f4:	e59f000c 	ldr	r0, [pc, #12]	; 108 <dim_led+0x5c>
  f8:	ebffffdd 	bl	74 <delay>
  fc:	eafffff4 	b	d4 <dim_led+0x28>
 100:	56000050 			; <UNDEFINED> instruction: 0x56000050
 104:	56000054 			; <UNDEFINED> instruction: 0x56000054
 108:	000186a0 	andeq	r8, r1, r0, lsr #13

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__bss_end__+0x10c0c18>
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

