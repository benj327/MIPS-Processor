.data
.text

.globl main

main: 

addi $t1, $0, 0
addi $3, $0, 0
addi $4, $0, 0
addi $5, $0, 0
addi $6, $0, 0
addi $7, $0, 0
addi $8, $0, 0
addi $9, $0, 0

#testing to see if the register values change when compared to other registers.

#I choose to test these values that are on the edge such as 31 and 0.  This test the edge cases.
movn $0,$t1,$t1
movn $2,$3,$3
movn $3,$4,$4
movn $4,$5,$5
movn $5,$6,$6
movn $6,$7,$7
movn $7,$8,$8
movn $8,$9,$9
movn $31,$0,$31

#end test
halt
