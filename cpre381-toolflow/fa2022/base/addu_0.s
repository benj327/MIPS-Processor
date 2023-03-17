.data
.text
.globl main
main:
    # Start Test
    addu $8, $0 0xFFFFFFFF
    
    addu $1, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $2, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $3, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $4, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $5, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $6, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $7, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
       
    addu $9, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $10, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $11, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $12, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $13, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $14, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $15, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $16, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $17, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $18, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $19, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $20, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $21, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $22, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $23, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $24, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $25, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $26, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $27, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $28, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $29, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $30, $8, 9     # verify that one can clear registers and 0+0 works in the ALU   
    addu $31, $8, 9     # verify that one can clear registers and 0+0 works in the ALU 
    addu $8, $8, 9     # verify that one can clear registers and 0+0 works in the ALU
    # End Test

    # Exit program
    halt
