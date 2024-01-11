	;ALP to add two 32-bit numbers and the sum may be 40-bit
	AREA PROG_5,CODE,READONLY
	ENTRY
START
	LDR R0,=SUM
	LDR R1,N1
	LDR R2,N2
	ADDS R3,R2,R1; add with update carry flag
	MOV R4,#0
	ADDCS R4, #01; if carry set then update r4 to 1 i.e. add 1
	STR R3, [R0], #4
	STRB R4, [R0]
HERE B HERE
N1 DCD 0xAABBCCDD
N2 DCD 0x12345678
	AREA BLOCK, DATA, READWRITE
SUM SPACE 8
	END
