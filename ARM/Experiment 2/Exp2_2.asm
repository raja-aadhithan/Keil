 AREA PROGRAM, CODE, READONLY
 ENTRY
MAIN
 LDR R0, =0x00000009 ;LOAD VALUE 8 TO R0 REGISTER
 LDR R1, =0x00000003 ;LOAD THE NO OF TIMES TO BE SHIFTED
 MOV R2,R0,LSR R1 ;R2 WILL BE R0 SHIFTER 3 TIMES
 END