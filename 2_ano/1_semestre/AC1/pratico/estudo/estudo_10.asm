# Mapa de registos:
# arr: $a0 -> $s0
# k: $a1 -> $s1
# count:  $s2
# i:	$s3
# val:	$s4
# ******************************************************
    .eqv	LIMIT,100	#define LIMIT 100
    .text
    .globl process_list

#int check_norm(int v); 

process_list:			#int process_list(int *arr, int k) {
	
	move 	$s0,$a0		#$s0 = arr 
	move 	$s1,$a1 	#$s1 = k
	
	li	$s2,0		#    int count = 0;
	li 	$s3,0 		#    int i = 0;
	
	la 	$t0,LIMIT	#    $t0 = LIMIT
				#    int val;
# ARMEZENAR DADOS NA STACK POINT
	addiu 	$sp,$sp,-26	#reservar espaço na stack point
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	sw	$s4,20($sp)

if: 				#    if  {
	ble	$s1,$t0,end_if	#(k > LIMIT)
	li 	$a0,-1		#$a0 = -1
	jal 	$ra		#        return -1;
end_if 				#    }

do:				#    do {

	sll 	$t1,$s3,4	#i*4
	addu 	$t1,$s0		# arr[i] (enderesso)
	lw 	$a0,0($t1)	# $a1 = arr[i]
	jal 	check_norm	#check_norm(arr[i]); 
	
	move	$s4,$v0		#val = check_norm(arr[i]); 
	
if:				#if {
	li 	$t2,0 		#$t2 = 0
	ble 	$s4,$t2,end_if	#val > 0

	add	$s2,$s2,$s4	#            count = count + val;
end_if:				#        }
	
	addiu	 $s3,$3,1	#        i++;

	blt	$s3,$s1,do	#    } while (i < k);

	# RECUPERAR OS DADOS NA STACK POINT	#reservar espaço na stack point
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	sw	$s4,20($sp)
	addiu 	$sp,$sp,26

	move 	$a0,$s2		
	
	
	#    return count;
	jr 	$ra		#}