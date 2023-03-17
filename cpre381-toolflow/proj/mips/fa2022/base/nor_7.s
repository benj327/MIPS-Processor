.data
.text
.globl main
main:
#
#basic test to make sure that each register can xor zero. Should all be F's, then second test should all be zeroes
# This makes sure that each register can actually do a nor correctly.
#

nor $1,$0,$0 #make sure positive case works on all registers
nor $2,$0,$0 #make sure positive case works on all registers
nor $3,$0,$0 #make sure positive case works on all registers
nor $4,$0,$0 #make sure positive case works on all registers
nor $5,$0,$0 #make sure positive case works on all registers
nor $6,$0,$0 #make sure positive case works on all registers
nor $7,$0,$0 #make sure positive case works on all registers
nor $8,$0,$0 #make sure positive case works on all registers
nor $9,$0,$0 #make sure positive case works on all registers
nor $10,$0,$0 #make sure positive case works on all registers
nor $11,$0,$0 #make sure positive case works on all registers
nor $12,$0,$0 #make sure positive case works on all registers
nor $13,$0,$0 #make sure positive case works on all registers
nor $14,$0,$0 #make sure positive case works on all registers
nor $15,$0,$0 #make sure positive case works on all registers
nor $16,$0,$0 #make sure positive case works on all registers
nor $17,$0,$0 #make sure positive case works on all registers
nor $18,$0,$0 #make sure positive case works on all registers
nor $19,$0,$0 #make sure positive case works on all registers
nor $20,$0,$0 #make sure positive case works on all registers
nor $21,$0,$0 #make sure positive case works on all registers
nor $22,$0,$0 #make sure positive case works on all registers
nor $23,$0,$0 #make sure positive case works on all registers
nor $24,$0,$0 #make sure positive case works on all registers
nor $25,$0,$0 #make sure positive case works on all registers
nor $26,$0,$0 #make sure positive case works on all registers
nor $27,$0,$0 #make sure positive case works on all registers
nor $28,$0,$0 #make sure positive case works on all registers
nor $29,$0,$0 #make sure positive case works on all registers
nor $30,$0,$0 #make sure positive case works on all registers
nor $31,$0,$0 #make sure positive case works on all registers

##################
#should all be zeroes down here
li $1, 0xFFFFFFFF
#nor $1,$0,$0 #should be zero
nor $2,$0,$1 #should be zero
nor $3,$0,$1 #should be zero
nor $4,$0,$1 #should be zero
nor $5,$0,$1 #should be zero
nor $6,$0,$1 #should be zero
nor $7,$0,$1 #should be zero
nor $8,$0,$1 #should be zero
nor $9,$0,$1 #should be zero
nor $10,$0,$1 #should be zero
nor $11,$0,$1 #should be zero
nor $12,$0,$1 #should be zero
nor $13,$0,$1 #should be zero
nor $14,$0,$1 #should be zero
nor $15,$0,$1 #should be zero
nor $16,$0,$1 #should be zero
nor $17,$0,$1 #should be zero
nor $18,$0,$1 #should be zero
nor $19,$0,$1 #should be zero
nor $20,$0,$1 #should be zero
nor $21,$0,$1 #should be zero
nor $22,$0,$1 #should be zero
nor $23,$0,$1 #should be zero
nor $24,$0,$1 #should be zero
nor $25,$0,$1 #should be zero
nor $26,$0,$1 #should be zero
nor $27,$0,$1 #should be zero
nor $28,$0,$1 #should be zero
nor $29,$0,$1 #should be zero
nor $30,$0,$1 #should be zero
nor $31,$0,$1 #should be zero
nor $1, $0,$1

halt
