.global _start

_start:
	mov R0, #1
	ldr R1, =ola
	mov R2, #5
	mov R7, #4
	svc 0

	mov R0, #0
	ldr R1, =nome
	mov R2, #6
	mov R7, #3
	svc 0

	mov R0, #1
	ldr R1, =bemvindo
	mov R2, #11
	mov R7, #4
	svc 0

	mov R0, #8
	mov R7, #1
	svc 0

.bss
    nome: .ascii ""

.data
	ola: .ascii "Olá "
	bemvindo: .ascii "Bem Vindo.\n"
