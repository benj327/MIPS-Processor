.data
.text
.globl main

# Test common case of a no op instruction
# Ensures most common no op instruction doesnt change any states

main:
    # Start Test
    addi $1, $0, 1
    sll $1, $1, 0      # verify that register does not change
    addi $1, $0, 1
    sll $0, $1, 0      # verify that register does not change
    sll $2, $1, 0      # verify that register does not change
    sll $3, $1, 0      # verify that register does not change
    sll $4, $1, 0      # verify that register does not change
    sll $5, $1, 0      # verify that register does not change
    sll $6, $1, 0      # verify that register does not change
    sll $7, $1, 0      # verify that register does not change
    sll $8, $1, 0      # verify that register does not change
    sll $9, $1, 0      # verify that register does not change
    sll $10, $1, 0      # verify that register does not change
    sll $11, $1, 0      # verify that register does not change
    sll $12, $1, 0      # verify that register does not change
    sll $13, $1, 0      # verify that register does not change
    sll $14, $1, 0      # verify that register does not change
    sll $15, $1, 0      # verify that register does not change
    sll $16, $1, 0      # verify that register does not change
    sll $17, $1, 0      # verify that register does not change
    sll $18, $1, 0      # verify that register does not change
    sll $19, $1, 0      # verify that register does not change
    sll $20, $1, 0      # verify that register does not change
    sll $21, $1, 0      # verify that register does not change
    sll $22, $1, 0      # verify that register does not change
    sll $23, $1, 0      # verify that register does not change
    sll $24, $1, 0      # verify that register does not change
    sll $25, $1, 0      # verify that register does not change
    sll $26, $1, 0      # verify that register does not change
    sll $27, $1, 0      # verify that register does not change
    sll $28, $1, 0      # verify that register does not change
    sll $29, $1, 0      # verify that register does not change
    sll $30, $1, 0      # verify that register does not change
    sll $31, $1, 0      # verify that register does not change\
    # End Test

    # Exit program
    halt
