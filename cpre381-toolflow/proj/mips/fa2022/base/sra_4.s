##CPRE 381 Homework 5
##Patrick O'Brien 
##March 10, 2022
##Problem 1
##Tasked with stress testing the mips processor using the sra instruction. 

##		TEST 2		##

## This test is to continually shift a register by 1 and undate itself
## the number is signed
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
