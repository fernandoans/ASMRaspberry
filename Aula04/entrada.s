@ Seção de Dados

.data
	.balign 4 @ Define 4 bytes variaveis
	informe:	.asciz "Informe um valor: "
	formato: 	.asciz "%d"
	resultado:	.asciz "Valor informado: %d\n"
	num:		.int 0

@ Seção do Programa

.text
.global main

.extern printf	
.extern scanf	

@ Entrada Principal
main:
	push {ip, lr}

	@ Entrada
	ldr r0, =informe
	bl 	printf
	
	ldr r0, =formato
	ldr r1, =num
	bl	scanf

	@ Mostrar
	ldr r1, =num
	ldr r1, [r1]
	ldr	r0, =resultado
	bl	printf

	pop {ip, pc}
