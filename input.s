.global _start
_start:

_read:
  mov R7, #3 @ syscall for read
  mov R0, #0 @ keybaord
  mov R2, #7 @ read 1st 5 characters
  ldr R1,=string
  add R1,R1, #6 @ add after "Hello " in string
  swi 0
  
_print:
  mov R7, #4 @ syscall for print
  mov R0, #1 @ use monitor as stdout
  mov R2, #12 @ length of string
  ldr R1, =string
  swi 0
  
_exit:
  mov R7, #1
  swi 0
  
.data
string:
  .ascii "Hello World\n"
