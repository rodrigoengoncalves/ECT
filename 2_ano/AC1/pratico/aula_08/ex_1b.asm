
	.eqv 	PRINT_INT10,1
	.eqv 	EXIT,10
	.data
str:	.asciiz 	"2020 e 2024 sao anos bissextos"
	.text
	.globl main
main:
	
	la 	$a0,str
	jal	atoi
	
	move 	$a0, $v0
	li	$v0, PRINT_INT10
	syscall
	
	li 	$v0, EXIT
	syscall

atoi: 	li 	$v0,0 			# res = 0;
while: 	lb 	$t0,0($a0) 		# while(*s >= ...)
 	blt 	$t0,'0',endw		#
 	bgt 	$t0,'9',endw 		# {
 	
 	addi 	$t1,$t0,-48		# digit = *s - '0'
 	addi 	$a0,$a0,1		# s++
 	
 	mulu 	$v0,$v0,10 		#	 res = 10 * res;
 	addu 	$v0,$v0,$t1 		# res = 10 * res + digit;
 	j 	while 			# }
 	
endw:	jr 	$ra			# termina sub-rotina
