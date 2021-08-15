@ Seção de Dados

.data
	.balign 4 @ Define 4 bytes variaveis
	string: .asciz "28 + 39 = %d\n"
	a:	.word 28
	b: 	.word 39
	c:	.word 0		@ conter a soma de [a + b]

@ Seção do Programa

.text
.global main

.extern printf	

@ Entrada Principal
main:
	push {ip, lr}

	ldr r1, =a		 @ r1 -> a
	ldr r1, [r1]	 @ r1 <- 28
	ldr r2, =b		 @ r2 -> b
	ldr r2, [r2]     @ r2 <- 39
	add r1, r1, r2   @ r1 = r1 + r2
	ldr r2, =c		 @ r2 -> c
	str r1, [r2]	 @ c <- r1 + r2

	ldr r0, =string  @ r0 <- 28 + 39 = %d
	ldr r1, [r2]     @ par <- c
	bl 	printf 		 @ mostra

	pop {ip, pc}
