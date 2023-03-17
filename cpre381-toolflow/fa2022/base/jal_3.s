.data
.text
.globl main
main:
    # Start Test
    A:
    jal B
    B: 
    addi $t1, $t1, 1
    jal C
    C:
    addi $t1, $t1, 1
    jal D
    D: 
    addi $t1, $t1, 1
    jal Exit
    Exit: 
    # End Test

    # Exit program
    halt
