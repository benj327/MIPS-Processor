.data
.text
.globl main
main:
    # Start Test
    addi $12, $12, 0x11111111	#prep
    addi $12, $12, 0		#prep
    slt $t9, $12, $13   	# test the functionality of slt with Overflow Possibility on TRUE
    # End Test

    # Exit program
    halt
