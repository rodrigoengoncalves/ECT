	.data
 	.text
 	.globl main
main: 
	ori $t0,$0,0x1234 	# substituir val_1 e val_2 pelos
 	nor $t1,$t0,$zero 	# tornar o $t1 no inverso do $t0, tambem podia ser: xor $t1,$0,oxFFFFFFFF ou nor $t1,$0,$t1
 	and $t2,$t0,$t1 	# $t2 = $t0 & $t1 (and bit a bit)
 	or  $t3,$t0,$t1 	# $t3 = $t0 | $t1 (or bit a bit)
 	nor $t4,$t0,$t1 	# $t3 = ~($t0 | $t1) (nor bit a bit)
 	xor $t5,$t0,$t1		# $t3 = $t0 ^ $t1
 	jr $ra 			# fim do programa