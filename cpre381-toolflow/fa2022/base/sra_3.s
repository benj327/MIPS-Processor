##CPRE 381 Homework 5
##Patrick O'Brien 
##March 10, 2022
##Problem 1
##Tasked with stress testing the mips processor using the sra instruction. 

##		TEST 1		##

## This test is to stress the processor by having it continually shift $s0 by $t1 >> imm
##The register $s0 will have to continually update with the new shifted value
addi $t1, $0, 0x12345678
sra $s0, $t1, 0
sra $s0, $t1, 1
sra $s0, $t1, 2
sra $s0, $t1, 3
sra $s0, $t1, 4
sra $s0, $t1, 5
sra $s0, $t1, 6
sra $s0, $t1, 7
sra $s0, $t1, 8
sra $s0, $t1, 9
sra $s0, $t1, 10
sra $s0, $t1, 11
sra $s0, $t1, 12
sra $s0, $t1, 13
sra $s0, $t1, 14
sra $s0, $t1, 15
sra $s0, $t1, 16
sra $s0, $t1, 17
sra $s0, $t1, 18
sra $s0, $t1, 19
sra $s0, $t1, 20
sra $s0, $t1, 21
sra $s0, $t1, 22
sra $s0, $t1, 23
sra $s0, $t1, 24
sra $s0, $t1, 25
sra $s0, $t1, 26
sra $s0, $t1, 27
sra $s0, $t1, 28
sra $s0, $t1, 29
sra $s0, $t1, 30
sra $s0, $t1, 31
halt
