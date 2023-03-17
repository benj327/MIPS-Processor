.data
.text
.globl main
main:
# start test
# This test is testing the exceptional behavior
addi $a0,$zero, 0x1111 # loading value into register for testing purposes
andi $zero, 0x1111 # Ensure that zero register can not be overwritten
andi $t1, $a0, 0x11111111 # Testing how processor handles 32 bit immediate input, should only take bottom 16 and zero extend
andi $zero, $zero, 0 # No-op
andi $t2, $a0, 0x10 # Testing how it handles less than 16 bit immediate, should zero extend all the way to 16 bits

# end test

# Exit program
halt
