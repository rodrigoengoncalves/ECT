	.data
 	.text
 	.globl main
main: 	li $t0,2	
 	
	move $t1,$t0
	
	srl $t3,$t1,4
	xor $t1,$t1,$t3
	
	srl $t3,$t1,2
	xor $t1,$t1,$t3
	
	srl $t3,$t1,1
	xor $t1,$t1,$t3
	
	
	move $t2,$t1
	
	jr $ra 
	
	