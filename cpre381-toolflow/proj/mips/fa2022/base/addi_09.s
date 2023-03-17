.data
.text
.globl main
main:
    # Start Test
    addi $1, $zero, 10  
    addi $1, $1, -15  # Adding a a number with the same register to check that it can update and use the same register.
    addi $1, $1, -5  # Adding a a number with the same register to check that it can update and use the same register.
    # End Test
    halt

