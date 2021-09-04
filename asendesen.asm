			ORG 0000H
			ACALL READ		;copy data loop
			MOV R1,#0AH		;number of bytes to process
	AGAIN:	MOV A,R1
			MOV R2,A		;number of bytes
			MOV R0,#30H		;starting address of data
	BACK:	MOV A,@R0		;1st valur to acc
			INC R0			;next byte
			MOV B,@R0		;2nd value to B
			CLR C			;carry from previous process
			SUBB A,B		;compare 2 nos
			JC SKIP			;skip swapping
			MOV B,@R0		;put 2nd no in B
			DEC R0			;previous byte
			MOV A,@R0		;put 1st no in A
			MOV @R0,B		;swap 2nd no
			INC R0			;next byte
			MOV @R0,A		;swap 1st no
	SKIP:	DJNZ R2,BACK	;repeat for next position
			DJNZ R1,AGAIN	;repeat for next number
			SJMP LAST		;end statement			
	READ:	MOV R0,#30H		;1st byte of source
			MOV R1,#20H		;1st byte of destination
			MOV R6,#0AH		;number of bytes
	COPY:	MOV A,@R0		;copying input ...
			MOV @R1,A		; 	for reference
			INC R1			;next byte
			INC R0			;next byte
			DJNZ R6,COPY	;repeat for n bytes
			RET				;return to main program			
	LAST:	NOP				;close program
			END