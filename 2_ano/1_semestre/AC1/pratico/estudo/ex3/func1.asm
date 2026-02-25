#Mapa de registos
# fl:	$a0 
# k: 	$a1
# av:	$a2
# i: 	$t0
# res: 	$t1
#******************************************************
#Funçoies externas
#int toi(cahr *)
#int avz(int*, int)

	.eqv	neg,-1
	.eqv 	SIZE,15 
	.data
str:	.asciiz		"invalid argc"
	.text
	.globl main
main:


func1:
	
	addiu	$sp,$sp,-24
	sw	$s0,0($sp)
	sw	$s1,4($sp)
	sw	$s2,8($sp)
	sw	$s3,12($sp)
	sw	$s4,16($sp)
	sw	$s5,20($sp)
	sw	$ra,24($sp)
	
	move 	$s0,$a0
	move 	$s1,$a1
	move 	$s2,$a2
	
	 


if:
	li 	$t0,2
	blt	$s1,2,end_if	# k>=2
	la 	$t0,SIZE	# $t2 = size
	blt	$s1,$t0,end_if	# k > SIZE
	
	li 	$s3,2		#i = 2
	 
do:
	sll 	$t1,$s3,2	# i * 4
	addu 	$t2,$s0,$t3	# fl[i] (enderesso)
	
	move 	$a0,$s2
	
	jal 	toi		#toi(av[i])
	
	sw	$v0,0($t2)	#fl[i] = toi(av[i])
	
	addu 	$s3,$s3,1	#i++

loop:
	ble	$s3,$s1,end_loop		#i<k
	
	move 	$a0,$s0
	move 	$a1,$s1
	
	jal 	avz
	
	move	$s4,$v0
	
	li 	$v0,1	
	move	$a0,$s4
	syscall
	
	j 	loop
end_loop:
	
else:
		
	li 	$v0,4
	la	$a0,str
	syscall
	
	la	$t0,neg
	move 	$t1,neg		#res = -1
	
	move 	$v0,$t1		#return res;
	
	jr 	$ra		#trminat funçao
	
