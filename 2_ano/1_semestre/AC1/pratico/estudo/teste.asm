	.eqv	SIZE,4
	.eqv	PRINT_INT10,1
	
	.data
array:	.word 	1,2,3,4
	.text
	.globl main
main:

	li 	$t0,0
	la 	$t1,array
	li 	$t2,SIZE
	
for:
	bge	$t0,$t2,end_for
	
	sll 	$t0,$t0,2	#i * 4
	add 	$t3,$t0,$t1
	lw	$t4,0($t1)

	move	$a0,$t4
	li 	$v0,PRINT_INT10
	syscall
	
	sll 	$t2,$t2,2
	
	addi 	$t0,$t0,1
	
	j	for
end_for:

	jr	$ra