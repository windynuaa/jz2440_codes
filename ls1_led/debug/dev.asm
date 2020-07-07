
./build/dev.elf:     file format elf32-littlearm

Disassembly of section .text:

00000000 <_start>:
   0:	e3a0da01 	mov	sp, #4096	; 0x1000
   4:	e59f1034 	ldr	r1, [pc, #52]	; 40 <halt+0x4>
   8:	e3a00c01 	mov	r0, #256	; 0x100
   c:	e5810000 	str	r0, [r1]
  10:	e59f102c 	ldr	r1, [pc, #44]	; 44 <halt+0x8>
  14:	e3a00000 	mov	r0, #0	; 0x0
  18:	e5810000 	str	r0, [r1]
  1c:	e3a00c11 	mov	r0, #4352	; 0x1100
  20:	e3a01000 	mov	r1, #0	; 0x0
  24:	e3a02000 	mov	r2, #0	; 0x0
  28:	e3a03000 	mov	r3, #0	; 0x0
  2c:	e92d000f 	push	{r0, r1, r2, r3}
  30:	eb000004 	bl	48 <des_reg>
  34:	e8bd000f 	pop	{r0, r1, r2, r3}
  38:	eb000016 	bl	98 <dim_led>

0000003c <halt>:
  3c:	eafffffe 	b	3c <halt>
  40:	56000050 	.word	0x56000050
  44:	56000054 	.word	0x56000054

00000048 <des_reg>:
  48:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4c:	e28db000 	add	fp, sp, #0	; 0x0
  50:	e24dd014 	sub	sp, sp, #20	; 0x14
  54:	e50b0008 	str	r0, [fp, #-8]
  58:	e50b100c 	str	r1, [fp, #-12]
  5c:	e50b2010 	str	r2, [fp, #-16]
  60:	e50b3014 	str	r3, [fp, #-20]
  64:	e3a03c05 	mov	r3, #1280	; 0x500
  68:	e50b3008 	str	r3, [fp, #-8]
  6c:	e3a03c05 	mov	r3, #1280	; 0x500
  70:	e50b300c 	str	r3, [fp, #-12]
  74:	e3a03c05 	mov	r3, #1280	; 0x500
  78:	e50b3010 	str	r3, [fp, #-16]
  7c:	e3a03c05 	mov	r3, #1280	; 0x500
  80:	e50b3014 	str	r3, [fp, #-20]
  84:	e3a03000 	mov	r3, #0	; 0x0
  88:	e1a00003 	mov	r0, r3
  8c:	e28bd000 	add	sp, fp, #0	; 0x0
  90:	e8bd0800 	pop	{fp}
  94:	e12fff1e 	bx	lr

00000098 <dim_led>:
  98:	e92d4810 	push	{r4, fp, lr}
  9c:	e28db008 	add	fp, sp, #8	; 0x8
  a0:	e24dd014 	sub	sp, sp, #20	; 0x14
  a4:	e50b0010 	str	r0, [fp, #-16]
  a8:	e50b1014 	str	r1, [fp, #-20]
  ac:	e50b2018 	str	r2, [fp, #-24]
  b0:	e50b301c 	str	r3, [fp, #-28]
  b4:	e3a02456 	mov	r2, #1442840576	; 0x56000000
  b8:	e2822050 	add	r2, r2, #80	; 0x50
  bc:	e51b1010 	ldr	r1, [fp, #-16]
  c0:	e51b301c 	ldr	r3, [fp, #-28]
  c4:	e0633001 	rsb	r3, r3, r1
  c8:	e5823000 	str	r3, [r2]
  cc:	e3a04456 	mov	r4, #1442840576	; 0x56000000
  d0:	e2844054 	add	r4, r4, #84	; 0x54
  d4:	e51b0010 	ldr	r0, [fp, #-16]
  d8:	e51b1014 	ldr	r1, [fp, #-20]
  dc:	e51b2018 	ldr	r2, [fp, #-24]
  e0:	e51b301c 	ldr	r3, [fp, #-28]
  e4:	ebffffd7 	bl	48 <des_reg>
  e8:	e1a02000 	mov	r2, r0
  ec:	e51b3014 	ldr	r3, [fp, #-20]
  f0:	e0623003 	rsb	r3, r2, r3
  f4:	e5843000 	str	r3, [r4]
  f8:	e3a03001 	mov	r3, #1	; 0x1
  fc:	e1a00003 	mov	r0, r3
 100:	e24bd008 	sub	sp, fp, #8	; 0x8
 104:	e8bd4810 	pop	{r4, fp, lr}
 108:	e12fff1e 	bx	lr
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
  28:	Address 0x00000028 is out of bounds.

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
  20:	1a011901 	bne	4642c <__bss_end__+0x3e320>
  24:	Address 0x00000024 is out of bounds.

