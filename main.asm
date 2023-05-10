# n-ésimo número de Fibonacci em assembly MIPS usando apenas registradores

# Carrega o valor de n no registrador $a0
li $a0, 0     # substitua 10 pelo valor de n desejado

# Inicializa os primeiros valores da sequência
li $t0, 0      # F(0) = 0
li $t1, 1      # F(1) = 1

# Loop para calcular a sequência de Fibonacci
fibonacci_loop:
    bgt $a0, 1, fibonacci_calc   # Pula para o cálculo se n > 1
    move $v0, $t0                # Retorna F(0) se n = 0
    j fibonacci_exit             # Pula para a saída

fibonacci_calc:
    add $t2, $t0, $t1            # Soma os dois valores anteriores
    add $t0, $t1, $zero          # Move o valor de F(n-1) para F(n-2)
    add $t1, $t2, $zero          # Move o valor calculado para F(n-1)
    addi $a0, $a0, -1            # Decrementa n

    bnez $a0, fibonacci_loop     # Continua o loop se n != 0

fibonacci_exit:
    move $v0, $t1                # Retorna F(n) no registrador $v0
    jr $ra                       # Retorna do procedimento
