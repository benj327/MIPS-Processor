.data
.text
.globl main
main:
    # Start Test
	
	#Test bit-wise operations on all registers.
	
	#Verify that the 31st bit of the operand applies to the 31st bit of the result
	#Result should be 0x80000000
    lui $1, 0x8000
    or $2, $0, $1
	
	#Verify that the 30th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x40000000
    lui $1, 0x4000
    or $3, $0, $1
	
	#Verify that the 29th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x20000000
    lui $1, 0x2000
    or $4, $0, $1
	
	#Verify that the 28th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x10000000
    lui $1, 0x1000
    or $5, $0, $1
	
	#Verify that the 27th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x08000000
    lui $1, 0x0800
    or $6, $0, $1
	
	#Verify that the 26th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x04000000
    lui $1, 0x0400
    or $7, $0, $1
	
	#Verify that the 25th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x02000000
    lui $1, 0x0200
    or $8, $0, $1
	
	#Verify that the 0th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x01000000
    lui $1, 0x0100
    or $9, $0, $1
	
	#Verify that the 23rd bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00800000
    lui $1, 0x0080
    or $10, $0, $1
	
	#Verify that the 22nd bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00400000
    lui $1, 0x0040
    or $11, $0, $1
	
	#Verify that the 21st bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00200000
    lui $1, 0x0020
    or $12, $0, $1
	
	#Verify that the 20th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00100000
    lui $1, 0x0010
    or $13, $0, $1
	
	#Verify that the 19th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00080000
    lui $1, 0x0008
    or $14, $0, $1
	
	#Verify that the 18th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00040000
    lui $1, 0x0004
    or $15, $0, $1
	
	#Verify that the 17th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00020000
    lui $1, 0x0002
    or $16, $0, $1
	
	#Verify that the 16th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00010000
    lui $1, 0x0001
    or $17, $0, $1
	
	#Verify that the 15th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00008000
    ori $1, $0, 0x8000
    or $18, $0, $1
	
	#Verify that the 14th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00004000
    ori $1, $0, 0x4000
    or $19, $0, $1
	
	#Verify that the 13th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00002000
    ori $1, $0, 0x2000
    or $20, $0, $1
	
	#Verify that the 12th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00001000
    ori $1, $0, 0x1000
    or $21, $0, $1
	
	#Verify that the 11th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000800
    ori $1, $0, 0x0800
    or $22, $0, $1
	
	#Verify that the 10th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000400
    ori $1, $0, 0x0400
    or $23, $0, $1
	
	#Verify that the 9th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000200
    ori $1, $0, 0x0200
    or $24, $0, $1
	
	#Verify that the 8th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000100
    ori $1, $0, 0x0100
    or $25, $0, $1
	
	#Verify that the 7th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000080
    ori $1, $0, 0x0080
    or $26, $0, $1
	
	#Verify that the 6th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000040
    ori $1, $0, 0x0040
    or $27, $0, $1
	
	#Verify that the 5th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000020
    ori $1, $0, 0x0020
    or $28, $0, $1
	
	#Verify that the 4th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000010
    ori $1, $0, 0x0010
    or $29, $0, $1
	
	#Verify that the 3rd bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000008
    ori $1, $0, 0x0008
    or $30, $0, $1
	
	#Verify that the 2nd bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000004
    ori $1, $0, 0x0004
    or $31, $0, $1
	
	#Verify that the 1st bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000002
    ori $1, $0, 0x0002
    or $31, $0, $1
	
	#Verify that the 0th bit of the operand applies to the corresponding bit of the result
	#Result should be 0x00000001
    ori $1, $0, 0x0001
    or $31, $0, $1
	
    # End Test

    # Exit program
halt
