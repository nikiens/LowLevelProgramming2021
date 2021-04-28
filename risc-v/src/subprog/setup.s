.globl __start

.text
    __start:
        call main
        
    finish:
        mv a1, a0
        li a0, 17 # выход с кодом завершения
        ecall