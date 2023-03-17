# addi Stress Test 1
.data
.text
.globl main


main:
#This test will add up to the upper integer limit for an immediate of the register from zero to make sure it can add up to that
#Start Test
addi $t0, $zero, 0  #Ensure test register is set to 0
addi $t0, $t0, 4294967295 # Immediate is (2^32)-1, max value of 32-bit int 
#End Test

#Exit Program
halt

