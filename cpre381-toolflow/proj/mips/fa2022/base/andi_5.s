.data
.text
.globl main
main:
# start test
# This test is testing the overflow (I don't think andi function can overflow)
lui $a0, 0x1111 # Loading upper part of register to be all ones
addi $a0,$a0, 0x1111 # loading value into register for testing purposes (should be all ones)
andi $t1, $a0, 0x11111111 # attempting overflow, don't think it is possible since this is just an AND operand


# end test

# Exit program
halt
