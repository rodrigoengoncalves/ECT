# O argumento da função é passado em $a0
# O resultado é devolvido em $v0
# Sub-rotina terminal: não devem ser usados registos $sx
	.eqv 	PRINT_INT10,1
	.data
str:	.asciiz 	"Arquitetura de Computadores I"
	.text
	.globl main
main:
	la 	$a0,str
	jal	strlen
	move 	$a0, $v0
	
	li 	$v0,PRINT_INT10
	syscall

	li 	$v0, 10
	syscall

strlen: li 	$t1,0 		# len = 0;
while: 	lb 	$t0,0($t0) 	# while(*s++ != '\0')
 	addiu 	$a0,$a0,1 	#
 	beq 	$t0,'\0',endw 	# {
 	addi 	$t1,$t1,1 	# len++;
 	j while 		# }
endw: 	move 	$v0,$t1		# return len;
 	jr 	$ra 
