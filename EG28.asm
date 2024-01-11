PROGRAM TO READ FROM PORT1 (P1.16-1.23) AND DISPLAY THE SAME ON PORT(P0.16-0.23
IOODIR EQU 0xE0028008 ; Address for configuring Porto as I/O
IOOSET EQU 0xE0028004 Register address for setting Porto pins
IOOCLR EQU 0xE002800C Register address for clearing Porto pins
IO1DIR EQU 0xE0028018 UPON RESET CONFIGURED AS INPUT
IO1PIN EQU 0xE0028010
AREA CHANG, CODE, READONLY
EXPORT main refer the line no 416 of startup.s file
main
ENTRY
LDR r1,=10ODIR; load the address of the IODIR reg to R1
LDR r0,=0x00FF0000; To set pins P0.16 to P0.23 as output pins
STR ro, [r1] This configure P0.16 to P0.23 as output pins
LDR r2,=1OOCLR; load the address of the IOCLR reg to R2
LDR r3,-10OSET; load the address of the IOSET reg to R3
LDR R4,=1O1PIN; TO READ INPUT
LDR r1,=1O1DIR
str RO, [R3]
LDR R5, [R4] READ A SWITCH
AND R5, #0XFF0000; RETAIN ONLY INPUT PORT CONTENT
CMP R5, #0XFF0000; CHECK IF SWITCH PRESSED
BEQ repeat
str RO, [R3] ;IF TRUE TURN-OFF LEDS
EOR R5, #0XFF0000; CLEAR THE BIT CORRESPONDIG TO SWITCH PRESSED
str R5, [R2] : DISPLAY CORRESPONDING LED
B repeat
END