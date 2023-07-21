
.text
.global _print
.align 4
_print:

    mov     X5, X0
    mov     X6, X1



    ;str LR, [SP, #-16]!  
   ; mov     X16, #2
    ;svc     #0x80

  ;  mov     X16, #248
  ;  mov     X0, #1
  ;  adr     X1, mode
  ;  svc     #0x80

    mov     X8, #0x480A
    movk    X8, #0x6C65, lsl#16
    movk    X8, #0x6F6C, lsl#32 
    movk    X8, #0x4D20, lsl#48 

    mov     X9, #0x2D31 
     
    movk    X9, #0x6F57, lsl#16
    movk    X9, #0x6C72, lsl#32 
    movk    X9, #0x2164, lsl#48 

    stp     X8, X9, [SP, #-16]!

   ; mov     X10, #0x250A
    ;movk     X10, #0x0025, lsl#16
   ; str     X10, [SP, #-8]!


    

    mov     X0, #1
    mov     X1, X5
    ;add     X1, X1, #-8  
    mov     X2, X6
	mov     X16, #4		
	svc     #0xff

    ;ldr LR, [SP], #16
    br      LR

    ;mov     X0, #1
   ; mov     X16, #6
   ; svc     #0x80

   
  ;  ret

   ; mov     X0, #0		;// Use 0 return code
	;mov     X16, #1		;// System call number 1 terminates this program
	;svc     #0xff
   
  ;  ret

.global _exit
_exit:
    mov     X0, #0		;// Use 0 return code
	mov     X16, #1		;// System call number 1 terminates this program
	svc     #0xff
    br      X30
.text
mode:      .ascii  "w+"