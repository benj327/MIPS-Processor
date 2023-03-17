.data
.text
.globl main
main:
    # Start Test
    A:
    jal B
    B: 
    add $a0, $zero, $ra
    li $v0, 1
    syscall
    jal C
    C:
    add $a0, $zero, $ra
    li $v0, 1
    syscall
    jal D
    D: 
    add $a0, $zero, $ra
    li $v0, 1
    syscall
    Exit: 
    # End Test

    # Exit program
    halt
