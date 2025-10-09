	.eqv 	SIZE,4
	.eqv	PRINT_INT10,1
	.data
	
array:	.word 7692, 23, 5, 234

#MAPA DE REGISTOS
# p : $t0
# pultimo: $t1
#*p : $t2
# soma : $t3

	.text
	.globl main

main:

	li	$t3,0		#num = 0
	la 	$t0,array	#p = array
	li 	$t4,SIZE
	addi 	$t4,$t4,-1
	sll 	$t4,$t4, 2
	addu	$t1, $t0, $t4 #pultimo = array + SIZE-1
	
while:
	bgtu $t0,$t1,endw	#p <= pultimo
	
	lw 	$t2, 0($t0)	#load *p
	add 	$t3,$t3,$t2	#soma = soma + (*p)
	
	addiu 	$t0,$t0,4	#p++
	j	while		#}

endw:
	move 	$a0,$t3
	li	$v0,PRINT_INT10
	syscall
	
	jr 	$ra