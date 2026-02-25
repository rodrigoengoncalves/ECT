#exercicio 3

#typedef struct {
#    char id;          
#    double reading;   
#    short codes[3];   
#    int status;       
#} Sensor;
#		Alignment  	Size   	Offset
#char id;      	1		1	0    
#double reading 8  		8	1->8
#short codes[3] 2  		6	16	
#int status;	4		4	22->24
#				8	28->32

	.eqv 	one,1
	.eqv 	zero,0
	.data
one_five:	.double 	1.5
	.text
	.globl main
main:

#s: $a0
#val:$a1
#

update_sensor:#{
	
	lw	$t0, 24($a0)	#s->status = $t0
	la 	$t1,one		#1 = $t1
		
	l.d 	$f0, one_five	#$f0 = 1,5	
	l.d	$f2, 8($a0)	#s->reading	
if:				#if{
	bne	$t0,$t1,end_if	#(s->status == 1)
	
	mtc1	$a0,$f4
	cvt.d.w	$f4,$f4		#(double)val
	
	mul.d 	$f6,$f4,$f0	#(double)val * 1.5
		
	s.d 	$f6,8($a0)	#s->reading = (double)val * 1.5;
end_if:				#    }

	la 	$t1,zero 	#0 = $t1
	
	lw	$t1,0($a0)	#    s->id = 0;
#}