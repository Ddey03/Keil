	;ALP to load a byte, a Half-word and a word from memory to registers
	AREA PROG_1,CODE,READONLY
	ENTRY
START
	LDR R0,=BYTE
	LDR R1,=HALF
	LDR R2,=WORD
	LDRB R3,[R0]
	LDRH R4,[R1]
	LDR R5,[R2]
HERE B HERE
	AREA DST,DATA,READWRITE
BYTE DCB 0X69
	ALIGN 2
HALF DCW 0X1234
	ALIGN 4
WORD DCD 0X12345678
	END
