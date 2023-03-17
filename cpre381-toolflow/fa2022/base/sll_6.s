.data
.text
.globl main

# Test common case of shift left logical by ensuring zeros are inserted from the right

main:
    # Start Test
    addi $2, $0, 0x80000000
    sll $1, $2, 1      # verify that sll inserts zeros from the right

    addi $2, $0, 0xFFFFFFFE
    sll $1, $2, 31      # verify that sll inserts zeros from the right
    # End Test

    # Exit program
    halt
