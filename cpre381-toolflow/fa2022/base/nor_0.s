.data
.text
.globl main
main:
    # Start Test   
    #This test is important because it shows that you can set every applicable register using nor

	#Each register (except for $0) should be 0xFFFFFFFF

    nor $0 $0 $0 # verify that one can set registers they are supposed to
    nor $1 $0 $0 # verify that one can set registers they are supposed to
    nor $2 $0 $0 # verify that one can set registers they are supposed to
    nor $3 $0 $0 # verify that one can set registers they are supposed to
    nor $4 $0 $0 # verify that one can set registers they are supposed to
    nor $5 $0 $0 # verify that one can set registers they are supposed to
    nor $6 $0 $0 # verify that one can set registers they are supposed to
    nor $7 $0 $0 # verify that one can set registers they are supposed to
    nor $8 $0 $0 # verify that one can set registers they are supposed to
    nor $9 $0 $0 # verify that one can set registers they are supposed to
    
    nor $10 $0 $0 # verify that one can set registers they are supposed to
    nor $11 $0 $0 # verify that one can set registers they are supposed to
    nor $12 $0 $0 # verify that one can set registers they are supposed to
    nor $13 $0 $0 # verify that one can set registers they are supposed to
    nor $14 $0 $0 # verify that one can set registers they are supposed to
    nor $15 $0 $0 # verify that one can set registers they are supposed to
    nor $16 $0 $0 # verify that one can set registers they are supposed to
    nor $17 $0 $0 # verify that one can set registers they are supposed to
    nor $18 $0 $0 # verify that one can set registers they are supposed to
    nor $19 $0 $0 # verify that one can set registers they are supposed to
    
    nor $20 $0 $0 # verify that one can set registers they are supposed to
    nor $21 $0 $0 # verify that one can set registers they are supposed to
    nor $22 $0 $0 # verify that one can set registers they are supposed to
    nor $23 $0 $0 # verify that one can set registers they are supposed to
    nor $24 $0 $0 # verify that one can set registers they are supposed to
    nor $25 $0 $0 # verify that one can set registers they are supposed to
    nor $26 $0 $0 # verify that one can set registers they are supposed to
    nor $27 $0 $0 # verify that one can set registers they are supposed to
    nor $28 $0 $0 # verify that one can set registers they are supposed to
    nor $29 $0 $0 # verify that one can set registers they are supposed to
   
    nor $30 $0 $0 # verify that one can set registers they are supposed to
    nor $31 $0 $0 # verify that one can set registers they are supposed to
      
    # End Test

    # Exit program
    halt
