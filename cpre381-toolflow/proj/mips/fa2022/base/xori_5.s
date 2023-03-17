#xori

#this test all cases of the intermediate length.

add $t2, $t2, 0x5
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

add $t2, $t2, 0x55
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

add $t2, $t2, 0x555
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

add $t2, $t2, 0x5555
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

add $t2, $t2, 0x55555
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

add $t2, $t2, 0x555555
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

add $t2, $t2, 0x5555555
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

add $t2, $t2, 0x55555555
xori $t1, $t2, 0xAAAAAAAA

andi $t1, 0x00000000
andi $t2, 0x00000000

halt
