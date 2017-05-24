.data
	matrix10: .word 1, -3, 5, 7, 9, 0
	matrix11: .word 2, -4, 6, 8, 1, 3
	matrix12: .word -1, 0, 1, 0 ,0 ,0 
	matrix13: .word -5, 7, 9, 0, 1, 0
	
	result10: .word 0, 0, 0, 0, 0, 0, 0, 0 
	result11: .word 0, 0, 0, 0, 0, 0, 0, 0 
	result12: .word 0, 0, 0, 0, 0, 0, 0, 0 
	
.text
	# matrix[0][][]
	addi $s0, $s0, 0x10010000
	# matrix[1][][]
	addi $s1, $s1, 0x10010018
	# matrix[3][][]
	addi $s2, $s2, 0x10010030
	# matrix[4][][]
	addi $s3, $s3, 0x10010048
	
	# result10
	addi $s4, $s4, 0x10010060
	# result11
	addi $s5, $s5, 0x10010080
	# result12
	addi $s6, $s6, 0x100100a0

	
	addi $t0, $t0, 4   # i
	addi $t1, $t1, 3   # j
	addi $t2, $t2, 2   # k
	
loop:
	lw $v0, ($s0)
	sw $v0, ($s4)
	subi $t2, $t2, 1
	addi $s0, $s0, 4
	addi $s4, $s4, 4
	bne $t2, 0, loop 
	
	addi $t2, $t2, 2

loop2:
	lw $v0, ($s0)
	sw $v0, ($s5)
	subi $t2, $t2, 1
	addi $s0, $s0, 4
	addi $s5, $s5, 4
	bne $t2, 0, loop2 
	
	addi $t2, $t2, 2
loop3:
	lw $v0, ($s0)
	sw $v0, ($s6)
	subi $t2, $t2, 1
	addi $s0, $s0, 4
	addi $s6, $s6, 4
	bne $t2, 0, loop3
	
	addi $t2, $t2, 2
	
loop21:
	lw $v0, ($s1)
	sw $v0, ($s4)
	subi $t2, $t2, 1
	addi $s1, $s1, 4
	addi $s4, $s4, 4
	bne $t2, 0, loop21 
	
	addi $t2, $t2, 2

loop22:
	lw $v0, ($s1)
	sw $v0, ($s5)
	subi $t2, $t2, 1
	addi $s1, $s1, 4
	addi $s5, $s5, 4
	bne $t2, 0, loop22 
	
	addi $t2, $t2, 2
loop23:
	lw $v0, ($s1)
	sw $v0, ($s6)
	subi $t2, $t2, 1
	addi $s1, $s1, 4
	addi $s6, $s6, 4
	bne $t2, 0, loop23  
	
	addi $t2, $t2, 2
	
loop31:
	lw $v0, ($s2)
	sw $v0, ($s4)
	subi $t2, $t2, 1
	addi $s2, $s2, 4
	addi $s4, $s4, 4
	bne $t2, 0, loop31 
	
	addi $t2, $t2, 2

loop32:
	lw $v0, ($s2)
	sw $v0, ($s5)
	subi $t2, $t2, 1
	addi $s2, $s2, 4
	addi $s5, $s5, 4
	bne $t2, 0, loop32 
	
	addi $t2, $t2, 2
loop33:
	lw $v0, ($s2)
	sw $v0, ($s6)
	subi $t2, $t2, 1
	addi $s2, $s2, 4
	addi $s6, $s6, 4
	bne $t2, 0, loop33  
	
	addi $t2, $t2, 2

loop41:
	lw $v0, ($s3)
	sw $v0, ($s4)
	subi $t2, $t2, 1
	addi $s3, $s3, 4
	addi $s4, $s4, 4
	bne $t2, 0, loop41 
	
	addi $t2, $t2, 2

loop42:
	lw $v0, ($s3)
	sw $v0, ($s5)
	subi $t2, $t2, 1
	addi $s3, $s3, 4
	addi $s5, $s5, 4
	bne $t2, 0, loop42 
	
	addi $t2, $t2, 2
loop43:
	lw $v0, ($s3)
	sw $v0, ($s6)
	subi $t2, $t2, 1
	addi $s3, $s3, 4
	addi $s6, $s6, 4
	bne $t2, 0, loop43  
	
	addi $t2, $t2, 2	

