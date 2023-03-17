.data
.text
.globl main
main:
    # Start Test
	not:
    addi $1, $0, 2147483647
	addi $2, $0, -2147483648
	
	bne $1, $2, equal # verify that branching works when the max vals are unequal
    equal:
		addi $31, $0, -2147483648     # verify that it does not branch when unequal with max neg number
		bne $31, $1, not 
    # End Test

    # Exit program
	halt
