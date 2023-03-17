##Test overflow, should end with 0x0000000
addi $s0, $s0, 0x7fffffff ##set max val
addi $s0, $s0, 0x1
addi $s0, $s0, 0x0fffffff
addi $s0, $s0, 0x70000000
addi $s0, $s0, 0x1
halt
