.data
.text
.globl main
main:
    # Start Test
    addi $zero, $zero, 10  # Adding a positive number to the zero register to make sure it doesn't overwrite it.
    addi $zero, $zero, -10  # Adding a negative number to the zero register to make sure it doesn't overwrite it.
    # End Test
    halt

