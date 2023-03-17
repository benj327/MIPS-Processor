.data
.text 
.globl main
main: 
#Start Test Case
addi $t0, $t0, -2    # assigning a negative value to $t0
addi $t1, $t1, -3    # assigning a negative value to $t1
addu $s0, $t1, $t0   # should over flow, but addu will control this

halt
