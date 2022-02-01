;Experiment 1_A:
    ;Copy contents
 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
 LDR R0, =0x00000001 ;Load value of R1 as 0x00000001
 ;copy the value to all other registers
 MOV R1, R0
 MOV R2, R0
 MOV R3, R0
 MOV R4, R0
 MOV R5, R0
 MOV R6, R0
 MOV R7, R0
 MOV R8, R0
 MOV R9, R0
 MOV R10, R0
 MOV R11, R0
 MOV R12, R0
 MOV R13, R0
 MOV R14, R0
 END
 

;Experiment 1_B:
    ;Direct, Indirect and Immediate adressing and addition
 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
 LDR R0, =0x00120011
 LDR R1, =0x00000003
 LDR R2, VALUE1 ;00120011
 LDR R3, VALUE2 ;00000003
 LDR R4, MEM1 ;mem location of R2
 LDR R5, MEM2 ;mem location of R3
 LDR R6, [R4] ;R6 is loaded with data on memory location pointer by R4:=(R2)
 LDR R7, [R5] ;R7 is loaded with data on memory location pointer by R5:=(R3)
 ADD R8, R0, R1 ;immediate addressing
 ADD R9, R2, R3 ;direct addressing
 ADD R10, R6, R7 ;indirect addressing 
 LDR R11, =0x00000008 ;mem location to store the result of R11
 STR R10, [R11] ;store value of R10 to mem location pointed by R11
 
 AREA PROGRAM, DATA, READONLY
VALUE1 DCD &00120011 ; DCD = Define Constant Double word
VALUE2 DCD &00000003
MEM1 DCD &00000000 ;memory address of 1st location
MEM2 DCD &00000004 ;memory address of 2nd location
 END