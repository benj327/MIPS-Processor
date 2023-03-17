.data
.text
.globl main
main:
    # Start Test
    A:
    jal B
    B: 
    addi $t1, $t1, 1
    bne $t1, 2, A
    Exit: 
    # End Test

    # Exit program
    halt
