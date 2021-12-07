@ Ortega Frias Carlos Eduardo #17210612
.global	minimo @ Apuntamos a la funcion minimo, para declararla
minimo: @ La funcion minimo
	cmp	r1, #1 @ comparamos si r1 es 1
	mov	r3, r0 @ Movemos a r3 el valor de r0
	ldr	r0, [r0] @ Cargamos una cadena
	bxle	lr @ Comprobamos lr
	add	r1, r3, r1, lsl #2 @ Agregamos a r1 y r3
	sub	r1, r1, #4 @ Eliminamos 4 en r1
.bucle: @ Bucle for
	ldr	r2, [r3, #4]!
	cmp	r0, r2 @ Comparamos r0 con r2
	movge	r0, r2
	cmp	r1, r3 @ Comparamos r1 con r3
	bne	.bucle @ Repetimos
	bx	lr
	.global	main @ Apuntamos a main
main:
	ldr	r2, .variables
	ldr	r0, .variables+4
	ldmib	r2, {r1, ip}
	ldr	r3, [r2]
	cmp	r3, r1
	movge	r3, r1
	cmp	r3, ip
	ldr	r1, [r2, #12]
	movge	r3, ip
	cmp	r3, r1
	ldr	ip, [r2, #16]
	movge	r3, r1
	cmp	r3, ip
	ldr	r1, [r2, #20]
	movge	r3, ip
	cmp	r3, r1
	ldr	ip, [r2, #24]
	movge	r3, r1
	cmp	r3, ip
	ldr	r1, [r2, #28]
	movge	r3, ip
	cmp	r3, r1
	movlt	r1, r3
	b	printf
.variables:
	.word	.almacen
	.word	.texto
	.set	.almacen,. + 0
vector: @ Vector con los valores correspondientes
	.word	8
	.word	10
	.word	-3
	.word	4
	.word	-5 @ Este es el numero menor
	.word	50
	.word	2
	.word	3
.texto:
	.asciz	"%d\012" @ Para mostrar el mensaje
