.data
.text
.globl main
main:
###
### Toggling every other bit on all of the registers to make sure they each can toggle correctly..
### This makes sure that  a nor can work as a one of those parity checks. Its in a slightly different variety to the others. 
###
li $1, 0xAAAAAAAA #0x1010101010101010101010101010101010

nor $1,$0,$1 #make sure positive case works on all registers
nor $2,$2,$1 #make sure positive case works on all registers
nor $3,$3,$1 #make sure positive case works on all registers
nor $4,$4,$1 #make sure positive case works on all registers
nor $5,$4,$1 #make sure positive case works on all registers
nor $6,$5,$1 #make sure positive case works on all registers
nor $7,$6,$1 #make sure positive case works on all registers
nor $8,$7,$1 #make sure positive case works on all registers
nor $9,$8,$1 #make sure positive case works on all registers
nor $10,$9,$1 #make sure positive case works on all registers
nor $11,$10,$1 #make sure positive case works on all registers
nor $12,$11,$1 #make sure positive case works on all registers
nor $13,$12,$1 #make sure positive case works on all registers
nor $14,$13,$1 #make sure positive case works on all registers
nor $15,$13,$1 #make sure positive case works on all registers
nor $16,$15,$1 #make sure positive case works on all registers
nor $17,$16,$1 #make sure positive case works on all registers
nor $18,$17,$1 #make sure positive case works on all registers
nor $19,$18,$1 #make sure positive case works on all registers
nor $20,$19,$1 #make sure positive case works on all registers
nor $21,$20,$1 #make sure positive case works on all registers
nor $22,$21,$1 #make sure positive case works on all registers
nor $23,$22,$1 #make sure positive case works on all registers
nor $24,$23,$1 #make sure positive case works on all registers
nor $25,$24,$1 #make sure positive case works on all registers
nor $26,$25,$1 #make sure positive case works on all registers
nor $27,$26,$1 #make sure positive case works on all registers
nor $28,$27,$1 #make sure positive case works on all registers
nor $29,$28,$1 #make sure positive case works on all registers
nor $30,$29,$1 #make sure positive case works on all registers
nor $31,$30,$1 #make sure positive case works on all registers


##0x0101010101010101010101010101010101
li $1, 0x55555555
nor $1,$0,$1 #make sure positive case works on all registers
nor $2,$2,$1 #make sure positive case works on all registers
nor $3,$3,$1 #make sure positive case works on all registers
nor $4,$4,$1 #make sure positive case works on all registers
nor $5,$4,$1 #make sure positive case works on all registers
nor $6,$5,$1 #make sure positive case works on all registers
nor $7,$6,$1 #make sure positive case works on all registers
nor $8,$7,$1 #make sure positive case works on all registers
nor $9,$8,$1 #make sure positive case works on all registers
nor $10,$9,$1 #make sure positive case works on all registers
nor $11,$10,$1 #make sure positive case works on all registers
nor $12,$11,$1 #make sure positive case works on all registers
nor $13,$12,$1 #make sure positive case works on all registers
nor $14,$13,$1 #make sure positive case works on all registers
nor $15,$13,$1 #make sure positive case works on all registers
nor $16,$15,$1 #make sure positive case works on all registers
nor $17,$16,$1 #make sure positive case works on all registers
nor $18,$17,$1 #make sure positive case works on all registers
nor $19,$18,$1 #make sure positive case works on all registers
nor $20,$19,$1 #make sure positive case works on all registers
nor $21,$20,$1 #make sure positive case works on all registers
nor $22,$21,$1 #make sure positive case works on all registers
nor $23,$22,$1 #make sure positive case works on all registers
nor $24,$23,$1 #make sure positive case works on all registers
nor $25,$24,$1 #make sure positive case works on all registers
nor $26,$25,$1 #make sure positive case works on all registers
nor $27,$26,$1 #make sure positive case works on all registers
nor $28,$27,$1 #make sure positive case works on all registers
nor $29,$28,$1 #make sure positive case works on all registers
nor $30,$29,$1 #make sure positive case works on all registers
nor $31,$30,$1 #make sure positive case works on all registers


halt
