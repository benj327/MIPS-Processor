.data
.text
.globl main

main:
#verify that signed subtraction of a negative number acts as addition
addi $t1, $zero, 0 #reset $t1
lui $t0, 0xFFFF
addi $t0, $t0, 0xFFFF
sub $t1, $zero, $t0 #expected value in $t1 is 0x0001
sub $t1, $t1, $t0 # $t1 = 0x00000002
sub $t0, $t0, $t1 # $t0 = 0xFFFFFFFF - 0x0000002 = 0xFFFFFFFD
sub $t1, $t1, $t0 # $t1 = 0x00000002 + 3 = 0x00000005
sub $t0, $t0, $t1 # $t0 = 0xFFFFFFFD - 0x00000005 = 0xFFFFFFF8
sub $t1, $t1, $t0 # $t0 = 0x00000005 + 8 = 0x0000000D

halt
