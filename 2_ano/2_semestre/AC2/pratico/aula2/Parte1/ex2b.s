.equ READ_CORE_TIMER, 11
 .equ RESET_CORE_TIMER, 12
 .equ PUT_CHAR, 3
 .equ PRINT_INT, 6

 .data
 .text
 .globl main                         # ESSENCIAL: Torna o rótulo visível ao Linker

main:                                # Tem de ser exatamente "main" em minúsculas
    li   $s0, 0                      # counter = 0

while:                               # while(1) {
    li   $a0, '\r'
    li   $v0, PUT_CHAR
    syscall                         # putChar('\r')

    move $a0, $s0                   # counter
    li   $t1, 4
    sll  $t1, $t1, 16
    ori  $a1, $t1, 10               # $a1 = 10 | (4 << 16)
    li   $v0, PRINT_INT
    syscall                         # printInt(...)

    li   $a0, 1                  # ms = 1000
    jal  delay                      # delay(1000)

    addi $s0, $s0, 1                # counter++
    j    while                      # }
    jr   $ra

                                    # void delay(unsigned int ms) {
delay:
    li      $t0, 20000
    mul     $t1, $a0, $t0           # $t1 = K * ms
    li      $v0, RESET_CORE_TIMER
    syscall                         # resetCoreTimer()

while_delay:
    li      $v0, READ_CORE_TIMER
    syscall                         # readCoreTimer()
    bltu    $v0, $t1, while_delay   # while(...)
    jr      $ra                     # }