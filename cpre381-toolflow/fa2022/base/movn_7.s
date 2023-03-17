.data
.text
.globl main
main:
    addi $30, $0, 10
    addi $1, $0, 5
    # Start Test 2
    movn $1, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $2, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $3, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $4, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $5, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $6, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $7, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $8, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $9, $30, $zero   # verify that the command fails, since the third register command has a value of 0
    movn $10, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $11, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $12, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $13, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $14, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $15, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $16, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $17, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $18, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $19, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $20, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $21, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $22, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $23, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $24, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $25, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $26, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $27, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $28, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $29, $30, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $30, $1, $zero    # verify that the command fails, since the third register command has a value of 0
    movn $31, $1, $zero    # verify that the command fails, since the third register command has a value of 0

    # End Test 2

    # Exit program
    halt
