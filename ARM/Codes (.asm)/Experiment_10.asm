 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		LDR R0, =0x00001000 ; memory location of input value
		LDRB R1,[R0], #1 ; loading into r1
		ADDS R1,R1,#0 ; checking if r1 is 0
		BEQ LOOP1 ; if 0 call subroutine
		MOV R2,R1 ; copy r1 to r2
		SUB R2,R2,#1 ; r2 = r2 - 1 for operand 2
LOOP2	MUL R7,R2,R1 ; multiply both operands
		MOV R1,R7 ; store back in r1
		SUBS R2,R2,#1 ; decrement r2
		BNE LOOP2 ; loop if not zero
		STRB R1,[R0] ; store result in memory
		B LOOP3 ; unconditional loop
LOOP1	MOV R8,#1 ; store 1 is r8
		STRB R8,[R0] ; store result in memory
LOOP3	B LOOP3 
		END 