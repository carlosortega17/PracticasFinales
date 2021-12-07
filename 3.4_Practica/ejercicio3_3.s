.global	ordenar
ordenar:
	cmp	r1, #1
	bxle	lr
	push	{r4, lr}
	sub	lr, r0, #4
	add	lr, lr, r1, lsl #2
	mov	r4, #1
.L3:
	mov	r3, r0
.L5:
	ldr	r2, [r3]
	ldr	ip, [r3, #4]!
	cmp	r2, ip
	strgt	ip, [r3, #-4]
	strgt	r2, [r3]
	cmp	lr, r3
	bne	.L5
	add	r4, r4, #1
	cmp	r1, r4
	bne	.L3
	pop	{r4, pc}
	.global	main
main:
	ldr	r3, .L64
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r0, r3, #12
	mov	r8, #0
	ldm	r0, {r0, r4, lr}
	sub	sp, sp, #20
	ldr	r6, [r3]
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #8]
	ldr	ip, [r3, #24]
	ldr	r7, [r3, #28]
	mov	fp, r8
	mov	r10, r8
	mov	r9, r8
	mov	r5, #7
	str	r8, [sp, #8]
	str	r8, [sp, #4]
	str	r8, [sp]
	str	r8, [sp, #12]
.L20:
	cmp	r2, r6
	movge	r3, r2
	movlt	r3, r6
	movlt	r9, #1
	strlt	r9, [sp, #12]
	movlt	r6, r2
	cmp	r1, r3
	movge	r2, r3
	movlt	r10, #1
	movge	r3, r1
	movlt	r2, r1
	movlt	r9, r10
	cmp	r0, r3
	movge	r1, r3
	movlt	fp, #1
	movge	r3, r0
	movlt	r1, r0
	movlt	r10, fp
	cmp	r4, r3
	movge	r0, r3
	movlt	fp, #1
	movge	r3, r4
	movlt	r0, r4
	strlt	fp, [sp]
	cmp	lr, r3
	movlt	r4, #1
	movge	r4, r3
	strlt	r4, [sp, #4]
	movge	r3, lr
	movlt	r4, lr
	movlt	lr, #1
	strlt	lr, [sp]
	cmp	ip, r3
	movlt	lr, #1
	strlt	lr, [sp, #8]
	movge	lr, r3
	movlt	lr, ip
	movge	r3, ip
	movlt	ip, #1
	strlt	ip, [sp, #4]
	cmp	r7, r3
	movlt	r8, #1
	movlt	ip, r7
	movge	ip, r3
	strlt	r8, [sp, #8]
	movlt	r7, r3
	subs	r5, r5, #1
	bne	.L20
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ldrne	r3, .L64
	strne	r6, [r3]
	cmp	r9, #0
	ldr	r6, .L64+4
	ldrne	r3, .L64
	strne	r2, [r3, #4]
	cmp	r10, #0
	ldrne	r3, .L64
	strne	r1, [r3, #8]
	cmp	fp, #0
	ldrne	r3, .L64
	strne	r0, [r3, #12]
	ldr	r3, [sp]
	cmp	r3, #0
	ldrne	r3, .L64
	strne	r4, [r3, #16]
	ldr	r3, [sp, #4]
	ldr	r4, .L64
	cmp	r3, #0
	add	r5, r4, #32
	ldrne	r3, .L64
	strne	lr, [r3, #20]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ldrne	r3, .L64
	strne	ip, [r3, #24]
	cmp	r8, #0
	ldrne	r3, .L64
	strne	r7, [r3, #28]
.L29:
	ldr	r1, [r4], #4
	mov	r0, r6
	bl	printf
	cmp	r4, r5
	bne	.L29
	add	sp, sp, #20
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L64:
	.word	.LANCHOR0
	.word	.LC0
	.global	vector
	.data
	.align	2
	.set	.LANCHOR0,. + 0
vector:
	.word	8
	.word	10
	.word	-3
	.word	4
	.word	-5
	.word	50
	.word	2
	.word	3
.LC0:
	.asciz	"%d\012"
