# i: $t0
# 
	.eqv 	SIZE,3
	.eqv 	PRINT_STRING,4
	.eqv 	PRINT_CHAR,11

	.data
array:	.word	str1,str2,str3
str1:	.asciiz	"Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"	 
	.text
	.globl 	main
main:	
	li 	$t0,0

for:	bge	$t0,SIZE,end_for 	#i < SIZE

	la 	$t1,array		# $t1 = &array[0] 
	sll	$t2,$t0,2		# como é de 4 em 4 bits o sll funciona  2^n = nº de bits que queres passar
	addu 	$t2,$t2,$t1 	
		# $t2 = &array[i]
	lw 	$a0,0($t2) 		# $a0 = array[i] 
	
	li 	$v0,PRINT_STRING
	syscall

	li 	$a0,'\n'
	li	$v0,PRINT_CHAR
	syscall

	addi 	$t0,$t0,1

	jal	for
end_for:


	jr	$ra