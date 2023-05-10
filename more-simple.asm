li $a0, 10     # e-nésimo
li $t0, 0      # F(0) = 0
li $t1, 1      # F(1) = 1

fibonacci_loop:
    beq $a0, $zero, exit   # exit loop if n = 0
    add $t2, $t0, $t1                # sum previous values
    add $t0, $t1, $zero              # Move F(n-1) to F(n-2)
    add $t1, $t2, $zero              # Move calculated value to F(n-1)
    addi $a0, $a0, -1                # subtract n
    j fibonacci_loop                 # restart loop

exit:
