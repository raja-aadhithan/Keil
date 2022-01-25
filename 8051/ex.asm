		ORG 00H
		MOV 40H, #32H 
		MOV 41H, #42H
		MOV 42H, #0A0H
		MOV 43H, #0FH
		MOV R0, #40H ; pointer for inputs 
		MOV R1, #53H ; pointer for outputs
		MOV A ,@R0   ; move 1st value to A
		INC R0       ; inc A
		ADD A ,@R0   ; add 2nd value to A
		INC R0       ; inc A
		MOV @R1,A    ; store result 
		DEC R1		 ; dec R1
		JNC L1    	 ; check for carry
		INC @R1 	 ; store carry
	L1: DEC R1		 ; dec R1
		MOV A ,@R0	 ; move 3rd value to A
		INC R0		 ; inc R0 
		SUBB A,@R0	 ; sub 4th value from A
		MOV @R1,A    ; store result i
		DEC R1		 ; dec R1
		JNC L2    	 ; check for carry
		INC @R1      ; store carry
	L2: NOP
		END
		