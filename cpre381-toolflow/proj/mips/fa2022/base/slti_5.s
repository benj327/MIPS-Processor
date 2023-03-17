.data
.text
.globl main
main:
    # Start Test
    lui $t0, 0xFFFF
    ori $t0, $t0, 0xFFFF
    slti $t0, $t0, -1 
    # End Test

    # Exit program
    halt
