.data
.text
.globl main
main:
    # Start Test
    addu $8, $0 0x00000000
    #
    # EDGE CASE TO SEE HOW HANDLES ROLLOVER if add negative, ADDU DOESN"T HAVE OVERFLOW
    #
    addu $1, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $2, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $3, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $4, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $5, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $6, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $7, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
       
    addu $9, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $10, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $11, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $12, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $13, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $14, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $15, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $16, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $17, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $18, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $19, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $20, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $21, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $22, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $23, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $24, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $25, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $26, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $27, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $28, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $29, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $30, $8, -1     # verify that one can clear registers and 0+0 works in the ALU   
    addu $31, $8, -1     # verify that one can clear registers and 0+0 works in the ALU 
    addu $8, $8, -1     # verify that one can clear registers and 0+0 works in the ALU
    # End Test

    # Exit program
    halt
