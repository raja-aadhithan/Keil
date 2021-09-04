; multipling 16 bit number
;1ST NUMBER IS 1234
;2ND NUMBER IS 5678
		
		MOV R7, #0FFH ; LOWER BYTE OF NUMBER 1
		MOV R6, #0FFH ; UPPER BYTE OF NUMBER 1
		MOV R5, #01H ; LOWER BYTE OF NUMBER 2
		MOV R4, #00H ; UPPER BYTE OF NUMBER 2

;multipling lower byte of 1st operand		
		
		MOV A,R5
		JZ L8  	  ; checks if R5 is zero
	L4:	LCALL L1  ; repeated addition loop
		DJNZ R5,L4 
		
;multipling higher byte of 1st operand	

	L8:	MOV A,R4
		JZ  L5	  ; checks if R4 is zero
	L6: LCALL L3  ; repeated addition loop
		DJNZ R4,L6
	
	L5: MOV 51H, DPL ;moves value of DPTR to these registers 
		MOV 50H, DPH
		SJMP  L9	 ; jumps to last line

;1st SUBROUTINE

	L1: MOV A,53H 
		ADD A,R7  ; adds lower byte of 2nd operand
		MOV 53H,A
		MOV A,52H ; 4th byte of result
		ADDC A,R6 ; adds higher byte of 2nd operand
		MOV 52H,A ; 3rd byte of result
		JNC L2
		INC DPTR  ; 1st and 2nd byte of results
		CLR C
	L2: RET

; 2ND SUBROUTINE ( multiplying higher byte by 100H)

	L3:	MOV R3, #0FFH 
	L7: LCALL L1   ; calls subroutine 255 times
		DJNZ R3,L7
		LCALL L1   ; calls subroutine for 256th time
		RET        ; this sub routine has been executed 100H times
	
	L9:	           ; result is seen at 50H 51H 52H and 53H registers
		END
			
	