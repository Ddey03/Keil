	;ALP to count number of ‘0’s in a given byte
	AREA PROG_20,CODE,READONLY
	ENTRY
START
	LDR R0, COUNT
	LDR R1, NUM
	MOV R3, R1
	EOR R2, R2, R2
next
	MOVS R3, R3, RRX
	ADDCC R2, R2, #01;for 1 write cs
	SUBS R0, R0, #1
	BNE next
	LDR R5, =RES
	STRB R2, [R5]
Here B Here 
COUNT DCD 0x08
NUM DCB 0xA1
	AREA DATMEM, DATA, READWRITE
RES SPACE 1
	END
