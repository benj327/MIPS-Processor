.data
.text
.globl main
main:


jal target

j end       #can proram jump through multiple different nested jal jr statents


target:
jal target2

addi $sp, $ra, -8  #jumpst to correct sopt
jr $sp


target2:

jr $ra #returns to previous are inside the inside of the initial jal statement


 
 end:
 
 
    # Exit program
    halt
