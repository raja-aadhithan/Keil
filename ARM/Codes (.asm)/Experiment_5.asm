 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		LDR R0, =0X00001000 ;starting location
		MOV R2, #10 ; counter for 10 locations
LOOP	LDRB R1, [R0], #1 ; load the value
		CMP R1, #0XAC ; check if same
		ADDEQ R3,R3,#1 ;if equal label
		SUBS R2,R2,#1 ; decrement counter
		BNE LOOP ; run 10 times
 END 