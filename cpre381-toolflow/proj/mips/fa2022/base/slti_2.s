.data
.text
.globl main
main:
    addi $1, $0, 0 
    addi $2, $0, 0     
    addi $3, $0, 0     
    addi $4, $0, 0    
    addi $5, $0, 0    
    addi $6, $0, 0     
    addi $7, $0, 0     
    addi $8, $0, 0      
    addi $9, $0, 0   
    addi $10, $0, 0  # need to put initial value into registers to test
    
    # Start Test - edge cases
    slti $11, $1, 0	# verify that register can be set to 0 if 0!<0
    slti $12, $2, 0	# verify that register can be set to 0 if 0!<0
    slti $13, $3, 0	# verify that register can be set to 0 if 0!<0
    slti $14, $4, 0	# verify that register can be set to 0 if 0!<0
    slti $15, $5, 0	# verify that register can be set to 0 if 0!<0
    slti $16, $6, 0	# verify that register can be set to 0 if 0!<0
    slti $17, $7, 0	# verify that register can be set to 0 if 0!<0
    slti $18, $8, 0	# verify that register can be set to 0 if 0!<0
    slti $19, $9, 0	# verify that register can be set to 0 if 0!<0
    slti $20, $10, 0	# verify that register can be set to 0 if 0!<0
        
    # End Test

    # Exit program
    halt
