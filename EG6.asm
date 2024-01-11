	;Program to read from location starting from 0x40000000 and store back at 0x4000001c
	AREA PROG_6,CODE,READONLY
	ENTRY
START
	LDR R0,=0X40000000
	LDRB R1,[R0]
	LDRH R2,[R0]
	LDR R3,[R0]
	LDR R4,=0X4000001C
	STRB R1,[R4]
	STRH R2,[R4]
	STR R3,[R4]
HERE B HERE
	END