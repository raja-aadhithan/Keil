 AREA PROGRAM, CODE,READONLY 
 ENTRY
MAIN
 LDR R0, =0x00000000; SOURCE MEMORY LOCATION
 LDR R1, =0x00000100; DESTINATION MEMORY LOCATION
 LDM R0!, {R2-R5}; COPIES CONTINUOSLY FROM EXTERNAL TO R2 TO R5
 STM R1!, {R2-R5}; COPIES CONTINUOSLY FROM R2 TO R5 TO DESTINATION  
 END
 
 ;NOTES
 ; ! is used in line 6 for pointer updation, else 
 ; same value will be updated in all registers(R0 - R15)