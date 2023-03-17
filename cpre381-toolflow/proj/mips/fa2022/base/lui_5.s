.data
.text
.globl main
main:
# Start Test
# test a range of values within the bounds
lui $1, 0
lui $1, 1
lui $1, 2
lui $1, 4
lui $1, 8
lui $1, 16
lui $1, 32
lui $1, 64

lui $1, 128
lui $1, 256
lui $1, 512
lui $1, 1024
lui $1, 2048
lui $1, 4096
lui $1, 8172
lui $1, 16324

lui $1, 32648

# try random values
lui $1, 50000
lui $1, 25000
lui $1, 3
lui $1, 7459
lui $1, 123
lui $1, 9578
lui $1, 12345

lui $1, 3846
lui $1, 2435
lui $1, 754
lui $1, 3456
lui $1, 53
lui $1, 875
lui $1, 6754
lui $1, 16789

# End Test

# Exit program
halt
