# res: $v0
# p: $t1
# array: $a0
# n: $a1
#
	.eqv 	SIZE,5				# Tamanho do array
	.data
array:  	.word  	10, 20, 30, 40, 50   	# Um array com 5 inteiros                  
	.text
	.globl main

main:

	la 	$a0,array
	li 	$a1,SIZE


	jal	soma 		#iniciar a funçao SOMA

	move $a0, $v0           # Mover o resultado ($v0) para $a0 para imprimir
    	li   $v0, 1             # Código para print_int
    	syscall



#========================================================================================================================
	la 	$a0,array
	li 	$a1,SIZE
	
	jal	media 		#iniciar a funçao MEDIA

	move $a0, $v0           # Mover o resultado ($v0) para $a0 para imprimir
    	li   $v0, 1             # Código para print_int
    	syscall

    				# Terminar o programa
    	li   $v0, 10
    	syscall

soma:				#funçao sem necessidade de salvaguardar qualquer valor na stack FUNÇAO FOLHA
	li	$v0,0		#	int = res;
	move 	$t1,$a0		#	int *p = array;
	
	sll 	$a1,$a1,2	#	n = n * 4 (numero de bytes para o final)
	addu 	$a1,$a0,$a1	#	array + numero de bytes para o ultimo = array[p]
	
for:				#{
	bgeu 	$t1,$a1,end_for #	p < &(array[n])
	
	lw 	$t2,0($t1)	#	ler o valor do array no local onde está
	add	$v0,$v0,$t2	#	res += (*p);

	addiu 	$t1,$t1,4 	# 	p++
	
	j 	for		#}
end_for:
	
	jr	$ra		# return res($v0);
	

# res: $t0, array: $a0, n: $a1 -> $s1
		
media:				# FUNÇAO NAO FOLHA (necessario usar o pointer stack pois vai utilizar outra funçao)

	addiu 	$sp,$sp,-8	#reservar o espaço da stack 
	sw 	$ra, 0($sp)	#guardar o $ra (sempre obrigatorio para nao folha)
	sw 	$s1, 4($sp)	#guardar o valor $s1 antes de o usar
	
	move 	$s1,$a1		#n: $s1
	
	jal 	soma		#res = soma(array, n) = soma($a0,$a1)
	
	div 	$v0,$v0,$s1	#res/n
	
	lw 	$ra, 0($sp)	# recuperar valor de $ra (possivelmente ja alterado)
	lw 	$s1, 4($sp)	#recuperar valor de  $s1 (possivelmente ja alterado)
	addiu 	$sp,$sp,8	#libertar o espaço na stack
	
	jr 	$ra		#retornar


	