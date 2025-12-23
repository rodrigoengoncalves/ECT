# Copie a estrutura para o topo da área de resposta  
# e substitua xx pelo valor adequado
# typedef struct 
#               	Alignment  	Size   	Offset
#char smp[17];       	1		17	0
#double xpt;        	8		8	17 -> 24	
#int ns;            	4		4	32	
#char id;           	1		1	36	
#int sum;           	4		4	37 -> 40 	
#t_cell;            	8		48	44 -> 48

#size:	$a0
#tc:	$a1
#tmp:	$f2
#result:$f4
#i:	$t0						
								
	.data
	
one:	.double		1.0
a:	.double		3.597
	.text
	.globl main	
main:


prcells:
	move 	$t1,$a0		#$t1 = size
	
	l.d 	$f8, one
	l.d 	$f10,a		#$f8 = 1.0
	
	mov.d 	$f2,$f8		#tmp = 1.0
	mov.d 	$f4,$f8 	#temp = 1.0
	
	li 	$t0,0		#i = 0 
	
for:
	bgt	$t0,$a0,end_for	# se falso (i < size) acaba o loop

	mul 	$t1,$t0,48	#sll da wish
	addu 	$t2,$a1,$t1	#$t2 = tc[i] enderesso
	
	lw 	$t3,32($t2)	# $t3 = tc[i].ns
	
	mtc1	$t3,$f6		#Move bits do CPU($t3) para FPU($f6)
	cvt.w.d	$f6,$f6		#Converte Word -> Double ($f6 agora é float)
		
					
	div.d  	$f2,$f6,$f10	#tmp = (double)tc[i].ns / 3.597; 
	
	add	$f4,$f4,$f2	#result += tmp;
	
	s.d	$f4,24($t2)	# tc[i].xpt = tmp;
	
	cvt.d.w	$f4,$f12		#converter para inteiro
	mfc1	$t5,$f12		#valor inteiro na memoria
	
	addi	$t5,$t5,1	#(int)result - 1
	
	
	sw 	$t5,40($t2)	#(int)result - 1
			
	lw 	$t1,32($a1)	#aceder ao tc[i].ns

	addu	$t0,$t0,1	#i++
	j 	for
end_for:
	
	
	mov.d 	$f0,$f4		#return result;
	jr	$ra 		#fim da funçao
	
	