	.data
 	.text
 	.globl main
main: 	li $t0,0x123456		# instrução virtual (decomposta
 				# em duas instruções nativas)
 	sll $t2,$t0,1 		#Shift Left Logic
 	srl $t3,$t0,1 		#Shift Right Logic
	sra $t4,$t0,1 		#Shift Right Aritmetic
  	
 	jr $ra 			# fim do progra