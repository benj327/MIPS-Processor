.data
.text
.globl main
main:
# Testing subu %$rd, $rs, $rt

# Test 0: Subtracting -1 from 0xffff_ffff results in zero.

# Need to store immediate values into some registers in order to test subu functionality.
# I will restrict my alternate instruction usage to addi and only using it to store values in registers whenever necessary.
addi $8, $0, 0xffffffff # Value to be used in test.
addi $9, $0, -1 # Value to be used in test
addi $10, $0, 1
                
subu $10, $8, $9 # This test will show that even if a negative value is stored in a regiseter,
                 # this instruction treats it as an unsgined number (0xffff_ffff).

# End test

# Exit program
halt
