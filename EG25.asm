;ALP to convert 4-digit decimal number to HEX number using procedures
	AREA DECIMALTOHEX, CODE, READONLY
	ENTRY
start
	LDRH R0, DECI
	MOV R1, R0 
	LDRH R2, M_WORD
	EOR R3, R3, R3
	LDR R6, =FACTORS
	BL conv
	BL conv
	BL conv
	BL conv
	LDR R7, =HEX
	STRH R3, [R7]
stop B stop
conv
	LDRH R4, [R6], #2
	AND R5, R1, R2
	MLA R3, R5, R4, R3
	MOV R1, R1, LSR #4
	MOV PC, LR
FACTORS DCW 0x01, 0x0A, 0x64, 0x03E8
DECI DCW 0x8126
M_WORD DCW 0x000F
	AREA DATAMEM, DATA, READWRITE
HEX DCW 0
	END