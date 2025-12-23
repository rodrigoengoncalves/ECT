# Mapa de registos:
# readings:$a0 
# threshold:$f12 
# n:$a1
# sum:$f2
# temp:$f4
# k:$t0
# *****

#*************************************************
    	.data
zero	.float 0.0
factor: .float 0.5
    .text
    .globl filter_temps

filter_temps:			#float filter_temps(float *readings, float threshold, int n) {
	l.s	$f2,zero	#    float sum = 0.0;
				#    float temp;
				#    int k;
	li 	$t0,0		#    k = 0;
for:				#    for {
	bge	$t0,$a1		#        k < n;


	sll 	$t1,$t0,2	#        k * 8
	addu 	$t1,$a0,$t1	#        readings[k] (enderesso)
	
	l.s	$f4,0($t1)	#        readings[k] (valor)
	mov.s	$f2,$f4		#        temp = readings[k];
        
if:				#        if () {
	c.le.s	$f4,$f12	#		temp > threshold
	bc1t	end_if
	l.s	$f6,factor	#		$f6 = 0.5 (float)
		
	mul.s	$f4,$f4,$f6	#               temp = temp * 0.5; // Multiplica pelo fator 0.5
	s.s 	$f4,0($t1)	#            readings[k] = temp; // Atualiza o array
end_if:				#        }

	add.s	$f2,$f2,$f4	#        sum = sum + temp;

	addiu	$t0,$t0,1	#k++
	j	for
end_for				#    }
	mtc1	$a1,$f8
	cvt.s.w	$f8,$f8		#converter o valor int para float
	
	div.s 	$f0,$f2,$f8	#    return sum / (float)n;
	jr 	$ra		#}