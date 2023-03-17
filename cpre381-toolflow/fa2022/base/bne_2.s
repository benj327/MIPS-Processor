.data
.text
.globl main
main:
    # Start Test
	bad:
    addi $1, $0, -1
	addi $2, $0, 1
	
	bne $1, $2, good # verify that branching works when values are unequal with neg
    good:
		addi $31, $0, -1     # verify that it does not branch when equal with neg numbers
		bne $31, $1, bad 
    # End Test

    # Exit program
	halt
