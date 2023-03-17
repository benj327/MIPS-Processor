.data
.text
.globl main
main:
    # Start Test
subi $0, $0, 459
addi $1, $1, 0 
#store a negative number in $0
#verify 0 - unsigned negative number is still 0 - number
subu $1, $1, $0

    # End Test

    # Exit program
    halt
