.data
.text
.globl main

# Test common case of shift left logical by shifting 0x00000001 1 to 31 bits to the left using sll
# Ensures basic functionality of sll

main:
    # Start Test
    addi $2, $0, 1

    sll $1, $2, 1      # verify that one can shift a register 1 bits using an imm shamt shamt

    sll $1, $2, 2      # verify that one can shift a register 2 bits using an imm shamt shamt

    sll $1, $2, 3      # verify that one can shift a register 3 bits using an imm shamt shamt

    sll $1, $2, 4      # verify that one can shift a register 4 bits using an imm shamt shamt

    sll $1, $2, 5      # verify that one can shift a register 5 bits using an imm shamt shamt

    sll $1, $2, 6      # verify that one can shift a register 6 bits using an imm shamt shamt

    sll $1, $2, 7      # verify that one can shift a register 7 bits using an imm shamt shamt

    sll $1, $2, 8      # verify that one can shift a register 8 bits using an imm shamt shamt

    sll $1, $2, 9      # verify that one can shift a register 9 bits using an imm shamt shamt

    sll $1, $2, 10      # verify that one can shift a register 10 bits using an imm shamt shamt

    sll $1, $2, 11      # verify that one can shift a register 11 bits using an imm shamt shamt

    sll $1, $2, 12      # verify that one can shift a register 12 bits using an imm shamt shamt

    sll $1, $2, 13      # verify that one can shift a register 13 bits using an imm shamt shamt

    sll $1, $2, 14      # verify that one can shift a register 14 bits using an imm shamt shamt

    sll $1, $2, 15      # verify that one can shift a register 15 bits using an imm shamt shamt

    sll $1, $2, 16      # verify that one can shift a register 16 bits using an imm shamt shamt

    sll $1, $2, 17      # verify that one can shift a register 17 bits using an imm shamt shamt

    sll $1, $2, 18      # verify that one can shift a register 18 bits using an imm shamt shamt

    sll $1, $2, 19      # verify that one can shift a register 19 bits using an imm shamt shamt

    sll $1, $2, 20      # verify that one can shift a register 20 bits using an imm shamt shamt

    sll $1, $2, 21      # verify that one can shift a register 21 bits using an imm shamt shamt

    sll $1, $2, 22      # verify that one can shift a register 22 bits using an imm shamt shamt

    sll $1, $2, 23      # verify that one can shift a register 23 bits using an imm shamt shamt

    sll $1, $2, 24      # verify that one can shift a register 24 bits using an imm shamt shamt

    sll $1, $2, 25      # verify that one can shift a register 25 bits using an imm shamt shamt

    sll $1, $2, 26      # verify that one can shift a register 26 bits using an imm shamt shamt

    sll $1, $2, 27      # verify that one can shift a register 27 bits using an imm shamt shamt

    sll $1, $2, 28      # verify that one can shift a register 28 bits using an imm shamt shamt

    sll $1, $2, 29      # verify that one can shift a register 29 bits using an imm shamt shamt

    sll $1, $2, 30      # verify that one can shift a register 30 bits using an imm shamt shamt

    sll $1, $2, 31      # verify that one can shift a register 31 bits using an imm shamt shamt
    # End Test

    # Exit program
    halt
