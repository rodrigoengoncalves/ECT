#typedef struct {
#    char category;   // 1 byte
#    double price;    // 8 bytes
#    int stock;       // 4 bytes
#} Product;
#		Alignment  	Size   	Offset	
#char category	1		1	0
#double price 	3		8	1->8			
#int stock 	2		4	16	
#		3		20->24	
	.data 	
zero_n 	.double 	0,0
	.text
	.globl main 
main:



#lista de valores 
#p: $a0
#n: $a1
#minThreshold: $a2
#total:$f2
#i: $t0


valueLowStock:			#{
	l.d	$f2,zero_n	#    double total = 0.0;
	
	li 	$t0,0		#    int i = 0;
for:				# for{
	bge	$t0,$a1,end_for	#i < n
	
	lw	$t1, 16($a0)	#p->stock = $t1
if:				#if{
	bge	$t1,$a2,end_if	#p->stock < minThreshold

	l.d 	$f4, 8($a0)	#p->price = $t2
	
	mtc1	$t1,$f6
	cvt.d.w	$f6,$f6		#p->stock(double) 
	
	mul.d 	$f6,$f4,$f6	#p->price * p->stock
	add.d 	$f2,$f2,$f6	#total = total + (p->price * p->stock)   
end_if				#        }
	addiu 	$a0,$a0,24	#        p++;

	addiu 	$t0,$t0,1	#	i++
	j	 for
end_for:			#    }
	
	cvt.s.d	$f0,$f2		#    return (float)total;
	jr	$ra		#}