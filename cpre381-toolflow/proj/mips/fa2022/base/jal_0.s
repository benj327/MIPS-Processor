# testing common case for jumping to another section of code
	.data 
 
	.text 
	.globl main
main:
	jal test
 	
test: 
	addi $t1, $zero, 1
	

halt
