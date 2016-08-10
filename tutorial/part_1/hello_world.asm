section .data
    msg db      "hello, world!",0x0A

section .text
    global _start
_start:
    ;rax - temporary register; when we call a syscal, rax must contain syscall number
    mov     rax, 1
    ;rdi - used to pass 1st argument to functions
    mov     rdi, 1
    ;rsi - pointer used to pass 2nd argument to functions
    mov     rsi, msg
    ;rdx - used to pass 3rd argument to functions
    mov     rdx, 14
    ;ssize_t sys_write(unsigned int fd, const char * buf, size_t count)
    ;           rax        rdi               rsi             rdx
    syscall
    mov    rax, 60
    mov    rdi, 0
    syscall






;source : http://0xax.blogspot.de/2014/08/say-hello-to-x64-assembly-part-1.html#more

;vim-run: echo -e "\n\n********************";make ; ./$(basename % .asm)
