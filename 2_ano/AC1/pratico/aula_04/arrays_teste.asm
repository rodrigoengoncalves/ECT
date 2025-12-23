# $t0 = p
# $t1 = *p (pultimo-> ultimo elemento do array)
# $t2 = valor de p
# $t3 = size
	.eqv	SIZE,3		#defenir o size
	.eqv	PRINT_STRING,4	#defenir print string
	
	.data
str1: 	.asciiz 	"Ola"         # Defeniçoes das string do array
str2: 	.asciiz 	"Mundo"
str3:	.asciiz 	"MIPS"

array: 	.word 	str1,str2,str3		#defenir o array 

	.text
	.globl main

main:
	# 1. iniciar o ponteiro p
	la 	$t0, array	#defenir p = enderesso base do array
	
	# 2. calcular o pultimo(ultimo elemento o array)
	li 	$t3, SIZE	#defenir tamanho do array
	
	sll 	$t1, $t0, 2	#*p = SIZE * 4 (4 porque é uma string)
	addu 	$t1,$t1,$t0	# *p = ultimo casas + id_array = array[ultima casa]
	
	#agora o p vai ser o nosso "i" do loop
loop:
	bgeu 	$t0,$t1,end_loop 	# p < *p em utras palavras p < array[size], LEMBRANDO QUE EXISTE UMA NEGAÇÃO e tem que se adicionar u no final

	lw 	$t2, 0($t0)	#aceder ao valor diretamente ao array para $l1
	
	move 	$a0,$t2
	li 	$v0,PRINT_STRING	#print ao valor desejado (ou o que se desejar com o valor)
	syscall

	addiu 	$t0,$t0,4 	#diferente do for convencional este irá somar o numero de bites por vez
	
	j 	loop	#volar ao loop
end_loop:

	jr 	$ra 	#terminar programa
