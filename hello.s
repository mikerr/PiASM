.global _start

_start:
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
