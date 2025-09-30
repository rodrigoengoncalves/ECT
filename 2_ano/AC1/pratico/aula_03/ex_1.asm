# Mapa de registos:
# soma: $t0
# value: $t1
# i: $t2
 	.data
str1: 	.asciiz "Introduza um numero: "
str2: 	.asciiz	"Valor ignorado\n"
str3: 	.asciiz "A soma dos positivos é: "
	.eqv print_int10,1
 	.eqv print_string,4
 	.eqv read_int,5
 	
	.text
 	.globl 	main
main: 	li $t0,0 		# soma = 0;
 	li $t2,0 		# i = 0;
for: 	bge $t2,5,endfor 	# while(i < 5) {

# print_string("...");	
 	li $v0,print_string 			
 	la $a0, str1
 	syscall
 
# value=read_int();
	li $v0,read_int
	syscall
	move $t1,$v0
	
if: 	blt $t1,0,else 	# if(value > 0)
 	add $t0,$t0,$t1 				# soma += value;
 	j 	endif #
else: 	
	la $a0, str2
	li $v0, print_string
	syscall
 	j endif
 				# print_string("...");
endif: 	addi $t2,$t2,1 		# i++;
 	j 	for 				# }
endfor:
 	li $v0,print_string 			
 	la $a0, str3
 	syscall 				# print_string("...");
 	
 	 				 	# print_int10(soma);
 	move $a0, $t0
 	li $v0, print_int10
 	syscall
 	 				 	
 	 				 	
 	jr $ra 