# p : $t1
# pultimo: $t2 
	
	.eqv  	SIZE,3
	.eqv	PRINT_STRING,4
	.eqv	PRINT_CHAR,11 	
	.data
array: 	.word	str1,str2,str3
str1:	.asciiz "Array"
str2:	.asciiz	"de"
str3:	.asciiz	"ponteiros"
	.text
	.globl main
main:

	la	$t1,array	# p = array
	
#(O SIZE TEM DE SER *4 PORQUE É DE 4 EM 4 BITS)
	li 	$t0,SIZE
	sll 	$t0,$t0,2	# SIZE * 2^2
	addu 	$t2,$t1,$t0	# pultimo = array + (SIZE * 4)	

for:
	bge 	$t1,$t2,end_for	# p < pultimo
	
	lw 	$a0,0($t1) 	#serve para carregar o que esta no array que estamos localizados
	li	$v0,PRINT_STRING
	syscall
	
	li 	$a0,'\n'
	li 	$v0,PRINT_CHAR
	syscall
	
	addiu	$t1,$t1,4
	
	j 	for

end_for:
	jr	$ra