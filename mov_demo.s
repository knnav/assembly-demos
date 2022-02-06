# Program de demonstrates the usage of movx instructions
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
    # Move literal value to register
    movl $10, %eax

    # Move literal value to memory location
    movl $50, Int16 # Note that this is the Int16 variable declared above

    # Move data between registers
    movl %eax, %ebx

    # Move data from memory to register
    movl Int32, %eax

    # Move data from register to memory
    movb $3,  %al
    movb %al, ByteLocation

    # Move data into an indexed memory location
    # Location is given by BaseAddress(Offset, Index, DataSize)
    # Offset and Index must be registers, DataSize can be numerical
    movl $0,  %ecx
    movl $2,  %edi
    movl $22, IntegerArray(%ecx, %edi, 4)

    # Exit program
    movl $1,  %eax
    movl $40, %ebx
    int       $0x80
