make:
	as -o ejercicio1.o ejercicio1.s
	ld -e 0 -Ttext=0x8000 -o ejercicio1.elf ejercicio1.o
	objcopy ejercicio1.elf -O binary ejercicio1.img
	as -o ejercicio2.o ejercicio2.s
	ld -e 0 -Ttext=0x8000 -o ejercicio2.elf ejercicio2.o
	objcopy ejercicio2.elf -O binary ejercicio2.img
	as -o ejercicio3.o ejercicio3.s
	ld -e 0 -Ttext=0x8000 -o ejercicio3.elf ejercicio3.o
	objcopy ejercicio3.elf -O binary ejercicio3.img
	as -o ejercicio4.o ejercicio4.s
	ld -e 0 -Ttext=0x8000 -o ejercicio4.elf ejercicio4.o
	objcopy ejercicio4.elf -O binary ejercicio4.img
clean:
	rm ejercicio1.o ejercicio1.elf ejercicio1.img ejercicio2.o ejercicio2.elf ejercicio2.img ejercicio3.o ejercicio3.elf ejercicio3.img ejercicio4.o ejercicio4.elf ejercicio4.img
