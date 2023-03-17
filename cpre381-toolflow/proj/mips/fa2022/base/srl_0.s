.data
.text
.globl main
main:
    # Start Test
    addi $1, $0, 0xFFFFFFFF     # set $1 to all f  
    srl  $2, $1, 0     # verify that one can do a noop operation   
    srl  $3, $1, 1     # verify that one can shift correctly by 1 bit 
    srl  $4, $1, 2     # verify that one can shift correctly by 2 bits  
    srl  $5, $1, 3     # verify that one can shift correctly by 3 bits 
    srl  $6, $1, 4     # verify that one can shift correctly by 4 bits  
    srl  $7, $1, 5     # verify that one can shift correctly by 5 bits  
    srl  $8, $1, 6     # verify that one can shift correctly by 6 bits  
    srl  $9, $1, 7     # verify that one can shift correctly by 7 bits  
    srl  $10, $1, 8     # verify that one can shift correctly by 8 bits  
    srl  $11, $1, 9     # verify that one can shift correctly by 9 bits  
    srl  $12, $1, 10     # verify that one can shift correctly by 10 bits  
    srl  $13, $1, 11     # verify that one can shift correctly by 11 bits 
    srl  $14, $1, 12     # verify that one can shift correctly by 12 bits  
    srl  $15, $1, 13     # verify that one can shift correctly by 13 bits   
    srl  $16, $1, 14     # verify that one can shift correctly by 14 bits  
    srl  $17, $1, 15     # verify that one can shift correctly by 15 bits  
    srl  $18, $1, 16     # verify that one can shift correctly by 16 bits  
    srl  $19, $1, 17     # verify that one can shift correctly by 17 bits  
    srl  $20, $1, 18     # verify that one can shift correctly by 18 bits  
    srl  $21, $1, 19     # verify that one can shift correctly by 19 bits  
    srl  $22, $1, 20     # verify that one can shift correctly by 20 bits 
    srl  $23, $1, 21     # verify that one can shift correctly by 21 bits  
    srl  $24, $1, 22     # verify that one can shift correctly by 22 bits  
    srl  $25, $1, 23     # verify that one can shift correctly by 23 bits  
    srl  $8, $1, 24     # verify that one can shift correctly by 24 bits  
    srl  $9, $1, 25     # verify that one can shift correctly by 25 bits  
    srl  $10, $1, 26    # verify that one can shift correctly by 26 bits  
    srl  $11, $1, 27     # verify that one can shift correctly by 27 bits  
    srl  $12, $1, 28     # verify that one can shift correctly by 28 bits 
    srl  $13, $1, 29     # verify that one can shift correctly by 29 bits  
    srl  $14, $1, 30     # verify that one can shift correctly by 30 bits  
    srl  $15, $1, 31     # verify that one can shift correctly by 31 bits  
#This covers all tests for srl 
   
    # End Test

    # Exit program
    halt
