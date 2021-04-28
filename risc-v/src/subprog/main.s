.globl main

.rodata
    length: .word 5
    datax: .float 1.91, 2.64, 3, 8.237, 9.001
    datay: .float 4.3853, 2.854, 6.345, 3.1415, 8 

.text
    main:
        addi sp, sp, -16 # выделение памяти в стеке
        sw ra, 12(sp) # запись ra в стек
    
        la a0, datax
        la a1, datay
        lw a2, length
        
        call trapz
    
        lw ra, 12(sp) # восстановление ra
        addi sp, sp, 16 # освобождение стека
    
        li a0, 0
        ret