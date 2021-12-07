@ Ortega Frias Carlos Eduardo | #17210612
.data @ Seccion de datos
.text @ Seccion de texto
.global	main @ Funcion principa 
main: @ Funcion principal
	push	{r4, r5, r6, lr} @ Iniciamos la pila en r4, r5 y r6
	mov	r4, #0 @ Iniciamos r4 con valor 0
	ldr	r5, .Mensajes @ Asignamos el mensaje1 a r5
	ldr	r6, .Mensajes+4 @ Asignamos el mensaje2 a r6
.Ciclo:
	tst	r4, #1 @ Comparamos
	mov	r1, r4 @ Movemos al registro 1
	mov	r0, r5 @ Movemos al registro 0
	add	r4, r4, #1 @ Aumentamos en 1
	movne	r0, r6 @ Movemos al registro 0
	bl	printf @ Imprimimos el mesaje
	cmp	r4, #10 @ Verificamos si es 10
	bne	.Ciclo @ si no lo es repetimos el ciclo
	pop	{r4, r5, r6, pc} @ Eliminamos de la pila
.Mensajes:
	.word	.PAR @ Asignacion de memoria para el mensaje PAR
	.word	.IMPAR @ Asignacion de memoria para el mensaje IMPAR
.PAR:
	.asciz	"%d es impar\012"
.IMPAR:
	.asciz	"%d es par\012"
