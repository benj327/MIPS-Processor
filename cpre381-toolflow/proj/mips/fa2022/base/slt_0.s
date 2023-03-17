#Author: Matthew Koeser
#March 10, 2022
#instruction under test: slt

#Values used: 
#load 0 into t0
addi $t0,$0, 0


#test
slt $t1, $zero, $t0 #Make sure that $0 is not less than 0, should return 0

halt
