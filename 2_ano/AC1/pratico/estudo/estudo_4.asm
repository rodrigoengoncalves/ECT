#exercicio 2

	.data
sum: 	.float 	0.0
	.text
	.globl main
main:

#tabela de memoria
# vals: $a0
# k: $a1
# i: $t0
#sum:$f2



compute_avg:			#float compute_avg(float *vals, int k) {
	l.s 	$f2,sum		#    float sum = 0.0;
	li 	$t0,1		#    int i = 0;
				#    
for:				#    for{
	bge	$t0,$a1,end_for	#	(i < k;)
	
	l.s 	$t4,0($a0)	#vals[i] = $t1
	add.s	$f2,$f2,$f4	#sum = sum + vals[i];
	addiu 	$t0,$t0,4	#i++
	j	for
end_for:			#    }

	mtc1	$a1,$f6
	cvt.s.w	$f6,$f6		# (float)k


	div.s	$f0,$f2,$f6	#    return sum / (float)k;
	jr 	$ra 		#}