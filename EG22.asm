	;ALP to search a byte in a given array of ‘N’ 8-bit numbers
	AREA SEARCHING, CODE, READONLY
	ENTRY
start
	LDR R0,=TABLE 
	LDRB R1, COUNT 
	LDRB R2,SEARCH
	MOV R3,#0x11;just an indication for search word found
loop
	LDRB R4,[R0],#1
	CMP R4,R2
	BEQ found
	SUBS R1, R1, #01
	BNE loop
notfound
	MOV R3, #0xFF;for word not found
found
	LDR R5, =RES
	STRB R3, [R5]
stop B stop
COUNT DCB 0x06
SEARCH DCB 0x56
TABLE DCB 0x02,0x78,0xA1,0xD, 0x56, 0x45
	AREA DATAMEM, DATA, READWRITE
RES DCB 0
	END
