.data
.text
.globl main
main:
    # Start Test
	addi $29, $0, 0
	addi $28 $0, 0
    or $1, $0, $1       # verify that nothing happens when using the OR operator on register 1 with the zero register
    or $2, $0, $2       # verify that nothing happens when using the OR operator on register 2 with the zero register
    or $3, $0, $3       # verify that nothing happens when using the OR operator on register 3 with the zero register
    or $4, $0, $4       # verify that nothing happens when using the OR operator on register 4 with the zero register
    or $5, $0, $5       # verify that nothing happens when using the OR operator on register 5 with the zero register
    or $6, $0, $6       # verify that nothing happens when using the OR operator on register 6 with the zero register
    or $7, $0, $7       # verify that nothing happens when using the OR operator on register 7 with the zero register
    or $8, $0, $8       # verify that nothing happens when using the OR operator on register 8 with the zero register
    or $9, $0, $9       # verify that nothing happens when using the OR operator on register 9 with the zero register
    or $10, $0, $10     # verify that nothing happens when using the OR operator on register 10 with the zero register
    or $11, $0, $11     # verify that nothing happens when using the OR operator on register 11 with the zero register
    or $12, $0, $12     # verify that nothing happens when using the OR operator on register 12 with the zero register
    or $13, $0, $13     # verify that nothing happens when using the OR operator on register 13 with the zero register
    or $14, $0, $14     # verify that nothing happens when using the OR operator on register 14 with the zero register
    or $15, $0, $15     # verify that nothing happens when using the OR operator on register 15 with the zero register
    or $16, $0, $16     # verify that nothing happens when using the OR operator on register 16 with the zero register
    or $17, $0, $17     # verify that nothing happens when using the OR operator on register 17 with the zero register
    or $18, $0, $18     # verify that nothing happens when using the OR operator on register 18 with the zero register
    or $19, $0, $19     # verify that nothing happens when using the OR operator on register 19 with the zero register
    or $20, $0, $20     # verify that nothing happens when using the OR operator on register 20 with the zero register
    or $21, $0, $21     # verify that nothing happens when using the OR operator on register 21 with the zero register
    or $22, $0, $22     # verify that nothing happens when using the OR operator on register 22 with the zero register
    or $23, $0, $23     # verify that nothing happens when using the OR operator on register 23 with the zero register
    or $24, $0, $24     # verify that nothing happens when using the OR operator on register 24 with the zero register
    or $25, $0, $25     # verify that nothing happens when using the OR operator on register 25 with the zero register
    or $26, $0, $26     # verify that nothing happens when using the OR operator on register 26 with the zero register
    or $27, $0, $27     # verify that nothing happens when using the OR operator on register 27 with the zero register
    or $28, $0, $28     # verify that nothing happens when using the OR operator on register 28 with the zero register
    or $29, $0, $29     # verify that nothing happens when using the OR operator on register 29 with the zero register
    or $30, $0, $30     # verify that nothing happens when using the OR operator on register 30 with the zero register
    or $31, $0, $31     # verify that nothing happens when using the OR operator on register 31 with the zero register
    #Set register 9 to be all Fs
    lui $9, 0xFFFF
    ori $9, $9, 0xFFFF #Note that this command executes as a pseudoinstruction in MARS, but it will not in our single-cycle MIPS processors
    #Set all registers to all 1s
    or $0, $9, $0       # verify that the zero register does not change, even when ored
    or $1, $9, $1       # verify that register 1  is set to all 1s when ored with register 9 (set to all 1s)
    or $2, $9, $2       # verify that register 2  is set to all 1s when ored with register 9 (set to all 1s)
    or $3, $9, $3       # verify that register 3  is set to all 1s when ored with register 9 (set to all 1s)
    or $4, $9, $4       # verify that register 4  is set to all 1s when ored with register 9 (set to all 1s)
    or $5, $9, $5       # verify that register 5  is set to all 1s when ored with register 9 (set to all 1s)
    or $6, $9, $6       # verify that register 6  is set to all 1s when ored with register 9 (set to all 1s)
    or $7, $9, $7       # verify that register 7  is set to all 1s when ored with register 9 (set to all 1s)
    or $8, $9, $8       # verify that register 8  is set to all 1s when ored with register 9 (set to all 1s)
    or $9, $9, $9       # verify that register 9  is set to all 1s when ored with register 9 (set to all 1s)
    or $10, $9, $10     # verify that register 10 is set to all 1s when ored with register 9 (set to all 1s)
    or $11, $9, $11     # verify that register 11 is set to all 1s when ored with register 9 (set to all 1s)
    or $12, $9, $12     # verify that register 12 is set to all 1s when ored with register 9 (set to all 1s)
    or $13, $9, $13     # verify that register 13 is set to all 1s when ored with register 9 (set to all 1s)
    or $14, $9, $14     # verify that register 14 is set to all 1s when ored with register 9 (set to all 1s)
    or $15, $9, $15     # verify that register 15 is set to all 1s when ored with register 9 (set to all 1s)
    or $16, $9, $16     # verify that register 16 is set to all 1s when ored with register 9 (set to all 1s)
    or $17, $9, $17     # verify that register 17 is set to all 1s when ored with register 9 (set to all 1s)
    or $18, $9, $18     # verify that register 18 is set to all 1s when ored with register 9 (set to all 1s)
    or $19, $9, $19     # verify that register 19 is set to all 1s when ored with register 9 (set to all 1s)
    or $20, $9, $20     # verify that register 20 is set to all 1s when ored with register 9 (set to all 1s)
    or $21, $9, $21     # verify that register 21 is set to all 1s when ored with register 9 (set to all 1s)
    or $22, $9, $22     # verify that register 22 is set to all 1s when ored with register 9 (set to all 1s)
    or $23, $9, $23     # verify that register 23 is set to all 1s when ored with register 9 (set to all 1s)
    or $24, $9, $24     # verify that register 24 is set to all 1s when ored with register 9 (set to all 1s)
    or $25, $9, $25     # verify that register 25 is set to all 1s when ored with register 9 (set to all 1s)
    or $26, $9, $26     # verify that register 26 is set to all 1s when ored with register 9 (set to all 1s)
    or $27, $9, $27     # verify that register 27 is set to all 1s when ored with register 9 (set to all 1s)
    or $28, $9, $28     # verify that register 28 is set to all 1s when ored with register 9 (set to all 1s)
    or $29, $9, $29     # verify that register 29 is set to all 1s when ored with register 9 (set to all 1s)
    or $30, $9, $30     # verify that register 30 is set to all 1s when ored with register 9 (set to all 1s)
    or $31, $9, $31     # verify that register 31 is set to all 1s when ored with register 9 (set to all 1s)
	
    # End Test

    # Exit program
	halt
