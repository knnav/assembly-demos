# Demo program that shows the different data types
# It does nothing but declare some variables and then exit
.data
  HelloWorld:
    .ascii "Hello, world!"
  ByteLocation:
    .byte 10
  Int32:
    .int 2
  Int16:
    .short 3
  Float:
    .float 1.23
  IntegerArray:
    .int 2,4,239,1

.bss
  .comm LargeBuffer, 10000

.text
  .globl _start

  _start:
    nop

    movl $1, %eax
    movl $0, %ebx
    int $0x80
