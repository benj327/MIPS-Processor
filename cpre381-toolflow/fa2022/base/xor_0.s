.data
.text
.globl main
main:
#Start test
#Need to test the 3 different types of xor:
#xor t1, t2, t3
#xor t1, t2, 16-bit imm
#xor t1, 16-bit unsigned imm

#Test 1:
li $t1, 0xFFFFFFFF
li $t2, 0xABCDFFFF
xor $t3, $t1, $t2 

#Test 2:
li $t4, 0xFFFF0001
xor $t5, $t4, 0xABCD 

#Test 3:
li $t6, 0x01234567
xor $t6, 0xFFFF
    # End Test

    # Exit program
    halt
