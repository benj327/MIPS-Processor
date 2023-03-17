.data
.text
.globl main
main:
    # Start Test
    addi $1, $0, 0 #clear register 1
    addi $2, $0, 0 #clear register 2
    and $3, $1, $2 #test if andi function will succeed with cleared registers	
    # End Test

    # Exit program
    halt
