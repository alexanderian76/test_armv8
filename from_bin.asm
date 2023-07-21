.global _binary_array_to_number
.align 4

_binary_array_to_number:
    mov w3, w0
    mov w0, #0
   
    mov w4, #0
    mov w5, #0
    mov w6, #1
    ldr w7, [X1]
    add w5, w5, w7
    cmp w3, #1
    bne _loop

_res:
    mov w0, w5
    ret


_loop:
    add X1, X1, #4
    
    
    
    ldr w7, [X1]
    add w5, w5, w5
    add w5, w5, w7
    
    
    
    add w6, w6, #1
    cmp w6, w3
    beq _res
    b _loop





