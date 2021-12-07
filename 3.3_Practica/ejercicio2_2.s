.data
mensaje: .asciz "Es 10\012"
.text
.global	main
main:
	ldr	r0, =mensaje
	b	puts
