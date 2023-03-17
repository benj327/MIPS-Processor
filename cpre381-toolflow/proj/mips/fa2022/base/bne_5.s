.data
str: .asciiz "This should not happen"
.text
.globl main
main:
#testing bne with negative numbers
li $t1, -12345
li $t2, -12345
bne $t1, $t2, exit #test with two registers with negative values
la $a0, str #should not get here

exit:
halt
