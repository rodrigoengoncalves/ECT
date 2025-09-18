	.data
enter:	.asciiz "\n"
	.text
	.globl main
	.eqv read_int,5
	.eqv print_1,1
	.eqv print_34,34
	.eqv print_36,36
	.eqv print_str,4
	
main: 	li $v0, read_int 	# ler e tornar o $v0 esse vlor int
 	syscall			#trigger de funções
 	move $t0, $v0		#tornar o $t0 no $v0
 						# valor de x pretendido)
 	li $t2, 8		# $t2 = 8
 	add $t1,$t0,$t0 	# $t1 = 	$t0 + $t0 = x + x = 2 * x
 	sub $t1,$t1,$t2		# $t1 = $t1 + $t2 = y = 2 * x - 8
 	
 	move $a0, $t1		#tornar o $a0 no $t1
 	
    	li $v0, print_1		# usar a função print_1
	syscall
    
    	la $a0, enter		# defenir o que é o enter
    	li $v0, print_str	# usar a função print_string
    	syscall
    	
    	li $v0, print_34	# usar a função print_34
    	syscall
    	
    	la $a0, enter		#......enter.......
    	li $v0, print_str
    	syscall 
	 	
 	li $v0, print_36	# usar a função print_36
    	syscall
 	 	 	 		 		 		 	 		 		 	
 	jr $ra 			# fim do programa 
