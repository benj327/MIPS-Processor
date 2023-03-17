.data
.text
.globl main
main:

# Testing subu %$rd, $rs, $rt

# Test 0: Subtracting a register from itself results in zero.

# Need to store immediate values into some registers in order to test subu functionality.
# I will restrict my alternate instruction usage to addi and only using it to store values in registers whenever necessary.
addi $8, $0, 0xffffffff # Value to be used in test.
addi $10, $0, 1 # Adding 1 to register 10 to make any reigster value changes obvious after test.

subu $10, $8, $8 # This test should store 0 in register 10. A common case to show that subtracting a register from itself is zero.          

# Exit program
halt
