li $1, 0x0
li $10, 0x11111111

#start test
nor $1, $1, $10	#comparing registers to a full set
nor $1, $2, $10	#comparing registers to a full set
nor $1, $3, $10	#comparing registers to a full set
nor $1, $4, $10	#comparing registers to a full set
nor $1, $5, $10	#comparing registers to a full set
nor $1, $6, $10	#comparing registers to a full set
#end test
halt
