.data
arr:
        .word   5 #0 
        .word   4 #1
        .word   3 #2
        .word   2 #3
        .word    1 #4
.text
main:
  sll $zero $zero 0
  lui $1, 0x00001001
  sll $zero, $zero, 0 #noop
  sll $zero, $zero, 0 #noop
  sll $zero, $zero, 0 #noop
  sll $zero, $zero, 0 #noop
  ori $sp, $1, 0x00001000
  sll $zero, $zero, 0 #noop
  sll $zero, $zero, 0 #noop
  sll $zero, $zero, 0 #noop
  sll $zero, $zero, 0 #noop - can't avoid these
  addi $1, $0, 32
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sub    $sp, $sp, $1
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop - can't avoid these
  addi    $a0, $sp, 8
  addi    $a1, $zero, 20
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop - can't avoid these
  sw    $a1, 4($sp)
  addi    $t8, $zero, 7
  addi    $t7, $zero, 6
  addi    $t6, $zero, 4
  addi    $t5, $zero, 2
  addi    $t4, $zero, 1

#new positions
  sw    $t8, 0($a0)
  sw    $t7, 4($a0)
  sw    $t6, 8($a0)
  sw    $t5, 12($a0)
  sw    $t4, 16($a0)
  addi    $t1, $zero, 0

bubble:
  sll $zero $zero 0
  sll $zero $zero 0
  addi  $t8, $sp, 8     #ptr:     original pointer to a[]
  addi  $t7, $zero, 0   #bool:    swapped
  addi  $t6, $zero, 4   #int:     i
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop

whileloop:
  sll $zero $zero 0
  sll $zero $zero 0
  slt   $t9, $t6, $a1
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  bne   $t9, 1, isswapped
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  lw    $t0, 0($t8)             #load a = a[i]
  lw    $t1, 4($t8)             #load b = a[i+1]
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  slt    $t2, $t1, $t0           #if a[i+1] < a[i]
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  bne    $t2, 1, preloop            #if a[i+1] > a[i], go to else
  sll $zero $zero 0 #noop
  sll $zero $zero 0 #noop
  sw    $t1, 0($t8)             #a[i]   = a[i+1]
  sw    $t0, 4($t8)             #a[i+1] = a[i]
  addi    $t7, $zero, 1           #set swapped to true
  j    preloop                 #go to preloop

preloop:
  sll $zero $zero 0
  sll $zero $zero 0
  addi    $t6, $t6, 4           #i++
  addi    $t8, $t8, 4           #a[]++
  j       whileloop             #go back to loop
isswapped:
  sll $zero $zero 0
  sll $zero $zero 0
  beq    $t7, 1, bubble

whiledone:
  lw    $t0, 0($a0)
  lw    $t1, 4($a0)
  lw    $t2, 8($a0)
  lw    $t3, 12($a0)
  lw    $t4, 16($a0)
  halt


