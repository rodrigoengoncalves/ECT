#
# val = $t0
# n = $t1
# min = $t2	
# max = $t3
	.eqv 	MAX,0x80000000
	.eqv	MIN,0x7FFFFFFF

	.eqv 	PRINT_STRING,4
	.eqv	READ_INT,5
	.eqv	PRINT_INT10,1
	.eqv	PRINT_CHAR,11
	.data
str1: 	.asciiz "Digite ate 20 inteiros (zero para terminar):"
str2: 	.asciiz "Máximo/minimo são :"
	.text
	.globl main
	
main:
	
	li 	$t1,0
	li	$t2,MIN
	li	$t3,MAX	

	la 	$a0,str1
	li	$v0,PRINT_STRING
	syscall
	
do:	
	
	li	$v0,READ_INT
	syscall
	
	move 	$t0,$v0
	
	beq 	$t0,0,print
	
	bgt	$t0,$t3,if_1
	blt	$t0,$t2,if_2
	
	j 	loop_check
		
if_1:
	move	$t3,$t0
	
	j 	loop_check
	
if_2:
	move	$t2,$t0
	
	j 	loop_check
	
loop_check:
	addi	$t1,$t1,1
	
	bge 	$t1,20,print
	beq 	$t0,0,print
	
	j	do
	
print:
	la 	$a0,str2
	li	$v0,PRINT_STRING
	syscall
	
	move 	$a0,$t3
	li 	$v0,PRINT_INT10
	syscall
	
	li 	$a0,':'
	li	$v0,PRINT_CHAR
	syscall
	
	move	$a0,$t2
	li 	$v0,PRINT_INT10
	syscall

	jr	$ra