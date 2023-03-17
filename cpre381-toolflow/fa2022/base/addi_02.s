# addi Stress Test 3
.data
.text
.globl main

main:
#This test is to check if addi can switch between a positive and negative value successively without issue, in this case we will try 3 pairs

#Start Test
addi $t0,$t0,0 #Make sure test register is set to zero initially
addi $t0,$t0,1000 #Set to positive value
addi $t0,$t0, -1200 #Switch to negative value
addi $t0,$t0, 1200 #Switch back to positive value (2nd try)
addi $t0,$t0, -1200 #Switch back to negative value (2nd try)
addi $t0,$t0, 1200 #Switch back to positive value (3rd try)
addi $t0,$t0, -1200 #Switch back to negative value (3rd try)

#Should switch between 0x000003E8 and 0xffffff38
#End Test

#Exit Program
halt
