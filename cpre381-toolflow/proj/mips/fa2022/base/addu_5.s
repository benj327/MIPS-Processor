.data
.text 
.globl main
main: 
#Start Test Case
# Adding these values together should result in an overflow. However, addu controls the overflow the same way as C works with overflow,
# so this program will then do the twos complement rather than overflowing
li $t0, 0x7fffffff
li $t1, 0x7fffffff
addu $t2, $t0, $t1

halt
