.data
.text
.globl main
main:
    # Start Test
    andi $1, $0, 0     # verify that one can clear registers and 0+0 works in the ALU   
    andi $2, $1, 4     # verify that one can perform the intended andi function   
    # End Test

    # Exit program
    halt
