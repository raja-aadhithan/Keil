 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
 LDR R0, VALUE1
 LDR R1, VALUE2
 LDR R2, [R0] ;R6 is loaded with data on memory location pointer by R4:=(R2)
 LDR R3, [R1] ;R7 is loaded with data on memory location pointer by R5:=(R3)
 ADD R4, R2, R3 ;immediate addressing

 AREA PROGRAM, DATA, READONLY
VALUE1 DCD &00000000 ; DCD = Define Constant Double word
VALUE2 DCD &00000004
 
 END