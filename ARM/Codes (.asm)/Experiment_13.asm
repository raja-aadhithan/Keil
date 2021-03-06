 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN

		LDR R0, X
		LDR R1, Y
		LDR R2, Z
		MOV R7, #6;
		ADD R3,R0,R1 ; X+Y
		MUL R4,R3,R7 ; 6(X+Y) 
		MOV R2,R2,LSL #1 ; 2Z
		ADDS R5,R2,R4 ; 6(X+Y) + 2Z
		ADDCS R5,R5,#5; 
		ADDCC R5,R5,#4;
		SWI &11
 AREA PROGRAM, DATA, READONLY
X DCD &8
Y DCD &4
Z DCD &2
 END

  AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		LDR R0, X
		LDR R1, Y
		LDR R2, A
		LDR R3, K
		MUL R4,R1,R1 ; y^2
		MUL R5,R0,R0 ; x^2
		MUL R6,R3,R4 ; k*y^2
		MUL R7,R5,R2 ; a*x^2
		ADDS R8,R7,R6 ; a*x^2 + k*y^2
		ADDCS R9,R9,#1
		SWI &11
 AREA PROGRAM, DATA, READONLY
X DCD &8
Y DCD &4
A DCD &2
K DCD &3
 END