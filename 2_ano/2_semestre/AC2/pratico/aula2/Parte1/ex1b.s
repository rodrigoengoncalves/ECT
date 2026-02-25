.equ READ_CORE_TIMER,11
    .equ RESET_CORE_TIMER,12
    .equ PUT_CHAR,3
    .equ PRINT_INT, 6
    .data
    .text
    .globl main


main:   li $t0,0            #counter = 0


while:
        li $a0,'\r'
        li $v0, 3
        syscall             #putChar('\r)

        move $a0,$t0
        li    $a1, 4
        sll    $a1, $a1, 16    # 4 << 16
        ori    $a1, $a1, 10    # 10 | 4 << 16
        li    $v0, 6
        syscall


        li $v0,RESET_CORE_TIMER 
        syscall             # resetCoreTimer()

while1:
        li $v0, 11
        syscall
        move $t1,$v0

        bge $t1,20000000,endw

        j while1
endw:
        addi $t0,$t0,1
        j while 
        jr $ra
