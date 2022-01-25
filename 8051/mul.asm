		ORG 00H
		MOV 40H, #32H 
		MOV 41H, #42H
		MOV 60H, #0A0H
		MOV 61H, #0FH
		MOV R0, #40H ; pointer for inputs 
		MOV R1, #44H ; pointer for outputs
		MOV A ,@R0   ; move 1st value to A
		INC R0       ; inc R0
		MOV B  ,@R0  ; mov 2nd value to b
		MUL AB		 ; MULTIPLY
		MOV @R1,A    ; store result 
		DEC R1		 ; dec R1
		MOV @R1,B	 ; store result	 
		MOV R0,#60H
		MOV R1,#64H		
		MOV A ,@R0	 ; move 3rd value to A
		INC R0		 ; inc R0 
		MOV B,@R0	 ; move 4th value to B
		DIV AB		 ; DIVIDE 
		MOV @R1,A    ; store reminder 
		DEC R1		 ; dec R1
		MOV @R1,B    ; store quotient
		END
		