.data
.text
.globl main

main :

lui $t1, 0x1001  # Stores the value 0x1001 to the upper half of the $t1
lui $t1, 0xFFFF  # Tests if it overrides the first $t1 value and changes it
lui $t2, 0xFFFF  # Stores the value 0xFFFF to the upper half of the $t2
lui $t2, 0x1000  # Tests overrides the first $t2 value and changes it



#Exits the program
halt
