	;PROG TO REVERSE HALF WORD
	AREA ASCENDING, CODE, READONLY
ENTRY;THE CONCEPT IS JUST TO MASK AND SHIFT ACCORDINGLY
	LDR R0,=NUMBER;
	LDR R1,[R0];
	AND R2,R1,#0XF;
	MOV R2,R2,LSL#12;
	AND R3,R1,#0XF0;
	MOV R3,R3,LSL#4;
	orr r2,r3
	AND R4,R1,#0XF00;
	MOV R5,R5,LSR#4;
	orr r2,r4
	AND R5,R1,#0XF000;
	MOV R5,R5,LSR#12
	orr r2,r4
s	B          s
 AREA DATA1, DATA, DATA, READWRITE
NUMBER DCW 0X0045
	END	

	