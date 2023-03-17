.data
.text
.globl main
main:
    # Start Test
	
	#Test bit-wise operations on a single register. Begin with register 24
	
	#Verify that the 31st bit of the operand applies to the 31st bit of the result
	#Result should be 0x80000000
    lui $23, 0x8000
    or $24, $24, $23
	
	#Verify that the 30th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xC0000000
    lui $23, 0x4000
    or $24, $24, $23
	
	#Verify that the 29th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xE0000000
    lui $23, 0x2000
    or $24, $24, $23
	
	#Verify that the 28th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xF0000000
    lui $23, 0x1000
    or $24, $24, $23
	
	#Verify that the 27th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xF8000000
    lui $23, 0x0800
    or $24, $24, $23
	
	#Verify that the 26th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFC000000
    lui $23, 0x0400
    or $24, $24, $23
	
	#Verify that the 25th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFE000000
    lui $23, 0x0200
    or $24, $24, $23
	
	#Verify that the 24th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFF000000
    lui $23, 0x0100
    or $24, $24, $23
	
	#Verify that the 23rd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFF800000
    lui $23, 0x0080
    or $24, $24, $23
	
	#Verify that the 22nd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFC00000
    lui $23, 0x0040
    or $24, $24, $23
	
	#Verify that the 21st bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFE00000
    lui $23, 0x0020
    or $24, $24, $23
	
	#Verify that the 20th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFF00000
    lui $23, 0x0010
    or $24, $24, $23
	
	#Verify that the 19th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFF80000
    lui $23, 0x0008
    or $24, $24, $23
	
	#Verify that the 18th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFC0000
    lui $23, 0x0004
    or $24, $24, $23
	
	#Verify that the 17th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFE0000
    lui $23, 0x0002
    or $24, $24, $23
	
	#Verify that the 16th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFF0000
    lui $23, 0x0001
    or $24, $24, $23
	
	#Verify that the 15th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFF8000
    ori $23, $0, 0x8000
    or $24, $24, $23
	
	#Verify that the 14th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFC000
    ori $23, $0, 0x4000
    or $24, $24, $23
	
	#Verify that the 13th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFE000
    ori $23, $0, 0x2000
    or $24, $24, $23
	
	#Verify that the 12th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFF000
    ori $23, $0, 0x1000
    or $24, $24, $23
	
	#Verify that the 11th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFF800
    ori $23, $0, 0x0800
    or $24, $24, $23
	
	#Verify that the 10th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFC00
    ori $23, $0, 0x0400
    or $24, $24, $23
	
	#Verify that the 9th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFE00
    ori $23, $0, 0x0200
    or $24, $24, $23
	
	#Verify that the 8th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFF00
    ori $23, $0, 0x0100
    or $24, $24, $23
	
	#Verify that the 7th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFF80
    ori $23, $0, 0x0080
    or $24, $24, $23
	
	#Verify that the 6th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFC0
    ori $23, $0, 0x0040
    or $24, $24, $23
	
	#Verify that the 5th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFE0
    ori $23, $0, 0x0020
    or $24, $24, $23
	
	#Verify that the 4th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFF0
    ori $23, $0, 0x0010
    or $24, $24, $23
	
	#Verify that the 3rd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFF8
    ori $23, $0, 0x0008
    or $24, $24, $23
	
	#Verify that the 2nd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFFC
    ori $23, $0, 0x0004
    or $24, $24, $23
	
	#Verify that the 1st bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFFE
    ori $23, $0, 0x0002
    or $24, $24, $23
	
	#Verify that the 0th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFFF
    ori $23, $0, 0x0001
    or $24, $24, $23
	
	
	
	#Now perform the same tests on register 1
	
	#Verify that the 31st bit of the operand applies to the 31st bit of the result
	#Result should be 0x80000000
    lui $23, 0x8000
    or $1, $1, $23
	
	#Verify that the 30th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xC0000000
    lui $23, 0x4000
    or $1, $1, $23
	
	#Verify that the 29th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xE0000000
    lui $23, 0x2000
    or $1, $1, $23
	
	#Verify that the 28th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xF0000000
    lui $23, 0x1000
    or $1, $1, $23
	
	#Verify that the 27th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xF8000000
    lui $23, 0x0800
    or $1, $1, $23
	
	#Verify that the 26th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFC000000
    lui $23, 0x0400
    or $1, $1, $23
	
	#Verify that the 25th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFE000000
    lui $23, 0x0200
    or $1, $1, $23
	
	#Verify that the 1th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFF000000
    lui $23, 0x0100
    or $1, $1, $23
	
	#Verify that the 23rd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFF800000
    lui $23, 0x0080
    or $1, $1, $23
	
	#Verify that the 22nd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFC00000
    lui $23, 0x0040
    or $1, $1, $23
	
	#Verify that the 21st bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFE00000
    lui $23, 0x0020
    or $1, $1, $23
	
	#Verify that the 20th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFF00000
    lui $23, 0x0010
    or $1, $1, $23
	
	#Verify that the 19th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFF80000
    lui $23, 0x0008
    or $1, $1, $23
	
	#Verify that the 18th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFC0000
    lui $23, 0x0004
    or $1, $1, $23
	
	#Verify that the 17th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFE0000
    lui $23, 0x0002
    or $1, $1, $23
	
	#Verify that the 16th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFF0000
    lui $23, 0x0001
    or $1, $1, $23
	
	#Verify that the 15th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFF8000
    ori $23, $0, 0x8000
    or $1, $1, $23
	
	#Verify that the 14th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFC000
    ori $23, $0, 0x4000
    or $1, $1, $23
	
	#Verify that the 13th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFE000
    ori $23, $0, 0x2000
    or $1, $1, $23
	
	#Verify that the 12th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFF000
    ori $23, $0, 0x1000
    or $1, $1, $23
	
	#Verify that the 11th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFF800
    ori $23, $0, 0x0800
    or $1, $1, $23
	
	#Verify that the 10th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFC00
    ori $23, $0, 0x0400
    or $1, $1, $23
	
	#Verify that the 9th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFE00
    ori $23, $0, 0x0200
    or $1, $1, $23
	
	#Verify that the 8th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFF00
    ori $23, $0, 0x0100
    or $1, $1, $23
	
	#Verify that the 7th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFF80
    ori $23, $0, 0x0080
    or $1, $1, $23
	
	#Verify that the 6th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFC0
    ori $23, $0, 0x0040
    or $1, $1, $23
	
	#Verify that the 5th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFE0
    ori $23, $0, 0x0020
    or $1, $1, $23
	
	#Verify that the 4th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFF0
    ori $23, $0, 0x0010
    or $1, $1, $23
	
	#Verify that the 3rd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFF8
    ori $23, $0, 0x0008
    or $1, $1, $23
	
	#Verify that the 2nd bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFFC
    ori $23, $0, 0x0004
    or $1, $1, $23
	
	#Verify that the 1st bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFFE
    ori $23, $0, 0x0002
    or $1, $1, $23
	
	#Verify that the 0th bit of the operand applies to the corresponding bit of the result
	#Result should be 0xFFFFFFFF
    ori $23, $0, 0x0001
    or $1, $1, $23
	
    # End Test

    # Exit program
	halt
