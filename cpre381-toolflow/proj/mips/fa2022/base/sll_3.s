.data
.text
.globl main
main:
	#Start Test
	addi $t1, $0, 1 # starting value
	sll $t2, $t1, 0 # verifying that the instructions does nothing when given a shift value of 0
	sll $t3, $t1, 1 # verifying that the instructions shift the value in register $t1 1 bit to the left when given 1
	sll $t4, $t1, 2 # verifying that the instructions shift the value in register $t1 2 bits to the left when given 2
	sll $t5, $t1, 3 # verifying that the instructions shift the value in register $t1 3 bits to the left when given 3
	sll $t6, $t1, 4 # verifying that the instructions shift the value in register $t1 4 bits to the left when given 4
	sll $t7, $t1, 5 # verifying that the instructions shift the value in register $t1 5 bits to the left when given 5
	sll $t2, $t1, 6 # verifying that the instructions shift the value in register $t1 6 bits to the left when given 6 and properly overwrites the Rd register
	sll $t3, $t1, 7 # verifying that the instructions shift the value in register $t1 7 bits to the left when given 7 and properly overwrites the Rd register
	sll $t4, $t1, 8 # verifying that the instructions shift the value in register $t1 8 bits to the left when given 8 and properly overwrites the Rd register
	sll $t5, $t1, 9 # verifying that the instructions shift the value in register $t1 9 bits to the left when given 9 and properly overwrites the Rd register
	sll $t6, $t1, 10 # verifying that the instructions shift the value in register $t1 10 bits to the left when given 10 and properly overwrites the Rd register
	sll $t7, $t1, 11 # verifying that the instructions shift the value in register $t1 11 bits to the left when given 11 and properly overwrites the Rd register
	sll $t2, $t1, 12 # verifying that the instructions shift the value in register $t1 12 bits to the left when given 12 and properly overwrites the Rd register
	sll $t3, $t1, 13 # verifying that the instructions shift the value in register $t1 13 bits to the left when given 13 and properly overwrites the Rd register
	sll $t4, $t1, 14 # verifying that the instructions shift the value in register $t1 14 bits to the left when given 14 and properly overwrites the Rd register
	sll $t5, $t1, 15 # verifying that the instructions shift the value in register $t1 15 bits to the left when given 15 and properly overwrites the Rd register
	sll $t6, $t1, 16 # verifying that the instructions shift the value in register $t1 16 bits to the left when given 16 and properly overwrites the Rd register
	sll $t7, $t1, 17 # verifying that the instructions shift the value in register $t1 17 bits to the left when given 17 and properly overwrites the Rd register
	sll $t2, $t1, 18 # verifying that the instructions shift the value in register $t1 18 bits to the left when given 18 and properly overwrites the Rd register
	sll $t3, $t1, 19 # verifying that the instructions shift the value in register $t1 19 bits to the left when given 19 and properly overwrites the Rd register
	sll $t4, $t1, 20 # verifying that the instructions shift the value in register $t1 20 bits to the left when given 20 and properly overwrites the Rd register
	sll $t5, $t1, 21 # verifying that the instructions shift the value in register $t1 21 bits to the left when given 21 and properly overwrites the Rd register
	sll $t6, $t1, 22 # verifying that the instructions shift the value in register $t1 22 bits to the left when given 22 and properly overwrites the Rd register
	sll $t7, $t1, 23 # verifying that the instructions shift the value in register $t1 23 bits to the left when given 23 and properly overwrites the Rd register
	sll $t2, $t1, 24 # verifying that the instructions shift the value in register $t1 24 bits to the left when given 24 and properly overwrites the Rd register
	sll $t3, $t1, 25 # verifying that the instructions shift the value in register $t1 25 bits to the left when given 25 and properly overwrites the Rd register
	sll $t4, $t1, 26 # verifying that the instructions shift the value in register $t1 26 bits to the left when given 26 and properly overwrites the Rd register
	sll $t5, $t1, 27 # verifying that the instructions shift the value in register $t1 27 bits to the left when given 27 and properly overwrites the Rd register
	sll $t6, $t1, 28 # verifying that the instructions shift the value in register $t1 28 bits to the left when given 28 and properly overwrites the Rd register
	sll $t7, $t1, 29 # verifying that the instructions shift the value in register $t1 29 bits to the left when given 29 and properly overwrites the Rd register
	sll $t2, $t1, 30 # verifying that the instructions shift the value in register $t1 30 bits to the left when given 30 and properly overwrites the Rd register
	sll $t3, $t1, 31 # verifying that the instructions shift the value in register $t1 31 bits to the left when given 31 and properly overwrites the Rd register
	# End Test

    # Exit program
    halt
