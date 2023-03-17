# ID/EX.RegisterRd = IF/ID.RegisterRs
addi $t0, $0, 255 # $t0 becomes 255
addi $t1, $t0, 255 # $t1 becomes 510

# ID/EX.RegisterRd = IF/ID.RegisterRt
addi $t2, $0, 255 # $t2 becomes 255
add $t3, $0, $t2 # $t3 becomes 255

# EX/MEM.RegisterRd = IF/ID.RegisterRs
addi $t4, $0, 255 # $t4 becomes 255
addi $t5, $0, 127 # $t5 becomes 127
addi $t5, $t4, 255 # $t5 becomes 382

# EX/MEM.RegisterRd = IF/ID.RegisterRt
addi $t6, $0, 255 # $t6 becomes 255
addi $t7, $0, 127 # $t7 becomes 127
add $t7, $0, $t6 # $t7 becomes 382



# Clearing previous registers
nop
nop
andi $t0, $t0, 0
andi $t1, $t1, 0
andi $t2, $t2, 0
andi $t3, $t3, 0
andi $t4, $t4, 0
andi $t5, $t5, 0
andi $t6, $t6, 0
andi $t7, $t7, 0
nop
nop



# Combinational case test

addi $t0, $0, 255 # $t0 becomes 255
addi $t1, $t0, 255 # $t1 becomes 510
addi $t1, $t0, 255 # $t1 stays 510
add $t2, $0, $t1 # $t3 becomes 510
add $t2, $0, $t1 # $t3 stays 510



li $v0, 10
syscall
