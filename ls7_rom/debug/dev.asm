
./build/dev.elf:     file format elf32-littlearm

Disassembly of section .text:

30000000 <_start>:
30000000:	eaffffff 	b	30000004 <reset>

30000004 <reset>:
30000004:	e3a01453 	mov	r1, #1392508928	; 0x53000000
30000008:	e3a00000 	mov	r0, #0	; 0x0
3000000c:	e5810000 	str	r0, [r1]
30000010:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
30000014:	e3800103 	orr	r0, r0, #-1073741824	; 0xc0000000
30000018:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
3000001c:	e59f105c 	ldr	r1, [pc, #92]	; 30000080 <halt+0x4>
30000020:	e3a00005 	mov	r0, #5	; 0x5
30000024:	e5810000 	str	r0, [r1]
30000028:	e59f1054 	ldr	r1, [pc, #84]	; 30000084 <halt+0x8>
3000002c:	e59f0054 	ldr	r0, [pc, #84]	; 30000088 <halt+0xc>
30000030:	e5810000 	str	r0, [r1]
30000034:	e59fd050 	ldr	sp, [pc, #80]	; 3000008c <halt+0x10>
30000038:	e3a05001 	mov	r5, #1	; 0x1
3000003c:	e3a00000 	mov	r0, #0	; 0x0
30000040:	e5901000 	ldr	r1, [r0]
30000044:	e59f2044 	ldr	r2, [pc, #68]	; 30000090 <halt+0x14>
30000048:	e5802000 	str	r2, [r0]
3000004c:	e5903000 	ldr	r3, [r0]
30000050:	e1520003 	cmp	r2, r3
30000054:	03a0da01 	moveq	sp, #4096	; 0x1000
30000058:	03a05000 	moveq	r5, #0	; 0x0
3000005c:	e5801000 	str	r1, [r0]
30000060:	eb00004e 	bl	300001a0 <sdram_init>
30000064:	e3a00000 	mov	r0, #0	; 0x0
30000068:	eb00000a 	bl	30000098 <relocate_code>
3000006c:	eb000034 	bl	30000144 <clean_bss>
30000070:	eb00034b 	bl	30000da4 <uart_init>
30000074:	e3a0d433 	mov	sp, #855638016	; 0x33000000
30000078:	e59ff014 	ldr	pc, [pc, #20]	; 30000094 <halt+0x18>

3000007c <halt>:
3000007c:	eafffffe 	b	3000007c <halt>
30000080:	4c000014 	.word	0x4c000014
30000084:	4c000004 	.word	0x4c000004
30000088:	0005c011 	.word	0x0005c011
3000008c:	40001000 	.word	0x40001000
30000090:	00001234 	.word	0x00001234
30000094:	30001264 	.word	0x30001264

30000098 <relocate_code>:
30000098:	e92d4800 	push	{fp, lr}
3000009c:	e28db004 	add	fp, sp, #4	; 0x4
300000a0:	e24dd018 	sub	sp, sp, #24	; 0x18
300000a4:	e50b0018 	str	r0, [fp, #-24]
300000a8:	e59f308c 	ldr	r3, [pc, #140]	; 3000013c <relocate_code+0xa4>
300000ac:	e50b3014 	str	r3, [fp, #-20]
300000b0:	e59f3088 	ldr	r3, [pc, #136]	; 30000140 <relocate_code+0xa8>
300000b4:	e50b3010 	str	r3, [fp, #-16]
300000b8:	e3a03000 	mov	r3, #0	; 0x0
300000bc:	e50b300c 	str	r3, [fp, #-12]
300000c0:	e59f2078 	ldr	r2, [pc, #120]	; 30000140 <relocate_code+0xa8>
300000c4:	e59f3070 	ldr	r3, [pc, #112]	; 3000013c <relocate_code+0xa4>
300000c8:	e0633002 	rsb	r3, r3, r2
300000cc:	e50b3008 	str	r3, [fp, #-8]
300000d0:	e51b3018 	ldr	r3, [fp, #-24]
300000d4:	e3530001 	cmp	r3, #1	; 0x1
300000d8:	1a00000f 	bne	3000011c <relocate_code+0x84>
300000dc:	ea000009 	b	30000108 <relocate_code+0x70>
300000e0:	e51b300c 	ldr	r3, [fp, #-12]
300000e4:	e5932000 	ldr	r2, [r3]
300000e8:	e51b3014 	ldr	r3, [fp, #-20]
300000ec:	e5832000 	str	r2, [r3]
300000f0:	e51b3014 	ldr	r3, [fp, #-20]
300000f4:	e2833004 	add	r3, r3, #4	; 0x4
300000f8:	e50b3014 	str	r3, [fp, #-20]
300000fc:	e51b300c 	ldr	r3, [fp, #-12]
30000100:	e2833004 	add	r3, r3, #4	; 0x4
30000104:	e50b300c 	str	r3, [fp, #-12]
30000108:	e51b2014 	ldr	r2, [fp, #-20]
3000010c:	e51b3010 	ldr	r3, [fp, #-16]
30000110:	e1520003 	cmp	r2, r3
30000114:	3afffff1 	bcc	300000e0 <relocate_code+0x48>
30000118:	ea000004 	b	30000130 <relocate_code+0x98>
3000011c:	eb000093 	bl	30000370 <nand_init>
30000120:	e51b000c 	ldr	r0, [fp, #-12]
30000124:	e51b1014 	ldr	r1, [fp, #-20]
30000128:	e51b2008 	ldr	r2, [fp, #-8]
3000012c:	eb000152 	bl	3000067c <nand_read>
30000130:	e24bd004 	sub	sp, fp, #4	; 0x4
30000134:	e8bd4800 	pop	{fp, lr}
30000138:	e12fff1e 	bx	lr
3000013c:	30000000 	.word	0x30000000
30000140:	30001444 	.word	0x30001444

30000144 <clean_bss>:
30000144:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000148:	e28db000 	add	fp, sp, #0	; 0x0
3000014c:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000150:	e59f3040 	ldr	r3, [pc, #64]	; 30000198 <clean_bss+0x54>
30000154:	e50b300c 	str	r3, [fp, #-12]
30000158:	e59f303c 	ldr	r3, [pc, #60]	; 3000019c <clean_bss+0x58>
3000015c:	e50b3008 	str	r3, [fp, #-8]
30000160:	ea000005 	b	3000017c <clean_bss+0x38>
30000164:	e51b200c 	ldr	r2, [fp, #-12]
30000168:	e3a03000 	mov	r3, #0	; 0x0
3000016c:	e5823000 	str	r3, [r2]
30000170:	e51b300c 	ldr	r3, [fp, #-12]
30000174:	e2833004 	add	r3, r3, #4	; 0x4
30000178:	e50b300c 	str	r3, [fp, #-12]
3000017c:	e51b200c 	ldr	r2, [fp, #-12]
30000180:	e51b3008 	ldr	r3, [fp, #-8]
30000184:	e1520003 	cmp	r2, r3
30000188:	9afffff5 	bls	30000164 <clean_bss+0x20>
3000018c:	e28bd000 	add	sp, fp, #0	; 0x0
30000190:	e8bd0800 	pop	{fp}
30000194:	e12fff1e 	bx	lr
30000198:	30001444 	.word	0x30001444
3000019c:	30001444 	.word	0x30001444

300001a0 <sdram_init>:
300001a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300001a4:	e28db000 	add	fp, sp, #0	; 0x0
300001a8:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300001ac:	e3a03422 	mov	r3, #570425344	; 0x22000000
300001b0:	e5823000 	str	r3, [r2]
300001b4:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300001b8:	e282201c 	add	r2, r2, #28	; 0x1c
300001bc:	e3a03906 	mov	r3, #98304	; 0x18000
300001c0:	e2833001 	add	r3, r3, #1	; 0x1
300001c4:	e5823000 	str	r3, [r2]
300001c8:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300001cc:	e2822020 	add	r2, r2, #32	; 0x20
300001d0:	e3a03906 	mov	r3, #98304	; 0x18000
300001d4:	e2833001 	add	r3, r3, #1	; 0x1
300001d8:	e5823000 	str	r3, [r2]
300001dc:	e3a02312 	mov	r2, #1207959552	; 0x48000000
300001e0:	e2822024 	add	r2, r2, #36	; 0x24
300001e4:	e3a03721 	mov	r3, #8650752	; 0x840000
300001e8:	e2833e4f 	add	r3, r3, #1264	; 0x4f0
300001ec:	e2833005 	add	r3, r3, #5	; 0x5
300001f0:	e5823000 	str	r3, [r2]
300001f4:	e3a03312 	mov	r3, #1207959552	; 0x48000000
300001f8:	e2833028 	add	r3, r3, #40	; 0x28
300001fc:	e3a020b1 	mov	r2, #177	; 0xb1
30000200:	e5832000 	str	r2, [r3]
30000204:	e3a03312 	mov	r3, #1207959552	; 0x48000000
30000208:	e283302c 	add	r3, r3, #44	; 0x2c
3000020c:	e3a02020 	mov	r2, #32	; 0x20
30000210:	e5832000 	str	r2, [r3]
30000214:	e3a03312 	mov	r3, #1207959552	; 0x48000000
30000218:	e2833030 	add	r3, r3, #48	; 0x30
3000021c:	e3a02020 	mov	r2, #32	; 0x20
30000220:	e5832000 	str	r2, [r3]
30000224:	e28bd000 	add	sp, fp, #0	; 0x0
30000228:	e8bd0800 	pop	{fp}
3000022c:	e12fff1e 	bx	lr

30000230 <sdram_test>:
30000230:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000234:	e28db000 	add	fp, sp, #0	; 0x0
30000238:	e24dd01c 	sub	sp, sp, #28	; 0x1c
3000023c:	e50b0010 	str	r0, [fp, #-16]
30000240:	e50b1014 	str	r1, [fp, #-20]
30000244:	e51b3010 	ldr	r3, [fp, #-16]
30000248:	e50b300c 	str	r3, [fp, #-12]
3000024c:	e3a03000 	mov	r3, #0	; 0x0
30000250:	e50b3008 	str	r3, [fp, #-8]
30000254:	ea000007 	b	30000278 <sdram_test+0x48>
30000258:	e51b2008 	ldr	r2, [fp, #-8]
3000025c:	e51b300c 	ldr	r3, [fp, #-12]
30000260:	e0832002 	add	r2, r3, r2
30000264:	e3a03055 	mov	r3, #85	; 0x55
30000268:	e5c23000 	strb	r3, [r2]
3000026c:	e51b3008 	ldr	r3, [fp, #-8]
30000270:	e2833001 	add	r3, r3, #1	; 0x1
30000274:	e50b3008 	str	r3, [fp, #-8]
30000278:	e51b2008 	ldr	r2, [fp, #-8]
3000027c:	e51b3014 	ldr	r3, [fp, #-20]
30000280:	e1520003 	cmp	r2, r3
30000284:	bafffff3 	blt	30000258 <sdram_test+0x28>
30000288:	e3a03000 	mov	r3, #0	; 0x0
3000028c:	e50b3008 	str	r3, [fp, #-8]
30000290:	ea00000c 	b	300002c8 <sdram_test+0x98>
30000294:	e51b2008 	ldr	r2, [fp, #-8]
30000298:	e51b300c 	ldr	r3, [fp, #-12]
3000029c:	e0833002 	add	r3, r3, r2
300002a0:	e5d33000 	ldrb	r3, [r3]
300002a4:	e20330ff 	and	r3, r3, #255	; 0xff
300002a8:	e3530055 	cmp	r3, #85	; 0x55
300002ac:	0a000002 	beq	300002bc <sdram_test+0x8c>
300002b0:	e3e03000 	mvn	r3, #0	; 0x0
300002b4:	e50b3018 	str	r3, [fp, #-24]
300002b8:	ea000008 	b	300002e0 <sdram_test+0xb0>
300002bc:	e51b3008 	ldr	r3, [fp, #-8]
300002c0:	e2833001 	add	r3, r3, #1	; 0x1
300002c4:	e50b3008 	str	r3, [fp, #-8]
300002c8:	e51b2008 	ldr	r2, [fp, #-8]
300002cc:	e51b3014 	ldr	r3, [fp, #-20]
300002d0:	e1520003 	cmp	r2, r3
300002d4:	baffffee 	blt	30000294 <sdram_test+0x64>
300002d8:	e3a03000 	mov	r3, #0	; 0x0
300002dc:	e50b3018 	str	r3, [fp, #-24]
300002e0:	e51b3018 	ldr	r3, [fp, #-24]
300002e4:	e1a00003 	mov	r0, r3
300002e8:	e28bd000 	add	sp, fp, #0	; 0x0
300002ec:	e8bd0800 	pop	{fp}
300002f0:	e12fff1e 	bx	lr

300002f4 <dump_sdram>:
300002f4:	e92d4800 	push	{fp, lr}
300002f8:	e28db004 	add	fp, sp, #4	; 0x4
300002fc:	e24dd010 	sub	sp, sp, #16	; 0x10
30000300:	e50b0010 	str	r0, [fp, #-16]
30000304:	e50b1014 	str	r1, [fp, #-20]
30000308:	e3a03000 	mov	r3, #0	; 0x0
3000030c:	e50b3008 	str	r3, [fp, #-8]
30000310:	ea00000e 	b	30000350 <dump_sdram+0x5c>
30000314:	e51b1008 	ldr	r1, [fp, #-8]
30000318:	e51b3008 	ldr	r3, [fp, #-8]
3000031c:	e2833001 	add	r3, r3, #1	; 0x1
30000320:	e50b3008 	str	r3, [fp, #-8]
30000324:	e51b3008 	ldr	r3, [fp, #-8]
30000328:	e1a02103 	lsl	r2, r3, #2
3000032c:	e51b3010 	ldr	r3, [fp, #-16]
30000330:	e0833002 	add	r3, r3, r2
30000334:	e5933000 	ldr	r3, [r3]
30000338:	e59f002c 	ldr	r0, [pc, #44]	; 3000036c <dump_sdram+0x78>
3000033c:	e1a02003 	mov	r2, r3
30000340:	eb00036a 	bl	300010f0 <printf>
30000344:	e51b3008 	ldr	r3, [fp, #-8]
30000348:	e2833001 	add	r3, r3, #1	; 0x1
3000034c:	e50b3008 	str	r3, [fp, #-8]
30000350:	e51b2008 	ldr	r2, [fp, #-8]
30000354:	e51b3014 	ldr	r3, [fp, #-20]
30000358:	e1520003 	cmp	r2, r3
3000035c:	baffffec 	blt	30000314 <dump_sdram+0x20>
30000360:	e24bd004 	sub	sp, fp, #4	; 0x4
30000364:	e8bd4800 	pop	{fp, lr}
30000368:	e12fff1e 	bx	lr
3000036c:	300012ec 	.word	0x300012ec

30000370 <nand_init>:
30000370:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000374:	e28db000 	add	fp, sp, #0	; 0x0
30000378:	e3a0244e 	mov	r2, #1308622848	; 0x4e000000
3000037c:	e3a03c01 	mov	r3, #256	; 0x100
30000380:	e5823000 	str	r3, [r2]
30000384:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
30000388:	e2833004 	add	r3, r3, #4	; 0x4
3000038c:	e3a02013 	mov	r2, #19	; 0x13
30000390:	e5832000 	str	r2, [r3]
30000394:	e28bd000 	add	sp, fp, #0	; 0x0
30000398:	e8bd0800 	pop	{fp}
3000039c:	e12fff1e 	bx	lr

300003a0 <nand_select>:
300003a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300003a4:	e28db000 	add	fp, sp, #0	; 0x0
300003a8:	e3a0244e 	mov	r2, #1308622848	; 0x4e000000
300003ac:	e2822004 	add	r2, r2, #4	; 0x4
300003b0:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
300003b4:	e2833004 	add	r3, r3, #4	; 0x4
300003b8:	e5933000 	ldr	r3, [r3]
300003bc:	e3c33002 	bic	r3, r3, #2	; 0x2
300003c0:	e5823000 	str	r3, [r2]
300003c4:	e28bd000 	add	sp, fp, #0	; 0x0
300003c8:	e8bd0800 	pop	{fp}
300003cc:	e12fff1e 	bx	lr

300003d0 <nand_deselect>:
300003d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300003d4:	e28db000 	add	fp, sp, #0	; 0x0
300003d8:	e3a0244e 	mov	r2, #1308622848	; 0x4e000000
300003dc:	e2822004 	add	r2, r2, #4	; 0x4
300003e0:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
300003e4:	e2833004 	add	r3, r3, #4	; 0x4
300003e8:	e5933000 	ldr	r3, [r3]
300003ec:	e3833002 	orr	r3, r3, #2	; 0x2
300003f0:	e5823000 	str	r3, [r2]
300003f4:	e28bd000 	add	sp, fp, #0	; 0x0
300003f8:	e8bd0800 	pop	{fp}
300003fc:	e12fff1e 	bx	lr

30000400 <nand_cmd>:
30000400:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000404:	e28db000 	add	fp, sp, #0	; 0x0
30000408:	e24dd014 	sub	sp, sp, #20	; 0x14
3000040c:	e1a03000 	mov	r3, r0
30000410:	e54b300d 	strb	r3, [fp, #-13]
30000414:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
30000418:	e2833008 	add	r3, r3, #8	; 0x8
3000041c:	e55b200d 	ldrb	r2, [fp, #-13]
30000420:	e5c32000 	strb	r2, [r3]
30000424:	e3a03000 	mov	r3, #0	; 0x0
30000428:	e50b3008 	str	r3, [fp, #-8]
3000042c:	ea000002 	b	3000043c <nand_cmd+0x3c>
30000430:	e51b3008 	ldr	r3, [fp, #-8]
30000434:	e2833001 	add	r3, r3, #1	; 0x1
30000438:	e50b3008 	str	r3, [fp, #-8]
3000043c:	e51b3008 	ldr	r3, [fp, #-8]
30000440:	e3530009 	cmp	r3, #9	; 0x9
30000444:	dafffff9 	ble	30000430 <nand_cmd+0x30>
30000448:	e28bd000 	add	sp, fp, #0	; 0x0
3000044c:	e8bd0800 	pop	{fp}
30000450:	e12fff1e 	bx	lr

30000454 <nand_addr_byte>:
30000454:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000458:	e28db000 	add	fp, sp, #0	; 0x0
3000045c:	e24dd014 	sub	sp, sp, #20	; 0x14
30000460:	e1a03000 	mov	r3, r0
30000464:	e54b300d 	strb	r3, [fp, #-13]
30000468:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
3000046c:	e283300c 	add	r3, r3, #12	; 0xc
30000470:	e55b200d 	ldrb	r2, [fp, #-13]
30000474:	e5c32000 	strb	r2, [r3]
30000478:	e3a03000 	mov	r3, #0	; 0x0
3000047c:	e50b3008 	str	r3, [fp, #-8]
30000480:	ea000002 	b	30000490 <nand_addr_byte+0x3c>
30000484:	e51b3008 	ldr	r3, [fp, #-8]
30000488:	e2833001 	add	r3, r3, #1	; 0x1
3000048c:	e50b3008 	str	r3, [fp, #-8]
30000490:	e51b3008 	ldr	r3, [fp, #-8]
30000494:	e3530009 	cmp	r3, #9	; 0x9
30000498:	dafffff9 	ble	30000484 <nand_addr_byte+0x30>
3000049c:	e28bd000 	add	sp, fp, #0	; 0x0
300004a0:	e8bd0800 	pop	{fp}
300004a4:	e12fff1e 	bx	lr

300004a8 <nand_data>:
300004a8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300004ac:	e28db000 	add	fp, sp, #0	; 0x0
300004b0:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
300004b4:	e2833010 	add	r3, r3, #16	; 0x10
300004b8:	e5d33000 	ldrb	r3, [r3]
300004bc:	e20330ff 	and	r3, r3, #255	; 0xff
300004c0:	e1a00003 	mov	r0, r3
300004c4:	e28bd000 	add	sp, fp, #0	; 0x0
300004c8:	e8bd0800 	pop	{fp}
300004cc:	e12fff1e 	bx	lr

300004d0 <nand_w_data>:
300004d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
300004d4:	e28db000 	add	fp, sp, #0	; 0x0
300004d8:	e24dd00c 	sub	sp, sp, #12	; 0xc
300004dc:	e1a03000 	mov	r3, r0
300004e0:	e54b3005 	strb	r3, [fp, #-5]
300004e4:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
300004e8:	e2833010 	add	r3, r3, #16	; 0x10
300004ec:	e55b2005 	ldrb	r2, [fp, #-5]
300004f0:	e5c32000 	strb	r2, [r3]
300004f4:	e28bd000 	add	sp, fp, #0	; 0x0
300004f8:	e8bd0800 	pop	{fp}
300004fc:	e12fff1e 	bx	lr

30000500 <wait_ready>:
30000500:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000504:	e28db000 	add	fp, sp, #0	; 0x0
30000508:	e3a0344e 	mov	r3, #1308622848	; 0x4e000000
3000050c:	e2833020 	add	r3, r3, #32	; 0x20
30000510:	e5d33000 	ldrb	r3, [r3]
30000514:	e20330ff 	and	r3, r3, #255	; 0xff
30000518:	e2033001 	and	r3, r3, #1	; 0x1
3000051c:	e3530000 	cmp	r3, #0	; 0x0
30000520:	0afffff8 	beq	30000508 <wait_ready+0x8>
30000524:	e28bd000 	add	sp, fp, #0	; 0x0
30000528:	e8bd0800 	pop	{fp}
3000052c:	e12fff1e 	bx	lr

30000530 <nand_chip_id>:
30000530:	e92d4800 	push	{fp, lr}
30000534:	e28db004 	add	fp, sp, #4	; 0x4
30000538:	e24dd010 	sub	sp, sp, #16	; 0x10
3000053c:	e24b2009 	sub	r2, fp, #9	; 0x9
30000540:	e50b2010 	str	r2, [fp, #-16]
30000544:	e3a03000 	mov	r3, #0	; 0x0
30000548:	e51b2010 	ldr	r2, [fp, #-16]
3000054c:	e5c23000 	strb	r3, [r2]
30000550:	e51b3010 	ldr	r3, [fp, #-16]
30000554:	e2833001 	add	r3, r3, #1	; 0x1
30000558:	e50b3010 	str	r3, [fp, #-16]
3000055c:	e3a03000 	mov	r3, #0	; 0x0
30000560:	e51b2010 	ldr	r2, [fp, #-16]
30000564:	e5c23000 	strb	r3, [r2]
30000568:	e51b3010 	ldr	r3, [fp, #-16]
3000056c:	e2833001 	add	r3, r3, #1	; 0x1
30000570:	e50b3010 	str	r3, [fp, #-16]
30000574:	e3a03000 	mov	r3, #0	; 0x0
30000578:	e51b2010 	ldr	r2, [fp, #-16]
3000057c:	e5c23000 	strb	r3, [r2]
30000580:	e51b3010 	ldr	r3, [fp, #-16]
30000584:	e2833001 	add	r3, r3, #1	; 0x1
30000588:	e50b3010 	str	r3, [fp, #-16]
3000058c:	e3a03000 	mov	r3, #0	; 0x0
30000590:	e51b2010 	ldr	r2, [fp, #-16]
30000594:	e5c23000 	strb	r3, [r2]
30000598:	e51b3010 	ldr	r3, [fp, #-16]
3000059c:	e2833001 	add	r3, r3, #1	; 0x1
300005a0:	e50b3010 	str	r3, [fp, #-16]
300005a4:	e3a03000 	mov	r3, #0	; 0x0
300005a8:	e51b2010 	ldr	r2, [fp, #-16]
300005ac:	e5c23000 	strb	r3, [r2]
300005b0:	e51b3010 	ldr	r3, [fp, #-16]
300005b4:	e2833001 	add	r3, r3, #1	; 0x1
300005b8:	ebffff78 	bl	300003a0 <nand_select>
300005bc:	e3a00090 	mov	r0, #144	; 0x90
300005c0:	ebffff8e 	bl	30000400 <nand_cmd>
300005c4:	e3a00000 	mov	r0, #0	; 0x0
300005c8:	ebffffa1 	bl	30000454 <nand_addr_byte>
300005cc:	ebffffb5 	bl	300004a8 <nand_data>
300005d0:	e1a03000 	mov	r3, r0
300005d4:	e54b3009 	strb	r3, [fp, #-9]
300005d8:	ebffffb2 	bl	300004a8 <nand_data>
300005dc:	e1a03000 	mov	r3, r0
300005e0:	e54b3008 	strb	r3, [fp, #-8]
300005e4:	ebffffaf 	bl	300004a8 <nand_data>
300005e8:	e1a03000 	mov	r3, r0
300005ec:	e54b3007 	strb	r3, [fp, #-7]
300005f0:	ebffffac 	bl	300004a8 <nand_data>
300005f4:	e1a03000 	mov	r3, r0
300005f8:	e54b3006 	strb	r3, [fp, #-6]
300005fc:	ebffffa9 	bl	300004a8 <nand_data>
30000600:	e1a03000 	mov	r3, r0
30000604:	e54b3005 	strb	r3, [fp, #-5]
30000608:	ebffff70 	bl	300003d0 <nand_deselect>
3000060c:	e55b3009 	ldrb	r3, [fp, #-9]
30000610:	e59f0050 	ldr	r0, [pc, #80]	; 30000668 <nand_chip_id+0x138>
30000614:	e1a01003 	mov	r1, r3
30000618:	eb0002b4 	bl	300010f0 <printf>
3000061c:	e55b3008 	ldrb	r3, [fp, #-8]
30000620:	e59f0044 	ldr	r0, [pc, #68]	; 3000066c <nand_chip_id+0x13c>
30000624:	e1a01003 	mov	r1, r3
30000628:	eb0002b0 	bl	300010f0 <printf>
3000062c:	e55b3007 	ldrb	r3, [fp, #-7]
30000630:	e59f0038 	ldr	r0, [pc, #56]	; 30000670 <nand_chip_id+0x140>
30000634:	e1a01003 	mov	r1, r3
30000638:	eb0002ac 	bl	300010f0 <printf>
3000063c:	e55b3006 	ldrb	r3, [fp, #-6]
30000640:	e59f002c 	ldr	r0, [pc, #44]	; 30000674 <nand_chip_id+0x144>
30000644:	e1a01003 	mov	r1, r3
30000648:	eb0002a8 	bl	300010f0 <printf>
3000064c:	e55b3005 	ldrb	r3, [fp, #-5]
30000650:	e59f0020 	ldr	r0, [pc, #32]	; 30000678 <nand_chip_id+0x148>
30000654:	e1a01003 	mov	r1, r3
30000658:	eb0002a4 	bl	300010f0 <printf>
3000065c:	e24bd004 	sub	sp, fp, #4	; 0x4
30000660:	e8bd4800 	pop	{fp, lr}
30000664:	e12fff1e 	bx	lr
30000668:	300012fc 	.word	0x300012fc
3000066c:	30001314 	.word	0x30001314
30000670:	3000132c 	.word	0x3000132c
30000674:	30001344 	.word	0x30001344
30000678:	3000135c 	.word	0x3000135c

3000067c <nand_read>:
3000067c:	e92d4810 	push	{r4, fp, lr}
30000680:	e28db008 	add	fp, sp, #8	; 0x8
30000684:	e24dd024 	sub	sp, sp, #36	; 0x24
30000688:	e50b0020 	str	r0, [fp, #-32]
3000068c:	e50b1024 	str	r1, [fp, #-36]
30000690:	e50b2028 	str	r2, [fp, #-40]
30000694:	e3a03000 	mov	r3, #0	; 0x0
30000698:	e50b3018 	str	r3, [fp, #-24]
3000069c:	e51b3020 	ldr	r3, [fp, #-32]
300006a0:	e1a035a3 	lsr	r3, r3, #11
300006a4:	e50b3014 	str	r3, [fp, #-20]
300006a8:	e51b3020 	ldr	r3, [fp, #-32]
300006ac:	e1a03a83 	lsl	r3, r3, #21
300006b0:	e1a03aa3 	lsr	r3, r3, #21
300006b4:	e50b3010 	str	r3, [fp, #-16]
300006b8:	ebffff38 	bl	300003a0 <nand_select>
300006bc:	ea00003a 	b	300007ac <nand_read+0x130>
300006c0:	e3a00000 	mov	r0, #0	; 0x0
300006c4:	ebffff4d 	bl	30000400 <nand_cmd>
300006c8:	e51b3010 	ldr	r3, [fp, #-16]
300006cc:	e20330ff 	and	r3, r3, #255	; 0xff
300006d0:	e1a00003 	mov	r0, r3
300006d4:	ebffff5e 	bl	30000454 <nand_addr_byte>
300006d8:	e51b3010 	ldr	r3, [fp, #-16]
300006dc:	e1a03443 	asr	r3, r3, #8
300006e0:	e20330ff 	and	r3, r3, #255	; 0xff
300006e4:	e1a00003 	mov	r0, r3
300006e8:	ebffff59 	bl	30000454 <nand_addr_byte>
300006ec:	e51b3014 	ldr	r3, [fp, #-20]
300006f0:	e20330ff 	and	r3, r3, #255	; 0xff
300006f4:	e1a00003 	mov	r0, r3
300006f8:	ebffff55 	bl	30000454 <nand_addr_byte>
300006fc:	e51b3014 	ldr	r3, [fp, #-20]
30000700:	e1a03443 	asr	r3, r3, #8
30000704:	e20330ff 	and	r3, r3, #255	; 0xff
30000708:	e1a00003 	mov	r0, r3
3000070c:	ebffff50 	bl	30000454 <nand_addr_byte>
30000710:	e51b3014 	ldr	r3, [fp, #-20]
30000714:	e1a03843 	asr	r3, r3, #16
30000718:	e20330ff 	and	r3, r3, #255	; 0xff
3000071c:	e1a00003 	mov	r0, r3
30000720:	ebffff4b 	bl	30000454 <nand_addr_byte>
30000724:	e3a00030 	mov	r0, #48	; 0x30
30000728:	ebffff34 	bl	30000400 <nand_cmd>
3000072c:	ebffff73 	bl	30000500 <wait_ready>
30000730:	ea00000b 	b	30000764 <nand_read+0xe8>
30000734:	e51b2018 	ldr	r2, [fp, #-24]
30000738:	e51b3024 	ldr	r3, [fp, #-36]
3000073c:	e0834002 	add	r4, r3, r2
30000740:	ebffff58 	bl	300004a8 <nand_data>
30000744:	e1a03000 	mov	r3, r0
30000748:	e5c43000 	strb	r3, [r4]
3000074c:	e51b3018 	ldr	r3, [fp, #-24]
30000750:	e2833001 	add	r3, r3, #1	; 0x1
30000754:	e50b3018 	str	r3, [fp, #-24]
30000758:	e51b3010 	ldr	r3, [fp, #-16]
3000075c:	e2833001 	add	r3, r3, #1	; 0x1
30000760:	e50b3010 	str	r3, [fp, #-16]
30000764:	e51b2010 	ldr	r2, [fp, #-16]
30000768:	e3a03e7f 	mov	r3, #2032	; 0x7f0
3000076c:	e283300f 	add	r3, r3, #15	; 0xf
30000770:	e1520003 	cmp	r2, r3
30000774:	ca000003 	bgt	30000788 <nand_read+0x10c>
30000778:	e51b2018 	ldr	r2, [fp, #-24]
3000077c:	e51b3028 	ldr	r3, [fp, #-40]
30000780:	e1520003 	cmp	r2, r3
30000784:	3affffea 	bcc	30000734 <nand_read+0xb8>
30000788:	e51b2018 	ldr	r2, [fp, #-24]
3000078c:	e51b3028 	ldr	r3, [fp, #-40]
30000790:	e1520003 	cmp	r2, r3
30000794:	0a000008 	beq	300007bc <nand_read+0x140>
30000798:	e3a03000 	mov	r3, #0	; 0x0
3000079c:	e50b3010 	str	r3, [fp, #-16]
300007a0:	e51b3014 	ldr	r3, [fp, #-20]
300007a4:	e2833001 	add	r3, r3, #1	; 0x1
300007a8:	e50b3014 	str	r3, [fp, #-20]
300007ac:	e51b2018 	ldr	r2, [fp, #-24]
300007b0:	e51b3028 	ldr	r3, [fp, #-40]
300007b4:	e1520003 	cmp	r2, r3
300007b8:	3affffc0 	bcc	300006c0 <nand_read+0x44>
300007bc:	ebffff03 	bl	300003d0 <nand_deselect>
300007c0:	e24bd008 	sub	sp, fp, #8	; 0x8
300007c4:	e8bd4810 	pop	{r4, fp, lr}
300007c8:	e12fff1e 	bx	lr

300007cc <nand_erase>:
300007cc:	e92d4800 	push	{fp, lr}
300007d0:	e28db004 	add	fp, sp, #4	; 0x4
300007d4:	e24dd018 	sub	sp, sp, #24	; 0x18
300007d8:	e50b0010 	str	r0, [fp, #-16]
300007dc:	e50b1014 	str	r1, [fp, #-20]
300007e0:	e51b3010 	ldr	r3, [fp, #-16]
300007e4:	e1a035a3 	lsr	r3, r3, #11
300007e8:	e50b3008 	str	r3, [fp, #-8]
300007ec:	e51b3010 	ldr	r3, [fp, #-16]
300007f0:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
300007f4:	e3c338fe 	bic	r3, r3, #16646144	; 0xfe0000
300007f8:	e3530000 	cmp	r3, #0	; 0x0
300007fc:	0a000004 	beq	30000814 <nand_erase+0x48>
30000800:	e59f00d8 	ldr	r0, [pc, #216]	; 300008e0 <nand_erase+0x114>
30000804:	eb000239 	bl	300010f0 <printf>
30000808:	e3e03000 	mvn	r3, #0	; 0x0
3000080c:	e50b3018 	str	r3, [fp, #-24]
30000810:	ea00002d 	b	300008cc <nand_erase+0x100>
30000814:	e51b3014 	ldr	r3, [fp, #-20]
30000818:	e3c334ff 	bic	r3, r3, #-16777216	; 0xff000000
3000081c:	e3c338fe 	bic	r3, r3, #16646144	; 0xfe0000
30000820:	e3530000 	cmp	r3, #0	; 0x0
30000824:	0a000004 	beq	3000083c <nand_erase+0x70>
30000828:	e59f00b4 	ldr	r0, [pc, #180]	; 300008e4 <nand_erase+0x118>
3000082c:	eb00022f 	bl	300010f0 <printf>
30000830:	e3e03000 	mvn	r3, #0	; 0x0
30000834:	e50b3018 	str	r3, [fp, #-24]
30000838:	ea000023 	b	300008cc <nand_erase+0x100>
3000083c:	ebfffed7 	bl	300003a0 <nand_select>
30000840:	e51b3010 	ldr	r3, [fp, #-16]
30000844:	e1a035a3 	lsr	r3, r3, #11
30000848:	e50b3008 	str	r3, [fp, #-8]
3000084c:	e3a00060 	mov	r0, #96	; 0x60
30000850:	ebfffeea 	bl	30000400 <nand_cmd>
30000854:	e51b3008 	ldr	r3, [fp, #-8]
30000858:	e20330ff 	and	r3, r3, #255	; 0xff
3000085c:	e1a00003 	mov	r0, r3
30000860:	ebfffefb 	bl	30000454 <nand_addr_byte>
30000864:	e51b3008 	ldr	r3, [fp, #-8]
30000868:	e1a03443 	asr	r3, r3, #8
3000086c:	e20330ff 	and	r3, r3, #255	; 0xff
30000870:	e1a00003 	mov	r0, r3
30000874:	ebfffef6 	bl	30000454 <nand_addr_byte>
30000878:	e51b3008 	ldr	r3, [fp, #-8]
3000087c:	e1a03843 	asr	r3, r3, #16
30000880:	e20330ff 	and	r3, r3, #255	; 0xff
30000884:	e1a00003 	mov	r0, r3
30000888:	ebfffef1 	bl	30000454 <nand_addr_byte>
3000088c:	e3a000d0 	mov	r0, #208	; 0xd0
30000890:	ebfffeda 	bl	30000400 <nand_cmd>
30000894:	ebffff19 	bl	30000500 <wait_ready>
30000898:	e51b3014 	ldr	r3, [fp, #-20]
3000089c:	e2433802 	sub	r3, r3, #131072	; 0x20000
300008a0:	e50b3014 	str	r3, [fp, #-20]
300008a4:	e51b3014 	ldr	r3, [fp, #-20]
300008a8:	e3530000 	cmp	r3, #0	; 0x0
300008ac:	0a000003 	beq	300008c0 <nand_erase+0xf4>
300008b0:	e51b3010 	ldr	r3, [fp, #-16]
300008b4:	e2833802 	add	r3, r3, #131072	; 0x20000
300008b8:	e50b3010 	str	r3, [fp, #-16]
300008bc:	eaffffdf 	b	30000840 <nand_erase+0x74>
300008c0:	ebfffec2 	bl	300003d0 <nand_deselect>
300008c4:	e3a03000 	mov	r3, #0	; 0x0
300008c8:	e50b3018 	str	r3, [fp, #-24]
300008cc:	e51b3018 	ldr	r3, [fp, #-24]
300008d0:	e1a00003 	mov	r0, r3
300008d4:	e24bd004 	sub	sp, fp, #4	; 0x4
300008d8:	e8bd4800 	pop	{fp, lr}
300008dc:	e12fff1e 	bx	lr
300008e0:	30001374 	.word	0x30001374
300008e4:	300013a0 	.word	0x300013a0

300008e8 <nand_write>:
300008e8:	e92d4800 	push	{fp, lr}
300008ec:	e28db004 	add	fp, sp, #4	; 0x4
300008f0:	e24dd020 	sub	sp, sp, #32	; 0x20
300008f4:	e50b0018 	str	r0, [fp, #-24]
300008f8:	e50b101c 	str	r1, [fp, #-28]
300008fc:	e50b2020 	str	r2, [fp, #-32]
30000900:	e51b3018 	ldr	r3, [fp, #-24]
30000904:	e1a035a3 	lsr	r3, r3, #11
30000908:	e50b3010 	str	r3, [fp, #-16]
3000090c:	e51b3018 	ldr	r3, [fp, #-24]
30000910:	e1a03a83 	lsl	r3, r3, #21
30000914:	e1a03aa3 	lsr	r3, r3, #21
30000918:	e50b300c 	str	r3, [fp, #-12]
3000091c:	e3a03000 	mov	r3, #0	; 0x0
30000920:	e50b3008 	str	r3, [fp, #-8]
30000924:	ebfffe9d 	bl	300003a0 <nand_select>
30000928:	e3a00080 	mov	r0, #128	; 0x80
3000092c:	ebfffeb3 	bl	30000400 <nand_cmd>
30000930:	e51b300c 	ldr	r3, [fp, #-12]
30000934:	e20330ff 	and	r3, r3, #255	; 0xff
30000938:	e1a00003 	mov	r0, r3
3000093c:	ebfffec4 	bl	30000454 <nand_addr_byte>
30000940:	e51b300c 	ldr	r3, [fp, #-12]
30000944:	e1a03443 	asr	r3, r3, #8
30000948:	e20330ff 	and	r3, r3, #255	; 0xff
3000094c:	e1a00003 	mov	r0, r3
30000950:	ebfffebf 	bl	30000454 <nand_addr_byte>
30000954:	e51b3010 	ldr	r3, [fp, #-16]
30000958:	e20330ff 	and	r3, r3, #255	; 0xff
3000095c:	e1a00003 	mov	r0, r3
30000960:	ebfffebb 	bl	30000454 <nand_addr_byte>
30000964:	e51b3010 	ldr	r3, [fp, #-16]
30000968:	e1a03443 	asr	r3, r3, #8
3000096c:	e20330ff 	and	r3, r3, #255	; 0xff
30000970:	e1a00003 	mov	r0, r3
30000974:	ebfffeb6 	bl	30000454 <nand_addr_byte>
30000978:	e51b3010 	ldr	r3, [fp, #-16]
3000097c:	e1a03843 	asr	r3, r3, #16
30000980:	e20330ff 	and	r3, r3, #255	; 0xff
30000984:	e1a00003 	mov	r0, r3
30000988:	ebfffeb1 	bl	30000454 <nand_addr_byte>
3000098c:	ea000008 	b	300009b4 <nand_write+0xcc>
30000990:	e51b2008 	ldr	r2, [fp, #-8]
30000994:	e51b301c 	ldr	r3, [fp, #-28]
30000998:	e0833002 	add	r3, r3, r2
3000099c:	e5d32000 	ldrb	r2, [r3]
300009a0:	e51b3008 	ldr	r3, [fp, #-8]
300009a4:	e2833001 	add	r3, r3, #1	; 0x1
300009a8:	e50b3008 	str	r3, [fp, #-8]
300009ac:	e1a00002 	mov	r0, r2
300009b0:	ebfffec6 	bl	300004d0 <nand_w_data>
300009b4:	e51b200c 	ldr	r2, [fp, #-12]
300009b8:	e3a03e7f 	mov	r3, #2032	; 0x7f0
300009bc:	e283300f 	add	r3, r3, #15	; 0xf
300009c0:	e1520003 	cmp	r2, r3
300009c4:	ca000003 	bgt	300009d8 <nand_write+0xf0>
300009c8:	e51b2008 	ldr	r2, [fp, #-8]
300009cc:	e51b3020 	ldr	r3, [fp, #-32]
300009d0:	e1520003 	cmp	r2, r3
300009d4:	3affffed 	bcc	30000990 <nand_write+0xa8>
300009d8:	e3a00010 	mov	r0, #16	; 0x10
300009dc:	ebfffe87 	bl	30000400 <nand_cmd>
300009e0:	ebfffec6 	bl	30000500 <wait_ready>
300009e4:	e51b2008 	ldr	r2, [fp, #-8]
300009e8:	e51b3020 	ldr	r3, [fp, #-32]
300009ec:	e1520003 	cmp	r2, r3
300009f0:	0a000005 	beq	30000a0c <nand_write+0x124>
300009f4:	e3a03000 	mov	r3, #0	; 0x0
300009f8:	e50b300c 	str	r3, [fp, #-12]
300009fc:	e51b3010 	ldr	r3, [fp, #-16]
30000a00:	e2833001 	add	r3, r3, #1	; 0x1
30000a04:	e50b3010 	str	r3, [fp, #-16]
30000a08:	eaffffc6 	b	30000928 <nand_write+0x40>
30000a0c:	ebfffe6f 	bl	300003d0 <nand_deselect>
30000a10:	e24bd004 	sub	sp, fp, #4	; 0x4
30000a14:	e8bd4800 	pop	{fp, lr}
30000a18:	e12fff1e 	bx	lr

30000a1c <nand_dump>:
30000a1c:	e92d4810 	push	{r4, fp, lr}
30000a20:	e28db008 	add	fp, sp, #8	; 0x8
30000a24:	e24dd01c 	sub	sp, sp, #28	; 0x1c
30000a28:	e50b0020 	str	r0, [fp, #-32]
30000a2c:	e50b1024 	str	r1, [fp, #-36]
30000a30:	e3a03000 	mov	r3, #0	; 0x0
30000a34:	e50b3018 	str	r3, [fp, #-24]
30000a38:	e51b3020 	ldr	r3, [fp, #-32]
30000a3c:	e1a035a3 	lsr	r3, r3, #11
30000a40:	e50b3014 	str	r3, [fp, #-20]
30000a44:	e51b3020 	ldr	r3, [fp, #-32]
30000a48:	e1a03a83 	lsl	r3, r3, #21
30000a4c:	e1a03aa3 	lsr	r3, r3, #21
30000a50:	e50b3010 	str	r3, [fp, #-16]
30000a54:	ebfffe51 	bl	300003a0 <nand_select>
30000a58:	ea00003b 	b	30000b4c <nand_dump+0x130>
30000a5c:	e3a00000 	mov	r0, #0	; 0x0
30000a60:	ebfffe66 	bl	30000400 <nand_cmd>
30000a64:	e51b3010 	ldr	r3, [fp, #-16]
30000a68:	e20330ff 	and	r3, r3, #255	; 0xff
30000a6c:	e1a00003 	mov	r0, r3
30000a70:	ebfffe77 	bl	30000454 <nand_addr_byte>
30000a74:	e51b3010 	ldr	r3, [fp, #-16]
30000a78:	e1a03443 	asr	r3, r3, #8
30000a7c:	e20330ff 	and	r3, r3, #255	; 0xff
30000a80:	e1a00003 	mov	r0, r3
30000a84:	ebfffe72 	bl	30000454 <nand_addr_byte>
30000a88:	e51b3014 	ldr	r3, [fp, #-20]
30000a8c:	e20330ff 	and	r3, r3, #255	; 0xff
30000a90:	e1a00003 	mov	r0, r3
30000a94:	ebfffe6e 	bl	30000454 <nand_addr_byte>
30000a98:	e51b3014 	ldr	r3, [fp, #-20]
30000a9c:	e1a03443 	asr	r3, r3, #8
30000aa0:	e20330ff 	and	r3, r3, #255	; 0xff
30000aa4:	e1a00003 	mov	r0, r3
30000aa8:	ebfffe69 	bl	30000454 <nand_addr_byte>
30000aac:	e51b3014 	ldr	r3, [fp, #-20]
30000ab0:	e1a03843 	asr	r3, r3, #16
30000ab4:	e20330ff 	and	r3, r3, #255	; 0xff
30000ab8:	e1a00003 	mov	r0, r3
30000abc:	ebfffe64 	bl	30000454 <nand_addr_byte>
30000ac0:	e3a00030 	mov	r0, #48	; 0x30
30000ac4:	ebfffe4d 	bl	30000400 <nand_cmd>
30000ac8:	ebfffe8c 	bl	30000500 <wait_ready>
30000acc:	ea00000c 	b	30000b04 <nand_dump+0xe8>
30000ad0:	e51b4018 	ldr	r4, [fp, #-24]
30000ad4:	e51b3018 	ldr	r3, [fp, #-24]
30000ad8:	e2833001 	add	r3, r3, #1	; 0x1
30000adc:	e50b3018 	str	r3, [fp, #-24]
30000ae0:	ebfffe70 	bl	300004a8 <nand_data>
30000ae4:	e1a03000 	mov	r3, r0
30000ae8:	e59f007c 	ldr	r0, [pc, #124]	; 30000b6c <nand_dump+0x150>
30000aec:	e1a01004 	mov	r1, r4
30000af0:	e1a02003 	mov	r2, r3
30000af4:	eb00017d 	bl	300010f0 <printf>
30000af8:	e51b3010 	ldr	r3, [fp, #-16]
30000afc:	e2833001 	add	r3, r3, #1	; 0x1
30000b00:	e50b3010 	str	r3, [fp, #-16]
30000b04:	e51b2010 	ldr	r2, [fp, #-16]
30000b08:	e3a03e7f 	mov	r3, #2032	; 0x7f0
30000b0c:	e283300f 	add	r3, r3, #15	; 0xf
30000b10:	e1520003 	cmp	r2, r3
30000b14:	ca000003 	bgt	30000b28 <nand_dump+0x10c>
30000b18:	e51b2018 	ldr	r2, [fp, #-24]
30000b1c:	e51b3024 	ldr	r3, [fp, #-36]
30000b20:	e1520003 	cmp	r2, r3
30000b24:	3affffe9 	bcc	30000ad0 <nand_dump+0xb4>
30000b28:	e51b2018 	ldr	r2, [fp, #-24]
30000b2c:	e51b3024 	ldr	r3, [fp, #-36]
30000b30:	e1520003 	cmp	r2, r3
30000b34:	0a000008 	beq	30000b5c <nand_dump+0x140>
30000b38:	e3a03000 	mov	r3, #0	; 0x0
30000b3c:	e50b3010 	str	r3, [fp, #-16]
30000b40:	e51b3014 	ldr	r3, [fp, #-20]
30000b44:	e2833001 	add	r3, r3, #1	; 0x1
30000b48:	e50b3014 	str	r3, [fp, #-20]
30000b4c:	e51b2018 	ldr	r2, [fp, #-24]
30000b50:	e51b3024 	ldr	r3, [fp, #-36]
30000b54:	e1520003 	cmp	r2, r3
30000b58:	3affffbf 	bcc	30000a5c <nand_dump+0x40>
30000b5c:	ebfffe1b 	bl	300003d0 <nand_deselect>
30000b60:	e24bd008 	sub	sp, fp, #8	; 0x8
30000b64:	e8bd4810 	pop	{r4, fp, lr}
30000b68:	e12fff1e 	bx	lr
30000b6c:	300013cc 	.word	0x300013cc

30000b70 <init_exint0>:
30000b70:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000b74:	e28db000 	add	fp, sp, #0	; 0x0
30000b78:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000b7c:	e2822050 	add	r2, r2, #80	; 0x50
30000b80:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000b84:	e2833050 	add	r3, r3, #80	; 0x50
30000b88:	e5933000 	ldr	r3, [r3]
30000b8c:	e3c33003 	bic	r3, r3, #3	; 0x3
30000b90:	e5823000 	str	r3, [r2]
30000b94:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000b98:	e2822050 	add	r2, r2, #80	; 0x50
30000b9c:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000ba0:	e2833050 	add	r3, r3, #80	; 0x50
30000ba4:	e5933000 	ldr	r3, [r3]
30000ba8:	e3833002 	orr	r3, r3, #2	; 0x2
30000bac:	e5823000 	str	r3, [r2]
30000bb0:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000bb4:	e2833088 	add	r3, r3, #136	; 0x88
30000bb8:	e3a02004 	mov	r2, #4	; 0x4
30000bbc:	e5832000 	str	r2, [r3]
30000bc0:	e3a0244a 	mov	r2, #1241513984	; 0x4a000000
30000bc4:	e2822008 	add	r2, r2, #8	; 0x8
30000bc8:	e3a0344a 	mov	r3, #1241513984	; 0x4a000000
30000bcc:	e2833008 	add	r3, r3, #8	; 0x8
30000bd0:	e5933000 	ldr	r3, [r3]
30000bd4:	e3c33001 	bic	r3, r3, #1	; 0x1
30000bd8:	e5823000 	str	r3, [r2]
30000bdc:	e28bd000 	add	sp, fp, #0	; 0x0
30000be0:	e8bd0800 	pop	{fp}
30000be4:	e12fff1e 	bx	lr

30000be8 <process_irq>:
30000be8:	e92d4800 	push	{fp, lr}
30000bec:	e28db004 	add	fp, sp, #4	; 0x4
30000bf0:	e24dd010 	sub	sp, sp, #16	; 0x10
30000bf4:	e50b0010 	str	r0, [fp, #-16]
30000bf8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000bfc:	e28330a8 	add	r3, r3, #168	; 0xa8
30000c00:	e5933000 	ldr	r3, [r3]
30000c04:	e50b3008 	str	r3, [fp, #-8]
30000c08:	e59f004c 	ldr	r0, [pc, #76]	; 30000c5c <process_irq+0x74>
30000c0c:	e51b1010 	ldr	r1, [fp, #-16]
30000c10:	eb000136 	bl	300010f0 <printf>
30000c14:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000c18:	e28330a8 	add	r3, r3, #168	; 0xa8
30000c1c:	e3a02001 	mov	r2, #1	; 0x1
30000c20:	e5832000 	str	r2, [r3]
30000c24:	e3a0244a 	mov	r2, #1241513984	; 0x4a000000
30000c28:	e2822010 	add	r2, r2, #16	; 0x10
30000c2c:	e3a01001 	mov	r1, #1	; 0x1
30000c30:	e51b3010 	ldr	r3, [fp, #-16]
30000c34:	e1a03311 	lsl	r3, r1, r3
30000c38:	e5823000 	str	r3, [r2]
30000c3c:	e3a0144a 	mov	r1, #1241513984	; 0x4a000000
30000c40:	e3a02001 	mov	r2, #1	; 0x1
30000c44:	e51b3010 	ldr	r3, [fp, #-16]
30000c48:	e1a03312 	lsl	r3, r2, r3
30000c4c:	e5813000 	str	r3, [r1]
30000c50:	e24bd004 	sub	sp, fp, #4	; 0x4
30000c54:	e8bd4800 	pop	{fp, lr}
30000c58:	e12fff1e 	bx	lr
30000c5c:	300013dc 	.word	0x300013dc

30000c60 <delay>:
30000c60:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000c64:	e28db000 	add	fp, sp, #0	; 0x0
30000c68:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000c6c:	e50b0008 	str	r0, [fp, #-8]
30000c70:	e51b3008 	ldr	r3, [fp, #-8]
30000c74:	e3530000 	cmp	r3, #0	; 0x0
30000c78:	03a03000 	moveq	r3, #0	; 0x0
30000c7c:	13a03001 	movne	r3, #1	; 0x1
30000c80:	e20320ff 	and	r2, r3, #255	; 0xff
30000c84:	e51b3008 	ldr	r3, [fp, #-8]
30000c88:	e2433001 	sub	r3, r3, #1	; 0x1
30000c8c:	e50b3008 	str	r3, [fp, #-8]
30000c90:	e3520000 	cmp	r2, #0	; 0x0
30000c94:	1afffff5 	bne	30000c70 <delay+0x10>
30000c98:	e28bd000 	add	sp, fp, #0	; 0x0
30000c9c:	e8bd0800 	pop	{fp}
30000ca0:	e12fff1e 	bx	lr

30000ca4 <init_led>:
30000ca4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000ca8:	e28db000 	add	fp, sp, #0	; 0x0
30000cac:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000cb0:	e2822050 	add	r2, r2, #80	; 0x50
30000cb4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000cb8:	e2833050 	add	r3, r3, #80	; 0x50
30000cbc:	e5933000 	ldr	r3, [r3]
30000cc0:	e3833c15 	orr	r3, r3, #5376	; 0x1500
30000cc4:	e5823000 	str	r3, [r2]
30000cc8:	e28bd000 	add	sp, fp, #0	; 0x0
30000ccc:	e8bd0800 	pop	{fp}
30000cd0:	e12fff1e 	bx	lr

30000cd4 <dim_led>:
30000cd4:	e92d4800 	push	{fp, lr}
30000cd8:	e28db004 	add	fp, sp, #4	; 0x4
30000cdc:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000ce0:	e2833054 	add	r3, r3, #84	; 0x54
30000ce4:	e3a02050 	mov	r2, #80	; 0x50
30000ce8:	e5832000 	str	r2, [r3]
30000cec:	e3a00b61 	mov	r0, #99328	; 0x18400
30000cf0:	e2800e2a 	add	r0, r0, #672	; 0x2a0
30000cf4:	ebffffd9 	bl	30000c60 <delay>
30000cf8:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000cfc:	e2833054 	add	r3, r3, #84	; 0x54
30000d00:	e3a02020 	mov	r2, #32	; 0x20
30000d04:	e5832000 	str	r2, [r3]
30000d08:	e3a00b61 	mov	r0, #99328	; 0x18400
30000d0c:	e2800e2a 	add	r0, r0, #672	; 0x2a0
30000d10:	ebffffd2 	bl	30000c60 <delay>
30000d14:	eafffff0 	b	30000cdc <dim_led+0x8>

30000d18 <open_led>:
30000d18:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000d1c:	e28db000 	add	fp, sp, #0	; 0x0
30000d20:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000d24:	e50b0008 	str	r0, [fp, #-8]
30000d28:	e51b3008 	ldr	r3, [fp, #-8]
30000d2c:	e3530000 	cmp	r3, #0	; 0x0
30000d30:	1a000004 	bne	30000d48 <open_led+0x30>
30000d34:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000d38:	e2833054 	add	r3, r3, #84	; 0x54
30000d3c:	e3a02010 	mov	r2, #16	; 0x10
30000d40:	e5832000 	str	r2, [r3]
30000d44:	ea000013 	b	30000d98 <open_led+0x80>
30000d48:	e51b3008 	ldr	r3, [fp, #-8]
30000d4c:	e3530001 	cmp	r3, #1	; 0x1
30000d50:	1a000004 	bne	30000d68 <open_led+0x50>
30000d54:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000d58:	e2833054 	add	r3, r3, #84	; 0x54
30000d5c:	e3a02020 	mov	r2, #32	; 0x20
30000d60:	e5832000 	str	r2, [r3]
30000d64:	ea00000b 	b	30000d98 <open_led+0x80>
30000d68:	e51b3008 	ldr	r3, [fp, #-8]
30000d6c:	e3530002 	cmp	r3, #2	; 0x2
30000d70:	1a000004 	bne	30000d88 <open_led+0x70>
30000d74:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000d78:	e2833054 	add	r3, r3, #84	; 0x54
30000d7c:	e3a02040 	mov	r2, #64	; 0x40
30000d80:	e5832000 	str	r2, [r3]
30000d84:	ea000003 	b	30000d98 <open_led+0x80>
30000d88:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000d8c:	e2833054 	add	r3, r3, #84	; 0x54
30000d90:	e3a02000 	mov	r2, #0	; 0x0
30000d94:	e5832000 	str	r2, [r3]
30000d98:	e28bd000 	add	sp, fp, #0	; 0x0
30000d9c:	e8bd0800 	pop	{fp}
30000da0:	e12fff1e 	bx	lr

30000da4 <uart_init>:
30000da4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000da8:	e28db000 	add	fp, sp, #0	; 0x0
30000dac:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000db0:	e2822070 	add	r2, r2, #112	; 0x70
30000db4:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000db8:	e2833070 	add	r3, r3, #112	; 0x70
30000dbc:	e5933000 	ldr	r3, [r3]
30000dc0:	e3c330a0 	bic	r3, r3, #160	; 0xa0
30000dc4:	e5823000 	str	r3, [r2]
30000dc8:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000dcc:	e2822070 	add	r2, r2, #112	; 0x70
30000dd0:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000dd4:	e2833070 	add	r3, r3, #112	; 0x70
30000dd8:	e5933000 	ldr	r3, [r3]
30000ddc:	e38330a0 	orr	r3, r3, #160	; 0xa0
30000de0:	e5823000 	str	r3, [r2]
30000de4:	e3a02456 	mov	r2, #1442840576	; 0x56000000
30000de8:	e2822078 	add	r2, r2, #120	; 0x78
30000dec:	e3a03456 	mov	r3, #1442840576	; 0x56000000
30000df0:	e2833078 	add	r3, r3, #120	; 0x78
30000df4:	e5933000 	ldr	r3, [r3]
30000df8:	e3c3300c 	bic	r3, r3, #12	; 0xc
30000dfc:	e5823000 	str	r3, [r2]
30000e00:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000e04:	e2833028 	add	r3, r3, #40	; 0x28
30000e08:	e3a0201a 	mov	r2, #26	; 0x1a
30000e0c:	e5832000 	str	r2, [r3]
30000e10:	e3a02205 	mov	r2, #1342177280	; 0x50000000
30000e14:	e3a03003 	mov	r3, #3	; 0x3
30000e18:	e5823000 	str	r3, [r2]
30000e1c:	e3a02245 	mov	r2, #1342177284	; 0x50000004
30000e20:	e3a03005 	mov	r3, #5	; 0x5
30000e24:	e5823000 	str	r3, [r2]
30000e28:	e28bd000 	add	sp, fp, #0	; 0x0
30000e2c:	e8bd0800 	pop	{fp}
30000e30:	e12fff1e 	bx	lr

30000e34 <test1>:
30000e34:	e92d4800 	push	{fp, lr}
30000e38:	e28db004 	add	fp, sp, #4	; 0x4
30000e3c:	e59f000c 	ldr	r0, [pc, #12]	; 30000e50 <test1+0x1c>
30000e40:	eb00002d 	bl	30000efc <puts>
30000e44:	e24bd004 	sub	sp, fp, #4	; 0x4
30000e48:	e8bd4800 	pop	{fp, lr}
30000e4c:	e12fff1e 	bx	lr
30000e50:	300013f4 	.word	0x300013f4

30000e54 <test2>:
30000e54:	e92d4800 	push	{fp, lr}
30000e58:	e28db004 	add	fp, sp, #4	; 0x4
30000e5c:	e59f000c 	ldr	r0, [pc, #12]	; 30000e70 <test2+0x1c>
30000e60:	eb000025 	bl	30000efc <puts>
30000e64:	e24bd004 	sub	sp, fp, #4	; 0x4
30000e68:	e8bd4800 	pop	{fp, lr}
30000e6c:	e12fff1e 	bx	lr
30000e70:	30001404 	.word	0x30001404

30000e74 <putc>:
30000e74:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000e78:	e28db000 	add	fp, sp, #0	; 0x0
30000e7c:	e24dd00c 	sub	sp, sp, #12	; 0xc
30000e80:	e50b0008 	str	r0, [fp, #-8]
30000e84:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000e88:	e2833010 	add	r3, r3, #16	; 0x10
30000e8c:	e5933000 	ldr	r3, [r3]
30000e90:	e2033004 	and	r3, r3, #4	; 0x4
30000e94:	e3530000 	cmp	r3, #0	; 0x0
30000e98:	0afffff9 	beq	30000e84 <putc+0x10>
30000e9c:	e3a02205 	mov	r2, #1342177280	; 0x50000000
30000ea0:	e2822020 	add	r2, r2, #32	; 0x20
30000ea4:	e51b3008 	ldr	r3, [fp, #-8]
30000ea8:	e20330ff 	and	r3, r3, #255	; 0xff
30000eac:	e5c23000 	strb	r3, [r2]
30000eb0:	e28bd000 	add	sp, fp, #0	; 0x0
30000eb4:	e8bd0800 	pop	{fp}
30000eb8:	e12fff1e 	bx	lr

30000ebc <getc>:
30000ebc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
30000ec0:	e28db000 	add	fp, sp, #0	; 0x0
30000ec4:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000ec8:	e2833010 	add	r3, r3, #16	; 0x10
30000ecc:	e5933000 	ldr	r3, [r3]
30000ed0:	e2033001 	and	r3, r3, #1	; 0x1
30000ed4:	e3530000 	cmp	r3, #0	; 0x0
30000ed8:	0afffff9 	beq	30000ec4 <getc+0x8>
30000edc:	e3a03205 	mov	r3, #1342177280	; 0x50000000
30000ee0:	e2833024 	add	r3, r3, #36	; 0x24
30000ee4:	e5d33000 	ldrb	r3, [r3]
30000ee8:	e20330ff 	and	r3, r3, #255	; 0xff
30000eec:	e1a00003 	mov	r0, r3
30000ef0:	e28bd000 	add	sp, fp, #0	; 0x0
30000ef4:	e8bd0800 	pop	{fp}
30000ef8:	e12fff1e 	bx	lr

30000efc <puts>:
30000efc:	e92d4800 	push	{fp, lr}
30000f00:	e28db004 	add	fp, sp, #4	; 0x4
30000f04:	e24dd008 	sub	sp, sp, #8	; 0x8
30000f08:	e50b0008 	str	r0, [fp, #-8]
30000f0c:	ea000006 	b	30000f2c <puts+0x30>
30000f10:	e51b3008 	ldr	r3, [fp, #-8]
30000f14:	e5d33000 	ldrb	r3, [r3]
30000f18:	e1a00003 	mov	r0, r3
30000f1c:	ebffffd4 	bl	30000e74 <putc>
30000f20:	e51b3008 	ldr	r3, [fp, #-8]
30000f24:	e2833001 	add	r3, r3, #1	; 0x1
30000f28:	e50b3008 	str	r3, [fp, #-8]
30000f2c:	e51b3008 	ldr	r3, [fp, #-8]
30000f30:	e5d33000 	ldrb	r3, [r3]
30000f34:	e3530000 	cmp	r3, #0	; 0x0
30000f38:	1afffff4 	bne	30000f10 <puts+0x14>
30000f3c:	e24bd004 	sub	sp, fp, #4	; 0x4
30000f40:	e8bd4800 	pop	{fp, lr}
30000f44:	e12fff1e 	bx	lr

30000f48 <print_hex>:
30000f48:	e92d4800 	push	{fp, lr}
30000f4c:	e28db004 	add	fp, sp, #4	; 0x4
30000f50:	e24dd018 	sub	sp, sp, #24	; 0x18
30000f54:	e50b0018 	str	r0, [fp, #-24]
30000f58:	e24b2013 	sub	r2, fp, #19	; 0x13
30000f5c:	e50b201c 	str	r2, [fp, #-28]
30000f60:	e3a03000 	mov	r3, #0	; 0x0
30000f64:	e51bc01c 	ldr	ip, [fp, #-28]
30000f68:	e5cc3000 	strb	r3, [ip]
30000f6c:	e51b201c 	ldr	r2, [fp, #-28]
30000f70:	e2822001 	add	r2, r2, #1	; 0x1
30000f74:	e50b201c 	str	r2, [fp, #-28]
30000f78:	e3a03000 	mov	r3, #0	; 0x0
30000f7c:	e51bc01c 	ldr	ip, [fp, #-28]
30000f80:	e5cc3000 	strb	r3, [ip]
30000f84:	e51b201c 	ldr	r2, [fp, #-28]
30000f88:	e2822001 	add	r2, r2, #1	; 0x1
30000f8c:	e50b201c 	str	r2, [fp, #-28]
30000f90:	e3a03000 	mov	r3, #0	; 0x0
30000f94:	e51bc01c 	ldr	ip, [fp, #-28]
30000f98:	e5cc3000 	strb	r3, [ip]
30000f9c:	e51b201c 	ldr	r2, [fp, #-28]
30000fa0:	e2822001 	add	r2, r2, #1	; 0x1
30000fa4:	e50b201c 	str	r2, [fp, #-28]
30000fa8:	e3a03000 	mov	r3, #0	; 0x0
30000fac:	e51bc01c 	ldr	ip, [fp, #-28]
30000fb0:	e5cc3000 	strb	r3, [ip]
30000fb4:	e51b201c 	ldr	r2, [fp, #-28]
30000fb8:	e2822001 	add	r2, r2, #1	; 0x1
30000fbc:	e50b201c 	str	r2, [fp, #-28]
30000fc0:	e3a03000 	mov	r3, #0	; 0x0
30000fc4:	e51bc01c 	ldr	ip, [fp, #-28]
30000fc8:	e5cc3000 	strb	r3, [ip]
30000fcc:	e51b201c 	ldr	r2, [fp, #-28]
30000fd0:	e2822001 	add	r2, r2, #1	; 0x1
30000fd4:	e50b201c 	str	r2, [fp, #-28]
30000fd8:	e3a03000 	mov	r3, #0	; 0x0
30000fdc:	e51bc01c 	ldr	ip, [fp, #-28]
30000fe0:	e5cc3000 	strb	r3, [ip]
30000fe4:	e51b201c 	ldr	r2, [fp, #-28]
30000fe8:	e2822001 	add	r2, r2, #1	; 0x1
30000fec:	e50b201c 	str	r2, [fp, #-28]
30000ff0:	e3a03000 	mov	r3, #0	; 0x0
30000ff4:	e51bc01c 	ldr	ip, [fp, #-28]
30000ff8:	e5cc3000 	strb	r3, [ip]
30000ffc:	e51b201c 	ldr	r2, [fp, #-28]
30001000:	e2822001 	add	r2, r2, #1	; 0x1
30001004:	e50b201c 	str	r2, [fp, #-28]
30001008:	e3a03000 	mov	r3, #0	; 0x0
3000100c:	e51bc01c 	ldr	ip, [fp, #-28]
30001010:	e5cc3000 	strb	r3, [ip]
30001014:	e51b201c 	ldr	r2, [fp, #-28]
30001018:	e2822001 	add	r2, r2, #1	; 0x1
3000101c:	e50b201c 	str	r2, [fp, #-28]
30001020:	e3a03000 	mov	r3, #0	; 0x0
30001024:	e51bc01c 	ldr	ip, [fp, #-28]
30001028:	e5cc3000 	strb	r3, [ip]
3000102c:	e51b201c 	ldr	r2, [fp, #-28]
30001030:	e2822001 	add	r2, r2, #1	; 0x1
30001034:	e50b201c 	str	r2, [fp, #-28]
30001038:	e3a03000 	mov	r3, #0	; 0x0
3000103c:	e51bc01c 	ldr	ip, [fp, #-28]
30001040:	e5cc3000 	strb	r3, [ip]
30001044:	e51b201c 	ldr	r2, [fp, #-28]
30001048:	e2822001 	add	r2, r2, #1	; 0x1
3000104c:	e50b201c 	str	r2, [fp, #-28]
30001050:	e3a03000 	mov	r3, #0	; 0x0
30001054:	e51bc01c 	ldr	ip, [fp, #-28]
30001058:	e5cc3000 	strb	r3, [ip]
3000105c:	e51b201c 	ldr	r2, [fp, #-28]
30001060:	e2822001 	add	r2, r2, #1	; 0x1
30001064:	e3a03030 	mov	r3, #48	; 0x30
30001068:	e54b3013 	strb	r3, [fp, #-19]
3000106c:	e3a03078 	mov	r3, #120	; 0x78
30001070:	e54b3012 	strb	r3, [fp, #-18]
30001074:	e3a03000 	mov	r3, #0	; 0x0
30001078:	e50b3008 	str	r3, [fp, #-8]
3000107c:	ea000011 	b	300010c8 <print_hex+0x180>
30001080:	e51b3008 	ldr	r3, [fp, #-8]
30001084:	e2630009 	rsb	r0, r3, #9	; 0x9
30001088:	e51b3018 	ldr	r3, [fp, #-24]
3000108c:	e203200f 	and	r2, r3, #15	; 0xf
30001090:	e59f3054 	ldr	r3, [pc, #84]	; 300010ec <print_hex+0x1a4>
30001094:	e7d31002 	ldrb	r1, [r3, r2]
30001098:	e3e0200e 	mvn	r2, #14	; 0xe
3000109c:	e24bc004 	sub	ip, fp, #4	; 0x4
300010a0:	e08c3000 	add	r3, ip, r0
300010a4:	e0832002 	add	r2, r3, r2
300010a8:	e1a03001 	mov	r3, r1
300010ac:	e5c23000 	strb	r3, [r2]
300010b0:	e51b3018 	ldr	r3, [fp, #-24]
300010b4:	e1a03243 	asr	r3, r3, #4
300010b8:	e50b3018 	str	r3, [fp, #-24]
300010bc:	e51b3008 	ldr	r3, [fp, #-8]
300010c0:	e2833001 	add	r3, r3, #1	; 0x1
300010c4:	e50b3008 	str	r3, [fp, #-8]
300010c8:	e51b3008 	ldr	r3, [fp, #-8]
300010cc:	e3530007 	cmp	r3, #7	; 0x7
300010d0:	daffffea 	ble	30001080 <print_hex+0x138>
300010d4:	e24b3013 	sub	r3, fp, #19	; 0x13
300010d8:	e1a00003 	mov	r0, r3
300010dc:	ebffff86 	bl	30000efc <puts>
300010e0:	e24bd004 	sub	sp, fp, #4	; 0x4
300010e4:	e8bd4800 	pop	{fp, lr}
300010e8:	e12fff1e 	bx	lr
300010ec:	30001434 	.word	0x30001434

300010f0 <printf>:
300010f0:	e92d000f 	push	{r0, r1, r2, r3}
300010f4:	e92d4800 	push	{fp, lr}
300010f8:	e28db004 	add	fp, sp, #4	; 0x4
300010fc:	e24dd008 	sub	sp, sp, #8	; 0x8
30001100:	e28b3004 	add	r3, fp, #4	; 0x4
30001104:	e2833004 	add	r3, r3, #4	; 0x4
30001108:	e50b3008 	str	r3, [fp, #-8]
3000110c:	ea00004a 	b	3000123c <printf+0x14c>
30001110:	e59b3004 	ldr	r3, [fp, #4]
30001114:	e5d33000 	ldrb	r3, [r3]
30001118:	e3530025 	cmp	r3, #37	; 0x25
3000111c:	1a00003f 	bne	30001220 <printf+0x130>
30001120:	e59b3004 	ldr	r3, [fp, #4]
30001124:	e2833001 	add	r3, r3, #1	; 0x1
30001128:	e5d33000 	ldrb	r3, [r3]
3000112c:	e2433063 	sub	r3, r3, #99	; 0x63
30001130:	e3530015 	cmp	r3, #21	; 0x15
30001134:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
30001138:	ea000038 	b	30001220 <printf+0x130>
3000113c:	300011f4 	.word	0x300011f4
30001140:	30001220 	.word	0x30001220
30001144:	30001220 	.word	0x30001220
30001148:	30001220 	.word	0x30001220
3000114c:	30001220 	.word	0x30001220
30001150:	30001220 	.word	0x30001220
30001154:	30001220 	.word	0x30001220
30001158:	30001220 	.word	0x30001220
3000115c:	30001220 	.word	0x30001220
30001160:	30001220 	.word	0x30001220
30001164:	30001220 	.word	0x30001220
30001168:	30001220 	.word	0x30001220
3000116c:	30001220 	.word	0x30001220
30001170:	30001220 	.word	0x30001220
30001174:	30001220 	.word	0x30001220
30001178:	30001220 	.word	0x30001220
3000117c:	300011c4 	.word	0x300011c4
30001180:	30001220 	.word	0x30001220
30001184:	30001220 	.word	0x30001220
30001188:	30001220 	.word	0x30001220
3000118c:	30001220 	.word	0x30001220
30001190:	30001194 	.word	0x30001194
30001194:	e59b3004 	ldr	r3, [fp, #4]
30001198:	e2833002 	add	r3, r3, #2	; 0x2
3000119c:	e58b3004 	str	r3, [fp, #4]
300011a0:	e51b3008 	ldr	r3, [fp, #-8]
300011a4:	e2833004 	add	r3, r3, #4	; 0x4
300011a8:	e50b3008 	str	r3, [fp, #-8]
300011ac:	e51b3008 	ldr	r3, [fp, #-8]
300011b0:	e2433004 	sub	r3, r3, #4	; 0x4
300011b4:	e5933000 	ldr	r3, [r3]
300011b8:	e1a00003 	mov	r0, r3
300011bc:	ebffff61 	bl	30000f48 <print_hex>
300011c0:	ea000016 	b	30001220 <printf+0x130>
300011c4:	e59b3004 	ldr	r3, [fp, #4]
300011c8:	e2833002 	add	r3, r3, #2	; 0x2
300011cc:	e58b3004 	str	r3, [fp, #4]
300011d0:	e51b3008 	ldr	r3, [fp, #-8]
300011d4:	e2833004 	add	r3, r3, #4	; 0x4
300011d8:	e50b3008 	str	r3, [fp, #-8]
300011dc:	e51b3008 	ldr	r3, [fp, #-8]
300011e0:	e2433004 	sub	r3, r3, #4	; 0x4
300011e4:	e5933000 	ldr	r3, [r3]
300011e8:	e1a00003 	mov	r0, r3
300011ec:	ebffff42 	bl	30000efc <puts>
300011f0:	ea00000a 	b	30001220 <printf+0x130>
300011f4:	e59b3004 	ldr	r3, [fp, #4]
300011f8:	e2833002 	add	r3, r3, #2	; 0x2
300011fc:	e58b3004 	str	r3, [fp, #4]
30001200:	e51b3008 	ldr	r3, [fp, #-8]
30001204:	e2833004 	add	r3, r3, #4	; 0x4
30001208:	e50b3008 	str	r3, [fp, #-8]
3000120c:	e51b3008 	ldr	r3, [fp, #-8]
30001210:	e2433004 	sub	r3, r3, #4	; 0x4
30001214:	e5933000 	ldr	r3, [r3]
30001218:	e1a00003 	mov	r0, r3
3000121c:	ebffff14 	bl	30000e74 <putc>
30001220:	e59b3004 	ldr	r3, [fp, #4]
30001224:	e5d33000 	ldrb	r3, [r3]
30001228:	e1a00003 	mov	r0, r3
3000122c:	ebffff10 	bl	30000e74 <putc>
30001230:	e59b3004 	ldr	r3, [fp, #4]
30001234:	e2833001 	add	r3, r3, #1	; 0x1
30001238:	e58b3004 	str	r3, [fp, #4]
3000123c:	e59b3004 	ldr	r3, [fp, #4]
30001240:	e5d33000 	ldrb	r3, [r3]
30001244:	e3530000 	cmp	r3, #0	; 0x0
30001248:	1affffb0 	bne	30001110 <printf+0x20>
3000124c:	e3a03000 	mov	r3, #0	; 0x0
30001250:	e50b3008 	str	r3, [fp, #-8]
30001254:	e24bd004 	sub	sp, fp, #4	; 0x4
30001258:	e8bd4800 	pop	{fp, lr}
3000125c:	e28dd010 	add	sp, sp, #16	; 0x10
30001260:	e12fff1e 	bx	lr

30001264 <main>:
30001264:	e92d4800 	push	{fp, lr}
30001268:	e28db004 	add	fp, sp, #4	; 0x4
3000126c:	e24dd008 	sub	sp, sp, #8	; 0x8
30001270:	ebfffe8b 	bl	30000ca4 <init_led>
30001274:	e3a00001 	mov	r0, #1	; 0x1
30001278:	ebfffea6 	bl	30000d18 <open_led>
3000127c:	e3a00000 	mov	r0, #0	; 0x0
30001280:	ebfffea4 	bl	30000d18 <open_led>
30001284:	ebfffc39 	bl	30000370 <nand_init>
30001288:	e3a00041 	mov	r0, #65	; 0x41
3000128c:	ebfffef8 	bl	30000e74 <putc>
30001290:	e59f004c 	ldr	r0, [pc, #76]	; 300012e4 <main+0x80>
30001294:	ebffff18 	bl	30000efc <puts>
30001298:	e3a00000 	mov	r0, #0	; 0x0
3000129c:	e3a01d5d 	mov	r1, #5952	; 0x1740
300012a0:	e2811030 	add	r1, r1, #48	; 0x30
300012a4:	ebfffddc 	bl	30000a1c <nand_dump>
300012a8:	ebfffbe0 	bl	30000230 <sdram_test>
300012ac:	e1a03000 	mov	r3, r0
300012b0:	e59f0030 	ldr	r0, [pc, #48]	; 300012e8 <main+0x84>
300012b4:	e1a01003 	mov	r1, r3
300012b8:	ebffff8c 	bl	300010f0 <printf>
300012bc:	e3a00203 	mov	r0, #805306368	; 0x30000000
300012c0:	e3a01d5d 	mov	r1, #5952	; 0x1740
300012c4:	e2811030 	add	r1, r1, #48	; 0x30
300012c8:	ebfffc09 	bl	300002f4 <dump_sdram>
300012cc:	ebfffe80 	bl	30000cd4 <dim_led>
300012d0:	e3a03000 	mov	r3, #0	; 0x0
300012d4:	e1a00003 	mov	r0, r3
300012d8:	e24bd004 	sub	sp, fp, #4	; 0x4
300012dc:	e8bd4800 	pop	{fp, lr}
300012e0:	e12fff1e 	bx	lr
300012e4:	30001414 	.word	0x30001414
300012e8:	30001424 	.word	0x30001424
Disassembly of section .rodata:

300012ec <.rodata>:
300012ec:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
300012f0:	09782520 	ldmdbeq	r8!, {r5, r8, sl, sp}^
300012f4:	20782520 	rsbscs	r2, r8, r0, lsr #10
300012f8:	00000a0d 	.word	0x00000a0d
300012fc:	656b616d 	strbvs	r6, [fp, #-365]!
30001300:	20202072 	eorcs	r2, r0, r2, ror r0
30001304:	20206469 	.word	0x20206469
30001308:	7830203d 	ldmdavc	r0!, {r0, r2, r3, r4, r5, sp}
3000130c:	0d0a7825 	stceq	8, cr7, [sl, #-148]
30001310:	00000000 	andeq	r0, r0, r0
30001314:	69766564 	ldmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
30001318:	20206563 	eorcs	r6, r0, r3, ror #10
3000131c:	20206469 	.word	0x20206469
30001320:	7830203d 	ldmdavc	r0!, {r0, r2, r3, r4, r5, sp}
30001324:	0d0a7825 	stceq	8, cr7, [sl, #-148]
30001328:	00000000 	.word	0x00000000
3000132c:	20647233 	rsbcs	r7, r4, r3, lsr r2
30001330:	65747962 	ldrbvs	r7, [r4, #-2402]!
30001334:	20202020 	eorcs	r2, r0, r0, lsr #32
30001338:	7830203d 	ldmdavc	r0!, {r0, r2, r3, r4, r5, sp}
3000133c:	0d0a7825 	stceq	8, cr7, [sl, #-148]
30001340:	00000000 	andeq	r0, r0, r0
30001344:	20687434 	rsbcs	r7, r8, r4, lsr r4
30001348:	65747962 	ldrbvs	r7, [r4, #-2402]!
3000134c:	20202020 	.word	0x20202020
30001350:	7830203d 	ldmdavc	r0!, {r0, r2, r3, r4, r5, sp}
30001354:	0d0a7825 	stceq	8, cr7, [sl, #-148]
30001358:	00000000 	andeq	r0, r0, r0
3000135c:	20687435 	.word	0x20687435
30001360:	65747962 	ldrbvs	r7, [r4, #-2402]!
30001364:	20202020 	eorcs	r2, r0, r0, lsr #32
30001368:	7830203d 	ldmdavc	r0!, {r0, r2, r3, r4, r5, sp}
3000136c:	0d0a7825 	.word	0x0d0a7825
30001370:	00000000 	andeq	r0, r0, r0
30001374:	646e616e 	strbtvs	r6, [lr], #-366
30001378:	6172655f 	cmnvs	r2, pc, asr r5
3000137c:	65206573 	.word	0x65206573
30001380:	202c7272 	eorcs	r7, ip, r2, ror r2
30001384:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
30001388:	20736920 	rsbscs	r6, r3, r0, lsr #18
3000138c:	20746f6e 	rsbscs	r6, r4, lr, ror #30
30001390:	636f6c62 	cmnvs	pc, #25088	; 0x6200
30001394:	6c61206b 	stclvs	0, cr2, [r1], #-428
30001398:	0a6e6769 	beq	31b9b144 <bss_end+0x1b99d00>
3000139c:	0000000d 	andeq	r0, r0, sp
300013a0:	646e616e 	strbtvs	r6, [lr], #-366
300013a4:	6172655f 	cmnvs	r2, pc, asr r5
300013a8:	65206573 	.word	0x65206573
300013ac:	202c7272 	eorcs	r7, ip, r2, ror r2
300013b0:	206e656c 	rsbcs	r6, lr, ip, ror #10
300013b4:	6e207369 	cdpvs	3, 2, cr7, cr0, cr9, {3}
300013b8:	6220746f 	eorvs	r7, r0, #1862270976	; 0x6f000000
300013bc:	6b636f6c 	.word	0x6b636f6c
300013c0:	696c6120 	stmdbvs	ip!, {r5, r8, sp, lr}^
300013c4:	0d0a6e67 	stceq	14, cr6, [sl, #-412]
300013c8:	00000000 	.word	0x00000000
300013cc:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
300013d0:	09782520 	ldmdbeq	r8!, {r5, r8, sl, sp}^
300013d4:	20782520 	.word	0x20782520
300013d8:	00000a0d 	andeq	r0, r0, sp, lsl #20
300013dc:	20776f6e 	rsbscs	r6, r7, lr, ror #30
300013e0:	20656874 	rsbcs	r6, r5, r4, ror r8
300013e4:	7366666f 	cmnvc	r6, #116391936	; 0x6f00000
300013e8:	69207465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, ip, sp, lr}
300013ec:	78252073 	stmdavc	r5!, {r0, r1, r4, r5, r6, sp}
300013f0:	000a0d20 	andeq	r0, sl, r0, lsr #26
300013f4:	6f700a0d 	svcvs	0x00700a0d
300013f8:	20746e69 	rsbscs	r6, r4, r9, ror #28
300013fc:	0a0d2061 	beq	30349588 <bss_end+0x348144>
30001400:	00000000 	andeq	r0, r0, r0
30001404:	6f700a0d 	svcvs	0x00700a0d
30001408:	20746e69 	rsbscs	r6, r4, r9, ror #28
3000140c:	0a0d2062 	beq	3034959c <bss_end+0x348158>
30001410:	00000000 	andeq	r0, r0, r0
30001414:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416
30001418:	3432206f 	ldrtcc	r2, [r2], #-111
3000141c:	0d203034 	stceq	0, cr3, [r0, #-208]!
30001420:	0000000a 	andeq	r0, r0, sl
30001424:	61726473 	cmnvs	r2, r3, ror r4
30001428:	7365746d 	cmnvc	r5, #1828716544	; 0x6d000000
3000142c:	78252074 	stmdavc	r5!, {r2, r4, r5, r6, sp}
30001430:	00000d0a 	andeq	r0, r0, sl, lsl #26
Disassembly of section .data:

30001434 <code>:
30001434:	33323130 	.word	0x33323130
30001438:	37363534 	.word	0x37363534
3000143c:	62613938 	.word	0x62613938
30001440:	66656463 	.word	0x66656463
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
  30:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd10 <bss_end+0xcfffe8cc>
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
  84:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffd64 <bss_end+0xcfffe920>
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
  d0:	47000032 	smladxmi	r0, r2, r0, r0
  d4:	203a4343 	eorscs	r4, sl, r3, asr #6
  d8:	756f5328 	strbvc	r5, [pc, #-808]!	; fffffdb8 <bss_end+0xcfffe974>
  dc:	72656372 	rsbvc	r6, r5, #-939524095	; 0xc8000001
  e0:	2b472079 	blcs	11c82cc <code_start-0x2ee37d34>
  e4:	694c202b 	stmdbvs	ip, {r0, r1, r3, r5, sp}^
  e8:	32206574 	eorcc	r6, r0, #486539264	; 0x1d000000
  ec:	71383030 	teqvc	r8, r0, lsr r0
  f0:	32372d33 	eorscc	r2, r7, #3264	; 0xcc0
  f4:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  f8:	00322e33 	eorseq	r2, r2, r3, lsr lr
  fc:	43434700 	movtmi	r4, #14080	; 0x3700
 100:	5328203a 	teqpl	r8, #58	; 0x3a
 104:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 108:	20797265 	rsbscs	r7, r9, r5, ror #4
 10c:	202b2b47 	eorcs	r2, fp, r7, asr #22
 110:	6574694c 	ldrbvs	r6, [r4, #-2380]!
 114:	30303220 	eorscc	r3, r0, r0, lsr #4
 118:	2d337138 	ldfcss	f7, [r3, #-224]!
 11c:	20293237 	eorcs	r3, r9, r7, lsr r2
 120:	2e332e34 	mrccs	14, 1, r2, cr3, cr4, {1}
 124:	Address 0x00000124 is out of bounds.

