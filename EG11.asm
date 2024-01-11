	;to check whether a num is positive or negative
	AREA POSITIVE,CODE,READONLY
	ENTRY
START
	LDR R0,=NUM
	LDR R1,[R0]
	LSL R1,R1,#1
	LDRCS R2,=0XFFFFFFFF;indication for negative
	LDRCC R2,=0X55555555;indication for positive
S	B	S
NUM DCD 0X12345678
	END