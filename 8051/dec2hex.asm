	;DECIMAL TO HEXA DECIMAL
				MOV R0 , #15H 		; enter desired value in R0
		   LOOP:CLR C				; clear carry generated from CJNE
				INC A				; inc acc
				INC R1				; inc R1
				DA A				; convert A to decimal equivalent
				CJNE A , 00H , LOOP ; compare if A has reached R0
				MOV P0 , R0			; display input in R0
				MOV P1 , R1			; display output in R1
				END		