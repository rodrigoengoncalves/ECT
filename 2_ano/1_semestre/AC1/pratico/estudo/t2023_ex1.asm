#int checkp(int);
#
#int treat(int *array, int low, int high)
#{
#    int i, npr;
#    int *p = array;
#
#    for (i = low + 1, npr = 0; i < high; i++) 
#    {
#        if (checkp(i) == 1) {
#            *array = i;
#            array++;
#            npr++;
#        }
#    }
#    *(p + npr) = npr;
#    return npr;

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# valores
# array: $a0 -> $s0
# low  : $a1
# high : $a2 -> $s1
# i    : $s2
# npr  : $s3
# p    : $s4
	
	.data
	.word
	.globl main

main:
**

treat:		#treat(int *array int low, int high)
	
	#RESERVAR OS VALORES
	addiu $sp,$sp,-24	#reservar espaço no pointer stack
	sw 	$ra,0($sp)
	sw 	$s0,4($sp)
	sw 	$s1,8($sp)
	sw 	$s2,12($sp)
	sw 	$s3,16($sp)
	sw 	$s4,20($sp)	

	add 	$s2,$a1,1	#i = low + 1
	
	li 	$s3,$zero	#npr = 0
	
	
	move 	$s0,$a0
	move 	$s4,$a0		
	move	$s1,$a2

for:				#{

	bge	$s2,$s1,end_for	#condiçao invertida para acabar o loop

	move 	$a0,$s2		#colocar o valor de i para a funçao ler
	
	jal 	checkp		#iniciar a funçao

if:	
	bne	$s2,$s1,end_if	#se for diferente ao que é suposto salta o if

	sw 	$s2, 0($s0)	#*array = i
	addiu	$s0,$s0,4	#array++
	addi 	$s3,$s3,1	#npr++
	
end_if:
	
	addi 	$s2,$s2,1	#i++
	j	for
end_for:			#}


	sll	$t0,$s3,2	#array tem de ser bytes
	addu 	$t1,$s4,$t0	#*(p + npr) = npr; (enderesso)
	sw	$s3,0($t1)	#guardar valor na memoria 
	
	move 	$v0,$s3		#return npr;
	
	#voltar a meter os valores no sitio
	lw 	$ra,0($sp)
	lw 	$s0,4($sp)
	lw 	$s1,8($sp)
	lw 	$s2,12($sp)
	lw 	$s3,16($sp)
	lw 	$s4,20($sp)
	addiu $sp,$sp,24
	
	
	