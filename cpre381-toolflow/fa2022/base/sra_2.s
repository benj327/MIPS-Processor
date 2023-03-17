.data
.text
.globl main
main:
    # Start Test
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 16 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 17 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 18 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 19 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 20 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 21 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 22 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 23 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 24 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 25 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 26 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 27 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 28 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 29 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 30 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    lui $t0, 0xFEED
    addi $t0, $0, 0x8008     
    sra $t0, $t0, 31 #check that shift right works with all shift amounts on numbers that are more than 16 bits
    
  
    
   
    # End Test

    # Exit program
    halt
