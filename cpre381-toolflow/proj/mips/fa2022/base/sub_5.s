.data
.text
.globl main

main:
#test that subtraction works in cases where rs > rt

li $t1, 0xFFFFFFFF
li $t2, 0x00000001
sub $t1, $t1, $t2 # $2 = 0xFFFFFFFE
sub $t1, $t1, $zero
li $t2, 0x0F000000
sub $t1, $t1, $t2 # $2 = 0xF0FFFFFE
li $t2, 0x0000F000
sub $t1, $t1, $t2 # $2 = 0xF0FF0FFE 

halt
