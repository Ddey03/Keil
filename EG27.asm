IOODIR EQU 0xE0028008 Address for configuring Porto as I/O
IOOSET EQU 0xE0028004 Register address for setting Porto pins
IOOCLR EQU 0xE002800C Register address for clearing Porto pins
AREA CHANG, CODE, READONLY
EXPORT main ;refer the line no 416 of startup.s file
main
ENTRY
LDR r1,=1OODIR; load the address of the IODIR reg to R1
LDR r0,=0x00FF0000; To set pins P0.16 to P0.23 as output pins
STR r0, [r1] This configure P0.16 to P0.23 as output pins
LDR r2,=1OOCLR; load the address of the IOCLR reg to R2
LDR r3,=1OOSET; load the address of the IOSET reg to R3
repeat
MOV r4, #0x00010000; write a control word to set one bit
next
STR r4, [r2]
LDR r5, 0x2FFFFF; Delay program to retain the bit for some time.
delay
SUBS r5, r5, #1
BNE delay
STR r0, [r3]; set all pins
MOV r4, r4, LSL #1
CMP r4, #0x1000000
BNE next
B repeat
END
