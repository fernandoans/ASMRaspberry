@ --------------------------------------------------
@ Assembly: Programa para mostrar um Hello World!
@ Registradores: R0 - R1 - R2 - R7 (função
@
@ MOV reg, valor
@ LDR reg, String
@ SVC numero (chamada ao sistema)
@ --------------------------------------------------
@ Compilar..: as -o HelloWord.o HelloWord.s
@ Linkeditar: ld -o HelloWord HelloWord.o
@ Executar..: ./HelloWorld
@ --------------------------------------------------

.global _start

_start:
   mov R0, #1		@ 1 = StdOut
   ldr R1, =helloworld	@ str -> R1
   mov R2, #13		@ TAM str
   mov R7, #4		@ Escrever na Syscall
   svc 0		@ Executar a ação

   mov R0, #8		@ 0 = Retorno
   mov R7, #1		@ Serviço 1
   svc 0		@ Executar a ação

.data
   helloworld: .ascii "Hello World!\n"
