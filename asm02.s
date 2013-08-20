.global	_start
_start:
	MOV R0, #65
	MOV R1, #5

@ loop on R1, subtracting 1 from R0 each time
@ so answer should be 65 - 5 = 0

loop:
	SUB R0,#1

	SUB R1,#1
	CMP R1,#0 
	BNE loop
_end:
	MOV R7,#1
	SWI 0

