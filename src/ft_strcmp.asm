.intel_syntax noprefix

.globl ft_strcmp
.text

ft_strcmp:

prologue:
 push rbp
 mov rbp, rsp

for_loop:
 cmp BYTE PTR [rdi], 0
 jz end_loop
 movb al, BYTE PTR [rdi]
 cmp BYTE PTR [rsi], al
 jne return_data
 inc rdi
 inc rsi
 jmp for_loop 

return_data:
 xor rax, rax

 movb al, BYTE PTR [rdi]
 sub al, BYTE PTR [rsi]
 jmp end_loop


end_loop:
 leave
 ret
