;ALP to convert 8-bit binary number to Gray
	AREA BINTOGRAY, CODE, READONLY
	ENTRY
start
	LDRB R0, BIN
	MOV R1, R0, LSR #01
	EOR R1, R0, R1
	LDR R5, =GRAY
	STRB R1, [R5]
Here B Here
BIN DCB 0x7A
	AREA DATMEM, DATA, READWRITE
GRAY DCB 0
	END
