.data
.text
.globl main

main :

lui $t1, 0x1001  # Stores the value 0x1001 to the upper half of the $t1
lui $t2, 0xFFFF  # Stores the value 0xFFFF to the upper half of the $t2
lui $t3, 0x1010  # Stores the value 0x1010 to the upper half of the $t3


#Exits the program
halt
