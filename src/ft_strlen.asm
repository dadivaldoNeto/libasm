; # By Dadivaldo
; # 2026

.intel_syntax noprefix

.globl ft_strlen

.text
ft_strlen:

 ; # prologue
 push rbp
 mov rbp, rsp

  xor eax, eax

 ; # Check Null string if (!s) return (0)
 cmp rdi, 0
 jz end_loop
for_loop:
; # 
  cmp BYTE PTR [rdi], 0
  jz end_loop
  inc rdi
  inc eax
  jmp for_loop

end_loop:
 leave
 ret
