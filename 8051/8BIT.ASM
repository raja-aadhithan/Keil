; 4 SEC delay using mode 2 timer 0

; TH = 0 implies 256 loops
; 4 SEC / 256*0.5425 us = 28800
; 0.5425 is used as its 24MHz 
; 28800 = 144 ( 90H ) * 200 ( CD H )

			ORG 0000H
			MOV TMOD , #02H ; TIMER 0 MODE 2
			MOV TH0  , #00H ; 256 loops
	  LOOP: MOV R5   , #90H	
			ACALL DELAY
			CPL P1.0		; compliment value
			SJMP LOOP
			
	 DELAY: MOV R4	 , #0CDH
		L1: SETB TR0 		;start timer
	  BACK: JNB  TF0, BACK  ;check status
			CLR TR0			;stop timer
			CLR TF0			;reset timer
			DJNZ R4, L1
			DJNZ R5, DELAY  ; 4 sec delay
			RET
			
			END