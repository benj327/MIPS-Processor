.data
.text
.globl main
main:
	#Start Test
	addi $t1, $0, 0x00000001 # starting value
	sll $0, $t1, 1 # verifying that the sll instruction does not overwrite the constant 0 inside the $0 register
	sll $1, $t1, 1 # verifying that the sll instruction functions correctly on the $1 register
	sll $2, $t1, 1 # verifying that the sll instruction functions correctly on the $2 register
	sll $3, $t1, 1 # verifying that the sll instruction functions correctly on the $3 register
	sll $4, $t1, 1 # verifying that the sll instruction functions correctly on the $4 register
	sll $5, $t1, 1 # verifying that the sll instruction functions correctly on the $5 register
	sll $6, $t1, 1 # verifying that the sll instruction functions correctly on the $6 register
	sll $7, $t1, 1 # verifying that the sll instruction functions correctly on the $7 register
	sll $8, $t1, 1 # verifying that the sll instruction functions correctly on the $8 register
	sll $9, $t1, 1 # verifying that the sll instruction functions correctly on the $9 register
	addi $t1, $0, 0x00000001 # resetting value
	sll $10, $t1, 1 # verifying that the sll instruction functions correctly on the $10 register
	sll $11, $t1, 1 # verifying that the sll instruction functions correctly on the $11 register
	sll $12, $t1, 1 # verifying that the sll instruction functions correctly on the $12 register
	sll $13, $t1, 1 # verifying that the sll instruction functions correctly on the $13 register
	sll $14, $t1, 1 # verifying that the sll instruction functions correctly on the $14 register
	sll $15, $t1, 1 # verifying that the sll instruction functions correctly on the $15 register
	sll $16, $t1, 1 # verifying that the sll instruction functions correctly on the $16 register
	sll $17, $t1, 1 # verifying that the sll instruction functions correctly on the $17 register
	sll $18, $t1, 1 # verifying that the sll instruction functions correctly on the $18 register
	sll $19, $t1, 1 # verifying that the sll instruction functions correctly on the $19 register
	sll $20, $t1, 1 # verifying that the sll instruction functions correctly on the $20 register
	sll $21, $t1, 1 # verifying that the sll instruction functions correctly on the $21 register
	sll $22, $t1, 1 # verifying that the sll instruction functions correctly on the $22 register
	sll $23, $t1, 1 # verifying that the sll instruction functions correctly on the $23 register
	sll $24, $t1, 1 # verifying that the sll instruction functions correctly on the $24 register
	sll $25, $t1, 1 # verifying that the sll instruction functions correctly on the $25 register
	sll $26, $t1, 1 # verifying that the sll instruction functions correctly on the $26 register
	sll $27, $t1, 1 # verifying that the sll instruction functions correctly on the $27 register
	sll $28, $t1, 1 # verifying that the sll instruction functions correctly on the $28 register
	sll $29, $t1, 1 # verifying that the sll instruction functions correctly on the $29 register
	sll $30, $t1, 1 # verifying that the sll instruction functions correctly on the $30 register
	sll $31, $t1, 1 # verifying that the sll instruction functions correctly on the $31 register
	# End Test

    # Exit program
    halt
