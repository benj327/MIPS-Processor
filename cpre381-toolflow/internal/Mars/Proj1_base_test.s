addi $t1, $0, 1
add $t2, $0, $t1
addiu $t3, $t2, 20
addu $t3, $t3, $t2
and $t4, $t3, $t2
andi $t4, $t2, 10000
sub $t0, $t3, $t1
subu $t0, $t3, 10
not $t4, $t2
nor $t5, $t4, $t1
xor $t5, $t4, $t3 
xori $t3, $t3, 53
or $t3, $t3, 70
ori $t1, $t1, 10
slt $t6, $t3, $t1
slti $t2, $0, 1
sll $t2, $t2, 2
srl $t3, $t2, 2
sra $t3, $t2, 2
sw $t3, 0($t1)
sub $t1, $t1, $t1
addi $t1, $0, 1
beq $t1, $t2, newB 
addi $t1, $t1, 1
newB:
bne $t1, $0, newBT
addi $t1, $t1, 1
newBT:
jal jumpo
j last
addi $t1, $t1, 10
last:
repl.qb $t0, 0x7F
movn $t1, $t3, $t2

jumpo:
jr $ra 
