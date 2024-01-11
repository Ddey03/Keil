	;ALP to add �N� 32-bit numbers and store the result in memory
	AREA PROG_18,CODE,READONLY
	ENTRY
START
	LDR R0,COUNT
	LDR R1,=NUM_ARR
	LDR R2,#0
	LDR R4,#0
LOOP
	LDR R3,[R1],#4
	ADDS R2,R3
	ADDCS R4,R4,#1
	SUBS R0,R0,#1
	BNE LOOP
	LDR R5, =RES
	STR R2, [R5],#4
	STR R4, [R5],#4
Here B Here
COUNT DCD 0x05
NUM_ARR DCD 0xFFFFFFFF, 
			0x12345678, 
			0xA4CD2978, 
			0x98779956, 
			0x45679087
	AREA DATMEM, DATA, READWRITE
RES SPACE 8
	END