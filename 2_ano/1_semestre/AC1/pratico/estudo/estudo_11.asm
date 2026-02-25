# Mapa de registos:
# p:$a0
# n:$a1
# i:$t0
# total_energy:
# ******************************************************
# Tabela de Alinhamento (Preencher):
# char id:      Size: 1 | Offset: 0
# double vel:   Size: 8 | Offset: 1->8
# int status:   Size: 4 | Offset: 16
# char code[5]: Size: 5 | Offset: 20
# TOTAL STRUCT SIZE: 25->32 
# ******************************************************
    .data
zero:	.double 0.0
    .text
    .globl update_particles

update_particles:			#double update_particles(Particle *p, int n) {
					#    int i;
	l.d	$f0,zero		#    double total_energy = 0.0;
	li	$t0,0			#    i = 0;
for:					#    for () {
	bge	$t0,$a1			#    i < n

	lw	$t2,16($a0)		#    p->status = $t2
	li 	$t3,1			#    $t3 = 1
if:					#    if  {
	bne	$t2,$t3,end_if		#    (p->status == 1)
	
	lb	$f2,8($a0)		#     p->velocity
	
	add.d 	$f0,$f0,$f2		#     total_energy = total_energy + p->velocity;
          
        li 	$t3,0			#      $t3 = 0   
        sw	$t3,0($a0)		#      p->id = 0;
end_if					#        }
        
	addiu 	$a0,$a0,32		#      p++; 
	addu 	$t0,$t0,1		#      i++
	j	for
end_for					#    }

					#    return total_energy;
	jr	$ra			#}