.globl trapz

.rodata
    divisor: .float 2

.text
    trapz:
        la t1, divisor
    
        #counter
        addi a2, a2, -1
        
        #const 2
        flw ft5, 0(t1)
    
    loop:
        flw ft0, 4(a0) #xi+1
        flw ft1, 0(a0) #xi
        fsub.s ft3, ft0, ft1
        
        flw ft0, 4(a1)
        flw ft1, 0(a1)
        fadd.s ft0, ft0, ft1
       
        fdiv.s ft0, ft0, ft5
        fmadd.s ft4, ft0, ft3, ft4
    
        addi a2, a2, -1
        addi a0, a0, 4
        addi a1, a1, 4
        
        bnez a2 loop
        
        fmv.s fa0, ft4
        ret