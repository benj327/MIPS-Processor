.data
.text
.globl main
main:
    # Start Test
    addi $t0, $0, 0x4123    
    sra $t0, $t0, 0 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4321    
    sra $t0, $t0, 1 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4111     
    sra $t0, $t0, 2 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 3 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 4 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 5 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 6 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 7 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4312     
    sra $t0, $t0, 8 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 9 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 10 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4512    
    sra $t0, $t0, 11 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 12 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4512     
    sra $t0, $t0, 12 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4000     
    sra $t0, $t0, 13 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4123     
    sra $t0, $t0, 14 #check that shift right works with all shift amounts with positive number in register
    addi $t0, $0, 0x4647    
    sra $t0, $t0, 15 #check that shift right works with all shift amounts with 16 bit positive number in register
    addi $t0, $0, 0x4647    
    sra $t0, $t0, 16 #check that shift right works with all shift amounts with 16 bit positive number in register
  
    
   
    # End Test

    # Exit program
    halt
