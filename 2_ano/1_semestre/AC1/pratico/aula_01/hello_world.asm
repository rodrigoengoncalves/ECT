	.data
hello:	.asciiz "Hello World!\n!
	
	.text
	.globl main
	.eqv print_str,4
main:
	la $a0,hello
	li $v0,print_str
	syscall 
	
	jr $ra
