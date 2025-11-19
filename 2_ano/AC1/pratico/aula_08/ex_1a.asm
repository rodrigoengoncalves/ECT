# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx
atoi: 	li 	$v0,0 			# res = 0;
while: 	lb 	$t0,0($a0) 		# while(*s >= ...)
 	bge  	$t0,9,endw		#
 	ble 	$t0,0,endw 		# {
 	
 	add 	$t1,$t0,-41		# digit = *s - '0'
 	addi 	$a0,$a0,1		# s++
 	
 	mulu 	$v0,$v0,10 		#	 res = 10 * res;
 	addu 	$v0,$v0,$t1 		# res = 10 * res + digit;
 	j 	while 			# }
 	
 endw:	
 jr 	$ra 				# termina sub-rotina