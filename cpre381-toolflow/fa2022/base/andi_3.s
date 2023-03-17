.data
.text
.globl main
main:
# start test
# This test is testing the range of operand
# assuming only 16 bit immediate values are being added
addi $a0,$zero, 0x1111 # loading value into register for testing purposes
andi $a1, $a0, 0x0000 # veryifying that and operation works, result should be same as immediate input
andi $a2, $a0, 0x0001 # veryifying that and operation works, result should be same as immediate input
andi $a3, $a0, 0x0010 # veryifying that and operation works, result should be same as immediate input
andi $t0, $a0, 0x0011 # veryifying that and operation works, result should be same as immediate input
andi $t1, $a0, 0x0100 # veryifying that and operation works, result should be same as immediate input
andi $t2, $a0, 0x0101 # veryifying that and operation works, result should be same as immediate input
andi $t3, $a0, 0x0110 # veryifying that and operation works, result should be same as immediate input
andi $t4, $a0, 0x0111 # veryifying that and operation works, result should be same as immediate input
andi $t5, $a0, 0x1000 # veryifying that and operation works, result should be same as immediate input
andi $t6, $a0, 0x1001 # veryifying that and operation works, result should be same as immediate input
andi $t7, $a0, 0x1010 # veryifying that and operation works, result should be same as immediate input
andi $s0, $a0, 0x1011 # veryifying that and operation works, result should be same as immediate input
andi $s1, $a0, 0x1100 # veryifying that and operation works, result should be same as immediate input
andi $s2, $a0, 0x1101 # veryifying that and operation works, result should be same as immediate input
andi $s3, $a0, 0x1111 # veryifying that and operation works, result should be same as immediate input

# end test

# Exit program
halt
