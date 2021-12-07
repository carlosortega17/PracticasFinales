.global	main
main:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .opciones
	ldr	r7, .opciones+4
	ldr	r6, .opciones+8
	ldr	r5, .opciones+12
	b	.iniciar
.comparar1:
	cmp	r3, #2
	mov	r1, r4
	mov	r0, r5
	movne	r0, r6
.imprimir:
	bl	printf
.comparar2:
	ldr	r3, .opciones+16
	add	r4, r4, #1
	cmp	r4, r3
	popeq	{r4, r5, r6, r7, r8, pc}
.iniciar:
	ands	r3, r4, #3
	bne	.comparar1
	mov	r1, r4
	mov	r0, r7
	bl	printf
	b	.comparar2
.opciones:
	.word	1950
	.word	.olimpiadas
	.word	.mundial
	.word	.nada
	.word	2015
.olimpiadas:
	.asciz	"En %d hubo olimpiadas\012"
.mundial:
	.asciz	"En %d hubo mundial de futbol\012"
.nada:
	.asciz	"En %d no paso nada\012"
