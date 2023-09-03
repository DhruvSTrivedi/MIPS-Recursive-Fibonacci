.data

# Strings for test code
str_prompt: .asciiz "Enter a number: "
str_result: .asciiz "Fibonacci of "

.text

# The fibonacci function
# Input: $a0 = x
# Output: $v0 = fibonacci(x)
fibonacci:
    # Base cases
    # if x == 0, return 0
    li $t0, 0
    beq $a0, $t0, return_zero

    # if x == 1, return 1
    li $t1, 1
    beq $a0, $t1, return_one

    # Recursive case: fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)

    # Calculate fibonacci(n-1)
    sub $a0, $a0, $t1          # decrement x
    sw $ra, -4($sp)           # save return address
    addiu $sp, $sp, -4        # adjust stack pointer
    jal fibonacci             # recursive call
    lw $ra, 0($sp)            # restore return address
    addiu $sp, $sp, 4         # adjust stack pointer
    move $t2, $v0             # save result in $t2

    # Calculate fibonacci(n-2)
    sub $a0, $a0, $t1          # decrement x
    sw $ra, -4($sp)           # save return address
    addiu $sp, $sp, -4        # adjust stack pointer
    jal fibonacci             # recursive call
    lw $ra, 0($sp)            # restore return address
    addiu $sp, $sp, 4         # adjust stack pointer

    # Sum up the results
    add $v0, $t2, $v0
    jr $ra

return_zero:
    move $v0, $t0
    jr $ra

return_one:
    move $v0, $t1
    jr $ra

# Testing the function
main:
    # Print prompt
    li $v0, 4
    la $a0, str_prompt
    syscall

    # Read input number
    li $v0, 5
    syscall
    move $a0, $v0             # set argument for fibonacci

    # Call fibonacci
    jal fibonacci

    # Print result
    li $v0, 1                 # print integer syscall
    syscall

    # Exit program
    li $v0, 10                # exit syscall
    syscall
