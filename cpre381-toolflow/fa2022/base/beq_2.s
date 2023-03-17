#test if branch works correctly when beq have two register with drastically different values.
#I am using addi and lui in this test case because I need to initialize my register with some values.
#addi is also used to see if beq is working correctly or not (whether addi runs or not).

.data
.text
.globl main
main:
addi $t0, $0, 0x0000 #set $t0 as a 0 value
lui $t1, 0x7fff #set $t1 as a extreamly big value.
addi $t1, $t1, 0xffff

beq $t0, $t1, branch #see if the 0 values $t0 and the extreamly big value $t1 will result in a branch.
addi $t2, $0, 2 #if beq works correctly, this will run
addi $t3, $0, 3 #if beq works correctly, this will run
branch:
    # Exit program
    halt
