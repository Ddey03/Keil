	;ALP to Exchange data bytes in a given blocks of length 10
	AREA PROG_4, CODE, READONLY
	ENTRY 
start
	LDR R0, =src; load source ka address
	LDR R1, =dst; load destination ka address
	MOV R2, #0x0A; initialize counter
exchange
	LDRB R3, [R0] 
	SWPB R4, R3, [R1]; content of r1(destination) to r4(temporary mem) and r3(source) to r1(destination)
	ADD R1, #01; dest position increase by one for next space to swap
	STRB R4, [R0], #1; temp into source i.e. swapped pehla space
	SUBS R2, R2, #0x01
	BNE exchange 
HERE B HERE
	AREA BLOCK, DATA, READWRITE
src SPACE 10
dst SPACE 10
	END
