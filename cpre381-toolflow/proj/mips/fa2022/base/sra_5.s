##CPRE 381 Homework 5
##Patrick O'Brien 
##March 10, 2022
##Problem 1
##Tasked with stress testing the mips processor using the sra instruction. 

##		TEST 3		##

## This test is to continually shift a register by 1 and undate itself
## the number is signed, should extend with 1's
## halfway through the test a srl instruction will place a 0 at the most significant bit
#the rest of the instructions should shift with zeros
addi $t1, $0, 0x87654321

sra $t1, $t1, 1 
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1

srl $t1, $t1, 1

sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
sra $t1, $t1, 1
halt
