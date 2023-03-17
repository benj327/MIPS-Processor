#Author: Matthew Koeser
#March 10, 2022
#instruction under test: slt

#Values used: 
#load 0 into t0

addi $t2, $0, -5
addi $t3, $0, 2

#test
slt $t1, $t2, $t3#ensure that a negative number whose absolute value is greater than a positive number's absolute value, should return 1
halt
