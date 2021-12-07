@ Ortega Frias Carlos Eduardo #17210612
.data @ Seccion de datos
mensaje: .asciz "Es 10\012" @ Un mensaje basico
.text @ Seccion de texto
.global	main @ Funcion main
main: @ Funcion main
	ldr	r0, =mensaje @ Mostramos el mensaje
	b	puts @ Agregamos a la pila
