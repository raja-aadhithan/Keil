; HEX TO ASCII convertion
		MOV  R0, #0FFH ; value to be coverted
		MOV  A , R0	   ; store the value in A
		MOV  B , #64H  ; to be divided for MSB
		DIV  AB		   ; divide for 100th place
		ADD  A , #30H  ; convert to ascii
		MOV  R1, A     ; store MSB in R1
		MOV  A , B     ; load A with remainder
		MOV  B , #0AH  ; 10 is the divider
		DIV  AB        ; divide for tenth place
		ADD  A ,  #30H ; convert to ascii      
		MOV  R2, A     ; store in R2
		MOV  A , B     ; 
		ADD  A ,  #30H ; convert to ascii    
		MOV  R3, A     ; store in R2
		MOV  P0, R1    ; show results in ports
		MOV  P1, R2    ;
		MOV  P2, R3    ;
		END			   ; result in R1 and R2
			