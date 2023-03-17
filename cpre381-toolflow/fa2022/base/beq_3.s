.data
.text
.globl main
main:
	# test begin
	# this test will ensure that beq will never falsely equate two different values
	
	# set up register values
	# each one of these will test a specific bit in the 32 bit word
	addi	$1,$0,1
	sll	$2,$1,1
	sll	$3,$2,1
	sll	$4,$3,1
	sll	$5,$4,1
	sll	$6,$5,1
	sll	$7,$6,1
	sll	$8,$7,1
	sll	$9,$8,1
	sll	$10,$9,1
	sll	$11,$10,1
	sll	$12,$11,1
	sll	$13,$12,1
	sll	$14,$13,1
	sll	$15,$14,1
	sll	$16,$15,1
	sll	$17,$16,1
	sll	$18,$17,1
	sll	$19,$18,1
	sll	$20,$19,1
	sll	$21,$20,1
	sll	$22,$21,1
	sll	$23,$22,1
	sll	$24,$23,1
	sll	$25,$24,1
	sll	$26,$25,1
	sll	$27,$26,1
	sll	$28,$27,1
	sll	$29,$28,1
	sll	$30,$29,1
	sll	$31,$30,1
	
	# now test all of the registers in the beq instruction
	# this test will test every bit inside of the comparison logic, and ensure that every register can be compared
	
	# this test exists because there is the possibility that information may not reach the comparison logic
	# from the register file, causing a false positive. This will also test to ensure that the comparison logic
	# is capible of not branching at all.
	
	beq	$0,$1,fail
	beq	$0,$2,fail
	beq	$0,$3,fail
	beq	$0,$4,fail
	beq	$0,$5,fail
	beq	$0,$6,fail
	beq	$0,$7,fail
	beq	$0,$8,fail
	beq	$0,$9,fail
	beq	$0,$10,fail
	beq	$0,$11,fail
	beq	$0,$12,fail
	beq	$0,$13,fail
	beq	$0,$14,fail
	beq	$0,$15,fail
	beq	$0,$16,fail
	beq	$0,$17,fail
	beq	$0,$18,fail
	beq	$0,$19,fail
	beq	$0,$20,fail
	beq	$0,$21,fail
	beq	$0,$22,fail
	beq	$0,$23,fail
	beq	$0,$24,fail
	beq	$0,$25,fail
	beq	$0,$26,fail
	beq	$0,$27,fail
	beq	$0,$28,fail
	beq	$0,$29,fail
	beq	$0,$30,fail
	beq	$0,$31,fail
	
	# reaching this point indicates that the test nominally succeeded 
	
	# test end
	# exit the program
	
        halt
	
fail:
	# if the test falls of then end, 
