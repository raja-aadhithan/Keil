 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		LDR R0,=0X00001000
		LDR R1, [R0], #1 
		LDR R3,=0X0000000A
LOOP0	LDR R2, [R0], #1 
		CMP R2,R1 
		MOVCS R1,R1
		MOVCC R1,R2
		SUBS R3,R3,#1
		BNE LOOP0 
		STR R1, [R0]
LOOP1   B LOOP1
        END 