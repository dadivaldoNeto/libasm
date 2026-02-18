; # By Dadivaldo
; # 2026

.intel_syntax noprefix

.globl ft_strcpy
.text

ft_strcpy:
 push rbp
 mov rbp, rsp

 xor rax, rax


 cmp rdi, 0
 jz leave_function
 cmp rsi, 0
 jz end_loop

for_loop:
 cmp BYTE PTR [rsi], 0
 jz end_loop
 mov al, BYTE PTR [rsi]
 mov BYTE PTR [rdi], al
 inc rdi
 inc rsi
 jmp for_loop

end_loop:
  mov BYTE PTR [rdi], 0
leave_function:
 leave
 ret
