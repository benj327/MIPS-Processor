#this is a simple test for the jump instruction
#seeing if a basic jump can be made
.data
str0: .asciiz "basic jump successful"
str1: .asciiz "jump failed"

.text
.globl main

main:
	j jump
	li $v0, 4
	la $a0, str1
	syscall

jump:
	li $v0, 4
	la $a0, str0
	syscall
	
	li $v0, 10
	syscall
	halt