.data
.text
.globl main
main:
# Start Test

lui $1, 0xFFFF # do negative numbers work at all?  They should not, or our processor should interpret them as a postive number
lui $2, 0x8000 # negative number edge case 
lui $2, 0x7FFF # positive number edge case

# End Test

# Exit program
halt
