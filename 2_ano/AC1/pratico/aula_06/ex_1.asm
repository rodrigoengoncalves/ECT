#IDENTIFICÇÃO DAS VARIAVEIS
# i: $t0	
#---------------------------------------
 	.eqv 	SIZE,3
 	.eqv	PRINT_CHAR,11
 	.eqv	PRINT_STRING,4
 	.data
array:	.word 	str1,str2, str3
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
 	.text
 	.globl main
main:	
	li $t0,0	#int i;
for:

 	bgt $t0,SIZE, end_for	# se i<SIZE sai do ciclo 	
 	
 	la $t1,array 		# $t1 = &array[0]
 	sll $t2,$t0,2 		# $t2 = i * 4   ?????
 	addu $t2,$t1,$t2 	# $t2 = &array[i]
 	lw $a0, 0($t2)		# $a0 = array[i]
 	
 	li $v0, PRINT_STRING
 	syscall
 	
 	li $v0, PRINT_CHAR
 	li $a0, 10 
 	syscall
 	
 	addi $t0, $t0, 1
 	
 	j 	for
end_for:
	jr $ra 
