# Testing beq and jal working together

	.data
	.text
	.globl main
main:
	jal test2					# Jump to test2
	halt
	
test1:
	halt
	addi $t0, $zero, 20			# Set $t0 = 20 if failure
	
test2:
	beq $zero, $zero, test1		# Branch to test1
        halt
