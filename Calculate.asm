use16     
org 100h
    
    ;calc (A* X^2)
    mov AL, [X] ; add X to al for x^2   
    imul [X] ; X*X
    mov BX, AX ; BX is X^2  
    imul [A]; A * X^2 
    mov DX, AX; add to CX result of A * X^2
    
    ; calc B * X^2
    mov AL, BL; add to al x^2
    imul [B] ; B * X^2
    mov BX, AX; X^2 is useles and move result of B*X^2 to BX
    
    ; calc (X * Y + 1)
    mov AL, [X]; move x to al for imulating 
    imul [Y]; X * Y
    inc AX; (X * Y) + 1
    mov CX, AX; move result of AX to DX
    
    ;calc (A * X^2) div (B * X^2)
    mov AX, DX; move (A * X^2) to AX
    div [BX]
    
 
    mov ax,4C00h
    int 21h
;-------------------------------------------------------
A db 2
B db 2
X db 2  
Y db 2