.data
.text
.globl main
main:
    # Start Test
    ori $t2, $0, 543     # verify that or operation is able to work and stor info in decimal form
    ori $t1, $0, 0x97 # verify that or operation is able to work and store info in binary form
    ori $t3, $t1, 0xEA     # verify that or operation is able to work and stor info in hexidecimal form
    # End Test

    # Exit program
    halt
