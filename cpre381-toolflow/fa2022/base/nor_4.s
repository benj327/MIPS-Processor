li $10, 0x11111111

#start test
nor $1, $10, $10	#using nor to clear a register
nor $2, $10, $10	#using nor to clear a register
nor $3, $10, $10	#using nor to clear a register
nor $4, $10, $10	#using nor to clear a register
nor $5, $10, $10	#using nor to clear a register
nor $6, $10, $10	#using nor to clear a register
#end test
halt
