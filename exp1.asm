		ORG 00H
		MOV A,#10H ; load 10H to A
		ADD A,#1DH ; add 1DH to A
		MOV R1,A   ; store result in R1
		JNC L1	   
		INC R0     ; store carry in R0
	L1: MOV A,#0AH ; load 0AH in A
		SUBB A,#05H; Sub 05H from A
		MOV R3,A   ; store result in R3
		JNC L2	   
		INC R2 	   ; store carry in R2
	L2:	NOP
		END