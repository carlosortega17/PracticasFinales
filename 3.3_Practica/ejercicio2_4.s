@ Ortega Frias Carlos Eduardo #17210612
.global	main @ Seccion principal
main: @ Funcion Main
	push	{r4, r5, r6, r7, r8, lr} @ Agregamos a la pila los registros r4 al r8
	ldr	r4, .opciones @ Movemos a r4 la seccion opciones
	ldr	r7, .opciones+4 @ Movemos a r7 la seccion opciones +4
	ldr	r6, .opciones+8 @ Movemos a r6 la seccion opciones +8
	ldr	r5, .opciones+12 @ Movemos a r5 la seccion opciones +12
	b	.iniciar @ Vamos a la seccion iniciar
.comparar1: @ Seccion comparar1
	cmp	r3, #2 @ compararmos r3 para saber si es 2
	mov	r1, r4 @ Movemos el registro r1 a r4
	mov	r0, r5 @ Movemos r0 a r5
	movne	r0, r6 @ Movemos r- a r6
.imprimir: @ Seccion para imprimir
	bl	printf @ Imprimimos el contenido
.comparar2: @ Seccion para la segunda comparacion
	ldr	r3, .opciones+16 @ Movemos r3 a opciones+16
	add	r4, r4, #1 @ Agregamos 1 a r4
	cmp	r4, r3 @ Comparamos el registro r4 con r3
	popeq	{r4, r5, r6, r7, r8, pc} @ Eliminamos de la pila si son iguales
.iniciar: @ Seccion iniciar
	ands	r3, r4, #3 @ r3 y r4 con 3
	bne	.comparar1 @ Iniciamos la primera comparacion
	mov	r1, r4 @ Movemos r1 a r4
	mov	r0, r7 @ Movemos r0 a r7
	bl	printf @ Imprimimos
	b	.comparar2 @ Vamos a comparacion 2
.opciones:
	.word	1950 @ Primer dato 1950
	.word	.olimpiadas @ Seccion olimpiadas
	.word	.mundial @ Seccion mundial
	.word	.nada @ Seccion nada
	.word	2015 @ Segundo dato 2015
.olimpiadas: @ Seccion olimpiadas
	.asciz	"En %d hubo olimpiadas\012" @ Mensaje
.mundial: @ Seccion mundial
	.asciz	"En %d hubo mundial de futbol\012" @ Mensaje
.nada: @ Seccion nada
	.asciz	"En %d no paso nada\012" @ Mensaje
