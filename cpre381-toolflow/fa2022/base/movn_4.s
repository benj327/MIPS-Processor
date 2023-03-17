.data
.text
.globl main

# This test ensures that the instruction cannot work in the case of the conditional bit having a value of zero
# Hence preventing any unwanted changes being made to the value if designated by a control signal

main:

li $t1, 65535
li $t2, 65530

movn $t1, $t2, $0

movn $t2, $t1, $0

halt
