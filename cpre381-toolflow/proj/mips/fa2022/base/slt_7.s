.data
.text
.globl main
main:
    # Start Test
    addi $12, $12, 0x0000000F	#prep
    addi $12, $12, 100		#prep
    slt $t9, $12, $13   	# test the functionality of slt with negative on TRUE
    # End Test

    # Exit program
    halt
