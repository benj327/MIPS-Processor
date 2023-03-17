#this file is testing if the jump instruction can make multiple jumps
#going both forward and backwards in succession 

.data
str0: .asciiz "this tests ability to jump forward in backward\n"
str1: .asciiz "forward jump successful\n"
str2: .asciiz "backwards jump successful\n"
str3: .asciiz "finished\n"
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
	
jump2:
	li $v0, 4
	la $a0, str2
	syscall
	j jump3
	
	li $v0, 4
	la $a0, str4
	syscall

jump1:
	li $v0, 4
	la $a0, str1
	syscall
	j jump2
	
	li $v0, 4
	la $a0, str4
	syscall

jump4:
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 10
	syscall
	halt
		
jump3:
	li $v0, 4
	la $a0, str1
	syscall
	j jump4
	
	li $v0, 4
	la $a0, str4
	syscall