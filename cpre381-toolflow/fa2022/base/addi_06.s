.data
.text
.globl main
main:
    # Start Test
    addi $t3, $zero, 0x7FFFFFFF
    addi $t4, $t3, 0x0000000F  # Checking overflow functionality
    # End Test
    halt

