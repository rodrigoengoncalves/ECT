	.eqv 	SIZE, 20
	.eqv 	READ_STR, 8
	.eqv	PRINT_INT10,1
	.data
	
str:
	.space 	21	#SIZE + 1
	.text
	.globl 	main 
	
main:	la	$a0,str
	li 	$a1,SIZE
	li 	$v0,READ_STR
	syscall
	
	li 	$t0,0 	#num = 0
	li 	$t1,0	#i = 0
	
while:
	la	$t2,str		# $t2 = &(str[0])
	addu 	$t3,$t2,$t1	# $t3 = &(str[i])
	lb	$t4,0($t3) 	# $t4 = str[i]	
	beq 	$t4,'\0',endw
	
	
if:	blt 	$t4,'0',endif
	bgt 	$t4,'9',endif
	addi	$t0,$t0,1

endif:
	
	addi 	$t1,$t1,1 	#++i	
	j	while	#}
endw:


	move 	$a0,$t0
	li 	$v0,PRINT_INT10
	syscall
	
	  
	jr 	$ra