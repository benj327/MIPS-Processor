.data
.text
.globl main
main:
    # Start Test
    addi $12, $12, 100	#prep
    addi $12, $12, 0x0000000F		#prep
    slt $t9, $12, $13   	# test the functionality of slt with negative on FALSE
    # End Test

    # Exit program
    halt
