	.data
celsius:	.float	30.0
const_a:	.float	1.8
const_b:	.float	32.0	
	.text
	.globl main

main:
	# carregar os valores da memoria para os rgistos FDU
	la 	$t0,celsius	#1. carregar valor de maneira normal
	l.s	$f0,0($t0) 	#2. carregar valor para os $f (USAR SEMPRE NUMEROS PARES !!!!!)
	
	la 	$t0,const_a
	l.s	$f2,0($t0)
	
	la 	$t0,const_b
	l.s	$f4,0($t0)
	
	
	mul.s 	$f12,$f0,$f2 	# $f12 = celsius * 1.8
	
	add.s 	$f12,$f12,$f4 	# $f12 = $f12 + 32.0
	
	li 	$v0, 2
	syscall
	
		
	jr 	$ra	
	