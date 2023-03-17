# verify that addiu can add a value from an existing register
addiu $t0, $zero, 0x4	# initialize $t0 to 0x4
addiu $t1, $t0, 0x4	# perform $t0 + 0x4 and store the result into register $t1
halt
