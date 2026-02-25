#exercicio 1
	.eqv 	LIMIT,20	##define LIMIT 20
	.data
	.text
	.globl main
main:

#int check_val(int v);

#mapa de registos
#arr: $a0 -> $s0
#n:   $a1 -> $s1
#count:$s2
#i: $s3
#res:	$s4


filter_list:		#int filter_list(int *arr, int n) {
	li	$s2,0	#    int count = 0;
	li 	$s3,0	#    int i = 0;

	move	$s0,$a0	#arr: $a0 -> $s0
	move	$s1,$a1	#n:   $a1 -> $s1
#	GUARDAR VALORES NA STACK POINTER
	addiu 	$sp,$sp,-24
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	sw	$s4,20($sp)
	
	la	$t0,LIMIT		
if:				#if (n > LIMIT) {
	ble	$s1,$t0,end_if
	li	$t1,-1 	
	move 	$v0,$t1		#        return -1;
end_if				#    }

do:				#    do {
	addu 	$s0,$s0,$s3
	lw	$a0,0($s0)	#arr[i]
	jal 	check_val	#check_val(arr[i]); 
	
	move	$s4,$v0		#res = check_val(arr[i]); 

if:				#if (res != 0) {
	li 	$t1,0		#
	bne	$s4,$t1,end_if
	addiu 	$s2,$s2,1	#	count++;
end_if:				#        }
	addiu	$s3,$s3,4	#        i++;
	bge	$s3,$s1,end_loop#(i < n);
	j 	do		#while
end_loop:			#}
#	RETIRAR VALORES DO STACK POINTER
	lw	$ra,0($sp)
	lw	$a0,4($sp)
	lw	$a1,8($sp)
	lw	$s2,12($sp)
	lw	$s3,16($sp)
	lw	$s4,20($sp)
	addiu 	$sp,$sp,24
	
	move 	$v0,$s2		#    return count;
	jr 	$ra		#}

