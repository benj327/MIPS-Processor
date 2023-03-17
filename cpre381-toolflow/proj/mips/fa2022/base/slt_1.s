#Author: Matthew Koeser
#March 10, 2022
#instruction under test: slt

#Values used: 
#load 0 into t0

addi $t2, $0, -5


#test

slt $t1, $t2, $zero #ensure that negative values are less than 0, should return 1

halt
