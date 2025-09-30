# Mapa de registos:
# value: $t0
# bit: $t1
# i: $t2
 	.data
str1: 	.asciiz "Intruduza um numero: "
str2: 	.asciiz "\nO valor em binário e': "
 	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_char,11
 	.text
 	.globl main
main: 	


	la $v0, print_string 	# (instrução virtual)
 	li $a0,str1		# (instrução virtual)
 	syscall 		# print_string(str1);
	
	li $v0, read_int
	syscall			# value=read_int();
	move $t0, $v0
			 			
 	 
 	la $v0, print_string
 	li $a0,str2 
 	syscall			# print_string("..."); 
 	 
 	li $t2, 0 # i = 0

for: 	bge $t2,32,endfor # while(i < 32) {
 	
 	li $t3,0x80000000 #
 	and $t1,$t0,$t3 # bit=value & 0x80000000
if: 	beq $t1,0,else # if(bit != 0)
 	
 	la $v0, print_char
 	li $a0, 1
 	
 	(...) # print_char('1');	
else: 	# else
 	(...) # print_char('0');
endif: 	# value = value << 1;
 	# i++;
 	j ... # }
endfor: 	#
 	jr $ra # fim do programa 