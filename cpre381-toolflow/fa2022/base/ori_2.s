.data
.text
.globl main
main:
    # Start Test
    ori $t2, $0, 0x85    # verify that or operation is able to work and stor info in binary form
    ori $t1, $0, 0x97 # verify that or operation is able to work and store info in binary form
    # End Test

    # Exit program
    halt
