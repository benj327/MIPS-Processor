.data
.text
.globl main
main:
    # Start Test  
    #This test is important because it shows that the actuar logic nor part of the instruction is working
    
    lui $31 0xFF00		#Loading top half of first comparison register
    lui $30 0xFFFF		#Load second comparison register
    addi $31 $31 0x0000FF00	#Finish loading first comparision register
    
    #Each register (except for $30 and $31) should be 0x000000FF
    
              
    nor $0 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $1 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $2 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $3 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $4 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $5 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $6 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $7 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $8 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $9 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    
    nor $10 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $11 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $12 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $13 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $14 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $15 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $16 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $17 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $18 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $19 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    
    nor $20 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $21 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $22 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $23 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $24 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $25 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $26 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $27 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $28 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $29 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    
    nor $30 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
    nor $31 $31 $30 # verify that only the when the same bit in both inputs is zero that the ocorrosponding output bit will be asserted
      
    # End Test

    # Exit program
    halt
