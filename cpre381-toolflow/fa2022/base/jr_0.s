.data
.text
.globl main
main:
addi $s0, $0, 0

#start
jal target
                   #can program step through multilple jal jr calls
jal target2

jal target3

j end



target:
addi $s0 $s0, 1 #first jal

jr $ra

target2:
addi $s0 $s0, 1#second jal

jr $ra

target3:#third jal
addi $s0 $s0, 1

jr $ra

end:



    # Exit program
    halt
