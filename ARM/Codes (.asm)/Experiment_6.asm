 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		MOV R0, #32 ; counter value
		LDR R1, =0x00001000 ; input location
		LDR R2, [R1] ; load the input at the register
LOOP	MOVS R2,R2,RRX ;rotate the value of reg
		ADDCS R3,R3,#1 ; increment if bit is set
		SUBS R0,R0,#1 ; decrement counter
		BNE LOOP ; loop branch
		RSB R4,R3,#32 ; count no of 0's
 END 