	;ALP to multiply two signed 32-bit numbers and product may be 64-bit
	AREA MULTIPLY , CODE, READONLY
	ENTRY
start
	LDR R0, N1
	LDR R1, N2
	SMULL R2, R3, R1, R0
Here B Here
N1 DCD 0x8234FFFF
N2 DCD 0x1234FFFF
	END
