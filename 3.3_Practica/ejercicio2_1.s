@ Ortega Frias Carlos Eduardo | #17210612
.data
formato: .asciz "%d\012" @ Formato para mostrar el numero
.text @ Etiqueta de texto
.global	main @ Funcion principal
main: @ Funcion Main
	push	{r4, lr} @ Agregamos al registro r4
	mov	r5, #90 @ Asignamos el valor a r5 con 90
.ciclo1: @ Primer ciclo, For de aumento en 10
	add	r4, r5, #10
.ciclo2:
	mov	r1, r4 @ Movemos al registro r1
	ldr	r0, =formato @ Asignamos el valor de Formato
	sub	r4, r4, #2 @ Aumentamos el registro r4 en 2
	bl	printf @ Ejecutamos la funcion printf para mostrar en pantalla
	cmp	r5, r4 @ Comparamos el numero de r5 con r4
	bne	.ciclo2 @ Repetimos el ciclo 2
	sub	r5, r5, #10 @ Eliminamos al registro r5 en 10
	cmn	r5, #10 @ Verificamos el minimo de r5
	bne	.ciclo1 @ Repetimos el ciclo 1
	pop	{r4, pc} @ Eliminamos de r4
