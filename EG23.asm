;ALP to convert 2-digit Hex no. to ASCII codes
	AREA HEXTOASCII, CODE, READONLY
	ENTRY
start
	LDRB R0, HEX
	AND R2, R0, #0X0F
	MOV R3, R0, LSR #04
	CMP R2, #0x0A
	ADDCS R2, R2, #07
	ADD R2, R2, #0x30
	CMP R3, #0x0A
	ADDCS R3, R3, #07
	ADD R3, R3, #0x30
	LDR R5, =ASCII
	STRB R2, [R5],#1
	STRB R3, [R5],#1
Here B Here
HEX DCB 0x7A
	AREA DATMEM, DATA, READWRITE
ASCII DCB 0, 0
	END
