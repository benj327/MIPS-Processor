#This is a test to see if multiple jumps can be made in a row

.data
str0: .asciiz "this test should print all jumps in order\n"
str1: .asciiz "jump 1 successful\n"
str2: .asciiz "jump 2 successful\n"
str3: .asciiz "jump 3 successful\n"
str4: .asciiz "jump failed\n"

.text
.globl main

main:
	li $v0, 4
	la $a0, str0
	syscall
	j jump1
	
	li $v0, 4
	la $a0, str4
	syscall
	halt
	
	
jump1:
	li $v0, 4
	la $a0, str1
	syscall
	j jump2
	
	li $v0, 4
	la $a0, str4
	syscall
	
jump2:
	li $v0, 4
	la $a0, str2
	syscall
	j jump3
	
	li $v0, 4
	la $a0, str4
	syscall
	
jump3: 
	li $v0, 4
	la $a0, str3
	syscall
	halt
