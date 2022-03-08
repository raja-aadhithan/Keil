 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		LDR R0, =0X00001000 ; location of input data
		LDR R1, [R0], #4 ; loading 1st data
		LDR R2, [R0], #4 ; loaing 2nd data
LOOP	ADD R3,R3,R1 ; add 1st number to result
		SUBS R2,R2,#1 ; decrementing number 2
		BNE LOOP ;loop branch
        STR R3, [R0] ; store the result in the memory location
		END 