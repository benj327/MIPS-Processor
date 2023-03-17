.data
.text
.globl main



# This test will verify that you can set a register to a value and then can use that register again
# to give another register a value. (Assign a to 1, using A to give B A's value.)

main:

li $t1, 1
li $t2, 2
li $sp, 0

movn $t2, $t1, $t1

movn $s0, $t2, $sp


halt
