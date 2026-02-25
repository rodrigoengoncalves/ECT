#array:	$f12
#thd:	$f14
#val:	$f16
#n:	$a0
#i:	$t0
#aux:	$f2
#sum:	$f4

	.data
	.text
	.globl main 
main:



proc:


	li 	$f4,$zero	#sim = 0.0
	li 	$t0,0		# i = 0
	
for:
	
	bge	$t0,$a0,end_for	#	i < n
	
	sll 	$t1,$t0,3	# i*4 (floar array é de 4 em 4)
	addu 	$t1,$f12,$t1 	#array[i] (enderesso)
	
	lw 	$t2, 0($t1)	#array[i]

	add	$f2,$t2,$f16	#aux = array[i] + val

if:	
	c.le.d	$f2,$f14
	bc1t	else		#condiçao do if; aux > thd
	
	s.d	$t2,$f14		#array[i] = thd;

	add.d	$f4,$f4,$f14	#sum += thd
else:
	
	s.d	$t2,$f14		# array[i] = aux;
	
	add.d	$f4,$f4,$f2	#sum += aux
	
	addiu 	$t0,$t0,1	#i++
	

	cvt.w.d $f12,$f6		#meter na fpu
	mfc1	$f2,$f6		#(double) n
	
	div.d 	$f0,$f4,$f6	#return (float) (sum / (double) n);

end_for:
