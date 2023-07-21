.global _mult
.global _add
.align 4

_main:

_mult:

    mov     X1, X0
    mul     X0, X1, X0
    ret


_add:
    
    ldr     w23, [SP, #0x20]
    
    ldr     w22, [SP, #0x24]
    add     X0, X23, X22
    br      X30
    ret