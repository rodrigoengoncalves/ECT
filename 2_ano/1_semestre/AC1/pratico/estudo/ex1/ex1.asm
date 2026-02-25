# Mapa de registos:
# nv:   $a0
# pt:   $a1
# i:    $t0
# j:    $t1
# sum:  $f20 (ou $f2, par $f20/$f21 é callee-saved)
# ************************************************************
#
# Substitua xx pelo valor adequado
# typedef struct
# {			    	Align	Size	Offset
#     int acc;          	4   	4    	0
#     unsigned char nm;     	1  	1    	4
#     double grade;         	8   	8    	8	
#     char quest[14];       	1   	14   	16
#     int cq;               	4   	4    	32
# } t_kvd;                  	8   	40
# ************************************************************

	.data

sum: 	.float 	0.0	
	.text
	.globl main

main:

func3:

	mtc1	$zero, $f2 		# move 0 inteiro para a fpu
	cvt.w.d $f2, $f2		#converte para 0.0 double, f2 agora é o sum
	
	
	li 	$t0,0			# i = 0 


for:					#{
	bge	$t0,$a0,end_for 	#i < nv

	la 	$t1,0			#j = 0
	
do:
	
	#aceder ao pt -> quest[j]
	addiu	$t2, $a1, 16		#aponta para o inicio de quest[]
	addu 	$t2, $t2, $t1		#$t2 = enderesso de quest[j]
	
	lb 	$t3,0($t2)		#carregar o char para $t3
	
	# cast double e soma 
	
	mtc1	$t3,$f4			#mover o valor para FTU
	cvt.w.d $f4,$f4			#converter int -> double
	
	add.d 	$f2,$f2,$f4		# sum += valor
	
	#incrementar o teste
	
	addu 	$t1, $t1, 1		#j++
	
	lbu 	$t4, 4($a1)		# lbu ???? , nao percebo pt -> nm 
	blt 	$t1,$t4,do			# j < pt->nm
	
	
	
	#divisao 
	
	l.d 	$f6,8($a1)		#$f6 = grade(float) 
	
	div.d 	$f8,$f2,$f6		# $f8 = sum / pt->grade 

	cvt.d.w $f8,$f8			# converter o double para int
	mfc1 	$t5,$f8 		# mover FPU para CPU ($t5) 

	sw $t5, 0($a1)			# guardar o $t5 no a1-> add
	
	addi 	$t0, $t0, 1		# i++
	addiu 	$a1, $a1, 40 		# pt++ (soma size of struct: 40 bytes)
	j 	for
				



end_for:				#}



	# Carregar pt->grade (offset 8)
    	l.d     $f4, 8($a1)
    
    	# Carregar pt->cq (offset 32, int)
    	lw      $t2, 32($a1)
    
    	# Cast cq para double
    	mtc1    $t2, $f6
    	cvt.d.w $f6, $f6        # $f6 = (double) cq
    
    	# Multiplicar
    	mul.d   $f0, $f4, $f6   # Resultado em $f0 (Return register)
    
    	jr      $ra
