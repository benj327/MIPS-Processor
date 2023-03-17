.data
.text
.globl main
main:
	# test begin
	# this test will exercise the forward and backwards jumping cability of beq
	
	# the only comparion will be between $0 and $0, the main point of this test is not the comparison logic, but the branching
	
	# this test exists to ensure that both forward and backwards branching is functional
	# specifically, offsets need to be calculated correctly for this test to work
	
	
	beq	$0,$0,branch1
branch2:
	beq	$0,$0,branch3
branch4:
	beq	$0,$0,branch5
branch6:
	beq	$0,$0,branch7
branch8:
	beq	$0,$0,branch9
branch10:
	beq	$0,$0,pass
branch9:
	beq	$0,$0,branch10
branch7:
	beq	$0,$0,branch8
branch5:
	beq	$0,$0,branch6
branch3:
	beq	$0,$0,branch4
branch1:
	beq	$0,$0,branch2
	
	
	
	# be hitting this syscall, it indicates that the test as failed
	addi $1, $0, 10
        halt
	
pass:
        halt
	# reaching this point indicates that the test nominally succeeded 
	
	# test end
	# exit the program
