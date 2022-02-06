# My first attempt at an assembly hello world
.data
  HelloWorldString:
    .ascii "Hello world\n"

.text

.globl _start

_start:
  # Load arguments for write()
  movl $4,                %eax # write() syscall number
  movl $1,                %ebx # 1 is STDOUT
  movl $HelloWorldString, %ecx
  movl $12,               %edx # 12 is the string length
  int $0x80

  # Call exit() syscall
  movl $1,                %eax
  movl $0,                %ebx
  int $0x80
