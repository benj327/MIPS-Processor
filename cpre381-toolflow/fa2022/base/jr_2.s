.data
.text
.globl main
main:

jal target
halt



target:

addi $1, $zero, 1   #can program still jump back to orignal correct spot after performing many other operations
addi $1, $zero, 0 
addi $2, $zero, 1  #puts a value of 1 into a register than clears it
addi $2, $zero, 0
addi $3, $zero, 1
addi $3, $zero, 0
addi $4, $zero, 1
addi $4, $zero, 0
addi $5, $zero, 1
addi $5, $zero, 0
addi $6, $zero, 1
addi $6, $zero, 0
addi $7, $zero, 1
addi $7, $zero, 0
addi $8, $zero, 1
addi $8, $zero, 0
addi $9, $zero, 1
addi $9, $zero, 0
addi $10, $zero, 1
addi $10, $zero, 0
addi $11, $zero, 1
addi $11, $zero, 0
addi $12, $zero, 1
addi $12, $zero, 0
addi $13, $zero, 1
addi $13, $zero, 0
addi $14, $zero, 1
addi $14, $zero, 0
addi $15, $zero, 1
addi $15, $zero, 0
addi $16, $zero, 1
addi $16, $zero, 0
addi $17, $zero, 1
addi $17, $zero, 0
jr $ra
addi $1, $0, 10
halt
