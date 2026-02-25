#
#
#               	Alignment  	Size   	Offset
#							
#int nmec		4		4	0
#char name[35]		1		35	4
#double avg 		8		8	39->40	
#int course		4		4	48
#student->		8		52->56
#
#coisa de valores
#
#
#
#
#
#
#
#

	.data
zero:	.double	0.0
	.text
	.globl main

main:









#
#st: $a0
#totalStudents: $a1
#courseId: $a2
#count: $t0
#i: $t1
#ptr : $t2


getTotalByCourse:

	li 	$t0,0		#count = 0
	li 	$t1,0		#i = 0 
	
	move 	$t2,$a0		#student *prt = st
	
for:
	bge	$t1,$a1,end_for	#i < totalStudents

	lw 	$t3,48($t2)	# buscar valor de ptr-> course	
if:
	bne	$t3,$a2,end_if		#ptr->course == courseID
	addiu 	$t0,$t0,1	#count++
end_if:
	addiu	$t2,$t2,56	#ptr++
	
	addi	$t1,$t1,1	#i++
	
			
	j	for
end_for:

	move 	$v0,$t0	#return count
	jr	$ra	#terminar funçao
	
#st:	$a0
#totalStudents: $a1
#courseID:	$a2
#sum:f2	
#count:$t0
#i:$t1

getCourseAverage:
	l.d	$f2,zero	#sum = 0.0
	
	li 	$t0,0		#count = 0
	li 	$t1,0		#i = 0
	
for:

	bge	$t1,$a1,end_for	#i < totalStudents
	
	lw	$t2,48($a0)	#$t2 = st[i].course
	
if:
	bne 	$t2,$a2,end_if	#st[i].course= courseId
	
	l.d	$f4,40($a0)	# $f4 = st[i].avg
	
	add.d 	$f2,$f2,$f4	#sum +=  st[i].avg
	
	addi 	$t0,$t0,1 	#count++
	addiu 	$a0,$a0,56		
end_if:	
	addiu 	$a0,$a0,56	#avançar o ponteiro para o aluno seguinte
	
	addi 	$t1,$t1,1	#i++
	j	for	
end_for:
	
	li	 $t3,0		#$t3 = 0
	
if:	
	bne 	$t0,$t3,end_if	#count == 0
	
	l.d	$f0,zero	#return	0.0
	jr	$ra		#terminar o programa
end_if:

	mtc1	$t0,$f6
	cvt.d.w	$f6,$f6		#converter o valor de word para double		#colocar na memoria
	
	div.d 	$f0,$f2,$f6	# sum / (double) count
	
	cvt.s.d $f0,$f0		#(float) (sum / (double) count)
	
	jr	$ra	