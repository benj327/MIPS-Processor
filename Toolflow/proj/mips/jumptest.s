.text
sll $zero $zero 0
add $t1, $zero, $zero
add $t4, $zero, $zero
add $t5, $zero, $zero
add $t6, $zero, $zero
main:
	ori $s0, $zero 0x1234
	add $t3, $zero, $zero
	add $t2, $zero, $zero

	sll $zero $zero 0
	sll $zero $zero 0
	sll $zero $zero 0
	sll $zero $zero 0
	
	jal main2
	NOP
        NOP
   	beq $zero, $t2, maindone   #if there was no swaps we are done(jump to end)
   	NOP 
        NOP
   	addi $t1,$t1,-1            #decrement $t1
   	beq $zero, $zero, mainloop #unconditional branch back to mainloop
        NOP
   	NOP

main2:
	ori $s4, $zero 0x1234
	add $t5, $zero, $zero
	add $t6, $zero, $zero
	halt

maindone: 
  halt

mainloop:
  halt




