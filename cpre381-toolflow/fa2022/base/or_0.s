.data
.text
.globl main
main:
    # Start Test
    addi $t1, $zero, 0xFFFF
    addi $t2, $zero, 0x0000
    or $s1,$t1,$t2 
    addiu $t1,$zero, 0xFFFF
    addiu $t2,$zero, 0xFFFF
    or $s3,$t1,$t2 
    or $s4,$zero,$t2 
    # End Test

    # Exit program
    halt
