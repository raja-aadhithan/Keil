;Desending
 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		MOV R0, #9 ; n-1 memory loctions
LOOP1	LDR R1, =0X1000 ; starting memory location
		ADD R2,R1,#1 ; the 2nd number location
		MOV R3,R0 ; copy the value
LOOP2	LDRB R4, [R1], #1 ; load 1st number
		LDRB R5, [R2], #1 ; load 2nd number
		CMP R4,R5 ; compare both  numbers
		STRCCB R4, [R2,#-1] ; swap is lesser
		STRCCB R5, [R1,#-1] ; r4 is expected to be greater
		SUBS R3,R3,#1 ; decrement counter
		BNE LOOP2
		SUBS R0,R0,#1 ; decrement counter
		BNE LOOP1
	 END

     ; assending
    AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		MOV R0, #9 ; n-1 memory loctions
LOOP1	LDR R1, =0X1000 ; starting memory location
		ADD R2,R1,#1 ; the 2nd number location
		MOV R3,R0 ; copy the value
LOOP2	LDRB R4, [R1], #1 ; load 1st number
		LDRB R5, [R2], #1 ; load 2nd number
		CMP R4,R5 ; compare both  numbers
		STRCSB R4, [R2,#-1] ; swap is greater
		STRCSB R5, [R1,#-1] ; r4 is expected to be lesser
		SUBS R3,R3,#1 ; decrement counter
		BNE LOOP2
		SUBS R0,R0,#1 ; decrement counter
		BNE LOOP1
	 END