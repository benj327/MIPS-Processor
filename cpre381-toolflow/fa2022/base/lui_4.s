.data
.text
.globl main
main:
# Start Test
lui $0, 65535  # try passing to every single register, even the ones that dont want it
lui $1, 65535
lui $2, 65535
lui $3, 65535
lui $4, 65535
lui $5, 65535
lui $6, 65535
lui $7, 65535

lui $8, 65535 
lui $9, 65535
lui $10, 65535
lui $11, 65535
lui $12, 65535
lui $13, 65535
lui $14, 65535
lui $15, 65535

lui $16, 65535 
lui $17, 65535
lui $18, 65535
lui $19, 65535
lui $20, 65535
lui $21, 65535
lui $22, 65535
lui $23, 65535

lui $24, 65535 
lui $25, 65535
lui $26, 65535
lui $27, 65535
lui $28, 65535
lui $29, 65535
lui $30, 65535
lui $31, 65535

# End Test

# Exit program
halt
