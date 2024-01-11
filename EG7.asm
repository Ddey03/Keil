	;ALP to add two 64-bit numbers and the sum may be 72-bit
	AREA PROG_6,CODE,READONLY
	ENTRY
START
	LDR R0,=SUM
	LDR R1,N1
	LDR R2,N2
	ADDS R3,R1,R2; add with carry update
	STR R3,[R0],#4
	
	LDR R1,N1+4
	LDR R2,N2+4
	ADCS R3,R1,R2; add with the already updated carry
	STR R3,[R0],#4
	
	MOV R4,#4
	ADDCS R4,#1
	STRB R4,[R0]
S	B	S
N1 DCD 0X99887766,0X98765432
N2 DCD 0XAABBCCDD,0XCCD86591	
	AREA SUMBLOCK,DATA,READWRITE
SUM SPACE 9
	END