.data
str1: .asciiz "Enter the sequence number:\n"
.text
.globl main
main:
#Get n
li $v0, 4
la $a0, str1
# syscall
li $v0, 5 #$v0 = n
# syscall

li $s1, 0
beq $v0, $zero, exit

li $t0, 0 #prev1 = 0
li $s1, 1 #current Number


li $s0, 1 #i = 2
loop:
slt $t1, $s0, $v0
beq $t1, $zero, exit
add $t1, $t0, $zero #prev2 = prev1
add $t0, $s1, $zero #prev1 = curNum
add $s1, $t1, $t0 #curNum = prev1 + prev2
addi $s0, $s0, 1
j loop

exit:
# Print output
li $v0, 1
addi $a0, $s1, 0
syscall
# Exit program
halt
