.data
.text
.globl main
main:

    # Start Test 3

    addiu $31, $zero, 1  # setting reg 31 temporarily to the value 1, since movn will not work if the third register in the command is 0
    addiu $30, $zero, -10 # setting register 30 temporarily to the value 10, so that we can see when the value successfully moves

    movn $1, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $2, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $3, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $4, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $5, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $6, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $7, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $8, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $9, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $10, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $11, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $12, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $13, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $14, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $15, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $16, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $17, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $18, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $19, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $20, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $21, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $22, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $23, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $24, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $25, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $26, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $27, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $28, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $29, $30, $31    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0

    addiu $1, $zero, 1  # setting reg 1 temporarily to the value 1, since movn will not work if the third register in the command is 0
    addiu $2, $zero, -10 # setting register 2 temporarily to the value 10, so that we can see when the value successfully moves
    movn $30, $1, $2    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0
    movn $31, $1, $2    # verify that register 1 can have the value -10 moved into it from register 30, given register 31 is not equal to 0



    # End Test 3

        # Exit program
    halt
