.data
	string: .asciz "Hello World!\n"
	
.text
.global main

.extern printf	

main:
	push {ip, lr}
	
	ldr r0, =string
	bl printf
	
	pop {ip, pc}