 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
		LDR R0,=0X00001000 ;start of input address
		LDR R1, [R0], #4 ; load dividend
		LDR R2, [R0], #4 ; load divisor
LOOP0	CMP R1,R2 ; compare if dividend is greater
		BMI LOOP2 ;if not end loop
		ADD R4,R4,#1 ; add quotient
		SUB R1,R1,R2 ; repetitive subtraction
		BNE LOOP0 ; repeat loop until zero
LOOP2	STR R4, [R0], #4 ; store quotient
		STR R1, [R0] ; store reminder
LOOP1   B LOOP1
        END  