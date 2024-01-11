	;ALP to find largest among “N” 32-bit numbers
	AREA COUNTZEROS, CODE, READONLY
	ENTRY
start
	LDR R0, COUNT
	LDR R1, =NUM_ARR
	MOV R3, #0
next
	LDR R4, [R1],#4
	CMP R3, R4
	BCS down
	MOV R3, R4
down
	SUBS R0, R0, #1
	BNE next
	LDR R5, =LARGE
	STR R3, [R5]
Here B Here
COUNT DCD 0x05
NUM_ARR DCD 0x69, 0x87, 0x96, 0x45, 0x75
	AREA DATMEM, DATA, READWRITE
LARGE SPACE 4
	END
