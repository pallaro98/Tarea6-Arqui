.data
.text
main:
	li $a0, 10 #N
     	li $a1, 1 #value
     	li $a2, 0 #previous

	jal start 
	j exit   

start:

   	add $s0, $zero, $a0

fibonacci:   
	addi $s0, $s0, -1
	beqz $s0, return
	
	sw $ra, 0($sp)
    	addi $sp, $sp, -4
	jal fibonacci
	
	add $t0, $zero, $a1
	add $a1, $a1, $a2 
	add $a2, $zero, $t0 
	
	addi $sp, $sp, +4
	lw $t5, 0($sp)
	jr $t5
	
return:	
	addi $sp, $sp, +4
	lw $t5, 0($sp)
	jr $t5

	
	
	
    	
	


exit:
