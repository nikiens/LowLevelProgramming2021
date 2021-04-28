.globl __start

.rodata
    divisor: .float 2

    length: .word 5
    datax: .float 1.91, 2.64, 3, 8.237, 9.001
    datay: .float 4.3853, 2.854, 6.345, 3.1415, 8 
    
.text
    __start:
        # Загрузка адресов
        la a2, divisor
        la a3, datax
        la a4, datay
        
        #Загрузка счетчика
        lw a5, 4(a2) 
        addi a5, a5, -1
        
        #Загрузка 2 в регистр
        flw fa0, 0(a2)
        
    loop:
        flw fa1, 4(a3) #xi+1
        flw fa2, 0(a3) #xi
        fsub.s fa3, fa1, fa2
        
        flw fa1, 4(a4) #yi+1
        flw fa2, 0(a4) # yi
        fadd.s fa1, fa2, fa1
       
        fdiv.s fa1, fa1, fa0 # / 2
        fmadd.s fa4, fa1, fa3, fa4
    
        addi a5, a5, -1 # dec counter
        addi a3, a3, 4 # inc datax addr
        addi a4, a4, 4 # inc datay addr
        
        bnez a5 loop
        
    finish:
        li a0, 10
        ecall