; HEX TO BCD convertion
		MOV  R0, #20H ; value to be coverted
		MOV  A , R0	   ; store the value in A
		MOV  B , #64H  ; to be divided for MSB
		DIV  AB		   ; divide for 100th place
		MOV  R1, A     ; store MSB in R1
		MOV  A , B     ; load A with remainder
		MOV  B , #0AH  ; 10 is the divider
		DIV  AB        ; divide for tenth place
		SWAP A         ; make it the upper nibble
		ADD  A , B	   ; add remainder to oneth place
		MOV  R2, A     ; store in R2
		MOV  P1, R1    ;
		MOV  P2, R2
		END			   ; result in R1 and R2
			