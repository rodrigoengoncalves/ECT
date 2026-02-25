	.data
temp_atual: 	.float 20.0
limite:     	.float 25.0
msg_hot:    	.asciiz "Ligar AC"
msg_cold:   	.asciiz "Desligar AC"
	.text
	.globl main
	
main:
	# defenir os numeros float

	la 	$t0, temp_atual
	l.s	$f0,0($t0)
	
	la 	$t0, limite
	l.s	$f2,0($t0)
	
	
	c.lt.s 	$f0, $f2 	# comparaçao dos floats (sempre feito c.xx.s lable) 

	#decisao de para onde ir depois de fazer a comparaçao  bc1x  x (f -> false t -> true)	
	bc1f	if	
	bc1t 	else

if:
	la 	$a0,msg_hot
	li 	$v0, 4
	syscall
	
	j 	end
else:
	
	la 	$a0,msg_cold
	li 	$v0, 4
	syscall

	j 	end
	
end:
	jr 	$ra	
	