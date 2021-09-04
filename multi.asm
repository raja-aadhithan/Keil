;multipling 55h and 40h	
;		MOV R1, #55H ; 1st number
;		MOV R0, #40H ; 2nd number
;NEXT:	ADD A, R1    ; adding R1 repeatedly
;		JNC LABEL    
;		INC R6       ; increment R6 on carry
;LABEL:	DJNZ R0 , NEXT ; add R1 to acc 
;		MOV R7, A
		MOV A, #55H ;1st operand
		MOV B, #40H ;2nd operand
		MUL AB; result in A and B
		END