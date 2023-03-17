addi $t0, $0, 1
addi $t1, $0, 2
addi $t2, $0, 1



# beq
	beq $t0, $t2, beqend
	addi $t3, $0, 0
beqend:	addi $t3, $0, 1



# bne
	bne $t0, $t1, bneend
	addi $t4, $0, 0
bneend:	addi $t4, $0, 1



# j, jal, jr
	jal jalmid
	addi $t6, $0, 1
	j jalend
jalmid: addi $t5, $0, 1
	jr $ra
jalend: addi $t7, $0, 1



# Clearing previous registers
nop
nop
andi $t3, $t3, 0
andi $t4, $t4, 0
andi $t5, $t5, 0
andi $t6, $t6, 0
andi $t7, $t7, 0
nop
nop



# Combinational case test
	beq $t0, $t2, beqend_combo
	ori $t3, $0, 1
beqend_combo:	bne $t0, $t1, bneend_combo
	ori $t3, $0, 2
bneend_combo:	jal jalmid_combo
	ori $t3, $0, 3
	j jalend_combo
jalmid_combo: ori $t3, $0, 4
	jr $ra
jalend_combo: ori $t3, $0, 5



li $v0, 10
syscall
