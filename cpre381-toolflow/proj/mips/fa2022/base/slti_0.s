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
    
    # Start Test
    slti $11, $1, 1	# verify that register can be set to 1 if 0<1
    slti $12, $2, 1	# verify that register can be set to 1 if 0<1
    slti $13, $3, 1	# verify that register can be set to 1 if 0<1
    slti $14, $4, 1	# verify that register can be set to 1 if 0<1
    slti $15, $5, 1	# verify that register can be set to 1 if 0<1
    slti $16, $6, 1	# verify that register can be set to 1 if 0<1
    slti $17, $7, 1	# verify that register can be set to 1 if 0<1
    slti $18, $8, 1	# verify that register can be set to 1 if 0<1
    slti $19, $9, 1	# verify that register can be set to 1 if 0<1
    slti $20, $10, 1	# verify that register can be set to 1 if 0<1
        
    # End Test

    # Exit program
    halt
