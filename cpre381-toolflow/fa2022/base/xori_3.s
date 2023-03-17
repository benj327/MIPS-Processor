#xori

add $t1, $t1, 0x55FF0500
xori $t1, 0xAA0FFF00

#should be FFF0FA00, this checks all combinatiosn of xoring 1,1 1,0 0,1 and 0,0

#works
halt
