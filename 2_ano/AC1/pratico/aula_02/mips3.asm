	.data
 	.text
 	.globl main
main: 	li $t0,0x123456	
 	
 	srl $t2,$t0,1          	# (bin >> 1)
 	xor $t1,$t0,$t2		# bin ^ (bin >> 1)