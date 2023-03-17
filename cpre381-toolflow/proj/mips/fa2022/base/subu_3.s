.data
.text
.globl main
main:
# Testing subu %$rd, $rs, $rt

# Test 0: Overflow.

# Need to store immediate values into some registers in order to test subu functionality.
# I will restrict my alternate instruction usage to addi and only using it to store values in registers whenever necessary.
addi $8, $0, 0xffffffff # Value to be used in test.
addi $9, $0, 1 # Value to be used in test
addi $10, $0, 1 # Adding 1 to register 10 to make any reigster value changes obvious after test.
                
# Testing overflow capability by subtracting 0xffffffff from 0 and then subtracting 1 from that to test if overflow occurs.
subu $10, $8, $8  # This gets register 10 to zero.
		  # ------ EDIT: This gets reg 10 to 0
subu $10, $10, $8 # The most negative value should now be stored in register 10.
		  # ------ EDIT: This stores 1 in reg 10 (magnitude of two's comp 0xffff_ffff)
subu $10, $10, $9 # subtracting 1 from the most negative value should cause an overflow and then roll the value over to largest positive value
		  #  ------ EDIT: This subtraction 1 from 1 to get zero which is then stored in reg 10.
		  
# After running this test a few times to test the overflow I realized that this instructiong is incapable of, in my mind, "traditional" negative overflow
# (where the lowest possible negative value wraps around to highest possible positive value) because it treats all values as positive and therefore
# the lowest possible value is 0. In this case, the overflow will just loop back around to the magnitude of whatever value you subtract from 0, in this
# case 0xffffffff, and store that in rd. This is what happens in this test.

# Register 10 stores 1, then store the result of the first subtraction, 0. Then stores the magnitude of -1, which is 1, then stores 1 - 1 after the final
# subtraction.

# End test

    # Exit program
    halt
