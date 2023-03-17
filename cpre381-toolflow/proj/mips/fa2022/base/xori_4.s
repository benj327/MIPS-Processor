#xori

add $t2, $t2, 0x55FF0500
xori $t1, $t2, 0xAA0FFF00

#should be FFF0FA00, this tests if the xori will xor a register and an intermediate and write them to a diffrent reg. 
halt
