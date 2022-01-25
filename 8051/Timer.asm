; 4 SEC delay using mode 2 timer 0
; TH = 0 implies 256
; 4 SEC / 256*1.085 = 14400
; 14400 = 144 *100

			ORG 0000H
			MOV TMOD , #02H ; TIMER 0 MODE 2
			MOV TH0  , #00H
	  LOOP: MOV R5   , #144
			ACALL DELAY
			CPL P1.0
			SJMP LOOP
			
	 DELAY: MOV R4	 , #100
		L1: SETB TR0 
	  BACK: JNB  TF0, BACK
			CLR TR0
			CLR TF0
			DJNZ R4, L1
			DJNZ R5, DELAY
			RET
			
			END