.data
.text
.globl main
main:
    # Start Test  
    #This test is important because it shows that you can clear every applicable register using nor
    nor $31 $0 $0 #preset register that will be used to clear
    
    #Each register should be 0x00000000
              
    nor $0 $31 $0 # verify that one can clear registers they are supposed to
    nor $1 $31 $0 # verify that one can clear registers they are supposed to
    nor $2 $31 $0 # verify that one can clear registers they are supposed to
    nor $3 $31 $0 # verify that one can clear registers they are supposed to
    nor $4 $31 $0 # verify that one can clear registers they are supposed to
    nor $5 $31 $0 # verify that one can clear registers they are supposed to
    nor $6 $31 $0 # verify that one can clear registers they are supposed to
    nor $7 $31 $0 # verify that one can clear registers they are supposed to
    nor $8 $31 $0 # verify that one can clear registers they are supposed to
    nor $9 $31 $0 # verify that one can clear registers they are supposed to
    
    nor $10 $31 $0 # verify that one can clear registers they are supposed to
    nor $11 $31 $0 # verify that one can clear registers they are supposed to
    nor $12 $31 $0 # verify that one can clear registers they are supposed to
    nor $13 $31 $0 # verify that one can clear registers they are supposed to
    nor $14 $31 $0 # verify that one can clear registers they are supposed to
    nor $15 $31 $0 # verify that one can clear registers they are supposed to
    nor $16 $31 $0 # verify that one can clear registers they are supposed to
    nor $17 $31 $0 # verify that one can clear registers they are supposed to
    nor $18 $31 $0 # verify that one can clear registers they are supposed to
    nor $19 $31 $0 # verify that one can clear registers they are supposed to
    
    nor $20 $31 $0 # verify that one can clear registers they are supposed to
    nor $21 $31 $0 # verify that one can clear registers they are supposed to
    nor $22 $31 $0 # verify that one can clear registers they are supposed to
    nor $23 $31 $0 # verify that one can clear registers they are supposed to
    nor $24 $31 $0 # verify that one can clear registers they are supposed to
    nor $25 $31 $0 # verify that one can clear registers they are supposed to
    nor $26 $31 $0 # verify that one can clear registers they are supposed to
    nor $27 $31 $0 # verify that one can clear registers they are supposed to
    nor $28 $31 $0 # verify that one can clear registers they are supposed to
    nor $29 $31 $0 # verify that one can clear registers they are supposed to
    
    nor $30 $31 $0 # verify that one can clear registers they are supposed to
    nor $31 $31 $0 # verify that one can clear registers they are supposed to
      
    # End Test

    # Exit program
    halt
