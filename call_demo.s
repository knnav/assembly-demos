.data
  HelloWorld:
    .asciz "Hello, world!"
  CallDemo:
    .asciz "It works!"

.text
  .globl _start

  _start:
    nop
    call              CallMe # points execution to CallMe routine, then comes back to _start
    # Write Hello World
    movl $4,          %eax
    movl $1,          %ebx
    movl $HelloWorld, %ecx
    movl $12,         %edx
    int               $0x80

  # Print something before executing _start
  CallMe:
    movl $4,        %eax
    movl $1,        %ebx
    movl $CallDemo, %ecx
    movl $8,        %edx
    ret
