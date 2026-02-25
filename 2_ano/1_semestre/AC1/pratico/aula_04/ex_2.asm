	.eqv 	SIZE, 20
	.eqv 	READ_STR, 8
	.eqv	PRINT_INT10,1
	.data
	
str:
	.space 	21	#SIZE + 1
	.text
	.globl 	main 
	
#Mapa de registos
#num : 	$t0 (int num)~
#p : $t1 (char p)
#*p :$t2 (char *p)

main:	la	$a0,str
	li 	$a1,SIZE
	li 	$v0,READ_STR
	syscall
	
	li 	$t0,0 		#num = 0
	la 	$t1,str		#p = str
	
while:
	lb 	$t2, 0($t1)
	beq 	$t2, '\0',endw
	
	
if:	blt 	$t2,'0',endif
	bgt 	$t2,'9',endif
	addi	$t0,$t0,1

endif:
	
	addi 	$t1,$t1,1 	#p++	
	j	while	#}
endw:


	move 	$a0,$t0
	li 	$v0,PRINT_INT10
	syscall
	
	  
	jr 	$ra