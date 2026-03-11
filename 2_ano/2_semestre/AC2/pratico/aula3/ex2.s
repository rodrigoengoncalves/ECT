.equ TRISB, 0x6040
.equ PORTB, 0x6050
.equ ADDR_BASE_HI,0xBF88 # Base address: 16 MSbits
.equ TRISE,0x6100 # TRISE address is 0xBF886100
.equ PORTE,0x6110 # PORTE address is 0xBF886110
.equ LATE,0x6120 # LATE address is 0xBF88

.text  
.globl main

main:

    lui $t1,ADDR_BASE_HI    # $t1=0xBF880000
    lw $t2,TRISE($t1)       # READ (Mem_addr = 0xBF880000 + 0x6100)
    andi $t2,$t2,0xFFF6     # MODIFY (bit0=bit3=0 (0 means OUTPUT))
    sw $t2,TRISE($t1)       # WRITE (Write TRISE register)

    lui $t1,ADDR_BASE_HI    # $t1=0xBF880000
    lw $t2,LATE($t1)        # READ (Read LATE register)
    andi $t2,$t2,0xFFFE     # MODIFY (bit0 = 0)
    sw $t2,LATE($t1)        # WRITE (Write LATE register) 


loop:
    # 1. Ler o valor do porto de entrada (RB0)
    lw  $t2,PORTB($t1)     # READ (Read PORTB register)
    andi $t2,$t2,0x0001     # MODIFY (bit0)
    xori $t2,$t2,0x0001     # MODIFY (bit0 = NOT bit0 of RB0)

    # 2. Escrever o valor lido no porto de saída (RE0)
    lw $t3,LATE($t1)      # READ (Read LATE)
    andi $t3,$t3,0xFFFE     # MODIFY (bit0 = 0)

    # 3. Atualizar a saída (RE0) com o valor lido (RB0)
    or $t3, $t3, $t2      # MODIFY (bit0 = bit0 of RB0)
    sw $t3,LATE($t1)     # WRITE (Write LATE register)

    j loop