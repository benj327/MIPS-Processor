.data
.text
.globl main


# This test verifies that 'movn' can set a register to a new value when the register in the
# third position is not equal to 0.

main:

li $t1, 1

movn $t2, $t1, $t1

movn $28, $t1, $t1

movn $29, $t1, $t1

movn $31, $t1, $t1

halt
