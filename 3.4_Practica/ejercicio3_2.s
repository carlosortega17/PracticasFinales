@ Ortega Frias Carlos Eduardo #17210612
.global	media_aritmetica
media_aritmetica:
	cmp	r1, #0
	ble	.L4
	sub	r3, r0, #4
	add	ip, r3, r1, lsl #2
	mov	r0, #0
	push	{r4, lr}
.L3:
	ldr	r2, [r3, #4]!
	cmp	ip, r3
	add	r0, r0, r2
	bne	.L3
	pop	{r4, pc}
.L4:
	mov	r0, #0
	bx	lr
	.global	main
main:
	ldr	r2, .L13
	str	lr, [sp, #-4]!
	ldm	r2, {r3, lr}
	ldr	ip, [r2, #8]
	ldr	r1, .L13+4
	add	r3, r3, lr
	ldr	lr, [r2, #12]
	add	r3, r3, ip
	ldr	ip, [r2, #16]
	add	r3, r3, lr
	ldr	r2, [r2, #20]
	add	r3, r3, ip
	add	r3, r3, r2
	ldr	r0, .L13+8
	smull	r2, r1, r1, r3
	ldr	lr, [sp], #4
	sub	r1, r1, r3, asr #31
	b	printf
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	715827883
	.word	.LC0
	.global	vector
	.set	.LANCHOR0,. + 0
vector:
	.word	9
	.word	9
	.word	9
	.word	8
	.word	8
	.word	10
.LC0:
	.asciz	"La media es: %d\012"
