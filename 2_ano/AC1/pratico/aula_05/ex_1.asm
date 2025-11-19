	.eqv 	SIZE,5
	.eqv	PRINT_STRING,4	#print $a0
	.eqv	READ_INT,5
	
	.data
	
str:	.asciiz "\nIntroduza um numero: "
# i: $t0
# lista: $t1
# lista + i: $t2
	.align 2
lista:	.space 20 	# SIZE * 4
 	.text
 	.globl main
main: la $t0,i 		# i = 0;

while: 	bge $t0,SIZE,endw	# while(i < SIZE) {
				# print_string(...);
	la $a0, str
	li $v0, PRINT_STRING
	syscall
	
	li $v0,READ_INT
 	syscall 		# $v0 = read_int();
 	
 	la $t1,lista 		# $t1 = lista (ou &lista[0])
 	sll $t2,$t0,2 		#
 	addu $t2,$t1,$t2 	# $t2 = &lista[i]
 	sw $v0,0($t2) 		# lista[i] = read_int();
 	addi $t0,$t0,1 		# i++
 	j	while # }
endw: jr 	$ra # termina programa 
	
