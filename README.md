PiASM
=====

Learning ARM assembly under raspbian OS (raspberry Pi)


asm01.s - load a value (65) and exit.
          echo outputs 65

asm02.s - load a value (65)
          create a loop to run 5 times,
          subtracting 1 each loop
          echo outputs 60

asm03.a - slight mod of last one
          using SUBS ( set flags) instead of SUB to replace the CMP instruction

hello.s - prints "hello world"

input.s - reads your name from the keyboard and prints hello (name)

Usage
=====
Assemble, link & run with:

<pre>
as -o asm01.o asm01.s
ld -o asm01 asm01.o
./asm01
echo #?
</pre>

Echo returns the value in R0
