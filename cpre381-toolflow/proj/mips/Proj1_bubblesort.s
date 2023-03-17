.data
arr:
        .word   5 #0 
        .word   4 #1
        .word   3 #2
        .word   2 #3
        .word	1 #4
.text
main:
  li $sp, 0x10011000
  sub	$sp, $sp, 32
  addi	$a0, $sp, 8
  addi	$a1, $zero, 20
  sw	$a1, 4($sp)
  addi	$t1, $zero, 7
  sw	$t1, 0($a0)
  addi	$t1, $zero, 6
  sw	$t1, 4($a0)
  addi	$t1, $zero, 4
  sw	$t1, 8($a0)
  addi	$t1, $zero, 2
  sw	$t1, 12($a0)
  addi	$t1, $zero, 1
  sw	$t1, 16($a0)
  addi	$t1, $zero, 0
bubble:
  addi  $t8, $sp, 8     #ptr:     original pointer to a[]
  addi  $t7, $zero, 0   #bool:    swapped
  addi  $t6, $zero, 4   #int:     i

whileloop:
  slt   $t9, $t6, $a1
  bne   $t9, 1, isswapped
  lw	$t0, 0($t8)             #load a = a[i]
  lw	$t1, 4($t8)             #load b = a[i+1]
  slt	$t2, $t1, $t0           #if a[i+1] < a[i]
  bne	$t2, 1, preloop        	#if a[i+1] > a[i], go to else
  sw	$t1, 0($t8)             #a[i]   = a[i+1]
  sw	$t0, 4($t8)             #a[i+1] = a[i]
  addi	$t7, $zero, 1           #set swapped to true
  j	preloop                 #go to preloop

preloop:
  addi    $t6, $t6, 4           #i++
  addi    $t8, $t8, 4           #a[]++
  j       whileloop             #go back to loop
isswapped:
  beq	$t7, 1, bubble

whiledone:
  lw	$t0, 0($a0)
  lw	$t1, 4($a0)
  lw	$t2, 8($a0)
  lw	$t3, 12($a0)
  lw	$t4, 16($a0)
  halt
