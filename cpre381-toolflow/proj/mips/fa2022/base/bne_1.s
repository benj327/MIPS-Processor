.data
.text
.globl main
main:
    # Start Test
	bad:
		addi $1, $0, 1     
		bne $1, $zero, good # verify that branching works when unequal
    good:
		addi $31, $0, 0     # verify that it does not branch when equal
		bne $31, $zero, bad  
    # End Test

    # Exit program
	halt
