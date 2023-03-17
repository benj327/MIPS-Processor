.data
.text
.globl main

main:
#test that sub works in cases where operands are equal
sub $1, $0, $0
sub $2, $0, $0
sub $3, $0, $0
sub $4, $0, $0
sub $5, $0, $0
sub $6, $0, $0
sub $7, $0, $0
sub $8, $0, $0
sub $9, $0, $0
sub $10, $0, $0

#registers 1-10 should be reset
halt
