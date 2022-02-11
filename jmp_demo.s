.data
  HelloWorld:
    .asciz "Hello, world!"

.text
  .globl _start

  _start:
    nop
    # jumps to the ExitProgram routine and exits the program without executing the rest
    jmp               ExitProgram
    movl $4,          %eax
    movl $1,          %ebx
    movl $HelloWorld, %ecx
    movl $12,         %edx
    int               $0x80

  ExitProgram:
    # Exit the program
    movl $1,  %eax
    movl $10, %ebx
    int       $0x80
