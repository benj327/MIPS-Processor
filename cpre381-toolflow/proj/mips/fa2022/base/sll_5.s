.data
.text
.globl main
main:
	#Start Test
	addi $a1 $0, 0xFFFFFFFF # starting value
	sll $t0, $a1, 0 # verifying that the sll function works correctly when shifting the largest possible value by 0 bits
	sll $t1, $a1, 4 # verifting that the sll function works correctly when shifting the largest possible value 4 bits
	sll $t2, $a1, 16 # verifying that the sll function works correctly when shifting the largest possible value 16 bits
	sll $t3, $a1, 31 # verifying that the sll function works correctly when shifting the largest possible value by the maximum number of bits
	sll $t4, $0, 0 # verifying that the sll function puts a zero value in $t4 when shifting nothing by 0 bits
	sll $t5, $0, 4 # verifying that the sll function puts a zero value in $t5 when shifting nothing by 4 bits
	sll $t6, $0, 16 # verifying that the sll function puts a zero value in $t6 when shifting nothing by 16 bits
	sll $t7, $0, 31 #verifying that the sll functions puts a zero value in $t7 when shifting nothing by the maximum number of bits
	# End Test

    # Exit program
    halt
