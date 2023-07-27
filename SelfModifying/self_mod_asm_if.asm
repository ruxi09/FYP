 section .data
    result_msg db "Result: %d", 10  
    result_buf times 11 db 0       
    newline db 10, 0              

section .text
    global _start

_start:
    call checknum
    call exit

checknum:
    mov eax, -8
    mov ebx, 20
    mov ecx, 0
    cmp eax, ecx
    jg call_operation   ; Jump to 'call_operation' if eax > ecx

    ; Negate the value in eax
    neg eax

    modify_jg_to_jle:
    ; Use a register to store the modified condition (0x7E represents the opcode for 'jle')
    movzx edx, byte [modify_jg_to_jle]
    cmp edx, 0x7E
    jne operation

    jmp call_operation

call_operation:
    ;add eax, ebx
    jmp operation

operation:
    add eax, ebx

    ; Convert the result to a string
    mov edi, eax          
    mov ecx, 10           

    ; Loop to convert the result to a string
    xor ebx, ebx          
    mov esi, result_buf   

    convert_loop:
        xor edx, edx      
        div ecx           
        add dl, '0'       
        mov [esi+ebx], dl 
        inc ebx           
        test eax, eax     
        jnz convert_loop  

    ; Null-terminate the string
    mov byte [esi+ebx], 0 

    ; Prepare the arguments for the syscalls
    mov edi, 1            
    mov eax, 1            
    lea esi, [result_buf] 
    mov edx, ebx          

    ; Perform the syscalls to print the result
    syscall

    ; Prepare the arguments for the syscalls
    mov edi, 1         
    mov eax, 1           
    lea esi, [newline]   
    mov edx, 1           

    ; Perform the syscalls to print the newline
    syscall

    ret

exit:
    mov eax, 60         ; System call number for exit
    xor edi, edi        ; Exit code 0
    syscall
    ret

;NASM 2.15.05 (on Linux x86_64)
;compilation 123ms
;dissasebly  119 ms
