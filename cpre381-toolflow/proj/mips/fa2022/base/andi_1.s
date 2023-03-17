.data
.text
.globl main
main:
    # Start Test
    addi $1, $0, 2 #put value 2 into $1
    addi $2, $1, 2 #put value 4 into $2
    and $3, $1, $2 #test that it can perform its intended function with just registers
    # End Test

    # Exit program
    halt
