	;ALP to count negative number in an array of ‘N’ 32-bit numbers
	AREA NEGATIVE, CODE, READONLY
	ENTRY
start
	LDR R0, COUNT
	LDR R1, =NUM_ARR
	EOR R2, R2, R2
	LDR R4, M_WORD
next
	LDR R3,[R1], #4
	TST R3, R4; to test whether the leftmost bit is 1 or not
	BEQ down; if equal its negative
	ADD R2, R2, #01
down
	SUBS R0, R0, #1
	BNE next
	LDR R5, =RES
	STR R2, [R5]
Here B Here
COUNT DCD 0x05
M_WORD DCD 0X80000000;masking word
NUM_ARR DCD 0xFFFFFFFF, 
			0x92345678, 
			0x04CD2978, 
			0x08779956, 
			0xC5679087
	AREA DATMEM, DATA, READWRITE
RES SPACE 1
	END
