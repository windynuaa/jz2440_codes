
./build/dev.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start>:
   0:	e3a0da01 	mov	sp, #4096	; 0x1000
   4:	e59f1034 	ldr	r1, [pc, #52]	; 40 <halt+0x4>
   8:	e3a00c01 	mov	r0, #256	; 0x100
   c:	e5810000 	str	r0, [r1]
  10:	e59f102c 	ldr	r1, [pc, #44]	; 44 <halt+0x8>
  14:	e3a00000 	mov	r0, #0
  18:	e5810000 	str	r0, [r1]
  1c:	e3a00c11 	mov	r0, #4352	; 0x1100
  20:	e3a01000 	mov	r1, #0
  24:	e3a02000 	mov	r2, #0
  28:	e3a03000 	mov	r3, #0
  2c:	e92d000f 	push	{r0, r1, r2, r3}
  30:	eb000004 	bl	48 <des_reg>
  34:	e8bd000f 	pop	{r0, r1, r2, r3}
  38:	eb000016 	bl	98 <dim_led>

0000003c <halt>:
  3c:	eafffffe 	b	3c <halt>
  40:	56000050 			; <UNDEFINED> instruction: 0x56000050
  44:	56000054 			; <UNDEFINED> instruction: 0x56000054

00000048 <des_reg>:
  48:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  4c:	e28db000 	add	fp, sp, #0
  50:	e24dd014 	sub	sp, sp, #20
  54:	e50b0008 	str	r0, [fp, #-8]
  58:	e50b100c 	str	r1, [fp, #-12]
  5c:	e50b2010 	str	r2, [fp, #-16]
  60:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  64:	e3a03c05 	mov	r3, #1280	; 0x500
  68:	e50b3008 	str	r3, [fp, #-8]
  6c:	e3a03c05 	mov	r3, #1280	; 0x500
  70:	e50b300c 	str	r3, [fp, #-12]
  74:	e3a03c05 	mov	r3, #1280	; 0x500
  78:	e50b3010 	str	r3, [fp, #-16]
  7c:	e3a03c05 	mov	r3, #1280	; 0x500
  80:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  84:	e3a03000 	mov	r3, #0
  88:	e1a00003 	mov	r0, r3
  8c:	e28bd000 	add	sp, fp, #0
  90:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  94:	e12fff1e 	bx	lr

00000098 <dim_led>:
  98:	e92d4800 	push	{fp, lr}
  9c:	e28db004 	add	fp, sp, #4
  a0:	e24dd010 	sub	sp, sp, #16
  a4:	e50b0008 	str	r0, [fp, #-8]
  a8:	e50b100c 	str	r1, [fp, #-12]
  ac:	e50b2010 	str	r2, [fp, #-16]
  b0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  b4:	e59f1044 	ldr	r1, [pc, #68]	; 100 <dim_led+0x68>
  b8:	e51b2008 	ldr	r2, [fp, #-8]
  bc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
  c0:	e0423003 	sub	r3, r2, r3
  c4:	e5813000 	str	r3, [r1]
  c8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
  cc:	e51b2010 	ldr	r2, [fp, #-16]
  d0:	e51b100c 	ldr	r1, [fp, #-12]
  d4:	e51b0008 	ldr	r0, [fp, #-8]
  d8:	ebffffda 	bl	48 <des_reg>
  dc:	e1a01000 	mov	r1, r0
  e0:	e59f201c 	ldr	r2, [pc, #28]	; 104 <dim_led+0x6c>
  e4:	e51b300c 	ldr	r3, [fp, #-12]
  e8:	e0433001 	sub	r3, r3, r1
  ec:	e5823000 	str	r3, [r2]
  f0:	e3a03001 	mov	r3, #1
  f4:	e1a00003 	mov	r0, r3
  f8:	e24bd004 	sub	sp, fp, #4
  fc:	e8bd8800 	pop	{fp, pc}
 100:	56000050 			; <UNDEFINED> instruction: 0x56000050
 104:	56000054 			; <UNDEFINED> instruction: 0x56000054

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__bss_end__+0x10c0c1c>
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

